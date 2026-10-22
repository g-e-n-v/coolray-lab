#!/usr/bin/env python3
"""Verify an ECARX/Geely recovery OTA package the same way Android 9 recovery does.

Replicates bootable/recovery (android-9.0.0_r1) `verify_file()` + `read_pkcs7()`:
  - last 6 bytes = footer: (2-byte signature_start) 0xff 0xff (2-byte comment_size)
  - SHA-1/SHA-256 over everything except the EOCD comment length field + comment
  - whole-file signature = PKCS#7 SignedData DER whose SignerInfo OCTET STRING
    holds a raw PKCS#1 v1.5 RSA signature (no signed attributes)
  - trusted key = the package's own META-INF/com/android/otacert (matches /res/keys)

Exit 0 if the whole-file signature verifies, 1 otherwise.
"""
import hashlib
import sys
import zipfile

from cryptography import x509
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.primitives.asymmetric import padding

EOCD_HEADER_SIZE = 22
FOOTER_SIZE = 6


class Asn1:
    """Minimal DER cursor mimicking recovery's asn1_context."""

    def __init__(self, buf, pos=0, end=None):
        self.buf = buf
        self.pos = pos
        self.end = len(buf) if end is None else end

    def _tlv(self, pos):
        if pos + 2 > self.end:
            raise ValueError("truncated DER")
        tag = self.buf[pos]
        length = self.buf[pos + 1]
        header = 2
        if length & 0x80:
            n = length & 0x7F
            if n == 0 or pos + 2 + n > self.end:
                raise ValueError("bad DER length")
            length = int.from_bytes(self.buf[pos + 2:pos + 2 + n], "big")
            header += n
        content = pos + header
        if content + length > self.end:
            raise ValueError("DER overruns buffer")
        return tag, content, content + length

    def enter(self, expected_tag):
        tag, start, end = self._tlv(self.pos)
        if tag != expected_tag:
            raise ValueError(f"expected tag 0x{expected_tag:02x}, got 0x{tag:02x}")
        self.pos = end
        return Asn1(self.buf, start, end)

    def next(self):
        if self.pos >= self.end:
            raise ValueError("no more elements")
        _, _, end = self._tlv(self.pos)
        self.pos = end

    def skip_constructed_all(self):
        while self.pos < self.end and (self.buf[self.pos] & 0xA0) == 0xA0:
            self.next()

    def octet_string(self):
        tag, start, end = self._tlv(self.pos)
        if tag != 0x04:
            raise ValueError(f"expected OCTET STRING, got 0x{tag:02x}")
        return self.buf[start:end]


def read_pkcs7(sig_der):
    """Extract the signature OCTET STRING, exactly like verifier.cpp."""
    content_info = Asn1(sig_der).enter(0x30)   # ContentInfo SEQUENCE
    content_info.next()                        # OID (contentType)
    content = content_info.enter(0xA0)         # [0] content
    signed_data = content.enter(0x30)          # SignedData SEQUENCE
    signed_data.next()                         # version
    signed_data.next()                         # digestAlgorithmIdentifiers
    signed_data.next()                         # encapContentInfo
    signed_data.skip_constructed_all()         # [0] certs, [1] crls
    signer_infos = signed_data.enter(0x31)     # SET of SignerInfos
    signer_info = signer_infos.enter(0x30)
    signer_info.next()                         # version
    signer_info.next()                         # signerIdentifier
    signer_info.next()                         # digestAlgorithm
    signer_info.next()                         # signatureAlgorithm
    return signer_info.octet_string()          # signature value


def verify(path):
    with open(path, "rb") as f:
        data = f.read()
    length = len(data)
    if length < FOOTER_SIZE:
        print("FAIL: file too small")
        return False

    footer = data[length - FOOTER_SIZE:]
    if footer[2] != 0xFF or footer[3] != 0xFF:
        print("FAIL: footer is wrong (no whole-file signature)")
        return False
    signature_start = footer[0] | (footer[1] << 8)
    comment_size = footer[4] | (footer[5] << 8)
    if signature_start > comment_size or signature_start <= FOOTER_SIZE:
        print(f"FAIL: signature_start={signature_start} comment_size={comment_size}")
        return False

    eocd_size = comment_size + EOCD_HEADER_SIZE
    if length < eocd_size:
        print("FAIL: file too small for EOCD")
        return False
    eocd_off = length - eocd_size
    if data[eocd_off:eocd_off + 4] != b"PK\x05\x06":
        print("FAIL: EOCD marker mismatch")
        return False
    if data.find(b"PK\x05\x06", eocd_off + 4, eocd_off + eocd_size - 3) != -1:
        print("FAIL: EOCD marker occurs after start of EOCD")
        return False

    signed_len = length - comment_size - 2
    signed = data[:signed_len]
    sha1 = hashlib.sha1(signed).digest()
    sha256 = hashlib.sha256(signed).digest()

    sig_off = eocd_off + eocd_size - signature_start
    sig_der = data[sig_off:sig_off + signature_start - FOOTER_SIZE]
    signature = read_pkcs7(sig_der)

    with zipfile.ZipFile(path) as z:
        cert = x509.load_pem_x509_certificate(
            z.read("META-INF/com/android/otacert"))
    pubkey = cert.public_key()

    for algorithm, name in ((hashes.SHA1(), "SHA-1"), (hashes.SHA256(), "SHA-256")):
        try:
            pubkey.verify(signature, signed, padding.PKCS1v15(), algorithm)
            print(f"PASS: whole-file signature verified ({name}) "
                  f"against otacert serial={hex(cert.serial_number)}")
            return True
        except Exception:
            continue
    print("FAIL: signature does not verify against otacert")
    return False


if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.exit(f"usage: {sys.argv[0]} <update.zip>")
    sys.exit(0 if verify(sys.argv[1]) else 1)
