package k0;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.emoji2.text.k;

/* JADX INFO: loaded from: classes.dex */
public final class i implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EditText f2350a;
    public h b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2351c = true;

    public i(EditText editText) {
        this.f2350a = editText;
    }

    public static void a(EditText editText, int i3) {
        int length;
        if (i3 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            k kVarA = k.a();
            if (editableText == null) {
                length = 0;
            } else {
                kVarA.getClass();
                length = editableText.length();
            }
            kVarA.e(editableText, 0, length);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
        EditText editText = this.f2350a;
        if (editText.isInEditMode() || !this.f2351c || k.f335j == null || i4 > i5 || !(charSequence instanceof Spannable)) {
            return;
        }
        int iB = k.a().b();
        if (iB != 0) {
            if (iB == 1) {
                k.a().e((Spannable) charSequence, i3, i5 + i3);
                return;
            } else if (iB != 3) {
                return;
            }
        }
        k kVarA = k.a();
        if (this.b == null) {
            this.b = new h(editText);
        }
        kVarA.f(this.b);
    }
}
