package u1;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import c0.a0;
import c0.p0;
import com.ex.auto.R;
import com.google.android.material.textfield.TextInputLayout;
import i.o2;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3246a;
    public final /* synthetic */ l b;

    public /* synthetic */ a(l lVar, int i3) {
        this.f3246a = i3;
        this.b = lVar;
    }

    public final void a(TextInputLayout textInputLayout) {
        int i3 = this.f3246a;
        l lVar = this.b;
        switch (i3) {
            case 0:
                e eVar = (e) lVar;
                o2 o2Var = eVar.f3250d;
                EditText editText = textInputLayout.getEditText();
                textInputLayout.setEndIconVisible(editText.hasFocus() && editText.getText().length() > 0);
                textInputLayout.setEndIconCheckable(false);
                editText.setOnFocusChangeListener(eVar.f3251e);
                editText.removeTextChangedListener(o2Var);
                editText.addTextChangedListener(o2Var);
                break;
            case 1:
                k kVar = (k) lVar;
                o2 o2Var2 = kVar.f3262d;
                AutoCompleteTextView autoCompleteTextViewD = k.d(kVar, textInputLayout.getEditText());
                TextInputLayout textInputLayout2 = kVar.f3274a;
                int boxBackgroundMode = textInputLayout2.getBoxBackgroundMode();
                if (boxBackgroundMode == 2) {
                    autoCompleteTextViewD.setDropDownBackgroundDrawable(kVar.f3270m);
                } else if (boxBackgroundMode == 1) {
                    autoCompleteTextViewD.setDropDownBackgroundDrawable(kVar.f3269l);
                }
                if (autoCompleteTextViewD.getKeyListener() == null) {
                    int boxBackgroundMode2 = textInputLayout2.getBoxBackgroundMode();
                    s1.g boxBackground = textInputLayout2.getBoxBackground();
                    int iY = k1.a.y(autoCompleteTextViewD, R.attr.colorControlHighlight);
                    int[][] iArr = {new int[]{android.R.attr.state_pressed}, new int[0]};
                    if (boxBackgroundMode2 == 2) {
                        int iY2 = k1.a.y(autoCompleteTextViewD, R.attr.colorSurface);
                        s1.g gVar = new s1.g(boxBackground.f3142a.f3127a);
                        int iH = k1.a.H(iY, iY2, 0.1f);
                        gVar.i(new ColorStateList(iArr, new int[]{iH, 0}));
                        gVar.setTint(iY2);
                        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iH, iY2});
                        s1.g gVar2 = new s1.g(boxBackground.f3142a.f3127a);
                        gVar2.setTint(-1);
                        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, gVar, gVar2), boxBackground});
                        WeakHashMap weakHashMap = p0.f727a;
                        a0.q(autoCompleteTextViewD, layerDrawable);
                    } else if (boxBackgroundMode2 == 1) {
                        int boxBackgroundColor = textInputLayout2.getBoxBackgroundColor();
                        RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(iArr, new int[]{k1.a.H(iY, boxBackgroundColor, 0.1f), boxBackgroundColor}), boxBackground, boxBackground);
                        WeakHashMap weakHashMap2 = p0.f727a;
                        a0.q(autoCompleteTextViewD, rippleDrawable);
                    }
                }
                autoCompleteTextViewD.setOnTouchListener(new i(kVar, autoCompleteTextViewD));
                autoCompleteTextViewD.setOnFocusChangeListener(kVar.f3263e);
                autoCompleteTextViewD.setOnDismissListener(new j(kVar));
                autoCompleteTextViewD.setThreshold(0);
                autoCompleteTextViewD.removeTextChangedListener(o2Var2);
                autoCompleteTextViewD.addTextChangedListener(o2Var2);
                textInputLayout.setEndIconCheckable(true);
                textInputLayout.setErrorIconDrawable((Drawable) null);
                textInputLayout.setTextInputAccessibilityDelegate(kVar.f);
                textInputLayout.setEndIconVisible(true);
                break;
            default:
                EditText editText2 = textInputLayout.getEditText();
                textInputLayout.setEndIconVisible(true);
                textInputLayout.setEndIconCheckable(true);
                p pVar = (p) lVar;
                pVar.f3275c.setChecked(!p.d(pVar));
                o2 o2Var3 = pVar.f3302d;
                editText2.removeTextChangedListener(o2Var3);
                editText2.addTextChangedListener(o2Var3);
                break;
        }
    }
}
