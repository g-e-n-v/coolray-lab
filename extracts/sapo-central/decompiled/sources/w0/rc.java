package w0;

import android.content.SharedPreferences;
import android.widget.SeekBar;
import android.widget.TextView;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class rc implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4174a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f4175c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ec f4176d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ bd f4177e;
    public final /* synthetic */ TextView f;

    public rc(int i3, MainActivity mainActivity, String str, ec ecVar, bd bdVar, TextView textView) {
        this.f4174a = i3;
        this.b = mainActivity;
        this.f4175c = str;
        this.f4176d = ecVar;
        this.f4177e = bdVar;
        this.f = textView;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i3, boolean z2) {
        int i4 = i3 + this.f4174a;
        int i5 = MainActivity.f1002z1;
        StringBuilder sb = new StringBuilder();
        sb.append(i4);
        sb.append('%');
        this.f.setText(sb.toString());
        if (z2) {
            SharedPreferences.Editor editorEdit = this.b.o0().edit();
            String str = this.f4175c;
            editorEdit.putInt(str, i4).apply();
            ec ecVar = this.f4176d;
            boolean zEquals = str.equals(ecVar.f3542d);
            bd bdVar = this.f4177e;
            if (zEquals) {
                bdVar.setSizePercent(i4);
            }
            if (str.equals(ecVar.f3543e)) {
                bdVar.setBackgroundPercent(i4);
            }
            List list = HomeFloatingWidgetsService.f926a0;
            t1.U(ecVar.f);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
    }
}
