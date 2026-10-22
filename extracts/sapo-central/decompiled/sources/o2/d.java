package o2;

/* JADX INFO: loaded from: classes.dex */
public final class d extends y1.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f2629a;

    public d(e eVar) {
        this.f2629a = eVar;
    }

    @Override // y1.c
    public final int a() {
        return this.f2629a.f2630a.groupCount() + 1;
    }

    @Override // y1.c, java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof String) {
            return super.contains((String) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i3) {
        String strGroup = this.f2629a.f2630a.group(i3);
        return strGroup == null ? "" : strGroup;
    }

    @Override // y1.c, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof String) {
            return super.indexOf((String) obj);
        }
        return -1;
    }

    @Override // y1.c, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof String) {
            return super.lastIndexOf((String) obj);
        }
        return -1;
    }
}
