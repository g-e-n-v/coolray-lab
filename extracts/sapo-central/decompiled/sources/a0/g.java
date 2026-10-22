package a0;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13a;
    public final Object b;

    public g(f fVar, boolean z2) {
        this.b = fVar;
        this.f13a = z2;
    }

    public boolean a() {
        return this.f13a;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0039  */
    public boolean b(CharSequence charSequence, int i3) {
        if (charSequence == null || i3 < 0 || charSequence.length() - i3 < 0) {
            throw new IllegalArgumentException();
        }
        f fVar = (f) this.b;
        if (fVar == null) {
            return a();
        }
        fVar.getClass();
        char c3 = 0;
        c3 = 2;
        for (int i4 = 0; i4 < i3 && c3 == 2; i4++) {
            byte directionality = Character.getDirectionality(charSequence.charAt(i4));
            g gVar = h.f14a;
            if (directionality == 0) {
                c3 = 1;
                continue;
            } else if (directionality != 1 && directionality != 2) {
                switch (directionality) {
                    case 14:
                    case 15:
                        c3 = 1;
                        continue;
                    case 16:
                    case 17:
                        break;
                    default:
                        c3 = 2;
                        continue;
                }
            }
        }
        if (c3 == 0) {
            return true;
        }
        if (c3 != 1) {
            return a();
        }
        return false;
    }

    public g(Boolean bool, boolean z2) {
        this.b = bool;
        this.f13a = z2;
    }
}
