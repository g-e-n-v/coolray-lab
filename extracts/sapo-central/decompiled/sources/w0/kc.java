package w0;

import com.ex.auto.MainActivity;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class kc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3809a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ MainActivity f3811d;

    public kc(int i3, MainActivity mainActivity, String str, String str2) {
        this.f3811d = mainActivity;
        this.f3809a = str;
        this.b = i3;
        this.f3810c = str2;
    }

    public final xb a() {
        int i3 = MainActivity.f1002z1;
        return (xb) y1.s.U((Map) this.f3811d.f1003a0.a(), this.f3810c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kc)) {
            return false;
        }
        kc kcVar = (kc) obj;
        return this.f3809a.equals(kcVar.f3809a) && this.b == kcVar.b && this.f3810c.equals(kcVar.f3810c);
    }

    public final int hashCode() {
        return this.f3810c.hashCode() + ((Integer.hashCode(this.b) + (this.f3809a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CatalogEntry(name=");
        sb.append(this.f3809a);
        sb.append(", descriptionRes=");
        sb.append(this.b);
        sb.append(", packageName=");
        return androidx.activity.result.b.j(sb, this.f3810c, ')');
    }
}
