package i;

import android.widget.AbsListView;

/* JADX INFO: loaded from: classes.dex */
public abstract class n1 {
    public static boolean a(AbsListView absListView) {
        return absListView.isSelectedChildViewEnabled();
    }

    public static void b(AbsListView absListView, boolean z2) {
        absListView.setSelectedChildViewEnabled(z2);
    }
}
