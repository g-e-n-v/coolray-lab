package i;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.AutoCompleteTextView;
import androidx.appcompat.widget.SearchView;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: loaded from: classes.dex */
public final class o2 implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2116a;
    public final /* synthetic */ Object b;

    public /* synthetic */ o2(int i3, Object obj) {
        this.f2116a = i3;
        this.b = obj;
    }

    private final void a(Editable editable) {
    }

    private final void b(Editable editable) {
    }

    private final void c(int i3, int i4, int i5, CharSequence charSequence) {
    }

    private final void d(int i3, int i4, int i5, CharSequence charSequence) {
    }

    private final void e(int i3, int i4, int i5, CharSequence charSequence) {
    }

    private final void f(int i3, int i4, int i5, CharSequence charSequence) {
    }

    private final void g(int i3, int i4, int i5, CharSequence charSequence) {
    }

    private final void h(int i3, int i4, int i5, CharSequence charSequence) {
    }

    private final void i(int i3, int i4, int i5, CharSequence charSequence) {
    }

    private final void j(int i3, int i4, int i5, CharSequence charSequence) {
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        switch (this.f2116a) {
            case 0:
                break;
            case 1:
                u1.e eVar = (u1.e) this.b;
                if (eVar.f3274a.getSuffixText() == null) {
                    eVar.d(editable.length() > 0);
                    break;
                }
                break;
            case 2:
                u1.k kVar = (u1.k) this.b;
                AutoCompleteTextView autoCompleteTextViewD = u1.k.d(kVar, kVar.f3274a.getEditText());
                autoCompleteTextViewD.post(new androidx.fragment.app.c(this, autoCompleteTextViewD));
                break;
            case 3:
                break;
            default:
                TextInputLayout textInputLayout = (TextInputLayout) this.b;
                textInputLayout.s(!textInputLayout.H0, false);
                if (textInputLayout.f1461h) {
                    textInputLayout.m(editable.length());
                }
                if (textInputLayout.f1475o) {
                    textInputLayout.t(editable.length());
                }
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
        switch (this.f2116a) {
            case 3:
                u1.p pVar = (u1.p) this.b;
                pVar.f3275c.setChecked(!u1.p.d(pVar));
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
        switch (this.f2116a) {
            case 0:
                SearchView searchView = (SearchView) this.b;
                Editable text = searchView.f206p.getText();
                searchView.V = text;
                boolean zIsEmpty = TextUtils.isEmpty(text);
                searchView.v(!zIsEmpty);
                int i6 = 8;
                if (searchView.U && !searchView.N && zIsEmpty) {
                    searchView.f211u.setVisibility(8);
                    i6 = 0;
                }
                searchView.f213w.setVisibility(i6);
                searchView.r();
                searchView.u();
                charSequence.toString();
                break;
        }
    }
}
