package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
public abstract class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.emoji2.text.m f591a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f592c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ w f593d;

    public v(w wVar, androidx.emoji2.text.m mVar) {
        this.f593d = wVar;
        this.f591a = mVar;
    }

    public final void c(boolean z2) {
        if (z2 == this.b) {
            return;
        }
        this.b = z2;
        int i3 = z2 ? 1 : -1;
        w wVar = this.f593d;
        int i4 = wVar.f596c;
        wVar.f596c = i3 + i4;
        if (!wVar.f597d) {
            wVar.f597d = true;
            while (true) {
                try {
                    int i5 = wVar.f596c;
                    if (i4 == i5) {
                        break;
                    } else {
                        i4 = i5;
                    }
                } catch (Throwable th) {
                    wVar.f597d = false;
                    throw th;
                }
            }
            wVar.f597d = false;
        }
        if (this.b) {
            wVar.c(this);
        }
    }

    public void d() {
    }

    public abstract boolean e();
}
