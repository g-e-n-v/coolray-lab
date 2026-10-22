package androidx.activity;

import a1.r;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Trace;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.lifecycle.SavedStateHandleAttacher;
import androidx.lifecycle.b0;
import androidx.lifecycle.c0;
import androidx.lifecycle.e0;
import androidx.lifecycle.h0;
import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import androidx.lifecycle.o;
import androidx.lifecycle.q;
import androidx.lifecycle.s;
import c0.p0;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class h extends Activity implements j0, androidx.lifecycle.h, r0.e, q, c0.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public s f81a = new s(this);
    public final a.a b = new a.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.activity.result.c f82c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final s f83d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final r0.d f84e;
    public i0 f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final n f85g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f86h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CopyOnWriteArrayList f87i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CopyOnWriteArrayList f88j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CopyOnWriteArrayList f89k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final CopyOnWriteArrayList f90l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final CopyOnWriteArrayList f91m;

    public h() {
        r0.c cVar;
        String str;
        final e.j jVar = (e.j) this;
        this.f82c = new androidx.activity.result.c(new r(1, jVar));
        s sVar = new s(this);
        this.f83d = sVar;
        r0.d dVar = new r0.d(this);
        this.f84e = dVar;
        this.f85g = new n(new d(0, jVar));
        new AtomicInteger();
        this.f86h = new e();
        this.f87i = new CopyOnWriteArrayList();
        this.f88j = new CopyOnWriteArrayList();
        this.f89k = new CopyOnWriteArrayList();
        this.f90l = new CopyOnWriteArrayList();
        this.f91m = new CopyOnWriteArrayList();
        sVar.a(new o() { // from class: androidx.activity.ComponentActivity$3
            @Override // androidx.lifecycle.o
            public final void a(q qVar, androidx.lifecycle.k kVar) {
                if (kVar == androidx.lifecycle.k.ON_STOP) {
                    Window window = jVar.getWindow();
                    View viewPeekDecorView = window != null ? window.peekDecorView() : null;
                    if (viewPeekDecorView != null) {
                        viewPeekDecorView.cancelPendingInputEvents();
                    }
                }
            }
        });
        sVar.a(new o() { // from class: androidx.activity.ComponentActivity$4
            @Override // androidx.lifecycle.o
            public final void a(q qVar, androidx.lifecycle.k kVar) {
                if (kVar == androidx.lifecycle.k.ON_DESTROY) {
                    jVar.b.b = null;
                    if (jVar.isChangingConfigurations()) {
                        return;
                    }
                    jVar.e().a();
                }
            }
        });
        sVar.a(new o() { // from class: androidx.activity.ComponentActivity$5
            @Override // androidx.lifecycle.o
            public final void a(q qVar, androidx.lifecycle.k kVar) {
                e.j jVar2 = jVar;
                if (jVar2.f == null) {
                    g gVar = (g) jVar2.getLastNonConfigurationInstance();
                    if (gVar != null) {
                        jVar2.f = gVar.f80a;
                    }
                    if (jVar2.f == null) {
                        jVar2.f = new i0();
                    }
                }
                jVar2.f83d.f(this);
            }
        });
        dVar.a();
        androidx.lifecycle.l lVar = sVar.b;
        i2.g.d(lVar, "lifecycle.currentState");
        if (lVar != androidx.lifecycle.l.b && lVar != androidx.lifecycle.l.f579c) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        i.r rVar = dVar.b;
        rVar.getClass();
        Iterator it = ((k.f) rVar.f).iterator();
        do {
            k.b bVar = (k.b) it;
            if (!bVar.hasNext()) {
                cVar = null;
                break;
            }
            Map.Entry entry = (Map.Entry) bVar.next();
            i2.g.d(entry, "components");
            str = (String) entry.getKey();
            cVar = (r0.c) entry.getValue();
        } while (!i2.g.a(str, "androidx.lifecycle.internal.SavedStateHandlesProvider"));
        if (cVar == null) {
            e0 e0Var = new e0(this.f84e.b, jVar);
            this.f84e.b.e("androidx.lifecycle.internal.SavedStateHandlesProvider", e0Var);
            this.f83d.a(new SavedStateHandleAttacher(e0Var));
        }
        this.f84e.b.e("android:support:activity-result", new r0.c() { // from class: androidx.activity.b
            @Override // r0.c
            public final Bundle a() {
                Bundle bundle = new Bundle();
                e eVar = jVar.f86h;
                eVar.getClass();
                HashMap map = eVar.f75c;
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(map.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(map.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(eVar.f77e));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) eVar.f79h.clone());
                bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", eVar.f74a);
                return bundle;
            }
        });
        d(new a.b() { // from class: androidx.activity.c
            @Override // a.b
            public final void a() {
                e.j jVar2 = jVar;
                Bundle bundleC = jVar2.f84e.b.c("android:support:activity-result");
                if (bundleC != null) {
                    e eVar = jVar2.f86h;
                    HashMap map = eVar.f75c;
                    HashMap map2 = eVar.b;
                    Bundle bundle = eVar.f79h;
                    ArrayList<Integer> integerArrayList = bundleC.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                    ArrayList<String> stringArrayList = bundleC.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                    if (stringArrayList == null || integerArrayList == null) {
                        return;
                    }
                    eVar.f77e = bundleC.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                    eVar.f74a = (Random) bundleC.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
                    bundle.putAll(bundleC.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
                    for (int i3 = 0; i3 < stringArrayList.size(); i3++) {
                        String str2 = stringArrayList.get(i3);
                        if (map.containsKey(str2)) {
                            Integer num = (Integer) map.remove(str2);
                            if (!bundle.containsKey(str2)) {
                                map2.remove(num);
                            }
                        }
                        Integer num2 = integerArrayList.get(i3);
                        num2.intValue();
                        String str3 = stringArrayList.get(i3);
                        map2.put(num2, str3);
                        eVar.f75c.put(str3, num2);
                    }
                }
            }
        });
    }

    @Override // r0.e
    public final i.r a() {
        return this.f84e.b;
    }

    @Override // androidx.lifecycle.h
    public final n0.b b() {
        n0.a aVar = n0.a.b;
        i2.g.e(aVar, "initialExtras");
        n0.c cVar = new n0.c();
        cVar.f2481a.putAll(aVar.f2481a);
        Application application = getApplication();
        LinkedHashMap linkedHashMap = cVar.f2481a;
        if (application != null) {
            linkedHashMap.put(h0.f575a, getApplication());
        }
        linkedHashMap.put(c0.f566a, this);
        linkedHashMap.put(c0.b, this);
        if (getIntent() != null && getIntent().getExtras() != null) {
            linkedHashMap.put(c0.f567c, getIntent().getExtras());
        }
        return cVar;
    }

    public final void d(a.b bVar) {
        a.a aVar = this.b;
        if (aVar.b != null) {
            bVar.a();
        }
        aVar.f0a.add(bVar);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (getWindow().getDecorView() != null) {
            WeakHashMap weakHashMap = p0.f727a;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        if (getWindow().getDecorView() != null) {
            WeakHashMap weakHashMap = p0.f727a;
        }
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // androidx.lifecycle.j0
    public final i0 e() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.f == null) {
            g gVar = (g) getLastNonConfigurationInstance();
            if (gVar != null) {
                this.f = gVar.f80a;
            }
            if (this.f == null) {
                this.f = new i0();
            }
        }
        return this.f;
    }

    @Override // androidx.lifecycle.q
    public final s f() {
        return this.f83d;
    }

    public final void g(Bundle bundle) {
        super.onCreate(bundle);
        b0.c(this);
    }

    public final void h(Bundle bundle) {
        s sVar = this.f81a;
        sVar.c("markState");
        sVar.c("setCurrentState");
        sVar.e(androidx.lifecycle.l.f579c);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i3, int i4, Intent intent) {
        if (this.f86h.a(i3, i4, intent)) {
            return;
        }
        super.onActivityResult(i3, i4, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        this.f85g.b();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Iterator it = this.f87i.iterator();
        while (it.hasNext()) {
            ((b0.a) it.next()).accept(configuration);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f84e.b(bundle);
        a.a aVar = this.b;
        aVar.b = this;
        Iterator it = aVar.f0a.iterator();
        while (it.hasNext()) {
            ((a.b) it.next()).a();
        }
        g(bundle);
        b0.c(this);
        if (k1.a.E()) {
            n nVar = this.f85g;
            nVar.f98e = f.a(this);
            nVar.c();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i3, Menu menu) {
        if (i3 != 0) {
            return true;
        }
        super.onCreatePanelMenu(i3, menu);
        getMenuInflater();
        Iterator it = ((CopyOnWriteArrayList) this.f82c.b).iterator();
        if (!it.hasNext()) {
            return true;
        }
        it.next().getClass();
        throw new ClassCastException();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i3, MenuItem menuItem) {
        if (super.onMenuItemSelected(i3, menuItem)) {
            return true;
        }
        if (i3 != 0) {
            return false;
        }
        Iterator it = ((CopyOnWriteArrayList) this.f82c.b).iterator();
        if (!it.hasNext()) {
            return false;
        }
        it.next().getClass();
        throw new ClassCastException();
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z2, Configuration configuration) {
        super.onMultiWindowModeChanged(z2, configuration);
        Iterator it = this.f90l.iterator();
        while (it.hasNext()) {
            ((b0.a) it.next()).accept(new s1.e());
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Iterator it = this.f89k.iterator();
        while (it.hasNext()) {
            ((b0.a) it.next()).accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i3, Menu menu) {
        Iterator it = ((CopyOnWriteArrayList) this.f82c.b).iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw new ClassCastException();
        }
        super.onPanelClosed(i3, menu);
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z2, Configuration configuration) {
        super.onPictureInPictureModeChanged(z2, configuration);
        Iterator it = this.f91m.iterator();
        while (it.hasNext()) {
            ((b0.a) it.next()).accept(new s1.e());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i3, View view, Menu menu) {
        if (i3 != 0) {
            return true;
        }
        super.onPreparePanel(i3, view, menu);
        Iterator it = ((CopyOnWriteArrayList) this.f82c.b).iterator();
        if (!it.hasNext()) {
            return true;
        }
        it.next().getClass();
        throw new ClassCastException();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i3, String[] strArr, int[] iArr) {
        if (this.f86h.a(i3, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            return;
        }
        super.onRequestPermissionsResult(i3, strArr, iArr);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        g gVar;
        i0 i0Var = this.f;
        if (i0Var == null && (gVar = (g) getLastNonConfigurationInstance()) != null) {
            i0Var = gVar.f80a;
        }
        if (i0Var == null) {
            return null;
        }
        g gVar2 = new g();
        gVar2.f80a = i0Var;
        return gVar2;
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        s sVar = this.f83d;
        if (sVar != null) {
            sVar.c("setCurrentState");
            sVar.e(androidx.lifecycle.l.f579c);
        }
        h(bundle);
        this.f84e.c(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i3) {
        super.onTrimMemory(i3);
        Iterator it = this.f88j.iterator();
        while (it.hasNext()) {
            ((b0.a) it.next()).accept(Integer.valueOf(i3));
        }
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            if (k1.a.F()) {
                Trace.beginSection("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
        } finally {
            Trace.endSection();
        }
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view) {
        getWindow().getDecorView().setTag(R.id.view_tree_lifecycle_owner, this);
        getWindow().getDecorView().setTag(R.id.view_tree_view_model_store_owner, this);
        View decorView = getWindow().getDecorView();
        i2.g.e(decorView, "<this>");
        decorView.setTag(R.id.view_tree_saved_state_registry_owner, this);
        View decorView2 = getWindow().getDecorView();
        i2.g.e(decorView2, "<this>");
        decorView2.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        super.setContentView(view);
    }
}
