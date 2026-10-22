package h;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

/* JADX INFO: loaded from: classes.dex */
public class c0 extends androidx.fragment.app.h implements Menu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m f1828c;

    public c0(Context context, m mVar) {
        super(context);
        if (mVar == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f1828c = mVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return g(this.f1828c.a(0, 0, 0, charSequence));
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i3, int i4, int i5, ComponentName componentName, Intent[] intentArr, Intent intent, int i6, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int iAddIntentOptions = this.f1828c.addIntentOptions(i3, i4, i5, componentName, intentArr, intent, i6, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i7 = 0; i7 < length; i7++) {
                menuItemArr[i7] = g(menuItemArr2[i7]);
            }
        }
        return iAddIntentOptions;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return this.f1828c.addSubMenu(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final void clear() {
        l.k kVar = (l.k) this.b;
        if (kVar != null) {
            kVar.clear();
        }
        this.f1828c.clear();
    }

    @Override // android.view.Menu
    public final void close() {
        this.f1828c.close();
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i3) {
        return g(this.f1828c.findItem(i3));
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i3) {
        return g(this.f1828c.getItem(i3));
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        return this.f1828c.hasVisibleItems();
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i3, KeyEvent keyEvent) {
        return this.f1828c.isShortcutKey(i3, keyEvent);
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i3, int i4) {
        return this.f1828c.performIdentifierAction(i3, i4);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i3, KeyEvent keyEvent, int i4) {
        return this.f1828c.performShortcut(i3, keyEvent, i4);
    }

    @Override // android.view.Menu
    public final void removeGroup(int i3) {
        if (((l.k) this.b) != null) {
            int i4 = 0;
            while (true) {
                l.k kVar = (l.k) this.b;
                if (i4 >= kVar.f2418c) {
                    break;
                }
                if (((x.a) kVar.g(i4)).getGroupId() == i3) {
                    ((l.k) this.b).h(i4);
                    i4--;
                }
                i4++;
            }
        }
        this.f1828c.removeGroup(i3);
    }

    @Override // android.view.Menu
    public final void removeItem(int i3) {
        if (((l.k) this.b) != null) {
            int i4 = 0;
            while (true) {
                l.k kVar = (l.k) this.b;
                if (i4 >= kVar.f2418c) {
                    break;
                }
                if (((x.a) kVar.g(i4)).getItemId() == i3) {
                    ((l.k) this.b).h(i4);
                    break;
                }
                i4++;
            }
        }
        this.f1828c.removeItem(i3);
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i3, boolean z2, boolean z3) {
        this.f1828c.setGroupCheckable(i3, z2, z3);
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i3, boolean z2) {
        this.f1828c.setGroupEnabled(i3, z2);
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i3, boolean z2) {
        this.f1828c.setGroupVisible(i3, z2);
    }

    @Override // android.view.Menu
    public final void setQwertyMode(boolean z2) {
        this.f1828c.setQwertyMode(z2);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f1828c.size();
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i3) {
        return this.f1828c.addSubMenu(i3);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i3) {
        return g(this.f1828c.add(i3));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i3, int i4, int i5, CharSequence charSequence) {
        return this.f1828c.addSubMenu(i3, i4, i5, charSequence);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i3, int i4, int i5, CharSequence charSequence) {
        return g(this.f1828c.a(i3, i4, i5, charSequence));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i3, int i4, int i5, int i6) {
        return this.f1828c.addSubMenu(i3, i4, i5, i6);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i3, int i4, int i5, int i6) {
        return g(this.f1828c.add(i3, i4, i5, i6));
    }
}
