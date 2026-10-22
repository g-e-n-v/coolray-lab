package w0;

import android.content.DialogInterface;
import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class aa implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3358a;
    public final /* synthetic */ Object b;

    public /* synthetic */ aa(int i3, Object obj) {
        this.f3358a = i3;
        this.b = obj;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        switch (this.f3358a) {
            case 0:
                h2.a aVar = (h2.a) this.b;
                int i3 = MainActivity.f1002z1;
                aVar.a();
                break;
            default:
                MainActivity mainActivity = (MainActivity) this.b;
                mainActivity.f1018h1 = false;
                mainActivity.l1();
                break;
        }
    }
}
