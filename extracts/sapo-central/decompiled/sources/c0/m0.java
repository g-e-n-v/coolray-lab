package c0;

import android.view.ContentInfo;
import android.view.View;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class m0 {
    public static String[] a(View view) {
        return view.getReceiveContentMimeTypes();
    }

    public static h b(View view, h hVar) {
        ContentInfo contentInfoI = hVar.f717a.i();
        Objects.requireNonNull(contentInfoI);
        ContentInfo contentInfoE = d.e(contentInfoI);
        ContentInfo contentInfoPerformReceiveContent = view.performReceiveContent(contentInfoE);
        if (contentInfoPerformReceiveContent == null) {
            return null;
        }
        return contentInfoPerformReceiveContent == contentInfoE ? hVar : new h(new androidx.emoji2.text.m(contentInfoPerformReceiveContent));
    }

    public static void c(View view, String[] strArr, s sVar) {
        if (sVar == null) {
            view.setOnReceiveContentListener(strArr, null);
        } else {
            view.setOnReceiveContentListener(strArr, new n0(sVar));
        }
    }
}
