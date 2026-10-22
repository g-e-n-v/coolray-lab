package w0;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes.dex */
public final class fd extends ViewOutlineProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3596a;

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        switch (this.f3596a) {
            case 0:
                i2.g.e(view, "v");
                i2.g.e(outline, "o");
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), 4.0f);
                break;
            default:
                int width = view.getWidth();
                int height = view.getHeight();
                if (width > 0 && height > 0) {
                    outline.setOval(0, 0, width, height);
                    break;
                }
                break;
        }
    }
}
