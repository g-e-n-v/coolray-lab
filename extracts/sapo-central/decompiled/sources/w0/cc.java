package w0;

import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class cc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3438a;
    public final xb b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f3439c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final wc f3440d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f3441e;
    public final TextView f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public dc f3442g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3443h;

    public cc(String str, xb xbVar, TextView textView, wc wcVar, TextView textView2, TextView textView3) {
        i2.g.e(xbVar, "state");
        this.f3438a = str;
        this.b = xbVar;
        this.f3439c = textView;
        this.f3440d = wcVar;
        this.f3441e = textView2;
        this.f = textView3;
        this.f3442g = null;
        this.f3443h = false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cc)) {
            return false;
        }
        cc ccVar = (cc) obj;
        return this.f3438a.equals(ccVar.f3438a) && i2.g.a(this.b, ccVar.b) && this.f3439c.equals(ccVar.f3439c) && this.f3440d.equals(ccVar.f3440d) && this.f3441e.equals(ccVar.f3441e) && this.f.equals(ccVar.f) && i2.g.a(this.f3442g, ccVar.f3442g) && this.f3443h == ccVar.f3443h;
    }

    public final int hashCode() {
        int iHashCode = (this.f.hashCode() + ((this.f3441e.hashCode() + ((this.f3440d.hashCode() + ((this.f3439c.hashCode() + ((this.b.hashCode() + (this.f3438a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        dc dcVar = this.f3442g;
        return Boolean.hashCode(this.f3443h) + ((iHashCode + (dcVar == null ? 0 : dcVar.hashCode())) * 31);
    }

    public final String toString() {
        return "MasterCatalogCardBinding(packageName=" + this.f3438a + ", state=" + this.b + ", targetStatus=" + this.f3439c + ", icon=" + this.f3440d + ", installAction=" + this.f3441e + ", removeAction=" + this.f + ", lastState=" + this.f3442g + ", iconLoading=" + this.f3443h + ')';
    }
}
