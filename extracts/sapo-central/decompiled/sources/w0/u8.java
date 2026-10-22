package w0;

import android.widget.SeekBar;
import android.widget.TextView;
import com.ex.auto.MainActivity;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final class u8 implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4340a;
    public final /* synthetic */ Object b;

    public /* synthetic */ u8(int i3, Object obj) {
        this.f4340a = i3;
        this.b = obj;
    }

    private final void a(SeekBar seekBar) {
    }

    private final void b(SeekBar seekBar) {
    }

    private final void c(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i3, boolean z2) {
        switch (this.f4340a) {
            case 0:
                if (z2) {
                    ((h2.l) this.b).c(Integer.valueOf(i3));
                }
                break;
            default:
                TextView textView = (TextView) ((MainActivity) this.b).findViewById(R.id.masterToolsBrightnessValue);
                StringBuilder sb = new StringBuilder();
                sb.append(i3);
                sb.append('%');
                textView.setText(sb.toString());
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i3 = this.f4340a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        switch (this.f4340a) {
            case 0:
                break;
            default:
                int iK = k1.a.k((k1.a.k(seekBar != null ? seekBar.getProgress() : 5, 5, 100) * 255) / 100, 12, 255);
                MainActivity mainActivity = (MainActivity) this.b;
                mainActivity.f1048w.execute(new a9(mainActivity, iK, 8));
                break;
        }
    }
}
