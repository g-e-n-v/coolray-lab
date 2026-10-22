package w0;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class y5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BigInteger f4566a;
    public static final BigInteger b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final BigInteger f4567c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final BigInteger f4568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f4569e;
    public static final BigInteger f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final BigInteger f4570g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final BigInteger f4571h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final BigInteger f4572i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final x1.c f4573j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final x5 f4574k;

    static {
        BigInteger bigInteger = BigInteger.ZERO;
        i2.g.d(bigInteger, "ZERO");
        f4566a = bigInteger;
        BigInteger bigInteger2 = BigInteger.ONE;
        i2.g.d(bigInteger2, "ONE");
        b = bigInteger2;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(2L);
        i2.g.d(bigIntegerValueOf, "valueOf(...)");
        f4567c = bigIntegerValueOf;
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(8L);
        i2.g.d(bigIntegerValueOf2, "valueOf(...)");
        f4568d = bigIntegerValueOf2;
        BigInteger bigIntegerPow = bigIntegerValueOf.pow(255);
        i2.g.d(bigIntegerPow, "pow(...)");
        BigInteger bigIntegerValueOf3 = BigInteger.valueOf(19L);
        i2.g.d(bigIntegerValueOf3, "valueOf(...)");
        BigInteger bigIntegerSubtract = bigIntegerPow.subtract(bigIntegerValueOf3);
        i2.g.d(bigIntegerSubtract, "subtract(...)");
        f4569e = bigIntegerSubtract;
        BigInteger bigIntegerPow2 = bigIntegerValueOf.pow(252);
        i2.g.d(bigIntegerPow2, "pow(...)");
        BigInteger bigIntegerAdd = bigIntegerPow2.add(new BigInteger("27742317777372353535851937790883648493"));
        i2.g.d(bigIntegerAdd, "add(...)");
        f = bigIntegerAdd;
        BigInteger bigIntegerValueOf4 = BigInteger.valueOf(-121665L);
        i2.g.d(bigIntegerValueOf4, "valueOf(...)");
        BigInteger bigIntegerModInverse = BigInteger.valueOf(121666L).modInverse(bigIntegerSubtract);
        i2.g.d(bigIntegerModInverse, "modInverse(...)");
        BigInteger bigIntegerMultiply = bigIntegerValueOf4.multiply(bigIntegerModInverse);
        i2.g.d(bigIntegerMultiply, "multiply(...)");
        BigInteger bigIntegerMod = bigIntegerMultiply.mod(bigIntegerSubtract);
        i2.g.d(bigIntegerMod, "mod(...)");
        f4570g = bigIntegerMod;
        BigInteger bigIntegerSubtract2 = bigIntegerSubtract.subtract(bigInteger2);
        i2.g.d(bigIntegerSubtract2, "subtract(...)");
        BigInteger bigIntegerValueOf5 = BigInteger.valueOf(4L);
        i2.g.d(bigIntegerValueOf5, "valueOf(...)");
        BigInteger bigIntegerDivide = bigIntegerSubtract2.divide(bigIntegerValueOf5);
        i2.g.d(bigIntegerDivide, "divide(...)");
        BigInteger bigIntegerModPow = bigIntegerValueOf.modPow(bigIntegerDivide, bigIntegerSubtract);
        i2.g.d(bigIntegerModPow, "modPow(...)");
        f4571h = bigIntegerModPow;
        BigInteger bigIntegerValueOf6 = BigInteger.valueOf(4L);
        i2.g.d(bigIntegerValueOf6, "valueOf(...)");
        BigInteger bigIntegerModInverse2 = BigInteger.valueOf(5L).modInverse(bigIntegerSubtract);
        i2.g.d(bigIntegerModInverse2, "modInverse(...)");
        BigInteger bigIntegerMultiply2 = bigIntegerValueOf6.multiply(bigIntegerModInverse2);
        i2.g.d(bigIntegerMultiply2, "multiply(...)");
        BigInteger bigIntegerMod2 = bigIntegerMultiply2.mod(bigIntegerSubtract);
        i2.g.d(bigIntegerMod2, "mod(...)");
        f4572i = bigIntegerMod2;
        f4573j = new x1.c(new w5(0));
        f4574k = new x5(bigInteger, bigInteger2, bigInteger2, bigInteger);
    }

    public static x5 a(x5 x5Var, x5 x5Var2) {
        BigInteger bigInteger = x5Var.b;
        BigInteger bigInteger2 = x5Var.f4494a;
        BigInteger bigIntegerSubtract = bigInteger.subtract(bigInteger2);
        i2.g.d(bigIntegerSubtract, "subtract(...)");
        BigInteger bigInteger3 = x5Var2.b;
        BigInteger bigInteger4 = x5Var2.f4494a;
        BigInteger bigIntegerSubtract2 = bigInteger3.subtract(bigInteger4);
        i2.g.d(bigIntegerSubtract2, "subtract(...)");
        BigInteger bigIntegerMultiply = bigIntegerSubtract.multiply(bigIntegerSubtract2);
        i2.g.d(bigIntegerMultiply, "multiply(...)");
        BigInteger bigInteger5 = f4569e;
        BigInteger bigIntegerMod = bigIntegerMultiply.mod(bigInteger5);
        BigInteger bigIntegerAdd = x5Var.b.add(bigInteger2);
        i2.g.d(bigIntegerAdd, "add(...)");
        BigInteger bigIntegerAdd2 = x5Var2.b.add(bigInteger4);
        i2.g.d(bigIntegerAdd2, "add(...)");
        BigInteger bigIntegerMultiply2 = bigIntegerAdd.multiply(bigIntegerAdd2);
        i2.g.d(bigIntegerMultiply2, "multiply(...)");
        BigInteger bigIntegerMod2 = bigIntegerMultiply2.mod(bigInteger5);
        BigInteger bigInteger6 = x5Var.f4496d;
        BigInteger bigInteger7 = f4567c;
        BigInteger bigIntegerMultiply3 = bigInteger6.multiply(bigInteger7);
        i2.g.d(bigIntegerMultiply3, "multiply(...)");
        BigInteger bigIntegerMultiply4 = bigIntegerMultiply3.multiply(f4570g);
        i2.g.d(bigIntegerMultiply4, "multiply(...)");
        BigInteger bigIntegerMultiply5 = bigIntegerMultiply4.multiply(x5Var2.f4496d);
        i2.g.d(bigIntegerMultiply5, "multiply(...)");
        BigInteger bigIntegerMod3 = bigIntegerMultiply5.mod(bigInteger5);
        BigInteger bigIntegerMultiply6 = x5Var.f4495c.multiply(bigInteger7);
        i2.g.d(bigIntegerMultiply6, "multiply(...)");
        BigInteger bigIntegerMultiply7 = bigIntegerMultiply6.multiply(x5Var2.f4495c);
        i2.g.d(bigIntegerMultiply7, "multiply(...)");
        BigInteger bigIntegerMod4 = bigIntegerMultiply7.mod(bigInteger5);
        i2.g.b(bigIntegerMod2);
        i2.g.b(bigIntegerMod);
        BigInteger bigIntegerSubtract3 = bigIntegerMod2.subtract(bigIntegerMod);
        i2.g.d(bigIntegerSubtract3, "subtract(...)");
        BigInteger bigIntegerMod5 = bigIntegerSubtract3.mod(bigInteger5);
        i2.g.b(bigIntegerMod4);
        i2.g.b(bigIntegerMod3);
        BigInteger bigIntegerSubtract4 = bigIntegerMod4.subtract(bigIntegerMod3);
        i2.g.d(bigIntegerSubtract4, "subtract(...)");
        BigInteger bigIntegerMod6 = bigIntegerSubtract4.mod(bigInteger5);
        BigInteger bigIntegerAdd3 = bigIntegerMod4.add(bigIntegerMod3);
        i2.g.d(bigIntegerAdd3, "add(...)");
        BigInteger bigIntegerMod7 = bigIntegerAdd3.mod(bigInteger5);
        BigInteger bigIntegerAdd4 = bigIntegerMod2.add(bigIntegerMod);
        i2.g.d(bigIntegerAdd4, "add(...)");
        BigInteger bigIntegerMod8 = bigIntegerAdd4.mod(bigInteger5);
        i2.g.b(bigIntegerMod5);
        i2.g.b(bigIntegerMod6);
        BigInteger bigIntegerMultiply8 = bigIntegerMod5.multiply(bigIntegerMod6);
        i2.g.d(bigIntegerMultiply8, "multiply(...)");
        BigInteger bigIntegerMod9 = bigIntegerMultiply8.mod(bigInteger5);
        i2.g.d(bigIntegerMod9, "mod(...)");
        i2.g.b(bigIntegerMod7);
        i2.g.b(bigIntegerMod8);
        BigInteger bigIntegerMultiply9 = bigIntegerMod7.multiply(bigIntegerMod8);
        i2.g.d(bigIntegerMultiply9, "multiply(...)");
        BigInteger bigIntegerMod10 = bigIntegerMultiply9.mod(bigInteger5);
        i2.g.d(bigIntegerMod10, "mod(...)");
        BigInteger bigIntegerMultiply10 = bigIntegerMod6.multiply(bigIntegerMod7);
        i2.g.d(bigIntegerMultiply10, "multiply(...)");
        BigInteger bigIntegerMod11 = bigIntegerMultiply10.mod(bigInteger5);
        i2.g.d(bigIntegerMod11, "mod(...)");
        BigInteger bigIntegerMultiply11 = bigIntegerMod5.multiply(bigIntegerMod8);
        i2.g.d(bigIntegerMultiply11, "multiply(...)");
        BigInteger bigIntegerMod12 = bigIntegerMultiply11.mod(bigInteger5);
        i2.g.d(bigIntegerMod12, "mod(...)");
        return new x5(bigIntegerMod9, bigIntegerMod10, bigIntegerMod11, bigIntegerMod12);
    }

    public static boolean b(x5 x5Var, x5 x5Var2) {
        BigInteger bigInteger = x5Var.f4494a;
        BigInteger bigInteger2 = x5Var2.f4495c;
        BigInteger bigIntegerMultiply = bigInteger.multiply(bigInteger2);
        i2.g.d(bigIntegerMultiply, "multiply(...)");
        BigInteger bigInteger3 = x5Var2.f4494a;
        BigInteger bigInteger4 = x5Var.f4495c;
        BigInteger bigIntegerMultiply2 = bigInteger3.multiply(bigInteger4);
        i2.g.d(bigIntegerMultiply2, "multiply(...)");
        BigInteger bigIntegerSubtract = bigIntegerMultiply.subtract(bigIntegerMultiply2);
        i2.g.d(bigIntegerSubtract, "subtract(...)");
        BigInteger bigInteger5 = f4569e;
        BigInteger bigIntegerMod = bigIntegerSubtract.mod(bigInteger5);
        BigInteger bigInteger6 = f4566a;
        if (!i2.g.a(bigIntegerMod, bigInteger6)) {
            return false;
        }
        BigInteger bigIntegerMultiply3 = x5Var.b.multiply(bigInteger2);
        i2.g.d(bigIntegerMultiply3, "multiply(...)");
        BigInteger bigIntegerMultiply4 = x5Var2.b.multiply(bigInteger4);
        i2.g.d(bigIntegerMultiply4, "multiply(...)");
        BigInteger bigIntegerSubtract2 = bigIntegerMultiply3.subtract(bigIntegerMultiply4);
        i2.g.d(bigIntegerSubtract2, "subtract(...)");
        return i2.g.a(bigIntegerSubtract2.mod(bigInteger5), bigInteger6);
    }

    public static x5 c(byte[] bArr) {
        if (bArr.length != 32) {
            return null;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        i2.g.d(bArrCopyOf, "copyOf(...)");
        byte b3 = bArrCopyOf[31];
        boolean z2 = (b3 & 128) != 0;
        bArrCopyOf[31] = (byte) (b3 & 127);
        BigInteger bigIntegerD = d(bArrCopyOf);
        if (bigIntegerD.compareTo(f4569e) >= 0) {
            return null;
        }
        return f(bigIntegerD, z2);
    }

    public static BigInteger d(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length + 1];
        int length = bArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            bArr2[bArr.length - i3] = bArr[i3];
        }
        return new BigInteger(bArr2);
    }

    public static x5 e(x5 x5Var, BigInteger bigInteger) {
        x5 x5VarA = f4574k;
        while (bigInteger.signum() > 0) {
            if (bigInteger.testBit(0)) {
                x5VarA = a(x5VarA, x5Var);
            }
            x5Var = a(x5Var, x5Var);
            bigInteger = bigInteger.shiftRight(1);
        }
        return x5VarA;
    }

    public static x5 f(BigInteger bigInteger, boolean z2) {
        BigInteger bigIntegerMultiply = bigInteger.multiply(bigInteger);
        BigInteger bigInteger2 = f4569e;
        BigInteger bigIntegerMod = bigIntegerMultiply.mod(bigInteger2);
        i2.g.b(bigIntegerMod);
        BigInteger bigInteger3 = b;
        BigInteger bigIntegerSubtract = bigIntegerMod.subtract(bigInteger3);
        i2.g.d(bigIntegerSubtract, "subtract(...)");
        BigInteger bigIntegerMod2 = bigIntegerSubtract.mod(bigInteger2);
        BigInteger bigIntegerMultiply2 = f4570g.multiply(bigIntegerMod);
        i2.g.d(bigIntegerMultiply2, "multiply(...)");
        BigInteger bigIntegerAdd = bigIntegerMultiply2.add(bigInteger3);
        i2.g.d(bigIntegerAdd, "add(...)");
        BigInteger bigIntegerMod3 = bigIntegerAdd.mod(bigInteger2);
        BigInteger bigIntegerModPow = bigIntegerMod3.modPow(BigInteger.valueOf(3L), bigInteger2);
        BigInteger bigIntegerModPow2 = bigIntegerMod3.modPow(BigInteger.valueOf(7L), bigInteger2);
        i2.g.b(bigIntegerMod2);
        i2.g.b(bigIntegerModPow);
        BigInteger bigIntegerMultiply3 = bigIntegerMod2.multiply(bigIntegerModPow);
        i2.g.d(bigIntegerMultiply3, "multiply(...)");
        BigInteger bigIntegerRemainder = bigIntegerMultiply3.remainder(bigInteger2);
        i2.g.d(bigIntegerRemainder, "remainder(...)");
        i2.g.b(bigIntegerModPow2);
        BigInteger bigIntegerMultiply4 = bigIntegerMod2.multiply(bigIntegerModPow2);
        i2.g.d(bigIntegerMultiply4, "multiply(...)");
        BigInteger bigIntegerValueOf = BigInteger.valueOf(5L);
        i2.g.d(bigIntegerValueOf, "valueOf(...)");
        BigInteger bigIntegerSubtract2 = bigInteger2.subtract(bigIntegerValueOf);
        i2.g.d(bigIntegerSubtract2, "subtract(...)");
        BigInteger bigIntegerDivide = bigIntegerSubtract2.divide(f4568d);
        i2.g.d(bigIntegerDivide, "divide(...)");
        BigInteger bigIntegerModPow3 = bigIntegerMultiply4.modPow(bigIntegerDivide, bigInteger2);
        i2.g.d(bigIntegerModPow3, "modPow(...)");
        BigInteger bigIntegerMultiply5 = bigIntegerRemainder.multiply(bigIntegerModPow3);
        i2.g.d(bigIntegerMultiply5, "multiply(...)");
        BigInteger bigIntegerMod4 = bigIntegerMultiply5.mod(bigInteger2);
        BigInteger bigIntegerMultiply6 = bigIntegerMod4.multiply(bigIntegerMod4);
        i2.g.d(bigIntegerMultiply6, "multiply(...)");
        BigInteger bigIntegerMultiply7 = bigIntegerMod3.multiply(bigIntegerMultiply6);
        i2.g.d(bigIntegerMultiply7, "multiply(...)");
        BigInteger bigIntegerMod5 = bigIntegerMultiply7.mod(bigInteger2);
        if (!i2.g.a(bigIntegerMod5, bigIntegerMod2.mod(bigInteger2))) {
            BigInteger bigIntegerNegate = bigIntegerMod2.negate();
            i2.g.d(bigIntegerNegate, "negate(...)");
            if (!i2.g.a(bigIntegerMod5, bigIntegerNegate.mod(bigInteger2))) {
                return null;
            }
            BigInteger bigIntegerMultiply8 = bigIntegerMod4.multiply(f4571h);
            i2.g.d(bigIntegerMultiply8, "multiply(...)");
            bigIntegerMod4 = bigIntegerMultiply8.mod(bigInteger2);
        }
        if (bigIntegerMod4.signum() == 0 && z2) {
            return null;
        }
        if (bigIntegerMod4.testBit(0) != z2) {
            BigInteger bigIntegerSubtract3 = bigInteger2.subtract(bigIntegerMod4);
            i2.g.d(bigIntegerSubtract3, "subtract(...)");
            bigIntegerMod4 = bigIntegerSubtract3.mod(bigInteger2);
        }
        i2.g.b(bigIntegerMod4);
        BigInteger bigIntegerMultiply9 = bigIntegerMod4.multiply(bigInteger);
        i2.g.d(bigIntegerMultiply9, "multiply(...)");
        BigInteger bigIntegerMod6 = bigIntegerMultiply9.mod(bigInteger2);
        i2.g.d(bigIntegerMod6, "mod(...)");
        return new x5(bigIntegerMod4, bigInteger, bigInteger3, bigIntegerMod6);
    }

    public static boolean g(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        i2.g.e(bArr, "publicKey");
        try {
            if (bArr.length == 32 && bArr3.length == 64) {
                byte[] bArrW = y1.f.W(bArr3, 0, 32);
                BigInteger bigIntegerD = d(y1.f.W(bArr3, 32, 64));
                x5 x5VarC = c(bArr);
                x5 x5VarC2 = c(bArrW);
                if (x5VarC != null && x5VarC2 != null) {
                    BigInteger bigInteger = f;
                    if (bigIntegerD.compareTo(bigInteger) < 0) {
                        MessageDigest messageDigest = MessageDigest.getInstance("SHA-512");
                        messageDigest.update(bArrW);
                        messageDigest.update(bArr);
                        messageDigest.update(bArr2);
                        byte[] bArrDigest = messageDigest.digest();
                        i2.g.b(bArrDigest);
                        BigInteger bigIntegerMod = d(bArrDigest).mod(bigInteger);
                        x5 x5VarE = e((x5) f4573j.a(), bigIntegerD);
                        i2.g.b(bigIntegerMod);
                        return b(x5VarE, a(x5VarC2, e(x5VarC, bigIntegerMod)));
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
