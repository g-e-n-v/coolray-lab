#!/usr/bin/env python3
"""Inspect a dumped Android boot image before/after Magisk patching.

Prints: size, SHA-256, magic, MTK header, kernel/ramdisk/second sizes,
page size, boot image header version, boot SHA1 (for make-bootflash-ota.sh),
and fatal warnings (no ANDROID! magic / no ramdisk = SAR-style boot).

Usage: inspect-boot.py <boot.img>"""
import hashlib
import struct
import sys

MTK_MAGIC = b"\x88\x16\x88\x58"


def main(path):
    with open(path, "rb") as f:
        data = f.read()
    size = len(data)
    print(f"file       : {path}")
    print(f"size       : {size} bytes ({size / 1048576:.2f} MiB)")
    print(f"sha1       : {hashlib.sha1(data).hexdigest()}")
    print(f"sha256     : {hashlib.sha256(data).hexdigest()}")

    off = 0
    if data[:4] == MTK_MAGIC:
        mtk_type, mtk_part = struct.unpack_from("<II", data, 8)
        print(f"mtk_header : yes (type={mtk_type:#x}, part={mtk_part:#x})")
        off = 0x200
    else:
        print("mtk_header : no")

    if data[off:off + 8] != b"ANDROID!":
        sys.exit("FATAL: no ANDROID! magic — this is NOT a boot image. Do not flash.")

    (kernel_size, kernel_addr, ramdisk_size, ramdisk_addr,
     second_size, second_addr, tags_addr) = struct.unpack_from("<7I", data, off + 8)
    header_version, os_version = struct.unpack_from("<2H", data, off + 40)
    name = data[off + 48:off + 64].split(b"\x00")[0].decode(errors="replace")

    print(f"magic      : ANDROID! (hdr v{header_version})")
    print(f"name       : {name!r}")
    print(f"kernel     : {kernel_size} bytes @ {kernel_addr:#x}")
    print(f"ramdisk    : {ramdisk_size} bytes @ {ramdisk_addr:#x}")
    print(f"second     : {second_size} bytes")
    print(f"tags_addr  : {tags_addr:#x}")
    print(f"os_version : {os_version:#06x}")

    if ramdisk_size == 0:
        sys.exit("FATAL: ramdisk_size == 0 (SAR / ramdisk-less boot). Magisk cannot "
                 "patch this via boot — DO NOT flash; reassess (recovery-partition "
                 "route needed).")
    print("OK: boot image with ramdisk — Magisk-patchable.")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.exit(f"usage: {sys.argv[0]} <boot.img>")
    main(sys.argv[1])
