package w0;

import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class ie {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3725a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3726c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f3727d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final JSONObject f3728e;
    public final LinkedHashMap f;

    public ie(int i3, int i4, int i5, List list, JSONObject jSONObject, LinkedHashMap linkedHashMap) {
        this.f3725a = i3;
        this.b = i4;
        this.f3726c = i5;
        this.f3727d = list;
        this.f3728e = jSONObject;
        this.f = linkedHashMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ie)) {
            return false;
        }
        ie ieVar = (ie) obj;
        return this.f3725a == ieVar.f3725a && this.b == ieVar.b && this.f3726c == ieVar.f3726c && this.f3727d.equals(ieVar.f3727d) && this.f3728e.equals(ieVar.f3728e) && this.f.equals(ieVar.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + ((this.f3728e.hashCode() + ((this.f3727d.hashCode() + ((Integer.hashCode(this.f3726c) + ((Integer.hashCode(this.b) + (Integer.hashCode(this.f3725a) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "PlaybookBundle(configVersion=" + this.f3725a + ", engineMin=" + this.b + ", engineMax=" + this.f3726c + ", models=" + this.f3727d + ", constants=" + this.f3728e + ", playbooks=" + this.f + ')';
    }
}
