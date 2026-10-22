package c0;

import android.view.ContentInfo;
import android.view.OnReceiveContentListener;
import android.view.View;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class n0 implements OnReceiveContentListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s f726a;

    public n0(s sVar) {
        this.f726a = sVar;
    }

    public final ContentInfo onReceiveContent(View view, ContentInfo contentInfo) {
        h hVar = new h(new androidx.emoji2.text.m(contentInfo));
        h hVarA = ((f0.r) this.f726a).a(view, hVar);
        if (hVarA == null) {
            return null;
        }
        if (hVarA == hVar) {
            return contentInfo;
        }
        ContentInfo contentInfoI = hVarA.f717a.i();
        Objects.requireNonNull(contentInfoI);
        return d.e(contentInfoI);
    }
}
