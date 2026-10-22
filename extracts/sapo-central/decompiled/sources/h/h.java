package h;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.ex.auto.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class h extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1876a = -1;
    public final /* synthetic */ i b;

    public h(i iVar) {
        this.b = iVar;
        a();
    }

    public final void a() {
        m mVar = this.b.f1878c;
        o oVar = mVar.f1905v;
        if (oVar != null) {
            mVar.i();
            ArrayList arrayList = mVar.f1893j;
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                if (((o) arrayList.get(i3)) == oVar) {
                    this.f1876a = i3;
                    return;
                }
            }
        }
        this.f1876a = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final o getItem(int i3) {
        i iVar = this.b;
        m mVar = iVar.f1878c;
        mVar.i();
        ArrayList arrayList = mVar.f1893j;
        iVar.getClass();
        int i4 = this.f1876a;
        if (i4 >= 0 && i3 >= i4) {
            i3++;
        }
        return (o) arrayList.get(i3);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        i iVar = this.b;
        m mVar = iVar.f1878c;
        mVar.i();
        int size = mVar.f1893j.size();
        iVar.getClass();
        return this.f1876a < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i3) {
        return i3;
    }

    @Override // android.widget.Adapter
    public final View getView(int i3, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.b.b.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
        }
        ((a0) view).c(getItem(i3));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
