package e;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: loaded from: classes.dex */
public final class b implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f1543a;
    public final /* synthetic */ d b;

    public b(d dVar, g gVar) {
        this.b = dVar;
        this.f1543a = gVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i3, long j3) {
        d dVar = this.b;
        DialogInterface.OnClickListener onClickListener = dVar.f1567r;
        g gVar = this.f1543a;
        onClickListener.onClick(gVar.b, i3);
        if (dVar.f1571v) {
            return;
        }
        gVar.b.dismiss();
    }
}
