package u1;

import android.graphics.drawable.Drawable;
import android.text.method.PasswordTransformationMethod;
import android.widget.EditText;
import com.ex.auto.R;
import com.google.android.material.textfield.TextInputLayout;
import i.o2;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
public final class p extends l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final o2 f3302d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a f3303e;
    public final b f;

    public p(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f3302d = new o2(3, this);
        this.f3303e = new a(this, 2);
        this.f = new b(this, 2);
    }

    public static boolean d(p pVar) {
        EditText editText = pVar.f3274a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    @Override // u1.l
    public final void a() {
        Drawable drawableV = a1.b.v(this.b, R.drawable.design_password_eye);
        TextInputLayout textInputLayout = this.f3274a;
        textInputLayout.setEndIconDrawable(drawableV);
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.password_toggle_content_description));
        textInputLayout.setEndIconOnClickListener(new com.google.android.material.datepicker.k(7, this));
        LinkedHashSet linkedHashSet = textInputLayout.f1451b0;
        a aVar = this.f3303e;
        linkedHashSet.add(aVar);
        if (textInputLayout.f1456e != null) {
            aVar.a(textInputLayout);
        }
        textInputLayout.f1458f0.add(this.f);
        EditText editText = textInputLayout.getEditText();
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }
}
