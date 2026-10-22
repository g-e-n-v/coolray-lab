package u;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import com.ex.auto.R;
import java.lang.reflect.Array;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f3223a = new ThreadLocal();

    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r36v0, types: [android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v5, types: [android.content.res.TypedArray] */
    public static ColorStateList a(Resources resources, XmlResourceParser xmlResourceParser, Resources.Theme theme) {
        int next;
        int depth;
        int color;
        float f;
        int i3;
        int iB;
        TypedValue typedValue;
        resources = resources;
        theme = theme;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParser);
        do {
            next = xmlResourceParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xmlResourceParser.getName();
        if (!name.equals("selector")) {
            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": invalid color state list tag " + name);
        }
        ?? r4 = 1;
        int depth2 = xmlResourceParser.getDepth() + 1;
        Object[] objArr = new int[20][];
        int[] iArr = new int[20];
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int next2 = xmlResourceParser.next();
            if (next2 == r4 || ((depth = xmlResourceParser.getDepth()) < depth2 && next2 == 3)) {
                break;
            }
            if (next2 == 2 && depth <= depth2 && xmlResourceParser.getName().equals("item")) {
                int[] iArr2 = t.a.f3207a;
                ?? ObtainAttributes = theme == null ? resources.obtainAttributes(attributeSetAsAttributeSet, iArr2) : theme.obtainStyledAttributes(attributeSetAsAttributeSet, iArr2, i4, i4);
                int resourceId = ObtainAttributes.getResourceId(i4, -1);
                if (resourceId != -1) {
                    ThreadLocal threadLocal = f3223a;
                    TypedValue typedValue2 = (TypedValue) threadLocal.get();
                    if (typedValue2 == null) {
                        typedValue = new TypedValue();
                        threadLocal.set(typedValue);
                    } else {
                        typedValue = typedValue2;
                    }
                    resources.getValue(resourceId, typedValue, r4);
                    int i6 = typedValue.type;
                    if (i6 < 28 || i6 > 31) {
                        try {
                            color = a(resources, resources.getXml(resourceId), theme).getDefaultColor();
                        } catch (Exception unused) {
                            color = ObtainAttributes.getColor(i4, -65281);
                        }
                    } else {
                        color = ObtainAttributes.getColor(i4, -65281);
                    }
                } else {
                    color = ObtainAttributes.getColor(i4, -65281);
                }
                if (ObtainAttributes.hasValue(r4)) {
                    f = ObtainAttributes.getFloat(r4, 1.0f);
                } else {
                    f = ObtainAttributes.hasValue(3) ? ObtainAttributes.getFloat(3, 1.0f) : 1.0f;
                }
                ?? r16 = r4;
                float f3 = (Build.VERSION.SDK_INT < 31 || !ObtainAttributes.hasValue(2)) ? ObtainAttributes.getFloat(4, -1.0f) : ObtainAttributes.getFloat(2, -1.0f);
                ObtainAttributes.recycle();
                int attributeCount = attributeSetAsAttributeSet.getAttributeCount();
                int[] iArr3 = new int[attributeCount];
                int i7 = i4;
                int i8 = i7;
                while (i7 < attributeCount) {
                    int attributeNameResource = attributeSetAsAttributeSet.getAttributeNameResource(i7);
                    if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R.attr.alpha && attributeNameResource != R.attr.lStar) {
                        int i9 = i8 + 1;
                        if (!attributeSetAsAttributeSet.getAttributeBooleanValue(i7, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr3[i8] = attributeNameResource;
                        i8 = i9;
                    }
                    i7++;
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr3, i8);
                float f4 = 100.0f;
                boolean z2 = (f3 < 0.0f || f3 > 100.0f) ? false : r16 == true ? 1 : 0;
                if (f != 1.0f || z2) {
                    int iAlpha = (int) ((Color.alpha(color) * f) + 0.5f);
                    if (iAlpha < 0) {
                        i3 = 0;
                    } else {
                        i3 = 255;
                        if (iAlpha <= 255) {
                            i3 = iAlpha;
                        }
                    }
                    if (z2) {
                        a aVarA = a.a(color);
                        float f5 = aVarA.f3214a;
                        float f6 = aVarA.b;
                        o oVar = o.f3237k;
                        if (f6 >= 1.0d && Math.round(f3) > 0.0d && Math.round(f3) < 100.0d) {
                            float fMin = f5 < 0.0f ? 0.0f : Math.min(360.0f, f5);
                            float f7 = 0.0f;
                            float f8 = f6;
                            boolean z3 = r16 == true ? 1 : 0;
                            a aVar = null;
                            while (true) {
                                if (Math.abs(f7 - f6) < 0.4f) {
                                    iArrTrimStateSet = iArrTrimStateSet;
                                    attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                                    depth2 = depth2;
                                    if (aVar != null) {
                                        iB = aVar.c(oVar);
                                        break;
                                    }
                                    iB = b.b(f3);
                                    break;
                                }
                                float f9 = 1000.0f;
                                float f10 = f4;
                                float f11 = 0.0f;
                                float f12 = 1000.0f;
                                a aVar2 = null;
                                while (true) {
                                    if (Math.abs(f11 - f10) <= 0.01f) {
                                        iArrTrimStateSet = iArrTrimStateSet;
                                        attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                                        depth2 = depth2;
                                        f4 = f4;
                                        break;
                                    }
                                    f4 = f4;
                                    float f13 = ((f10 - f11) / 2.0f) + f11;
                                    iArrTrimStateSet = iArrTrimStateSet;
                                    int iC = a.b(f13, f8, fMin).c(o.f3237k);
                                    float fC = b.c(Color.red(iC));
                                    float fC2 = b.c(Color.green(iC));
                                    float fC3 = b.c(Color.blue(iC));
                                    float[] fArr = b.f3220d[r16 == true ? 1 : 0];
                                    float f14 = ((fC3 * fArr[2]) + ((fC2 * fArr[r16 == true ? 1 : 0]) + (fC * fArr[0]))) / f4;
                                    float fCbrt = f14 <= 0.008856452f ? f14 * 903.2963f : (((float) Math.cbrt(f14)) * 116.0f) - 16.0f;
                                    float fAbs = Math.abs(f3 - fCbrt);
                                    if (fAbs < 0.2f) {
                                        a aVarA2 = a.a(iC);
                                        attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                                        a aVarB = a.b(aVarA2.f3215c, aVarA2.b, fMin);
                                        float f15 = aVarA2.f3216d - aVarB.f3216d;
                                        float f16 = aVarA2.f3217e - aVarB.f3217e;
                                        float f17 = aVarA2.f - aVarB.f;
                                        depth2 = depth2;
                                        float fPow = (float) (Math.pow(Math.sqrt((f17 * f17) + (f16 * f16) + (f15 * f15)), 0.63d) * 1.41d);
                                        if (fPow <= 1.0f) {
                                            f12 = fPow;
                                            f9 = fAbs;
                                            aVar2 = aVarA2;
                                        }
                                    } else {
                                        attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                                        depth2 = depth2;
                                    }
                                    if (f9 == 0.0f && f12 == 0.0f) {
                                        break;
                                    }
                                    if (fCbrt < f3) {
                                        f11 = f13;
                                    } else {
                                        f10 = f13;
                                    }
                                    f4 = f4;
                                    iArrTrimStateSet = iArrTrimStateSet;
                                    attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                                    depth2 = depth2;
                                }
                                a aVar3 = aVar2;
                                if (!z3) {
                                    if (aVar3 == null) {
                                        f6 = f8;
                                    } else {
                                        aVar = aVar3;
                                        f7 = f8;
                                    }
                                    f8 = ((f6 - f7) / 2.0f) + f7;
                                } else {
                                    if (aVar3 != null) {
                                        iB = aVar3.c(oVar);
                                        break;
                                    }
                                    f8 = ((f6 - f7) / 2.0f) + f7;
                                    z3 = false;
                                }
                            }
                        } else {
                            iArrTrimStateSet = iArrTrimStateSet;
                            attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                            depth2 = depth2;
                            iB = b.b(f3);
                        }
                        color = iB;
                    } else {
                        iArrTrimStateSet = iArrTrimStateSet;
                        attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                        depth2 = depth2;
                    }
                    color = (16777215 & color) | (i3 << 24);
                } else {
                    iArrTrimStateSet = iArrTrimStateSet;
                    attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                    depth2 = depth2;
                }
                int i10 = i5 + 1;
                if (i10 > iArr.length) {
                    int[] iArr4 = new int[i5 <= 4 ? 8 : i5 * 2];
                    System.arraycopy(iArr, 0, iArr4, 0, i5);
                    iArr = iArr4;
                }
                iArr[i5] = color;
                if (i10 > objArr.length) {
                    Object[] objArr2 = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i5 > 4 ? i5 * 2 : 8);
                    System.arraycopy(objArr, 0, objArr2, 0, i5);
                    objArr = objArr2;
                }
                objArr[i5] = iArrTrimStateSet;
                objArr = (int[][]) objArr;
                i5 = i10;
                r4 = r16 == true ? 1 : 0;
                attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                depth2 = depth2;
                i4 = 0;
            } else {
                AttributeSet attributeSet = attributeSetAsAttributeSet;
                int i11 = depth2;
                r4 = r4 == true ? 1 : 0;
                attributeSetAsAttributeSet = attributeSet;
                depth2 = i11;
                i4 = 0;
            }
        }
        int[] iArr5 = new int[i5];
        int[][] iArr6 = new int[i5][];
        System.arraycopy(iArr, 0, iArr5, 0, i5);
        System.arraycopy(objArr, 0, iArr6, 0, i5);
        return new ColorStateList(iArr6, iArr5);
    }
}
