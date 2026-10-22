package i;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.widget.SearchView;

/* JADX INFO: loaded from: classes.dex */
public final class q2 implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2137a;
    public final /* synthetic */ Object b;

    public /* synthetic */ q2(int i3, Object obj) {
        this.f2137a = i3;
        this.b = obj;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z2) {
        switch (this.f2137a) {
            case 0:
                SearchView searchView = (SearchView) this.b;
                View.OnFocusChangeListener onFocusChangeListener = searchView.K;
                if (onFocusChangeListener != null) {
                    onFocusChangeListener.onFocusChange(searchView, z2);
                }
                break;
            case 1:
                ((u1.e) this.b).d(!TextUtils.isEmpty(((EditText) view).getText()) && z2);
                break;
            default:
                u1.k kVar = (u1.k) this.b;
                kVar.f3274a.setEndIconActivated(z2);
                if (!z2) {
                    kVar.g(false);
                    kVar.f3266i = false;
                }
                break;
        }
    }
}
