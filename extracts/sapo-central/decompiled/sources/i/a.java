package i;

import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;

/* JADX INFO: loaded from: classes.dex */
public final class a implements c0.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1969a = false;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActionBarContextView f1970c;

    public a(ActionBarContextView actionBarContextView) {
        this.f1970c = actionBarContextView;
    }

    @Override // c0.x0
    public final void b() {
        if (this.f1969a) {
            return;
        }
        ActionBarContextView actionBarContextView = this.f1970c;
        actionBarContextView.f = null;
        super/*android.view.View*/.setVisibility(this.b);
    }

    @Override // c0.x0
    public final void c(View view) {
        this.f1969a = true;
    }

    @Override // c0.x0
    public final void g() {
        super/*android.view.View*/.setVisibility(0);
        this.f1969a = false;
    }
}
