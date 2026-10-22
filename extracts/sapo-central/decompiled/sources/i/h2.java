package i;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;

/* JADX INFO: loaded from: classes.dex */
public final class h2 extends q1 {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f2039m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f2040n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public d2 f2041o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public h.o f2042p;

    public h2(Context context, boolean z2) {
        super(context, z2);
        if (1 == g2.a(context.getResources().getConfiguration())) {
            this.f2039m = 21;
            this.f2040n = 22;
        } else {
            this.f2039m = 22;
            this.f2040n = 21;
        }
    }

    @Override // i.q1, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        h.j jVar;
        int headersCount;
        int iPointToPosition;
        int i3;
        if (this.f2041o != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                headersCount = headerViewListAdapter.getHeadersCount();
                jVar = (h.j) headerViewListAdapter.getWrappedAdapter();
            } else {
                jVar = (h.j) adapter;
                headersCount = 0;
            }
            h.o oVarB = (motionEvent.getAction() == 10 || (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i3 = iPointToPosition - headersCount) < 0 || i3 >= jVar.getCount()) ? null : jVar.getItem(i3);
            h.o oVar = this.f2042p;
            if (oVar != oVarB) {
                h.m mVar = jVar.f1881a;
                if (oVar != null) {
                    this.f2041o.l(mVar, oVar);
                }
                this.f2042p = oVarB;
                if (oVarB != null) {
                    this.f2041o.n(mVar, oVarB);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i3, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i3 == this.f2039m) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i3 != this.f2040n) {
            return super.onKeyDown(i3, keyEvent);
        }
        setSelection(-1);
        ListAdapter adapter = getAdapter();
        (adapter instanceof HeaderViewListAdapter ? (h.j) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (h.j) adapter).f1881a.c(false);
        return true;
    }

    public void setHoverListener(d2 d2Var) {
        this.f2041o = d2Var;
    }

    @Override // i.q1, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}
