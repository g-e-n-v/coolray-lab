package q;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f2828d = {0, 4, 8};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SparseIntArray f2829e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f2830a = new HashMap();
    public final boolean b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f2831c = new HashMap();

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f2829e = sparseIntArray;
        sparseIntArray.append(77, 25);
        sparseIntArray.append(78, 26);
        sparseIntArray.append(80, 29);
        sparseIntArray.append(81, 30);
        sparseIntArray.append(87, 36);
        sparseIntArray.append(86, 35);
        sparseIntArray.append(59, 4);
        sparseIntArray.append(58, 3);
        sparseIntArray.append(56, 1);
        sparseIntArray.append(95, 6);
        sparseIntArray.append(96, 7);
        sparseIntArray.append(66, 17);
        sparseIntArray.append(67, 18);
        sparseIntArray.append(68, 19);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(82, 32);
        sparseIntArray.append(83, 33);
        sparseIntArray.append(65, 10);
        sparseIntArray.append(64, 9);
        sparseIntArray.append(99, 13);
        sparseIntArray.append(102, 16);
        sparseIntArray.append(100, 14);
        sparseIntArray.append(97, 11);
        sparseIntArray.append(101, 15);
        sparseIntArray.append(98, 12);
        sparseIntArray.append(90, 40);
        sparseIntArray.append(75, 39);
        sparseIntArray.append(74, 41);
        sparseIntArray.append(89, 42);
        sparseIntArray.append(73, 20);
        sparseIntArray.append(88, 37);
        sparseIntArray.append(63, 5);
        sparseIntArray.append(76, 82);
        sparseIntArray.append(85, 82);
        sparseIntArray.append(79, 82);
        sparseIntArray.append(57, 82);
        sparseIntArray.append(55, 82);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(91, 54);
        sparseIntArray.append(69, 55);
        sparseIntArray.append(92, 56);
        sparseIntArray.append(70, 57);
        sparseIntArray.append(93, 58);
        sparseIntArray.append(71, 59);
        sparseIntArray.append(60, 61);
        sparseIntArray.append(62, 62);
        sparseIntArray.append(61, 63);
        sparseIntArray.append(27, 64);
        sparseIntArray.append(107, 65);
        sparseIntArray.append(34, 66);
        sparseIntArray.append(108, 67);
        sparseIntArray.append(104, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(103, 68);
        sparseIntArray.append(94, 69);
        sparseIntArray.append(72, 70);
        sparseIntArray.append(31, 71);
        sparseIntArray.append(29, 72);
        sparseIntArray.append(30, 73);
        sparseIntArray.append(32, 74);
        sparseIntArray.append(28, 75);
        sparseIntArray.append(105, 76);
        sparseIntArray.append(84, 77);
        sparseIntArray.append(109, 78);
        sparseIntArray.append(54, 80);
        sparseIntArray.append(53, 81);
    }

    public static int[] b(a aVar, String str) {
        int iIntValue;
        String[] strArrSplit = str.split(",");
        Context context = aVar.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i3 = 0;
        int i4 = 0;
        while (i3 < strArrSplit.length) {
            String strTrim = strArrSplit[i3].trim();
            Object obj = null;
            try {
                iIntValue = p.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (iIntValue == 0 && aVar.isInEditMode() && (aVar.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) aVar.getParent();
                if (strTrim != null) {
                    HashMap map = constraintLayout.f260m;
                    if (map != null && map.containsKey(strTrim)) {
                        obj = constraintLayout.f260m.get(strTrim);
                    }
                } else {
                    constraintLayout.getClass();
                }
                if (obj != null && (obj instanceof Integer)) {
                    iIntValue = ((Integer) obj).intValue();
                }
            }
            iArr[i4] = iIntValue;
            i3++;
            i4++;
        }
        return i4 != strArrSplit.length ? Arrays.copyOf(iArr, i4) : iArr;
    }

    public static h c(Context context, AttributeSet attributeSet) {
        h hVar = new h();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.f2832a);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            j jVar = hVar.f2773c;
            l lVar = hVar.f2775e;
            i iVar = hVar.f2774d;
            if (index != 1 && 23 != index && 24 != index) {
                jVar.getClass();
                iVar.getClass();
                lVar.getClass();
            }
            SparseIntArray sparseIntArray = f2829e;
            int i4 = sparseIntArray.get(index);
            k kVar = hVar.b;
            switch (i4) {
                case 1:
                    iVar.f2798o = e(typedArrayObtainStyledAttributes, index, iVar.f2798o);
                    break;
                case 2:
                    iVar.F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.F);
                    break;
                case 3:
                    iVar.f2797n = e(typedArrayObtainStyledAttributes, index, iVar.f2797n);
                    break;
                case 4:
                    iVar.f2796m = e(typedArrayObtainStyledAttributes, index, iVar.f2796m);
                    break;
                case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                    iVar.f2805v = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case MusicClient.TYPE_GESTURE /* 6 */:
                    iVar.f2809z = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, iVar.f2809z);
                    break;
                case PlaybackState.STATE_ERROR /* 7 */:
                    iVar.A = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, iVar.A);
                    break;
                case 8:
                    iVar.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.G);
                    break;
                case 9:
                    iVar.f2802s = e(typedArrayObtainStyledAttributes, index, iVar.f2802s);
                    break;
                case 10:
                    iVar.f2801r = e(typedArrayObtainStyledAttributes, index, iVar.f2801r);
                    break;
                case 11:
                    iVar.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.L);
                    break;
                case 12:
                    iVar.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.M);
                    break;
                case 13:
                    iVar.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.I);
                    break;
                case 14:
                    iVar.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.K);
                    break;
                case 15:
                    iVar.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.N);
                    break;
                case 16:
                    iVar.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.J);
                    break;
                case 17:
                    iVar.f2782d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, iVar.f2782d);
                    break;
                case 18:
                    iVar.f2784e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, iVar.f2784e);
                    break;
                case 19:
                    iVar.f = typedArrayObtainStyledAttributes.getFloat(index, iVar.f);
                    break;
                case 20:
                    iVar.f2803t = typedArrayObtainStyledAttributes.getFloat(index, iVar.f2803t);
                    break;
                case 21:
                    iVar.f2780c = typedArrayObtainStyledAttributes.getLayoutDimension(index, iVar.f2780c);
                    break;
                case 22:
                    int i5 = typedArrayObtainStyledAttributes.getInt(index, kVar.f2814a);
                    kVar.f2814a = i5;
                    kVar.f2814a = f2828d[i5];
                    break;
                case 23:
                    iVar.b = typedArrayObtainStyledAttributes.getLayoutDimension(index, iVar.b);
                    break;
                case 24:
                    iVar.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.C);
                    break;
                case 25:
                    iVar.f2787g = e(typedArrayObtainStyledAttributes, index, iVar.f2787g);
                    break;
                case 26:
                    iVar.f2789h = e(typedArrayObtainStyledAttributes, index, iVar.f2789h);
                    break;
                case 27:
                    iVar.B = typedArrayObtainStyledAttributes.getInt(index, iVar.B);
                    break;
                case 28:
                    iVar.D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.D);
                    break;
                case 29:
                    iVar.f2791i = e(typedArrayObtainStyledAttributes, index, iVar.f2791i);
                    break;
                case 30:
                    iVar.f2793j = e(typedArrayObtainStyledAttributes, index, iVar.f2793j);
                    break;
                case 31:
                    iVar.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.H);
                    break;
                case 32:
                    iVar.f2799p = e(typedArrayObtainStyledAttributes, index, iVar.f2799p);
                    break;
                case 33:
                    iVar.f2800q = e(typedArrayObtainStyledAttributes, index, iVar.f2800q);
                    break;
                case 34:
                    iVar.E = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.E);
                    break;
                case 35:
                    iVar.f2795l = e(typedArrayObtainStyledAttributes, index, iVar.f2795l);
                    break;
                case 36:
                    iVar.f2794k = e(typedArrayObtainStyledAttributes, index, iVar.f2794k);
                    break;
                case 37:
                    iVar.f2804u = typedArrayObtainStyledAttributes.getFloat(index, iVar.f2804u);
                    break;
                case 38:
                    hVar.f2772a = typedArrayObtainStyledAttributes.getResourceId(index, hVar.f2772a);
                    break;
                case 39:
                    iVar.P = typedArrayObtainStyledAttributes.getFloat(index, iVar.P);
                    break;
                case 40:
                    iVar.O = typedArrayObtainStyledAttributes.getFloat(index, iVar.O);
                    break;
                case 41:
                    iVar.Q = typedArrayObtainStyledAttributes.getInt(index, iVar.Q);
                    break;
                case 42:
                    iVar.R = typedArrayObtainStyledAttributes.getInt(index, iVar.R);
                    break;
                case 43:
                    kVar.f2815c = typedArrayObtainStyledAttributes.getFloat(index, kVar.f2815c);
                    break;
                case 44:
                    lVar.f2826k = true;
                    lVar.f2827l = typedArrayObtainStyledAttributes.getDimension(index, lVar.f2827l);
                    break;
                case 45:
                    lVar.b = typedArrayObtainStyledAttributes.getFloat(index, lVar.b);
                    break;
                case 46:
                    lVar.f2819c = typedArrayObtainStyledAttributes.getFloat(index, lVar.f2819c);
                    break;
                case 47:
                    lVar.f2820d = typedArrayObtainStyledAttributes.getFloat(index, lVar.f2820d);
                    break;
                case 48:
                    lVar.f2821e = typedArrayObtainStyledAttributes.getFloat(index, lVar.f2821e);
                    break;
                case 49:
                    lVar.f = typedArrayObtainStyledAttributes.getDimension(index, lVar.f);
                    break;
                case 50:
                    lVar.f2822g = typedArrayObtainStyledAttributes.getDimension(index, lVar.f2822g);
                    break;
                case 51:
                    lVar.f2823h = typedArrayObtainStyledAttributes.getDimension(index, lVar.f2823h);
                    break;
                case 52:
                    lVar.f2824i = typedArrayObtainStyledAttributes.getDimension(index, lVar.f2824i);
                    break;
                case 53:
                    lVar.f2825j = typedArrayObtainStyledAttributes.getDimension(index, lVar.f2825j);
                    break;
                case 54:
                    iVar.S = typedArrayObtainStyledAttributes.getInt(index, iVar.S);
                    break;
                case 55:
                    iVar.T = typedArrayObtainStyledAttributes.getInt(index, iVar.T);
                    break;
                case 56:
                    iVar.U = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.U);
                    break;
                case 57:
                    iVar.V = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.V);
                    break;
                case 58:
                    iVar.W = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.W);
                    break;
                case 59:
                    iVar.X = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.X);
                    break;
                case 60:
                    lVar.f2818a = typedArrayObtainStyledAttributes.getFloat(index, lVar.f2818a);
                    break;
                case 61:
                    iVar.f2806w = e(typedArrayObtainStyledAttributes, index, iVar.f2806w);
                    break;
                case 62:
                    iVar.f2807x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f2807x);
                    break;
                case 63:
                    iVar.f2808y = typedArrayObtainStyledAttributes.getFloat(index, iVar.f2808y);
                    break;
                case 64:
                    jVar.f2811a = e(typedArrayObtainStyledAttributes, index, jVar.f2811a);
                    break;
                case 65:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        typedArrayObtainStyledAttributes.getString(index);
                        jVar.getClass();
                    } else {
                        String str = m.a.f2431a[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        jVar.getClass();
                    }
                    break;
                case 66:
                    typedArrayObtainStyledAttributes.getInt(index, 0);
                    jVar.getClass();
                    break;
                case 67:
                    jVar.f2813d = typedArrayObtainStyledAttributes.getFloat(index, jVar.f2813d);
                    break;
                case 68:
                    kVar.f2816d = typedArrayObtainStyledAttributes.getFloat(index, kVar.f2816d);
                    break;
                case 69:
                    iVar.Y = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 70:
                    iVar.Z = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    iVar.f2778a0 = typedArrayObtainStyledAttributes.getInt(index, iVar.f2778a0);
                    break;
                case 73:
                    iVar.f2779b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f2779b0);
                    break;
                case 74:
                    iVar.f2785e0 = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 75:
                    iVar.f2792i0 = typedArrayObtainStyledAttributes.getBoolean(index, iVar.f2792i0);
                    break;
                case 76:
                    jVar.b = typedArrayObtainStyledAttributes.getInt(index, jVar.b);
                    break;
                case 77:
                    iVar.f2786f0 = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 78:
                    kVar.b = typedArrayObtainStyledAttributes.getInt(index, kVar.b);
                    break;
                case 79:
                    jVar.f2812c = typedArrayObtainStyledAttributes.getFloat(index, jVar.f2812c);
                    break;
                case 80:
                    iVar.f2788g0 = typedArrayObtainStyledAttributes.getBoolean(index, iVar.f2788g0);
                    break;
                case 81:
                    iVar.f2790h0 = typedArrayObtainStyledAttributes.getBoolean(index, iVar.f2790h0);
                    break;
                case 82:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                    break;
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return hVar;
    }

    public static int e(TypedArray typedArray, int i3, int i4) {
        int resourceId = typedArray.getResourceId(i3, i4);
        return resourceId == -1 ? typedArray.getInt(i3, -1) : resourceId;
    }

    public final void a(Context context, int i3) {
        m mVar = this;
        ConstraintLayout constraintLayout = (ConstraintLayout) LayoutInflater.from(context).inflate(i3, (ViewGroup) null);
        int childCount = constraintLayout.getChildCount();
        HashMap map = mVar.f2831c;
        map.clear();
        int i4 = 0;
        while (i4 < childCount) {
            View childAt = constraintLayout.getChildAt(i4);
            e eVar = (e) childAt.getLayoutParams();
            int id = childAt.getId();
            if (mVar.b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!map.containsKey(Integer.valueOf(id))) {
                map.put(Integer.valueOf(id), new h());
            }
            h hVar = (h) map.get(Integer.valueOf(id));
            HashMap map2 = new HashMap();
            Class<?> cls = childAt.getClass();
            HashMap map3 = mVar.f2830a;
            for (String str : map3.keySet()) {
                b bVar = (b) map3.get(str);
                try {
                    if (str.equals("BackgroundColor")) {
                        map2.put(str, new b(bVar, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                    } else {
                        map2.put(str, new b(bVar, cls.getMethod("getMap" + str, null).invoke(childAt, null)));
                    }
                } catch (IllegalAccessException e3) {
                    e3.printStackTrace();
                } catch (NoSuchMethodException e4) {
                    e4.printStackTrace();
                } catch (InvocationTargetException e5) {
                    e5.printStackTrace();
                }
            }
            hVar.f = map2;
            k kVar = hVar.b;
            i iVar = hVar.f2774d;
            l lVar = hVar.f2775e;
            hVar.f2772a = id;
            iVar.f2787g = eVar.f2732d;
            iVar.f2789h = eVar.f2734e;
            iVar.f2791i = eVar.f;
            iVar.f2793j = eVar.f2737g;
            iVar.f2794k = eVar.f2739h;
            iVar.f2795l = eVar.f2741i;
            iVar.f2796m = eVar.f2743j;
            iVar.f2797n = eVar.f2745k;
            iVar.f2798o = eVar.f2747l;
            iVar.f2799p = eVar.f2751p;
            iVar.f2800q = eVar.f2752q;
            iVar.f2801r = eVar.f2753r;
            iVar.f2802s = eVar.f2754s;
            iVar.f2803t = eVar.f2761z;
            iVar.f2804u = eVar.A;
            iVar.f2805v = eVar.B;
            iVar.f2806w = eVar.f2748m;
            iVar.f2807x = eVar.f2749n;
            iVar.f2808y = eVar.f2750o;
            iVar.f2809z = eVar.P;
            iVar.A = eVar.Q;
            iVar.B = eVar.R;
            iVar.f = eVar.f2730c;
            iVar.f2782d = eVar.f2727a;
            iVar.f2784e = eVar.b;
            iVar.b = ((ViewGroup.MarginLayoutParams) eVar).width;
            iVar.f2780c = ((ViewGroup.MarginLayoutParams) eVar).height;
            iVar.C = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
            iVar.D = ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
            iVar.E = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
            iVar.F = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
            iVar.O = eVar.E;
            iVar.P = eVar.D;
            iVar.R = eVar.G;
            iVar.Q = eVar.F;
            iVar.f2788g0 = eVar.S;
            iVar.f2790h0 = eVar.T;
            iVar.S = eVar.H;
            iVar.T = eVar.I;
            iVar.U = eVar.L;
            iVar.V = eVar.M;
            iVar.W = eVar.J;
            iVar.X = eVar.K;
            iVar.Y = eVar.N;
            iVar.Z = eVar.O;
            iVar.f2786f0 = eVar.U;
            iVar.J = eVar.f2756u;
            iVar.L = eVar.f2758w;
            iVar.I = eVar.f2755t;
            iVar.K = eVar.f2757v;
            iVar.N = eVar.f2759x;
            iVar.M = eVar.f2760y;
            iVar.G = eVar.getMarginEnd();
            iVar.H = eVar.getMarginStart();
            kVar.f2814a = childAt.getVisibility();
            kVar.f2815c = childAt.getAlpha();
            lVar.f2818a = childAt.getRotation();
            lVar.b = childAt.getRotationX();
            lVar.f2819c = childAt.getRotationY();
            lVar.f2820d = childAt.getScaleX();
            lVar.f2821e = childAt.getScaleY();
            float pivotX = childAt.getPivotX();
            float pivotY = childAt.getPivotY();
            if (pivotX != 0.0d || pivotY != 0.0d) {
                lVar.f = pivotX;
                lVar.f2822g = pivotY;
            }
            lVar.f2823h = childAt.getTranslationX();
            lVar.f2824i = childAt.getTranslationY();
            lVar.f2825j = childAt.getTranslationZ();
            if (lVar.f2826k) {
                lVar.f2827l = childAt.getElevation();
            }
            if (childAt instanceof a) {
                a aVar = (a) childAt;
                iVar.f2792i0 = aVar.f2716j.f2540m0;
                iVar.f2783d0 = aVar.getReferencedIds();
                iVar.f2778a0 = aVar.getType();
                iVar.f2779b0 = aVar.getMargin();
            }
            i4++;
            mVar = this;
        }
    }

    public final void d(Context context, int i3) {
        XmlResourceParser xml = context.getResources().getXml(i3);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    h hVarC = c(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        hVarC.f2774d.f2777a = true;
                    }
                    this.f2831c.put(Integer.valueOf(hVarC.f2772a), hVarC);
                }
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        } catch (XmlPullParserException e4) {
            e4.printStackTrace();
        }
    }
}
