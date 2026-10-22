package q0;

import android.database.Observable;

/* JADX INFO: loaded from: classes.dex */
public final class b0 extends Observable {
    public final boolean a() {
        return !((Observable) this).mObservers.isEmpty();
    }
}
