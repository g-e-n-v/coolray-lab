package w0;

import android.widget.SeekBar;
import android.widget.TextView;
import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final class sc implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4230a;
    public final /* synthetic */ TextView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h2.l f4231c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f4232d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MainActivity f4233e;

    public sc(int i3, TextView textView, h2.l lVar, boolean z2, MainActivity mainActivity) {
        this.f4230a = i3;
        this.b = textView;
        this.f4231c = lVar;
        this.f4232d = z2;
        this.f4233e = mainActivity;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i3, boolean z2) {
        int i4 = i3 + this.f4230a;
        StringBuilder sb = new StringBuilder();
        sb.append(i4);
        sb.append('%');
        this.b.setText(sb.toString());
        if (z2) {
            this.f4231c.c(Integer.valueOf(i4));
            if (this.f4232d) {
                int i5 = MainActivity.f1002z1;
                this.f4233e.u1();
            }
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
    }
}
