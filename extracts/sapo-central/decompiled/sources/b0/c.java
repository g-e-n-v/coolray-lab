package b0;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f670a;
    public int b;

    public c(int i3) {
        if (i3 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f670a = new Object[i3];
    }

    public Object a() {
        int i3 = this.b;
        if (i3 <= 0) {
            return null;
        }
        int i4 = i3 - 1;
        Object[] objArr = this.f670a;
        Object obj = objArr[i4];
        objArr[i4] = null;
        this.b = i3 - 1;
        return obj;
    }

    public void b(n.b bVar) {
        int i3 = this.b;
        Object[] objArr = this.f670a;
        if (i3 < objArr.length) {
            objArr[i3] = bVar;
            this.b = i3 + 1;
        }
    }

    public boolean c(Object obj) {
        int i3 = 0;
        while (true) {
            int i4 = this.b;
            Object[] objArr = this.f670a;
            if (i3 >= i4) {
                if (i4 >= objArr.length) {
                    return false;
                }
                objArr[i4] = obj;
                this.b = i4 + 1;
                return true;
            }
            if (objArr[i3] == obj) {
                throw new IllegalStateException("Already in the pool!");
            }
            i3++;
        }
    }

    public c() {
        this.f670a = new Object[256];
    }
}
