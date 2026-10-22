package w0;

import android.content.SharedPreferences;
import android.widget.SeekBar;
import android.widget.TextView;
import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final class vc implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f4401a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f4402c;

    public vc(MainActivity mainActivity, String str, int i3) {
        this.f4401a = mainActivity;
        this.b = i3;
        this.f4402c = str;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i3, boolean z2) {
        int i4 = this.b;
        MainActivity mainActivity = this.f4401a;
        ((TextView) mainActivity.findViewById(i4)).setText(mainActivity.D(i3));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i3 = MainActivity.f1002z1;
        SharedPreferences.Editor editorEdit = this.f4401a.o0().edit();
        if (seekBar != null) {
            editorEdit.putInt(this.f4402c, seekBar.getProgress()).apply();
        }
    }
}
