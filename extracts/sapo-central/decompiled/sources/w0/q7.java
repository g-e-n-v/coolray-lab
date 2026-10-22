package w0;

import android.widget.ImageView;
import android.widget.SeekBar;
import com.ex.auto.HomeFloatingWidgetsService;

/* JADX INFO: loaded from: classes.dex */
public final class q7 implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c0.f f4099a;
    public final /* synthetic */ ImageView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HomeFloatingWidgetsService f4100c;

    public q7(c0.f fVar, ImageView imageView, HomeFloatingWidgetsService homeFloatingWidgetsService) {
        this.f4099a = fVar;
        this.b = imageView;
        this.f4100c = homeFloatingWidgetsService;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i3, boolean z2) {
        if (z2) {
            c0.f fVar = this.f4099a;
            fVar.n(i3);
            HomeFloatingWidgetsService.l(fVar, this.b, this.f4100c);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
    }
}
