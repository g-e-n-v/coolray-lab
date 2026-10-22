package androidx.activity.result;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.h0;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.MainActivity;
import com.ex.auto.MasterToggleView;
import ecarx.xsf.mediacenter.session.PlaybackState;
import n.g;
import o2.t;
import w0.ae;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static final void a(View view, int i3) {
        int iB = g.b(i3);
        if (iB == 0) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                if (h0.D(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                }
                viewGroup.removeView(view);
                return;
            }
            return;
        }
        if (iB == 1) {
            if (h0.D(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
            }
            view.setVisibility(0);
            return;
        }
        if (iB == 2) {
            if (h0.D(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
            }
            view.setVisibility(8);
            return;
        }
        if (iB != 3) {
            return;
        }
        if (h0.D(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
        }
        view.setVisibility(4);
    }

    public static int b(int i3) {
        if (i3 == 0) {
            return 2;
        }
        if (i3 == 4) {
            return 4;
        }
        if (i3 == 8) {
            return 3;
        }
        throw new IllegalArgumentException("Unknown visibility " + i3);
    }

    public static int c(View view) {
        if (view.getAlpha() == 0.0f && view.getVisibility() == 0) {
            return 4;
        }
        return b(view.getVisibility());
    }

    public static float d(float f, float f3, float f4, float f5) {
        return ((f - f3) * f4) + f5;
    }

    public static int e(String str, int i3, int i4) {
        return (str.hashCode() + i3) * i4;
    }

    public static String f(int i3, int i4, String str, String str2) {
        return str + i3 + str2 + i4;
    }

    public static String g(String str, String str2, MainActivity mainActivity, int i3, String str3) {
        i2.g.d(str, str2);
        String string = mainActivity.getString(i3);
        i2.g.d(string, str3);
        return string;
    }

    public static String h(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String i(String str, String str2, String str3, StringBuilder sb, char c3) {
        sb.append(t.c0(str, str2, str3));
        sb.append(c3);
        return sb.toString();
    }

    public static String j(StringBuilder sb, String str, char c3) {
        sb.append(str);
        sb.append(c3);
        return sb.toString();
    }

    public static StringBuilder k(String str, int i3, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i3);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder l(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder m(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    public static void n(int i3, int i4, MainActivity mainActivity, String str) {
        String string = mainActivity.getString(i3);
        i2.g.d(string, str);
        mainActivity.t2(string, i4);
    }

    public static void o(Exception exc, StringBuilder sb, String str) {
        sb.append(exc.getMessage());
        Log.w(str, sb.toString());
    }

    public static void p(String str, String str2, String str3, String str4, boolean z2) {
        ae.b(str4, str + str2 + str3, z2);
    }

    public static void q(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    public static void r(StringBuilder sb, String str, String str2, boolean z2) {
        sb.append(str);
        ae.b(str2, sb.toString(), z2);
    }

    public static void s(Throwable th, StringBuilder sb, String str) {
        sb.append(th.getMessage());
        Log.w(str, sb.toString());
    }

    public static boolean t(MasterToggleView masterToggleView, boolean z2, MainActivity mainActivity, String str, boolean z3) {
        masterToggleView.setActive(z2);
        return mainActivity.o0().getBoolean(str, z3);
    }

    public static /* synthetic */ String u(int i3) {
        switch (i3) {
            case 1:
                return "NONE";
            case 2:
                return "LEFT";
            case 3:
                return "TOP";
            case 4:
                return "RIGHT";
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                return "BOTTOM";
            case MusicClient.TYPE_GESTURE /* 6 */:
                return "BASELINE";
            case PlaybackState.STATE_ERROR /* 7 */:
                return "CENTER";
            case 8:
                return "CENTER_X";
            case 9:
                return "CENTER_Y";
            default:
                throw null;
        }
    }

    public static /* synthetic */ String v(int i3) {
        if (i3 == 1) {
            return "NONE";
        }
        if (i3 != 2) {
            return i3 != 3 ? "null" : "REMOVING";
        }
        return "ADDING";
    }

    public static /* synthetic */ String w(int i3) {
        if (i3 == 1) {
            return "REMOVED";
        }
        if (i3 == 2) {
            return "VISIBLE";
        }
        if (i3 != 3) {
            return i3 != 4 ? "null" : "INVISIBLE";
        }
        return "GONE";
    }
}
