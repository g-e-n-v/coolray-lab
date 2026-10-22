package h;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public final class q extends FrameLayout implements g.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CollapsibleActionView f1935a;

    /* JADX WARN: Multi-variable type inference failed */
    public q(View view) {
        super(view.getContext());
        this.f1935a = (CollapsibleActionView) view;
        addView(view);
    }

    @Override // g.b
    public final void onActionViewCollapsed() {
        this.f1935a.onActionViewCollapsed();
    }

    @Override // g.b
    public final void onActionViewExpanded() {
        this.f1935a.onActionViewExpanded();
    }
}
