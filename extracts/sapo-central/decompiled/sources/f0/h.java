package f0;

import android.widget.ListView;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {
    public static boolean a(ListView listView, int i3) {
        return listView.canScrollList(i3);
    }

    public static void b(ListView listView, int i3) {
        listView.scrollListBy(i3);
    }
}
