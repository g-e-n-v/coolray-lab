package w0;

import android.view.View;
import android.widget.AdapterView;
import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final class oc implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3991a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ oc(MainActivity mainActivity, int i3) {
        this.f3991a = i3;
        this.b = mainActivity;
    }

    private final void a(AdapterView adapterView) {
    }

    private final void b(AdapterView adapterView) {
    }

    private final void c(AdapterView adapterView) {
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i3, long j3) {
        switch (this.f3991a) {
            case 0:
                this.b.f1015g0 = i3;
                break;
            case 1:
                this.b.f1007c0 = i3;
                break;
            default:
                this.b.f1011e0 = i3;
                break;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i3 = this.f3991a;
    }
}
