package androidx.fragment.app;

import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class a implements f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f368a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f369c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f370d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f371e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f372g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f373h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f374i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f375j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f376k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public CharSequence f377l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ArrayList f378m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ArrayList f379n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f380o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final h0 f381p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f382q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f383r;

    public a(h0 h0Var) {
        h0Var.A();
        u uVar = h0Var.f431n;
        if (uVar != null) {
            uVar.b.getClassLoader();
        }
        this.f368a = new ArrayList();
        this.f380o = false;
        this.f383r = -1;
        this.f381p = h0Var;
    }

    @Override // androidx.fragment.app.f0
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (h0.D(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f372g) {
            return true;
        }
        h0 h0Var = this.f381p;
        if (h0Var.f422d == null) {
            h0Var.f422d = new ArrayList();
        }
        h0Var.f422d.add(this);
        return true;
    }

    public final void b(o0 o0Var) {
        this.f368a.add(o0Var);
        o0Var.f484c = this.b;
        o0Var.f485d = this.f369c;
        o0Var.f486e = this.f370d;
        o0Var.f = this.f371e;
    }

    public final void c(int i3) {
        if (this.f372g) {
            if (h0.D(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i3);
            }
            ArrayList arrayList = this.f368a;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                o0 o0Var = (o0) arrayList.get(i4);
                r rVar = o0Var.b;
                if (rVar != null) {
                    rVar.f515q += i3;
                    if (h0.D(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + o0Var.b + " to " + o0Var.b.f515q);
                    }
                }
            }
        }
    }

    public final void d(String str, PrintWriter printWriter, boolean z2) {
        String str2;
        if (z2) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f373h);
            printWriter.print(" mIndex=");
            printWriter.print(this.f383r);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f382q);
            if (this.f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f));
            }
            if (this.b != 0 || this.f369c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f369c));
            }
            if (this.f370d != 0 || this.f371e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f370d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f371e));
            }
            if (this.f374i != 0 || this.f375j != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f374i));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f375j);
            }
            if (this.f376k != 0 || this.f377l != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f376k));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f377l);
            }
        }
        ArrayList arrayList = this.f368a;
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            o0 o0Var = (o0) arrayList.get(i3);
            switch (o0Var.f483a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                    str2 = "SHOW";
                    break;
                case MusicClient.TYPE_GESTURE /* 6 */:
                    str2 = "DETACH";
                    break;
                case PlaybackState.STATE_ERROR /* 7 */:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + o0Var.f483a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i3);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(o0Var.b);
            if (z2) {
                if (o0Var.f484c != 0 || o0Var.f485d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(o0Var.f484c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(o0Var.f485d));
                }
                if (o0Var.f486e != 0 || o0Var.f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(o0Var.f486e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(o0Var.f));
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f383r >= 0) {
            sb.append(" #");
            sb.append(this.f383r);
        }
        if (this.f373h != null) {
            sb.append(" ");
            sb.append(this.f373h);
        }
        sb.append("}");
        return sb.toString();
    }
}
