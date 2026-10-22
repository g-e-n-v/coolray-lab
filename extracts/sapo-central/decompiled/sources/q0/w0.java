package q0;

import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class w0 {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final List f3047s = Collections.EMPTY_LIST;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f3048a;
    public WeakReference b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3055j;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public RecyclerView f3063r;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3049c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3050d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f3051e = -1;
    public int f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3052g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public w0 f3053h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public w0 f3054i = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f3056k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final List f3057l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3058m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public o0 f3059n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f3060o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3061p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3062q = -1;

    public w0(View view) {
        if (view == null) {
            throw new IllegalArgumentException("itemView may not be null");
        }
        this.f3048a = view;
    }

    public final void a(int i3) {
        this.f3055j = i3 | this.f3055j;
    }

    public final int b() {
        int i3 = this.f3052g;
        return i3 == -1 ? this.f3049c : i3;
    }

    public final List c() {
        ArrayList arrayList;
        return ((this.f3055j & 1024) != 0 || (arrayList = this.f3056k) == null || arrayList.size() == 0) ? f3047s : this.f3057l;
    }

    public final boolean d() {
        View view = this.f3048a;
        return (view.getParent() == null || view.getParent() == this.f3063r) ? false : true;
    }

    public final boolean e() {
        return (this.f3055j & 1) != 0;
    }

    public final boolean f() {
        return (this.f3055j & 4) != 0;
    }

    public final boolean g() {
        if ((this.f3055j & 16) != 0) {
            return false;
        }
        WeakHashMap weakHashMap = c0.p0.f727a;
        return !c0.a0.i(this.f3048a);
    }

    public final boolean h() {
        return (this.f3055j & 8) != 0;
    }

    public final boolean i() {
        return this.f3059n != null;
    }

    public final boolean j() {
        return (this.f3055j & 256) != 0;
    }

    public final boolean k() {
        return (this.f3055j & 2) != 0;
    }

    public final void l(int i3, boolean z2) {
        if (this.f3050d == -1) {
            this.f3050d = this.f3049c;
        }
        if (this.f3052g == -1) {
            this.f3052g = this.f3049c;
        }
        if (z2) {
            this.f3052g += i3;
        }
        this.f3049c += i3;
        View view = this.f3048a;
        if (view.getLayoutParams() != null) {
            ((j0) view.getLayoutParams()).f2934c = true;
        }
    }

    public final void m() {
        this.f3055j = 0;
        this.f3049c = -1;
        this.f3050d = -1;
        this.f3051e = -1L;
        this.f3052g = -1;
        this.f3058m = 0;
        this.f3053h = null;
        this.f3054i = null;
        ArrayList arrayList = this.f3056k;
        if (arrayList != null) {
            arrayList.clear();
        }
        this.f3055j &= -1025;
        this.f3061p = 0;
        this.f3062q = -1;
        RecyclerView.j(this);
    }

    public final void n(boolean z2) {
        int i3 = this.f3058m;
        int i4 = z2 ? i3 - 1 : i3 + 1;
        this.f3058m = i4;
        if (i4 < 0) {
            this.f3058m = 0;
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            return;
        }
        if (!z2 && i4 == 1) {
            this.f3055j |= 16;
        } else if (z2 && i4 == 0) {
            this.f3055j &= -17;
        }
    }

    public final boolean o() {
        return (this.f3055j & 128) != 0;
    }

    public final boolean p() {
        return (this.f3055j & 32) != 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName()) + "{" + Integer.toHexString(hashCode()) + " position=" + this.f3049c + " id=" + this.f3051e + ", oldPos=" + this.f3050d + ", pLpos:" + this.f3052g);
        if (i()) {
            sb.append(" scrap ");
            sb.append(this.f3060o ? "[changeScrap]" : "[attachedScrap]");
        }
        if (f()) {
            sb.append(" invalid");
        }
        if (!e()) {
            sb.append(" unbound");
        }
        if ((this.f3055j & 2) != 0) {
            sb.append(" update");
        }
        if (h()) {
            sb.append(" removed");
        }
        if (o()) {
            sb.append(" ignored");
        }
        if (j()) {
            sb.append(" tmpDetached");
        }
        if (!g()) {
            sb.append(" not recyclable(" + this.f3058m + ")");
        }
        if ((this.f3055j & 512) != 0 || f()) {
            sb.append(" undefined adapter position");
        }
        if (this.f3048a.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }
}
