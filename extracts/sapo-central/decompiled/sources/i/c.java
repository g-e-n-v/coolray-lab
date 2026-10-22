package i;

import androidx.appcompat.widget.ActionBarOverlayLayout;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1985a;
    public final /* synthetic */ ActionBarOverlayLayout b;

    public /* synthetic */ c(ActionBarOverlayLayout actionBarOverlayLayout, int i3) {
        this.f1985a = i3;
        this.b = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1985a) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = this.b;
                actionBarOverlayLayout.h();
                actionBarOverlayLayout.f175w = actionBarOverlayLayout.f157d.animate().translationY(0.0f).setListener(actionBarOverlayLayout.f176x);
                break;
            default:
                ActionBarOverlayLayout actionBarOverlayLayout2 = this.b;
                actionBarOverlayLayout2.h();
                actionBarOverlayLayout2.f175w = actionBarOverlayLayout2.f157d.animate().translationY(-actionBarOverlayLayout2.f157d.getHeight()).setListener(actionBarOverlayLayout2.f176x);
                break;
        }
    }
}
