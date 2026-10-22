package w0;

import android.content.SharedPreferences;
import android.widget.SeekBar;
import android.widget.TextView;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import com.ex.auto.TempBattPillFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final class uc implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4346a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f4347c;

    public /* synthetic */ uc(MainActivity mainActivity, SharedPreferences sharedPreferences, int i3) {
        this.f4346a = i3;
        this.b = mainActivity;
        this.f4347c = sharedPreferences;
    }

    private final void a(SeekBar seekBar) {
    }

    private final void b(SeekBar seekBar) {
    }

    private final void c(SeekBar seekBar) {
    }

    private final void d(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i3, boolean z2) {
        switch (this.f4346a) {
            case 0:
                int i4 = i3 + 50;
                TextView textView = (TextView) this.b.findViewById(R.id.masterToolsFloatingSizeValue);
                StringBuilder sb = new StringBuilder();
                sb.append(i4);
                sb.append('%');
                textView.setText(sb.toString());
                if (z2) {
                    this.f4347c.edit().putInt("pill_size_pct", i4).apply();
                    TempBattPillFloaterService tempBattPillFloaterService = TempBattPillFloaterService.f1198v;
                    TempBattPillFloaterService tempBattPillFloaterService2 = TempBattPillFloaterService.f1198v;
                    if (tempBattPillFloaterService2 != null) {
                        tempBattPillFloaterService2.b(i4);
                    }
                }
                break;
            default:
                TextView textView2 = (TextView) this.b.findViewById(R.id.masterToolsFloatingAlphaValue);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i3);
                sb2.append('%');
                textView2.setText(sb2.toString());
                if (z2) {
                    this.f4347c.edit().putInt("pill_alpha", i3).apply();
                    TempBattPillFloaterService tempBattPillFloaterService3 = TempBattPillFloaterService.f1198v;
                    TempBattPillFloaterService tempBattPillFloaterService4 = TempBattPillFloaterService.f1198v;
                    if (tempBattPillFloaterService4 != null) {
                        tempBattPillFloaterService4.a(i3);
                    }
                }
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i3 = this.f4346a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i3 = this.f4346a;
    }
}
