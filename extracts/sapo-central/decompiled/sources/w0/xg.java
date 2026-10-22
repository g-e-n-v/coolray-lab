package w0;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.util.Log;
import com.ex.auto.Politica;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public final class xg {
    public static final int A;
    public static final int B;
    public static final int C;
    public static final int D;
    public static final int E;
    public static final int[] F;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f4529k = Politica.h(39);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f4530l = Politica.h(40);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f4531m = Politica.h(21);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f4532n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f4533o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f4534p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f4535q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f4536r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f4537s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f4538t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f4539u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f4540v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f4541w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f4542x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f4543y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f4544z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f4545a = null;
    public final CarPropertyManager b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final wg f4546c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Float f4547d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Float f4548e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f4549g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f4550h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayDeque f4551i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4552j;

    static {
        Politica.h(22);
        f4532n = Politica.h(33);
        f4533o = Politica.h(23);
        f4534p = Politica.h(27);
        f4535q = Politica.h(28);
        f4536r = Politica.h(29);
        f4537s = Politica.h(30);
        f4538t = Politica.h(19);
        f4539u = Politica.h(20);
        Politica.h(31);
        f4540v = Politica.h(41);
        f4541w = Politica.h(46);
        f4542x = Politica.h(47);
        f4543y = Politica.h(48);
        f4544z = Politica.h(49);
        A = Politica.h(50);
        B = Politica.h(24);
        C = Politica.h(42);
        D = Politica.h(43);
        E = Politica.h(32);
        F = new int[]{0, 1, 16777216};
    }

    public xg(CarPropertyManager carPropertyManager) {
        wg wgVar = new wg();
        wgVar.I = "unknown";
        this.f4546c = wgVar;
        this.f4551i = new ArrayDeque();
        this.f4552j = 0;
        this.b = carPropertyManager;
    }

    public final Integer a(int i3) {
        Integer numE = e(i3);
        if (numE == null) {
            this.f4552j = 0;
            return null;
        }
        if (numE.intValue() == 0) {
            this.f4552j = 1;
            return null;
        }
        this.f4552j = 2;
        return numE;
    }

    /* JADX WARN: Code duplicated, block: B:79:0x0157  */
    public final synchronized wg b() {
        Boolean boolValueOf;
        String str;
        Float f;
        Float f3;
        Float fValueOf;
        if (this.b == null) {
            return this.f4546c.a();
        }
        Integer numE = e(291504648);
        if (numE != null) {
            this.f4546c.f4457a = Float.valueOf(Math.abs(numE.intValue() / 18.0f));
        } else {
            Float fC = c(291504647);
            if (fC != null) {
                this.f4546c.f4457a = Float.valueOf(Math.abs(fC.floatValue()));
            }
        }
        Integer numE2 = e(289408001);
        boolean z2 = true;
        if (numE2 != null) {
            wg wgVar = this.f4546c;
            wgVar.b = numE2;
            int iIntValue = numE2.intValue();
            String string = "D";
            if (iIntValue == 1) {
                string = "N";
            } else if (iIntValue == 2) {
                string = "R";
            } else if (iIntValue == 4) {
                string = "P";
            } else if (iIntValue != 8) {
                if (iIntValue >= 16) {
                    StringBuilder sb = new StringBuilder("D");
                    sb.append(Integer.numberOfTrailingZeros(iIntValue) - 3);
                    string = sb.toString();
                } else {
                    string = "?";
                }
            }
            wgVar.f4458c = string;
        }
        Float fC2 = c(291504644);
        if (fC2 != null) {
            this.f4546c.f = fC2;
        }
        Float fC3 = c(289407752);
        if (fC3 != null) {
            this.f4546c.f4460e = fC3;
        }
        Float fP = e8.P(c(f4533o));
        if (fP != null) {
            this.f4546c.f4459d = fP;
        }
        this.f4546c.f4462h = j(f4534p, 0);
        this.f4546c.f4463i = j(A, 0);
        this.f4546c.f4464j = j(B, 0);
        int i3 = f4535q;
        CarPropertyManager carPropertyManager = this.b;
        if (carPropertyManager == null) {
            boolValueOf = null;
            break;
        }
        int[] iArr = F;
        int length = iArr.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                boolValueOf = null;
                break;
            }
            int i5 = iArr[i4];
            try {
                try {
                    boolValueOf = Boolean.valueOf(carPropertyManager.getBooleanProperty(i3, i5));
                    break;
                } catch (Exception unused) {
                    CarPropertyValue property = carPropertyManager.getProperty(i3, i5);
                    Object value = property != null ? property.getValue() : null;
                    if (value instanceof Boolean) {
                        boolValueOf = (Boolean) value;
                        break;
                    }
                    if (value instanceof Integer) {
                        boolValueOf = Boolean.valueOf(((Integer) value).intValue() != 0);
                        break;
                    }
                    i4++;
                }
            } catch (Exception unused2) {
                i4++;
            }
            i4++;
        }
        if (boolValueOf != null) {
            this.f4546c.f4467m = boolValueOf;
        }
        Float fC4 = c(f4536r);
        if (fC4 != null) {
            this.f4546c.f4465k = fC4;
        }
        Float fC5 = c(f4537s);
        if (fC5 != null) {
            this.f4546c.f4466l = fC5;
        }
        c(f4538t);
        Integer numE3 = e(f4539u);
        if (numE3 != null) {
            float fIntValue = numE3.intValue();
            if (Float.isNaN(fIntValue)) {
                fValueOf = null;
            } else if (fIntValue >= 5.0f && fIntValue <= 20.0f) {
                fValueOf = Float.valueOf(fIntValue);
            } else if (fIntValue >= 5000.0f && fIntValue <= 20000.0f) {
                fValueOf = Float.valueOf(fIntValue / 1000.0f);
            } else if (fIntValue < 50.0f || fIntValue > 200.0f) {
                fValueOf = null;
            } else {
                fValueOf = Float.valueOf(fIntValue / 10.0f);
            }
            if (fValueOf != null) {
                this.f4546c.f4471q = fValueOf;
            }
        }
        int[] iArr2 = {117, 1, 49, 5, 0};
        int i6 = 0;
        Integer numF = null;
        while (true) {
            if (i6 >= 5) {
                str = null;
                break;
            }
            int i7 = iArr2[i6];
            Integer numJ = j(356517120, i7);
            if (numJ != null) {
                str = "vivo:area=0x" + Integer.toHexString(i7);
                numF = numJ;
                break;
            }
            i6++;
            numF = numJ;
        }
        if (numF == null) {
            int[] iArr3 = {117, 1, 49, 5, 0};
            for (int i8 = 0; i8 < 5; i8++) {
                int i9 = iArr3[i8];
                numF = f(356517120, i9);
                if (numF != null) {
                    str = "semTs:area=0x" + Integer.toHexString(i9);
                    break;
                }
            }
        }
        if (numF != null) {
            this.f4546c.f4468n = numF;
            if (!str.equals(this.f4545a)) {
                Log.i("TelemetryReader", "acFanLevel=" + numF + " via " + str);
                this.f4545a = str;
            }
        }
        Float fD = d(f4532n);
        if (fD == null || fD.floatValue() == 0.0f) {
            Float[] fArr = {c(f4529k), c(354419971)};
            int i10 = 0;
            while (true) {
                if (i10 >= 2) {
                    int i11 = 0;
                    while (true) {
                        if (i11 >= 2) {
                            fD = null;
                            break;
                        }
                        f = fArr[i11];
                        if (f == null) {
                            i11++;
                        }
                    }
                } else {
                    f = fArr[i10];
                    if (f == null || f.floatValue() == 0.0f) {
                        i10++;
                    }
                }
                fD = f;
                break;
            }
        }
        if (fD != null) {
            this.f4546c.f4469o = fD;
        }
        Float fR = e8.R(f(f4531m, 0));
        if (fR != null) {
            this.f4546c.f4470p = fR;
        }
        if (this.f4546c.f4470p == null) {
            Float fC6 = c(f4530l);
            if (fC6 == null || fC6.floatValue() == 0.0f) {
                Float fC7 = c(289408771);
                if (fC7 != null) {
                    this.f4546c.f4470p = fC7;
                }
            } else {
                this.f4546c.f4470p = Float.valueOf(fC6.floatValue() / 10.0f);
            }
        }
        this.f4546c.f4472r = j(f4541w, 0);
        wg wgVar2 = this.f4546c;
        int i12 = f4542x;
        wgVar2.f4473s = i(i12, 1);
        this.f4546c.f4474t = i(i12, 2);
        wg wgVar3 = this.f4546c;
        int i13 = f4543y;
        wgVar3.f4475u = j(i13, 1);
        this.f4546c.f4476v = j(i13, 2);
        wg wgVar4 = this.f4546c;
        int i14 = f4544z;
        wgVar4.f4477w = i(i14, 1);
        this.f4546c.f4478x = i(i14, 2);
        this.f4546c.f4479y = a(f4540v);
        wg wgVar5 = this.f4546c;
        wgVar5.B = this.f4552j;
        wgVar5.f4480z = a(C);
        wg wgVar6 = this.f4546c;
        wgVar6.C = this.f4552j;
        wgVar6.A = a(D);
        this.f4546c.D = this.f4552j;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.f4546c.f4459d != null) {
            vg vgVar = (vg) this.f4551i.peekLast();
            if (vgVar != null) {
                float fFloatValue = this.f4546c.f4459d.floatValue() - vgVar.b;
                if (Math.abs(fFloatValue) >= 0.05f) {
                    Math.abs(fFloatValue);
                }
            }
            this.f4551i.addLast(new vg(jCurrentTimeMillis, this.f4546c.f4459d.floatValue()));
            while (!this.f4551i.isEmpty() && jCurrentTimeMillis - ((vg) this.f4551i.peekFirst()).f4410a > 30000) {
                this.f4551i.pollFirst();
            }
            vg vgVar2 = (vg) this.f4551i.peekFirst();
            vg vgVar3 = (vg) this.f4551i.peekLast();
            if (vgVar2 != null && vgVar3 != null) {
                long j3 = vgVar3.f4410a - vgVar2.f4410a;
                if (j3 >= 5000) {
                    this.f4546c.f4461g = Float.valueOf((((((vgVar2.b - vgVar3.b) / 100.0f) * 39000.0f) * 3600.0f) / (j3 / 1000.0f)) / 1000.0f);
                    Float f4 = this.f4546c.f4457a;
                    if (f4 != null && f4.floatValue() > 5.0f) {
                        this.f4546c.f4461g.getClass();
                        this.f4546c.f4457a.getClass();
                    }
                }
            }
        }
        wg wgVar7 = this.f4546c;
        wgVar7.E = null;
        wgVar7.F = null;
        wgVar7.G = null;
        Integer num = wgVar7.b;
        if (num != null && num.intValue() == 4 && (f3 = this.f4546c.f4461g) != null) {
            float f5 = -f3.floatValue();
            if (f5 >= 0.5f) {
                wg wgVar8 = this.f4546c;
                wgVar8.E = Boolean.TRUE;
                wgVar8.G = Float.valueOf(f5);
                wg wgVar9 = this.f4546c;
                if (f5 < 15.0f) {
                    z2 = false;
                }
                wgVar9.F = Boolean.valueOf(z2);
            } else {
                this.f4546c.E = Boolean.FALSE;
            }
        }
        g(jCurrentTimeMillis);
        this.f4546c.I = h();
        return this.f4546c.a();
    }

    public final Float c(int i3) {
        CarPropertyManager carPropertyManager = this.b;
        if (carPropertyManager == null) {
            return null;
        }
        for (int i4 : F) {
            try {
                try {
                    return Float.valueOf(carPropertyManager.getFloatProperty(i3, i4));
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                CarPropertyValue property = carPropertyManager.getProperty(i3, i4);
                Object value = property != null ? property.getValue() : null;
                if (value instanceof Float) {
                    return (Float) value;
                }
                if (value instanceof Integer) {
                    return Float.valueOf(((Integer) value).floatValue());
                }
                if (value instanceof Long) {
                    return Float.valueOf(((Long) value).floatValue());
                }
            }
        }
        return null;
    }

    public final Float d(int i3) {
        CarPropertyManager carPropertyManager = this.b;
        if (carPropertyManager != null) {
            try {
                try {
                    return Float.valueOf(carPropertyManager.getFloatProperty(i3, 1));
                } catch (Exception unused) {
                    CarPropertyValue property = carPropertyManager.getProperty(i3, 1);
                    Object value = property != null ? property.getValue() : null;
                    if (value instanceof Float) {
                        return (Float) value;
                    }
                    if (value instanceof Integer) {
                        return Float.valueOf(((Integer) value).floatValue());
                    }
                    if (value instanceof Long) {
                        return Float.valueOf(((Long) value).floatValue());
                    }
                }
            } catch (Exception unused2) {
            }
        }
        return null;
    }

    public final Integer e(int i3) {
        CarPropertyManager carPropertyManager = this.b;
        if (carPropertyManager == null) {
            return null;
        }
        for (int i4 : F) {
            try {
                return Integer.valueOf(carPropertyManager.getIntProperty(i3, i4));
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public final Integer f(int i3, int i4) {
        CarPropertyManager carPropertyManager = this.b;
        if (carPropertyManager == null) {
            return null;
        }
        try {
            try {
                return Integer.valueOf(carPropertyManager.getIntProperty(i3, i4));
            } catch (Exception unused) {
                CarPropertyValue property = carPropertyManager.getProperty(i3, i4);
                Object value = property != null ? property.getValue() : null;
                if (value instanceof Integer) {
                    return (Integer) value;
                }
                if (value instanceof Float) {
                    return Integer.valueOf(Math.round(((Float) value).floatValue()));
                }
                return null;
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    public final void g(long j3) {
        boolean z2;
        Integer num;
        boolean z3 = this.f;
        wg wgVar = this.f4546c;
        Float f = wgVar.f4459d;
        boolean z4 = false;
        if (f != null) {
            Float f3 = this.f4547d;
            z2 = (f3 == null || f.equals(f3)) ? false : true;
            this.f4547d = wgVar.f4459d;
        } else {
            z2 = false;
        }
        Float f4 = wgVar.f;
        if (f4 != null) {
            Float f5 = this.f4548e;
            if (f5 != null && !f4.equals(f5)) {
                z2 = true;
            }
            this.f4548e = wgVar.f;
        }
        Float f6 = wgVar.f4457a;
        if ((f6 != null && f6.floatValue() > 0.0f) || ((num = wgVar.b) != null && num.intValue() != 4)) {
            z4 = true;
        }
        if (z2 || z4) {
            this.f = true;
            this.f4549g = j3;
            wgVar.H = Boolean.TRUE;
        } else if (!z3) {
            this.f = true;
            this.f4549g = j3;
        } else if (j3 - this.f4549g >= 180000) {
            wgVar.H = Boolean.FALSE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0033  */
    public final String h() {
        String strTrim;
        String str = this.f4550h;
        if (str != null) {
            return str;
        }
        String str2 = null;
        CarPropertyManager carPropertyManager = this.b;
        if (carPropertyManager != null) {
            try {
                CarPropertyValue property = carPropertyManager.getProperty(E, 0);
                Object value = property != null ? property.getValue() : null;
                if (!(value instanceof String) || ((String) value).trim().isEmpty()) {
                    strTrim = null;
                } else {
                    strTrim = ((String) value).trim();
                }
            } catch (Throwable unused) {
            }
        } else {
            strTrim = null;
        }
        if (strTrim != null) {
            this.f4550h = strTrim;
            return strTrim;
        }
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "persist.device.real.serialno", "");
            if ((objInvoke instanceof String) && !((String) objInvoke).isEmpty()) {
                str2 = (String) objInvoke;
            }
        } catch (Throwable unused2) {
        }
        if (str2 == null) {
            str2 = "unknown";
        }
        this.f4550h = str2;
        return str2;
    }

    public final Float i(int i3, int i4) {
        CarPropertyManager carPropertyManager = this.b;
        if (carPropertyManager == null) {
            return null;
        }
        try {
            CarPropertyValue property = carPropertyManager.getProperty(i3, i4);
            if (property != null && t1.L(Long.valueOf(property.getTimestamp()), Integer.valueOf(property.getStatus())) == i5.f3706a) {
                Object value = property.getValue();
                if (value instanceof Float) {
                    return (Float) value;
                }
                if (value instanceof Integer) {
                    return Float.valueOf(((Integer) value).floatValue());
                }
                if (value instanceof Long) {
                    return Float.valueOf(((Long) value).floatValue());
                }
                return null;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public final Integer j(int i3, int i4) {
        CarPropertyManager carPropertyManager = this.b;
        if (carPropertyManager == null) {
            return null;
        }
        try {
            CarPropertyValue property = carPropertyManager.getProperty(i3, i4);
            if (property != null && t1.L(Long.valueOf(property.getTimestamp()), Integer.valueOf(property.getStatus())) == i5.f3706a) {
                Object value = property.getValue();
                if (value instanceof Integer) {
                    return (Integer) value;
                }
                if (value instanceof Float) {
                    return Integer.valueOf(Math.round(((Float) value).floatValue()));
                }
                return null;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
