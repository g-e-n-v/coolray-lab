package e;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController$RecycleListView;

/* JADX INFO: loaded from: classes.dex */
public final class c implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AlertController$RecycleListView f1550a;
    public final /* synthetic */ g b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f1551c;

    public c(d dVar, AlertController$RecycleListView alertController$RecycleListView, g gVar) {
        this.f1551c = dVar;
        this.f1550a = alertController$RecycleListView;
        this.b = gVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i3, long j3) {
        d dVar = this.f1551c;
        boolean[] zArr = dVar.f1569t;
        AlertController$RecycleListView alertController$RecycleListView = this.f1550a;
        if (zArr != null) {
            zArr[i3] = alertController$RecycleListView.isItemChecked(i3);
        }
        dVar.f1573x.onClick(this.b.b, i3, alertController$RecycleListView.isItemChecked(i3));
    }
}
