package k0;

import android.text.Editable;
import androidx.emoji2.text.v;

/* JADX INFO: loaded from: classes.dex */
public final class a extends Editable.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f2340a = new Object();
    public static volatile a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class f2341c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = f2341c;
        return cls != null ? new v(cls, charSequence) : super.newEditable(charSequence);
    }
}
