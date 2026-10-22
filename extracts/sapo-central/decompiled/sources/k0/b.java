package k0;

import android.os.Bundle;
import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import androidx.emoji2.text.k;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class b extends InputConnectionWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EditText f2342a;
    public final s1.e b;

    public b(EditText editText, InputConnection inputConnection, EditorInfo editorInfo) {
        s1.e eVar = new s1.e();
        super(inputConnection, false);
        this.f2342a = editText;
        this.b = eVar;
        if (k.f335j != null) {
            k kVarA = k.a();
            if (kVarA.b() != 1 || editorInfo == null) {
                return;
            }
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            androidx.emoji2.text.e eVar2 = kVarA.f339e;
            eVar2.getClass();
            Bundle bundle = editorInfo.extras;
            j0.b bVar = (j0.b) eVar2.f329c.f359a;
            int iA = bVar.a(4);
            bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", iA != 0 ? ((ByteBuffer) bVar.f741d).getInt(iA + bVar.f739a) : 0);
            editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i3, int i4) {
        Editable editableText = this.f2342a.getEditableText();
        this.b.getClass();
        return s1.e.a(this, editableText, i3, i4, false) || super.deleteSurroundingText(i3, i4);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i3, int i4) {
        Editable editableText = this.f2342a.getEditableText();
        this.b.getClass();
        return s1.e.a(this, editableText, i3, i4, true) || super.deleteSurroundingTextInCodePoints(i3, i4);
    }
}
