package androidx.emoji2.text;

import android.animation.Animator;
import android.content.ClipData;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.view.ContentInfo;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.s0;
import c0.a0;
import c0.b0;
import c0.j1;
import c0.k1;
import c0.p0;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import ecarx.xsf.mediacenter.session.PlaybackState;
import h.f0;
import h.y;
import i.d2;
import i.e3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import w0.n6;

/* JADX INFO: loaded from: classes.dex */
public class m implements j, y.a, c0.e, c0.g, d0.q, d2, y, h.k, c0.r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f343a;
    public Object b;

    public /* synthetic */ m(int i3, Object obj) {
        this.f343a = i3;
        this.b = obj;
    }

    @Override // h.k
    public boolean a(h.m mVar, MenuItem menuItem) {
        i.m mVar2 = ((ActionMenuView) this.b).f189z;
        if (mVar2 == null) {
            return false;
        }
        Iterator it = ((CopyOnWriteArrayList) ((e3) mVar2).f2018a.G.b).iterator();
        if (!it.hasNext()) {
            return false;
        }
        it.next().getClass();
        throw new ClassCastException();
    }

    @Override // h.y
    public void b(h.m mVar, boolean z2) {
        if (mVar instanceof f0) {
            ((f0) mVar).f1852z.k().c(false);
        }
        y yVar = ((i.j) this.b).f2050e;
        if (yVar != null) {
            yVar.b(mVar, z2);
        }
    }

    @Override // c0.e
    public c0.h build() {
        return new c0.h(new m(((ContentInfo.Builder) this.b).build()));
    }

    @Override // c0.g
    public ClipData c() {
        return ((ContentInfo) this.b).getClip();
    }

    @Override // d0.q
    public boolean d(View view) {
        SwipeDismissBehavior swipeDismissBehavior = (SwipeDismissBehavior) this.b;
        if (!swipeDismissBehavior.r(view)) {
            return false;
        }
        WeakHashMap weakHashMap = p0.f727a;
        boolean z2 = b0.d(view) == 1;
        int i3 = swipeDismissBehavior.f1320c;
        view.offsetLeftAndRight((!(i3 == 0 && z2) && (i3 != 1 || z2)) ? view.getWidth() : -view.getWidth());
        view.setAlpha(0.0f);
        return true;
    }

    @Override // androidx.emoji2.text.j
    public void e(a1.b bVar) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new a(0, "EmojiCompatInitializer"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new a1.g(this, bVar, threadPoolExecutor, 1));
    }

    @Override // h.k
    public void f(h.m mVar) {
        e3 e3Var = ((ActionMenuView) this.b).f184u;
        if (e3Var != null) {
            e3Var.f(mVar);
        }
    }

    @Override // h.y
    public boolean g(h.m mVar) {
        i.j jVar = (i.j) this.b;
        if (mVar == jVar.f2048c) {
            return false;
        }
        ((f0) mVar).A.getClass();
        jVar.getClass();
        y yVar = jVar.f2050e;
        if (yVar != null) {
            return yVar.g(mVar);
        }
        return false;
    }

    @Override // c0.g
    public int h() {
        return ((ContentInfo) this.b).getFlags();
    }

    @Override // c0.g
    public ContentInfo i() {
        return (ContentInfo) this.b;
    }

    @Override // c0.e
    public void j(Uri uri) {
        ((ContentInfo.Builder) this.b).setLinkUri(uri);
    }

    @Override // c0.g
    public int k() {
        return ((ContentInfo) this.b).getSource();
    }

    @Override // i.d2
    public void l(h.m mVar, MenuItem menuItem) {
        ((h.g) this.b).f.removeCallbacksAndMessages(mVar);
    }

    @Override // c0.e
    public void m(int i3) {
        ((ContentInfo.Builder) this.b).setFlags(i3);
    }

    @Override // i.d2
    public void n(h.m mVar, h.o oVar) {
        h.g gVar = (h.g) this.b;
        Handler handler = gVar.f;
        handler.removeCallbacksAndMessages(null);
        ArrayList arrayList = gVar.f1857h;
        int size = arrayList.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                i3 = -1;
                break;
            } else if (mVar == ((h.f) arrayList.get(i3)).b) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 == -1) {
            return;
        }
        int i4 = i3 + 1;
        handler.postAtTime(new h.e(this, i4 < arrayList.size() ? (h.f) arrayList.get(i4) : null, oVar, mVar), mVar, SystemClock.uptimeMillis() + 200);
    }

    @Override // c0.r
    public k1 o(View view, k1 k1Var) {
        switch (this.f343a) {
            case 22:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) ((m) this.b).b;
                bottomSheetBehavior.f1330j = k1Var.f721a.f().f3311d;
                bottomSheetBehavior.G();
                break;
            default:
                j1 j1Var = k1Var.f721a;
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.b;
                if (!b0.b.a(coordinatorLayout.f281n, k1Var)) {
                    coordinatorLayout.f281n = k1Var;
                    boolean z2 = k1Var.d() > 0;
                    coordinatorLayout.f282o = z2;
                    coordinatorLayout.setWillNotDraw(!z2 && coordinatorLayout.getBackground() == null);
                    if (!j1Var.j()) {
                        int childCount = coordinatorLayout.getChildCount();
                        for (int i3 = 0; i3 < childCount; i3++) {
                            View childAt = coordinatorLayout.getChildAt(i3);
                            WeakHashMap weakHashMap = p0.f727a;
                            if (!a0.b(childAt) || ((s.d) childAt.getLayoutParams()).f3104a == null || !j1Var.j()) {
                            }
                        }
                    }
                    coordinatorLayout.requestLayout();
                }
                break;
        }
        return k1Var;
    }

    @Override // y.a
    public void onCancel() {
        switch (this.f343a) {
            case 1:
                ((Animator) this.b).end();
                break;
            default:
                ((s0) this.b).a();
                break;
        }
    }

    public d0.f p(int i3) {
        return null;
    }

    public d0.f q(int i3) {
        return null;
    }

    public boolean r(String str) {
        AtomicReference atomicReference = (AtomicReference) this.b;
        i2.g.e(str, "owner");
        while (true) {
            n6 n6Var = (n6) atomicReference.get();
            if (n6Var == null || !i2.g.a(n6Var.f3935a, str)) {
                return false;
            }
            while (!atomicReference.compareAndSet(n6Var, null)) {
                if (atomicReference.get() != n6Var) {
                }
            }
            return true;
        }
    }

    public void s() {
        ((androidx.fragment.app.u) this.b).f537d.I();
    }

    @Override // c0.e
    public void setExtras(Bundle bundle) {
        ((ContentInfo.Builder) this.b).setExtras(bundle);
    }

    public boolean t(int i3, int i4, Bundle bundle) {
        return false;
    }

    public String toString() {
        switch (this.f343a) {
            case PlaybackState.STATE_ERROR /* 7 */:
                return "ContentInfoCompat{" + ((ContentInfo) this.b) + "}";
            case 24:
                return androidx.activity.result.b.j(new StringBuilder("<"), (String) this.b, '>');
            default:
                return super.toString();
        }
    }

    public boolean u(String str, String str2) {
        i2.g.e(str, "owner");
        i2.g.e(str2, "phase");
        if (o2.k.m0(str)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        AtomicReference atomicReference = (AtomicReference) this.b;
        n6 n6Var = new n6(str, str2);
        while (!atomicReference.compareAndSet(null, n6Var)) {
            if (atomicReference.get() != null) {
                return false;
            }
        }
        return true;
    }

    public m(TextView textView) {
        this.f343a = 20;
        this.b = new k0.g(textView);
    }

    public m(EditText editText) {
        this.f343a = 19;
        androidx.activity.result.c cVar = new androidx.activity.result.c();
        cVar.f100a = editText;
        k0.i iVar = new k0.i(editText);
        cVar.b = iVar;
        editText.addTextChangedListener(iVar);
        if (k0.a.b == null) {
            synchronized (k0.a.f2340a) {
                try {
                    if (k0.a.b == null) {
                        k0.a aVar = new k0.a();
                        try {
                            k0.a.f2341c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, k0.a.class.getClassLoader());
                        } catch (Throwable unused) {
                        }
                        k0.a.b = aVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        editText.setEditableFactory(k0.a.b);
        this.b = cVar;
    }

    public m(int i3) {
        this.f343a = i3;
        switch (i3) {
            case 27:
                break;
            case 28:
                this.b = new AtomicReference(null);
                break;
            default:
                this.b = new d0.g(this);
                break;
        }
    }

    public m(Context context) {
        this.f343a = 0;
        this.b = context.getApplicationContext();
    }

    public m(m mVar, s1.e eVar) {
        this.f343a = 22;
        this.b = mVar;
    }

    public m(ContentInfo contentInfo) {
        this.f343a = 7;
        contentInfo.getClass();
        this.b = c0.d.e(contentInfo);
    }

    public m(ClipData clipData, int i3) {
        this.f343a = 6;
        this.b = c0.d.c(clipData, i3);
    }
}
