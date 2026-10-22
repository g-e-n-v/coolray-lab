package n;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2466a;

    public /* synthetic */ d(int i3) {
        this.f2466a = i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0036, code lost:
    
        if (r0 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003f, code lost:
    
        if (r0 != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:?, code lost:
    
        return 1;
     */
    @Override // java.util.Comparator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int compare(java.lang.Object r7, java.lang.Object r8) {
        /*
            r6 = this;
            int r0 = r6.f2466a
            r1 = 0
            r2 = 1
            r3 = -1
            switch(r0) {
                case 0: goto L57;
                case 1: goto L22;
                default: goto L8;
            }
        L8:
            android.view.View r7 = (android.view.View) r7
            android.view.View r8 = (android.view.View) r8
            java.util.WeakHashMap r0 = c0.p0.f727a
            float r7 = c0.f0.m(r7)
            float r8 = c0.f0.m(r8)
            int r0 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r0 <= 0) goto L1c
            r1 = r3
            goto L21
        L1c:
            int r7 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r7 >= 0) goto L21
            r1 = r2
        L21:
            return r1
        L22:
            q0.o r7 = (q0.o) r7
            q0.o r8 = (q0.o) r8
            androidx.recyclerview.widget.RecyclerView r0 = r7.f2971d
            if (r0 != 0) goto L2c
            r4 = r2
            goto L2d
        L2c:
            r4 = r1
        L2d:
            androidx.recyclerview.widget.RecyclerView r5 = r8.f2971d
            if (r5 != 0) goto L33
            r5 = r2
            goto L34
        L33:
            r5 = r1
        L34:
            if (r4 == r5) goto L39
            if (r0 != 0) goto L41
            goto L43
        L39:
            boolean r0 = r7.f2969a
            boolean r4 = r8.f2969a
            if (r0 == r4) goto L45
            if (r0 == 0) goto L43
        L41:
            r1 = r3
            goto L56
        L43:
            r1 = r2
            goto L56
        L45:
            int r0 = r8.b
            int r2 = r7.b
            int r0 = r0 - r2
            if (r0 == 0) goto L4e
            r1 = r0
            goto L56
        L4e:
            int r7 = r7.f2970c
            int r8 = r8.f2970c
            int r7 = r7 - r8
            if (r7 == 0) goto L56
            r1 = r7
        L56:
            return r1
        L57:
            n.h r7 = (n.h) r7
            n.h r8 = (n.h) r8
            int r7 = r7.b
            int r8 = r8.b
            int r7 = r7 - r8
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: n.d.compare(java.lang.Object, java.lang.Object):int");
    }
}
