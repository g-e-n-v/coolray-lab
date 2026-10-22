package h;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import c0.r0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class m implements Menu {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f1885y = {1, 4, 5, 3, 2, 0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1886a;
    public final Resources b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1887c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f1888d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public k f1889e;
    public final ArrayList f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f1890g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1891h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f1892i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f1893j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1894k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CharSequence f1896m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Drawable f1897n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f1898o;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public o f1905v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f1907x;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1895l = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1899p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1900q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1901r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1902s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ArrayList f1903t = new ArrayList();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final CopyOnWriteArrayList f1904u = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f1906w = false;

    public m(Context context) {
        boolean z2 = false;
        this.f1886a = context;
        Resources resources = context.getResources();
        this.b = resources;
        this.f = new ArrayList();
        this.f1890g = new ArrayList();
        this.f1891h = true;
        this.f1892i = new ArrayList();
        this.f1893j = new ArrayList();
        this.f1894k = true;
        if (resources.getConfiguration().keyboard != 1 && r0.b(ViewConfiguration.get(context))) {
            z2 = true;
        }
        this.f1888d = z2;
    }

    public final o a(int i3, int i4, int i5, CharSequence charSequence) {
        int i6;
        int i7 = ((-65536) & i5) >> 16;
        if (i7 < 0 || i7 >= 6) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        int i8 = (f1885y[i7] << 16) | (65535 & i5);
        o oVar = new o(this, i3, i4, i5, i8, charSequence, this.f1895l);
        ArrayList arrayList = this.f;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((o) arrayList.get(size)).f1912d <= i8) {
                i6 = size + 1;
                arrayList.add(i6, oVar);
                p(true);
                return oVar;
            }
        }
        i6 = 0;
        arrayList.add(i6, oVar);
        p(true);
        return oVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i3, int i4, int i5, ComponentName componentName, Intent[] intentArr, Intent intent, int i6, MenuItem[] menuItemArr) {
        int i7;
        PackageManager packageManager = this.f1886a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i6 & 1) == 0) {
            removeGroup(i3);
        }
        for (int i8 = 0; i8 < size; i8++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i8);
            int i9 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i9 < 0 ? intent : intentArr[i9]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            o oVarA = a(i3, i4, i5, resolveInfo.loadLabel(packageManager));
            oVarA.setIcon(resolveInfo.loadIcon(packageManager));
            oVarA.f1914g = intent2;
            if (menuItemArr != null && (i7 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i7] = oVarA;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public final void b(z zVar, Context context) {
        this.f1904u.add(new WeakReference(zVar));
        zVar.g(context, this);
        this.f1894k = true;
    }

    public final void c(boolean z2) {
        if (this.f1902s) {
            return;
        }
        this.f1902s = true;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f1904u;
        for (WeakReference weakReference : copyOnWriteArrayList) {
            z zVar = (z) weakReference.get();
            if (zVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                zVar.b(this, z2);
            }
        }
        this.f1902s = false;
    }

    @Override // android.view.Menu
    public final void clear() {
        o oVar = this.f1905v;
        if (oVar != null) {
            d(oVar);
        }
        this.f.clear();
        p(true);
    }

    public final void clearHeader() {
        this.f1897n = null;
        this.f1896m = null;
        this.f1898o = null;
        p(false);
    }

    @Override // android.view.Menu
    public final void close() {
        c(true);
    }

    public boolean d(o oVar) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f1904u;
        boolean zJ = false;
        if (!copyOnWriteArrayList.isEmpty() && this.f1905v == oVar) {
            w();
            for (WeakReference weakReference : copyOnWriteArrayList) {
                z zVar = (z) weakReference.get();
                if (zVar != null) {
                    zJ = zVar.j(oVar);
                    if (zJ) {
                        break;
                    }
                } else {
                    copyOnWriteArrayList.remove(weakReference);
                }
            }
            v();
            if (zJ) {
                this.f1905v = null;
            }
        }
        return zJ;
    }

    public boolean e(m mVar, MenuItem menuItem) {
        k kVar = this.f1889e;
        return kVar != null && kVar.a(mVar, menuItem);
    }

    public boolean f(o oVar) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f1904u;
        boolean zI = false;
        if (copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        w();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            z zVar = (z) weakReference.get();
            if (zVar != null) {
                zI = zVar.i(oVar);
                if (zI) {
                    break;
                }
            } else {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
        v();
        if (zI) {
            this.f1905v = oVar;
        }
        return zI;
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i3) {
        MenuItem menuItemFindItem;
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            o oVar = (o) arrayList.get(i4);
            if (oVar.f1910a == i3) {
                return oVar;
            }
            if (oVar.hasSubMenu() && (menuItemFindItem = oVar.f1922o.findItem(i3)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public final o g(int i3, KeyEvent keyEvent) {
        ArrayList arrayList = this.f1903t;
        arrayList.clear();
        h(arrayList, i3, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (o) arrayList.get(0);
        }
        boolean zN = n();
        for (int i4 = 0; i4 < size; i4++) {
            o oVar = (o) arrayList.get(i4);
            char c3 = zN ? oVar.f1917j : oVar.f1915h;
            char[] cArr = keyData.meta;
            if ((c3 == cArr[0] && (metaState & 2) == 0) || ((c3 == cArr[2] && (metaState & 2) != 0) || (zN && c3 == '\b' && i3 == 67))) {
                return oVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i3) {
        return (MenuItem) this.f.get(i3);
    }

    public final void h(List list, int i3, KeyEvent keyEvent) {
        boolean zN = n();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i3 == 67) {
            ArrayList arrayList = this.f;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                o oVar = (o) arrayList.get(i4);
                if (oVar.hasSubMenu()) {
                    oVar.f1922o.h(list, i3, keyEvent);
                }
                char c3 = zN ? oVar.f1917j : oVar.f1915h;
                if ((modifiers & 69647) == ((zN ? oVar.f1918k : oVar.f1916i) & 69647) && c3 != 0) {
                    char[] cArr = keyData.meta;
                    if ((c3 == cArr[0] || c3 == cArr[2] || (zN && c3 == '\b' && i3 == 67)) && oVar.isEnabled()) {
                        list.add(oVar);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        if (this.f1907x) {
            return true;
        }
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (((o) arrayList.get(i3)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final void i() {
        ArrayList arrayListL = l();
        if (this.f1894k) {
            CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f1904u;
            boolean zH = false;
            for (WeakReference weakReference : copyOnWriteArrayList) {
                z zVar = (z) weakReference.get();
                if (zVar == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    zH |= zVar.h();
                }
            }
            ArrayList arrayList = this.f1892i;
            ArrayList arrayList2 = this.f1893j;
            if (zH) {
                arrayList.clear();
                arrayList2.clear();
                int size = arrayListL.size();
                for (int i3 = 0; i3 < size; i3++) {
                    o oVar = (o) arrayListL.get(i3);
                    if ((oVar.f1931x & 32) == 32) {
                        arrayList.add(oVar);
                    } else {
                        arrayList2.add(oVar);
                    }
                }
            } else {
                arrayList.clear();
                arrayList2.clear();
                arrayList2.addAll(l());
            }
            this.f1894k = false;
        }
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i3, KeyEvent keyEvent) {
        return g(i3, keyEvent) != null;
    }

    public String j() {
        return "android:menu:actionviewstates";
    }

    public m k() {
        return this;
    }

    public final ArrayList l() {
        boolean z2 = this.f1891h;
        ArrayList arrayList = this.f1890g;
        if (!z2) {
            return arrayList;
        }
        arrayList.clear();
        ArrayList arrayList2 = this.f;
        int size = arrayList2.size();
        for (int i3 = 0; i3 < size; i3++) {
            o oVar = (o) arrayList2.get(i3);
            if (oVar.isVisible()) {
                arrayList.add(oVar);
            }
        }
        this.f1891h = false;
        this.f1894k = true;
        return arrayList;
    }

    public boolean m() {
        return this.f1906w;
    }

    public boolean n() {
        return this.f1887c;
    }

    public boolean o() {
        return this.f1888d;
    }

    public final void p(boolean z2) {
        if (this.f1899p) {
            this.f1900q = true;
            if (z2) {
                this.f1901r = true;
                return;
            }
            return;
        }
        if (z2) {
            this.f1891h = true;
            this.f1894k = true;
        }
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f1904u;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        w();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            z zVar = (z) weakReference.get();
            if (zVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                zVar.e();
            }
        }
        v();
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i3, int i4) {
        return q(findItem(i3), null, i4);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i3, KeyEvent keyEvent, int i4) {
        o oVarG = g(i3, keyEvent);
        boolean zQ = oVarG != null ? q(oVarG, null, i4) : false;
        if ((i4 & 2) != 0) {
            c(true);
        }
        return zQ;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001a  */
    /* JADX WARN: Code duplicated, block: B:32:0x0051  */
    /* JADX WARN: Code duplicated, block: B:35:0x0058  */
    /* JADX WARN: Code duplicated, block: B:37:0x005f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0064  */
    /* JADX WARN: Code duplicated, block: B:45:0x0075  */
    /* JADX WARN: Code duplicated, block: B:47:0x0079  */
    /* JADX WARN: Code duplicated, block: B:50:0x0082  */
    /* JADX WARN: Code duplicated, block: B:53:0x0094  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x00c6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x00ac A[SYNTHETIC] */
    public final boolean q(MenuItem menuItem, z zVar, int i3) {
        p pVar;
        boolean zExpandActionView;
        p pVar2;
        boolean z2;
        f0 f0Var;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList;
        z zVar2;
        o oVar = (o) menuItem;
        boolean zK = false;
        if (oVar == null || !oVar.isEnabled()) {
            return false;
        }
        m mVar = oVar.f1921n;
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = oVar.f1923p;
        if ((onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(oVar)) && !mVar.e(mVar, oVar)) {
            Intent intent = oVar.f1914g;
            if (intent != null) {
                try {
                    mVar.f1886a.startActivity(intent);
                } catch (ActivityNotFoundException e3) {
                    Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e3);
                    pVar = oVar.A;
                    if (pVar == null) {
                    }
                    zExpandActionView = false;
                    pVar2 = oVar.A;
                    if (pVar2 == null) {
                        z2 = false;
                    } else {
                        z2 = false;
                    }
                    if (oVar.e()) {
                        zExpandActionView |= oVar.expandActionView();
                        if (zExpandActionView) {
                            c(true);
                        }
                    } else if (oVar.hasSubMenu()) {
                        if ((i3 & 4) == 0) {
                            c(false);
                        }
                        if (!oVar.hasSubMenu()) {
                            f0 f0Var2 = new f0(this.f1886a, this, oVar);
                            oVar.f1922o = f0Var2;
                            f0Var2.setHeaderTitle(oVar.f1913e);
                        }
                        f0Var = oVar.f1922o;
                        if (z2) {
                            pVar2.f1934a.onPrepareSubMenu(f0Var);
                        }
                        copyOnWriteArrayList = this.f1904u;
                        if (!copyOnWriteArrayList.isEmpty()) {
                            if (zVar != null) {
                            }
                            for (WeakReference weakReference : copyOnWriteArrayList) {
                                zVar2 = (z) weakReference.get();
                                if (zVar2 == null) {
                                    copyOnWriteArrayList.remove(weakReference);
                                } else if (!zK) {
                                    zK = zVar2.k(f0Var);
                                }
                            }
                        }
                        zExpandActionView |= zK;
                        if (!zExpandActionView) {
                            c(true);
                        }
                    } else {
                        if ((i3 & 4) == 0) {
                            c(false);
                        }
                        if (!oVar.hasSubMenu()) {
                            f0 f0Var3 = new f0(this.f1886a, this, oVar);
                            oVar.f1922o = f0Var3;
                            f0Var3.setHeaderTitle(oVar.f1913e);
                        }
                        f0Var = oVar.f1922o;
                        if (z2) {
                            pVar2.f1934a.onPrepareSubMenu(f0Var);
                        }
                        copyOnWriteArrayList = this.f1904u;
                        if (!copyOnWriteArrayList.isEmpty()) {
                            zK = zVar != null ? zVar.k(f0Var) : false;
                            while (r8.hasNext()) {
                                zVar2 = (z) weakReference.get();
                                if (zVar2 == null) {
                                    copyOnWriteArrayList.remove(weakReference);
                                } else if (!zK) {
                                    zK = zVar2.k(f0Var);
                                }
                            }
                        }
                        zExpandActionView |= zK;
                        if (!zExpandActionView) {
                            c(true);
                        }
                    }
                    return zExpandActionView;
                }
                zExpandActionView = true;
            } else {
                pVar = oVar.A;
                if (pVar == null && pVar.f1934a.onPerformDefaultAction()) {
                    zExpandActionView = true;
                } else {
                    zExpandActionView = false;
                }
            }
        } else {
            zExpandActionView = true;
        }
        pVar2 = oVar.A;
        if (pVar2 == null && pVar2.f1934a.hasSubMenu()) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (oVar.e()) {
            zExpandActionView |= oVar.expandActionView();
            if (zExpandActionView) {
                c(true);
            }
        } else if (oVar.hasSubMenu() || z2) {
            if ((i3 & 4) == 0) {
                c(false);
            }
            if (!oVar.hasSubMenu()) {
                f0 f0Var4 = new f0(this.f1886a, this, oVar);
                oVar.f1922o = f0Var4;
                f0Var4.setHeaderTitle(oVar.f1913e);
            }
            f0Var = oVar.f1922o;
            if (z2) {
                pVar2.f1934a.onPrepareSubMenu(f0Var);
            }
            copyOnWriteArrayList = this.f1904u;
            if (!copyOnWriteArrayList.isEmpty()) {
                if (zVar != null) {
                }
                while (r8.hasNext()) {
                    zVar2 = (z) weakReference.get();
                    if (zVar2 == null) {
                        copyOnWriteArrayList.remove(weakReference);
                    } else if (!zK) {
                        zK = zVar2.k(f0Var);
                    }
                }
            }
            zExpandActionView |= zK;
            if (!zExpandActionView) {
                c(true);
            }
        } else if ((i3 & 1) == 0) {
            c(true);
        }
        return zExpandActionView;
    }

    public final void r(z zVar) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f1904u;
        for (WeakReference weakReference : copyOnWriteArrayList) {
            z zVar2 = (z) weakReference.get();
            if (zVar2 == null || zVar2 == zVar) {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
    }

    @Override // android.view.Menu
    public final void removeGroup(int i3) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i5 >= size) {
                i5 = -1;
                break;
            } else if (((o) arrayList.get(i5)).b == i3) {
                break;
            } else {
                i5++;
            }
        }
        if (i5 >= 0) {
            int size2 = arrayList.size() - i5;
            while (true) {
                int i6 = i4 + 1;
                if (i4 >= size2 || ((o) arrayList.get(i5)).b != i3) {
                    break;
                }
                if (i5 >= 0 && i5 < arrayList.size()) {
                    arrayList.remove(i5);
                }
                i4 = i6;
            }
            p(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i3) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                i4 = -1;
                break;
            } else if (((o) arrayList.get(i4)).f1910a == i3) {
                break;
            } else {
                i4++;
            }
        }
        if (i4 < 0 || i4 >= arrayList.size()) {
            return;
        }
        arrayList.remove(i4);
        p(true);
    }

    public final void s(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(j());
        int size = this.f.size();
        for (int i3 = 0; i3 < size; i3++) {
            MenuItem item = getItem(i3);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((f0) item.getSubMenu()).s(bundle);
            }
        }
        int i4 = bundle.getInt("android:menu:expandedactionview");
        if (i4 <= 0 || (menuItemFindItem = findItem(i4)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i3, boolean z2, boolean z3) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            o oVar = (o) arrayList.get(i4);
            if (oVar.b == i3) {
                oVar.f1931x = (oVar.f1931x & (-5)) | (z3 ? 4 : 0);
                oVar.setCheckable(z2);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z2) {
        this.f1906w = z2;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i3, boolean z2) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            o oVar = (o) arrayList.get(i4);
            if (oVar.b == i3) {
                oVar.setEnabled(z2);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i3, boolean z2) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        boolean z3 = false;
        for (int i4 = 0; i4 < size; i4++) {
            o oVar = (o) arrayList.get(i4);
            if (oVar.b == i3) {
                int i5 = oVar.f1931x;
                int i6 = (i5 & (-9)) | (z2 ? 0 : 8);
                oVar.f1931x = i6;
                if (i5 != i6) {
                    z3 = true;
                }
            }
        }
        if (z3) {
            p(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z2) {
        this.f1887c = z2;
        p(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f.size();
    }

    public final void t(Bundle bundle) {
        int size = this.f.size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i3 = 0; i3 < size; i3++) {
            MenuItem item = getItem(i3);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((f0) item.getSubMenu()).t(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(j(), sparseArray);
        }
    }

    public final void u(int i3, CharSequence charSequence, int i4, Drawable drawable, View view) {
        if (view != null) {
            this.f1898o = view;
            this.f1896m = null;
            this.f1897n = null;
        } else {
            if (i3 > 0) {
                this.f1896m = this.b.getText(i3);
            } else if (charSequence != null) {
                this.f1896m = charSequence;
            }
            if (i4 > 0) {
                this.f1897n = androidx.core.content.b.b(this.f1886a, i4);
            } else if (drawable != null) {
                this.f1897n = drawable;
            }
            this.f1898o = null;
        }
        p(false);
    }

    public final void v() {
        this.f1899p = false;
        if (this.f1900q) {
            this.f1900q = false;
            p(this.f1901r);
        }
    }

    public final void w() {
        if (this.f1899p) {
            return;
        }
        this.f1899p = true;
        this.f1900q = false;
        this.f1901r = false;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i3) {
        return a(0, 0, 0, this.b.getString(i3));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i3) {
        return addSubMenu(0, 0, 0, this.b.getString(i3));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i3, int i4, int i5, CharSequence charSequence) {
        return a(i3, i4, i5, charSequence);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i3, int i4, int i5, CharSequence charSequence) {
        o oVarA = a(i3, i4, i5, charSequence);
        f0 f0Var = new f0(this.f1886a, this, oVarA);
        oVarA.f1922o = f0Var;
        f0Var.setHeaderTitle(oVarA.f1913e);
        return f0Var;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i3, int i4, int i5, int i6) {
        return a(i3, i4, i5, this.b.getString(i6));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i3, int i4, int i5, int i6) {
        return addSubMenu(i3, i4, i5, this.b.getString(i6));
    }
}
