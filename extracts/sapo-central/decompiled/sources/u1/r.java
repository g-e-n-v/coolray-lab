package u1;

import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: loaded from: classes.dex */
public class r extends c0.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextInputLayout f3305d;

    public r(TextInputLayout textInputLayout) {
        this.f3305d = textInputLayout;
    }

    @Override // c0.c
    public void d(View view, d0.f fVar) {
        AccessibilityNodeInfo accessibilityNodeInfo = fVar.f1533a;
        this.f701a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        TextInputLayout textInputLayout = this.f3305d;
        EditText editText = textInputLayout.getEditText();
        Editable text = editText != null ? editText.getText() : null;
        CharSequence hint = textInputLayout.getHint();
        CharSequence helperText = textInputLayout.getHelperText();
        CharSequence error = textInputLayout.getError();
        int counterMaxLength = textInputLayout.getCounterMaxLength();
        CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
        boolean zIsEmpty = TextUtils.isEmpty(text);
        boolean zIsEmpty2 = TextUtils.isEmpty(hint);
        boolean zIsEmpty3 = TextUtils.isEmpty(helperText);
        boolean zIsEmpty4 = TextUtils.isEmpty(error);
        boolean z2 = (zIsEmpty4 && TextUtils.isEmpty(counterOverflowDescription)) ? false : true;
        String string = !zIsEmpty2 ? hint.toString() : "";
        StringBuilder sb = new StringBuilder();
        sb.append(string);
        sb.append(((zIsEmpty4 && zIsEmpty3) || TextUtils.isEmpty(string)) ? "" : ", ");
        String string2 = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(string2);
        if (!zIsEmpty4) {
            helperText = error;
        } else if (zIsEmpty3) {
            helperText = "";
        }
        sb2.append((Object) helperText);
        String string3 = sb2.toString();
        if (!zIsEmpty) {
            accessibilityNodeInfo.setText(text);
        } else if (!TextUtils.isEmpty(string3)) {
            accessibilityNodeInfo.setText(string3);
        }
        if (!TextUtils.isEmpty(string3)) {
            accessibilityNodeInfo.setHintText(string3);
            accessibilityNodeInfo.setShowingHintText(zIsEmpty);
        }
        if (text == null || text.length() != counterMaxLength) {
            counterMaxLength = -1;
        }
        accessibilityNodeInfo.setMaxTextLength(counterMaxLength);
        if (z2) {
            if (zIsEmpty4) {
                error = counterOverflowDescription;
            }
            accessibilityNodeInfo.setError(error);
        }
    }
}
