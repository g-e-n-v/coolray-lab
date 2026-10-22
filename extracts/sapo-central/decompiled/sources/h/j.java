package h;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class j extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m f1881a;
    public int b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1882c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f1883d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LayoutInflater f1884e;
    public final int f;

    public j(m mVar, LayoutInflater layoutInflater, boolean z2, int i3) {
        this.f1883d = z2;
        this.f1884e = layoutInflater;
        this.f1881a = mVar;
        this.f = i3;
        a();
    }

    public final void a() {
        m mVar = this.f1881a;
        o oVar = mVar.f1905v;
        if (oVar != null) {
            mVar.i();
            ArrayList arrayList = mVar.f1893j;
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                if (((o) arrayList.get(i3)) == oVar) {
                    this.b = i3;
                    return;
                }
            }
        }
        this.b = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final o getItem(int i3) {
        ArrayList arrayListL;
        boolean z2 = this.f1883d;
        m mVar = this.f1881a;
        if (z2) {
            mVar.i();
            arrayListL = mVar.f1893j;
        } else {
            arrayListL = mVar.l();
        }
        int i4 = this.b;
        if (i4 >= 0 && i3 >= i4) {
            i3++;
        }
        return (o) arrayListL.get(i3);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList arrayListL;
        boolean z2 = this.f1883d;
        m mVar = this.f1881a;
        if (z2) {
            mVar.i();
            arrayListL = mVar.f1893j;
        } else {
            arrayListL = mVar.l();
        }
        return this.b < 0 ? arrayListL.size() : arrayListL.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i3) {
        return i3;
    }

    @Override // android.widget.Adapter
    public final View getView(int i3, View view, ViewGroup viewGroup) {
        boolean z2 = false;
        if (view == null) {
            view = this.f1884e.inflate(this.f, viewGroup, false);
        }
        int i4 = getItem(i3).b;
        int i5 = i3 - 1;
        int i6 = i5 >= 0 ? getItem(i5).b : i4;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f1881a.m() && i4 != i6) {
            z2 = true;
        }
        listMenuItemView.setGroupDividerEnabled(z2);
        a0 a0Var = (a0) view;
        if (this.f1882c) {
            listMenuItemView.setForceShowIcon(true);
        }
        a0Var.c(getItem(i3));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
