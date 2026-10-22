package g0;

import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import i.y2;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends BaseAdapter implements Filterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1793a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Cursor f1794c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1795d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f1796e;
    public b f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public d f1797g;

    public abstract void a(View view, Cursor cursor);

    public void b(Cursor cursor) {
        Cursor cursor2 = this.f1794c;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                a aVar = this.f1796e;
                if (aVar != null) {
                    cursor2.unregisterContentObserver(aVar);
                }
                b bVar = this.f;
                if (bVar != null) {
                    cursor2.unregisterDataSetObserver(bVar);
                }
            }
            this.f1794c = cursor;
            if (cursor != null) {
                a aVar2 = this.f1796e;
                if (aVar2 != null) {
                    cursor.registerContentObserver(aVar2);
                }
                b bVar2 = this.f;
                if (bVar2 != null) {
                    cursor.registerDataSetObserver(bVar2);
                }
                this.f1795d = cursor.getColumnIndexOrThrow("_id");
                this.f1793a = true;
                notifyDataSetChanged();
            } else {
                this.f1795d = -1;
                this.f1793a = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract String c(Cursor cursor);

    public abstract View d(ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public final int getCount() {
        Cursor cursor;
        if (!this.f1793a || (cursor = this.f1794c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i3, View view, ViewGroup viewGroup) {
        if (!this.f1793a) {
            return null;
        }
        this.f1794c.moveToPosition(i3);
        if (view == null) {
            y2 y2Var = (y2) this;
            view = y2Var.f2205j.inflate(y2Var.f2204i, viewGroup, false);
        }
        a(view, this.f1794c);
        return view;
    }

    @Override // android.widget.Filterable
    public final Filter getFilter() {
        if (this.f1797g == null) {
            d dVar = new d();
            dVar.f1798a = this;
            this.f1797g = dVar;
        }
        return this.f1797g;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i3) {
        Cursor cursor;
        if (!this.f1793a || (cursor = this.f1794c) == null) {
            return null;
        }
        cursor.moveToPosition(i3);
        return this.f1794c;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i3) {
        Cursor cursor;
        if (this.f1793a && (cursor = this.f1794c) != null && cursor.moveToPosition(i3)) {
            return this.f1794c.getLong(this.f1795d);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i3, View view, ViewGroup viewGroup) {
        if (!this.f1793a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.f1794c.moveToPosition(i3)) {
            throw new IllegalStateException("couldn't move cursor to position " + i3);
        }
        if (view == null) {
            view = d(viewGroup);
        }
        a(view, this.f1794c);
        return view;
    }
}
