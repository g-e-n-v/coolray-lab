package f2;

import i2.g;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class d extends a1.b {
    public static void e0(File file, File file2) {
        if (!file.exists()) {
            throw new b(file, null, "The source file doesn't exist.");
        }
        if (file2.exists() && !file2.delete()) {
            throw new b(file, file2, "Tried to overwrite the destination, but failed to delete it.");
        }
        if (file.isDirectory()) {
            if (!file2.mkdirs()) {
                throw new c(file, file2, "Failed to create target directory.");
            }
            return;
        }
        File parentFile = file2.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                a1.b.r(fileInputStream, fileOutputStream);
                fileOutputStream.close();
                fileInputStream.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    a1.b.p(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                a1.b.p(fileInputStream, th3);
                throw th4;
            }
        }
    }

    public static byte[] f0(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new OutOfMemoryError("File " + file + " is too big (" + length + " bytes) to fit in memory.");
            }
            int i3 = (int) length;
            byte[] bArrCopyOf = new byte[i3];
            int i4 = i3;
            int i5 = 0;
            while (i4 > 0) {
                int i6 = fileInputStream.read(bArrCopyOf, i5, i4);
                if (i6 < 0) {
                    break;
                }
                i4 -= i6;
                i5 += i6;
            }
            if (i4 > 0) {
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, i5);
                g.d(bArrCopyOf, "copyOf(...)");
            } else {
                int i7 = fileInputStream.read();
                if (i7 != -1) {
                    a aVar = new a(8193);
                    aVar.write(i7);
                    a1.b.r(fileInputStream, aVar);
                    int size = aVar.size() + i3;
                    if (size < 0) {
                        throw new OutOfMemoryError("File " + file + " is too big to fit in memory.");
                    }
                    byte[] bArrA = aVar.a();
                    bArrCopyOf = Arrays.copyOf(bArrCopyOf, size);
                    g.d(bArrCopyOf, "copyOf(...)");
                    System.arraycopy(bArrA, 0, bArrCopyOf, i3, aVar.size());
                }
            }
            fileInputStream.close();
            return bArrCopyOf;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                a1.b.p(fileInputStream, th);
                throw th2;
            }
        }
    }

    public static ArrayList g0(File file) throws IOException {
        Charset charset = o2.a.f2622a;
        g.e(charset, "charset");
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
        try {
            for (String str : (n2.a) a1.b.F(bufferedReader)) {
                g.e(str, "it");
                arrayList.add(str);
            }
            bufferedReader.close();
            return arrayList;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                a1.b.p(bufferedReader, th);
                throw th2;
            }
        }
    }

    public static String h0(File file) throws IOException {
        Charset charset = o2.a.f2622a;
        g.e(charset, "charset");
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
        try {
            String strZ = a1.b.Z(inputStreamReader);
            inputStreamReader.close();
            return strZ;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                a1.b.p(inputStreamReader, th);
                throw th2;
            }
        }
    }

    public static void i0(File file, String str) {
        Charset charset = o2.a.f2622a;
        g.e(str, "text");
        g.e(charset, "charset");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            j0(fileOutputStream, str, charset);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                a1.b.p(fileOutputStream, th);
                throw th2;
            }
        }
    }

    public static final void j0(FileOutputStream fileOutputStream, String str, Charset charset) throws IOException {
        g.e(str, "text");
        if (str.length() < 16384) {
            byte[] bytes = str.getBytes(charset);
            g.d(bytes, "getBytes(...)");
            fileOutputStream.write(bytes);
            return;
        }
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        CharsetEncoder charsetEncoderOnUnmappableCharacter = charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
        CharBuffer charBufferAllocate = CharBuffer.allocate(8192);
        g.b(charsetEncoderOnUnmappableCharacter);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8192 * ((int) Math.ceil(charsetEncoderOnUnmappableCharacter.maxBytesPerChar())));
        g.d(byteBufferAllocate, "allocate(...)");
        int i3 = 0;
        int i4 = 0;
        while (i3 < str.length()) {
            int iMin = Math.min(8192 - i4, str.length() - i3);
            int i5 = i3 + iMin;
            char[] cArrArray = charBufferAllocate.array();
            g.d(cArrArray, "array(...)");
            str.getChars(i3, i5, cArrArray, i4);
            charBufferAllocate.limit(iMin + i4);
            i4 = 1;
            if (!charsetEncoderOnUnmappableCharacter.encode(charBufferAllocate, byteBufferAllocate, i5 == str.length()).isUnderflow()) {
                throw new IllegalStateException("Check failed.");
            }
            fileOutputStream.write(byteBufferAllocate.array(), 0, byteBufferAllocate.position());
            if (charBufferAllocate.position() != charBufferAllocate.limit()) {
                charBufferAllocate.put(0, charBufferAllocate.get());
            } else {
                i4 = 0;
            }
            charBufferAllocate.clear();
            byteBufferAllocate.clear();
            i3 = i5;
        }
    }
}
