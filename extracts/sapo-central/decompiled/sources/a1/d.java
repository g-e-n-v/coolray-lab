package a1;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicLong f24a;
    public volatile boolean b;

    public d(int i3) {
        switch (i3) {
            case 1:
                this.f24a = new AtomicLong();
                break;
            default:
                this.f24a = new AtomicLong();
                break;
        }
    }

    public boolean a(long j3) {
        return !this.b && this.f24a.get() == j3;
    }
}
