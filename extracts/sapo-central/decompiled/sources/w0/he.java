package w0;

import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class he {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3680a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f3681c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3682d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3683e;
    public final long f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinkedHashMap f3684g;

    public he(String str, String str2, boolean z2, String str3, int i3, long j3, LinkedHashMap linkedHashMap) {
        this.f3680a = str;
        this.b = str2;
        this.f3681c = z2;
        this.f3682d = str3;
        this.f3683e = i3;
        this.f = j3;
        this.f3684g = linkedHashMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof he)) {
            return false;
        }
        he heVar = (he) obj;
        return this.f3680a.equals(heVar.f3680a) && this.b.equals(heVar.b) && this.f3681c == heVar.f3681c && this.f3682d.equals(heVar.f3682d) && this.f3683e == heVar.f3683e && this.f == heVar.f && this.f3684g.equals(heVar.f3684g);
    }

    public final int hashCode() {
        return this.f3684g.hashCode() + ((Long.hashCode(this.f) + ((Integer.hashCode(this.f3683e) + androidx.activity.result.b.e(this.f3682d, (Boolean.hashCode(this.f3681c) + androidx.activity.result.b.e(this.b, this.f3680a.hashCode() * 31, 31)) * 31, 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Playbook(name=" + this.f3680a + ", trigger=" + this.b + ", enabled=" + this.f3681c + ", start=" + this.f3682d + ", maxSteps=" + this.f3683e + ", maxTotalMs=" + this.f + ", steps=" + this.f3684g + ')';
    }
}
