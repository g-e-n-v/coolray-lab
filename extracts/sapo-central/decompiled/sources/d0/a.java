package d0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1520a;
    public final f b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1521c;

    public a(int i3, f fVar, int i4) {
        this.f1520a = i3;
        this.b = fVar;
        this.f1521c = i4;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f1520a);
        this.b.f1533a.performAction(this.f1521c, bundle);
    }
}
