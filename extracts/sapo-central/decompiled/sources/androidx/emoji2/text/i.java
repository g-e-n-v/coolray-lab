package androidx.emoji2.text;

import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import q0.i0;

/* JADX INFO: loaded from: classes.dex */
public final class i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f332a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f333c;

    public /* synthetic */ i(Object obj, int i3, int i4) {
        this.f332a = i4;
        this.f333c = obj;
        this.b = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f332a) {
            case 0:
                ArrayList arrayList = (ArrayList) this.f333c;
                int size = arrayList.size();
                int i3 = 0;
                if (this.b == 1) {
                    while (i3 < size) {
                        ((h) arrayList.get(i3)).a();
                        i3++;
                    }
                } else {
                    while (i3 < size) {
                        ((h) arrayList.get(i3)).getClass();
                        i3++;
                    }
                }
                break;
            case 1:
                RecyclerView recyclerView = ((com.google.android.material.datepicker.m) this.f333c).Y;
                if (!recyclerView.f651u) {
                    i0 i0Var = recyclerView.f635l;
                    if (i0Var != null) {
                        i0Var.s0(recyclerView, this.b);
                    } else {
                        Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                    }
                    break;
                }
                break;
            default:
                u.b bVar = (u.b) ((m) this.f333c).b;
                if (bVar != null) {
                    bVar.d(this.b);
                }
                break;
        }
    }

    public i(List list, int i3, Throwable th) {
        this.f332a = 0;
        a1.b.l(list, "initCallbacks cannot be null");
        this.f333c = new ArrayList(list);
        this.b = i3;
    }
}
