package com.google.android.material.datepicker;

import android.os.Message;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import androidx.appcompat.widget.Toolbar;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import i.g3;

/* JADX INFO: loaded from: classes.dex */
public final class k implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1401a;
    public final /* synthetic */ Object b;

    public /* synthetic */ k(int i3, Object obj) {
        this.f1401a = i3;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Message messageObtain;
        Message message;
        Message message2;
        Message message3;
        switch (this.f1401a) {
            case 0:
                m mVar = (m) this.b;
                int i3 = mVar.V;
                if (i3 == 2) {
                    mVar.B(1);
                    return;
                } else {
                    if (i3 == 1) {
                        mVar.B(2);
                        return;
                    }
                    return;
                }
            case 1:
                n nVar = (n) this.b;
                Button button = nVar.f1417q0;
                nVar.getClass();
                throw null;
            case 2:
                e.g gVar = (e.g) this.b;
                if (view == gVar.f1585i && (message3 = gVar.f1587k) != null) {
                    messageObtain = Message.obtain(message3);
                } else if (view != gVar.f1588l || (message2 = gVar.f1590n) == null) {
                    messageObtain = (view != gVar.f1591o || (message = gVar.f1593q) == null) ? null : Message.obtain(message);
                } else {
                    messageObtain = Message.obtain(message2);
                }
                if (messageObtain != null) {
                    messageObtain.sendToTarget();
                }
                gVar.F.obtainMessage(1, gVar.b).sendToTarget();
                return;
            case 3:
                ((g.a) this.b).b();
                return;
            case 4:
                g3 g3Var = ((Toolbar) this.b).L;
                h.o oVar = g3Var == null ? null : g3Var.b;
                if (oVar != null) {
                    oVar.collapseActionView();
                    return;
                }
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                Editable text = ((u1.e) this.b).f3274a.getEditText().getText();
                if (text != null) {
                    text.clear();
                    return;
                }
                return;
            case MusicClient.TYPE_GESTURE /* 6 */:
                u1.k kVar = (u1.k) this.b;
                u1.k.e(kVar, (AutoCompleteTextView) kVar.f3274a.getEditText());
                return;
            default:
                u1.p pVar = (u1.p) this.b;
                EditText editText = pVar.f3274a.getEditText();
                if (editText == null) {
                    return;
                }
                int selectionEnd = editText.getSelectionEnd();
                if (u1.p.d(pVar)) {
                    editText.setTransformationMethod(null);
                } else {
                    editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                if (selectionEnd >= 0) {
                    editText.setSelection(selectionEnd);
                    return;
                }
                return;
        }
    }
}
