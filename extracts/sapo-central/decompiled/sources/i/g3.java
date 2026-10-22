package i;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class g3 implements h.z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public h.m f2031a;
    public h.o b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Toolbar f2032c;

    public g3(Toolbar toolbar) {
        this.f2032c = toolbar;
    }

    @Override // h.z
    public final void b(h.m mVar, boolean z2) {
    }

    @Override // h.z
    public final void e() {
        if (this.b != null) {
            h.m mVar = this.f2031a;
            if (mVar != null) {
                int size = mVar.f.size();
                for (int i3 = 0; i3 < size; i3++) {
                    if (this.f2031a.getItem(i3) == this.b) {
                        return;
                    }
                }
            }
            j(this.b);
        }
    }

    @Override // h.z
    public final void g(Context context, h.m mVar) {
        h.o oVar;
        h.m mVar2 = this.f2031a;
        if (mVar2 != null && (oVar = this.b) != null) {
            mVar2.d(oVar);
        }
        this.f2031a = mVar;
    }

    @Override // h.z
    public final boolean h() {
        return false;
    }

    @Override // h.z
    public final boolean i(h.o oVar) {
        Toolbar toolbar = this.f2032c;
        toolbar.c();
        ViewParent parent = toolbar.f225h.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.f225h);
            }
            toolbar.addView(toolbar.f225h);
        }
        View actionView = oVar.getActionView();
        toolbar.f226i = actionView;
        this.b = oVar;
        ViewParent parent2 = actionView.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.f226i);
            }
            h3 h3VarH = Toolbar.h();
            h3VarH.f2043a = (toolbar.f231n & 112) | 8388611;
            h3VarH.b = 2;
            toolbar.f226i.setLayoutParams(h3VarH);
            toolbar.addView(toolbar.f226i);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((h3) childAt.getLayoutParams()).b != 2 && childAt != toolbar.f220a) {
                toolbar.removeViewAt(childCount);
                toolbar.E.add(childAt);
            }
        }
        toolbar.requestLayout();
        oVar.C = true;
        oVar.f1921n.p(false);
        KeyEvent.Callback callback = toolbar.f226i;
        if (callback instanceof g.b) {
            ((g.b) callback).onActionViewExpanded();
        }
        toolbar.t();
        return true;
    }

    @Override // h.z
    public final boolean j(h.o oVar) {
        Toolbar toolbar = this.f2032c;
        KeyEvent.Callback callback = toolbar.f226i;
        if (callback instanceof g.b) {
            ((g.b) callback).onActionViewCollapsed();
        }
        toolbar.removeView(toolbar.f226i);
        toolbar.removeView(toolbar.f225h);
        toolbar.f226i = null;
        ArrayList arrayList = toolbar.E;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.b = null;
        toolbar.requestLayout();
        oVar.C = false;
        oVar.f1921n.p(false);
        toolbar.t();
        return true;
    }

    @Override // h.z
    public final boolean k(h.f0 f0Var) {
        return false;
    }
}
