package w0;

import com.ex.auto.CentralWatchdogService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4045a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ p2(CentralWatchdogService centralWatchdogService, int i3) {
        this.f4045a = i3;
        this.b = centralWatchdogService;
    }

    /* JADX WARN: Code duplicated, block: B:243:0x04ae A[Catch: all -> 0x04a6, TryCatch #3 {all -> 0x04a6, blocks: (B:232:0x0486, B:233:0x0490, B:235:0x0496, B:241:0x04aa, B:243:0x04ae, B:245:0x04ba, B:247:0x04c4, B:248:0x04c7, B:249:0x04ca, B:251:0x04d9), top: B:304:0x0486, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:245:0x04ba A[Catch: all -> 0x04a6, TryCatch #3 {all -> 0x04a6, blocks: (B:232:0x0486, B:233:0x0490, B:235:0x0496, B:241:0x04aa, B:243:0x04ae, B:245:0x04ba, B:247:0x04c4, B:248:0x04c7, B:249:0x04ca, B:251:0x04d9), top: B:304:0x0486, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:247:0x04c4 A[Catch: all -> 0x04a6, TryCatch #3 {all -> 0x04a6, blocks: (B:232:0x0486, B:233:0x0490, B:235:0x0496, B:241:0x04aa, B:243:0x04ae, B:245:0x04ba, B:247:0x04c4, B:248:0x04c7, B:249:0x04ca, B:251:0x04d9), top: B:304:0x0486, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:251:0x04d9 A[Catch: all -> 0x04a6, TRY_LEAVE, TryCatch #3 {all -> 0x04a6, blocks: (B:232:0x0486, B:233:0x0490, B:235:0x0496, B:241:0x04aa, B:243:0x04ae, B:245:0x04ba, B:247:0x04c4, B:248:0x04c7, B:249:0x04ca, B:251:0x04d9), top: B:304:0x0486, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:253:0x04de  */
    /* JADX WARN: Code duplicated, block: B:265:0x0501  */
    /* JADX WARN: Code duplicated, block: B:266:0x0504  */
    /* JADX WARN: Code duplicated, block: B:268:0x050b  */
    /* JADX WARN: Code duplicated, block: B:269:0x050e  */
    /* JADX WARN: Code duplicated, block: B:272:0x0523  */
    /* JADX WARN: Code duplicated, block: B:274:0x052f  */
    /* JADX WARN: Code duplicated, block: B:350:0x0511 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:356:0x0556 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:362:0x04c7 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v21, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v9, types: [y1.p] */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r12v18 java.lang.Object, still in use, count: 2, list:
          (r12v18 java.lang.Object) from 0x04aa: PHI (r12 I:??) = (r12v11 java.lang.Object), (r12v18 java.lang.Object) binds: [B:240:0x04a9, B:237:0x04a5] A[DONT_GENERATE, DONT_INLINE]
          (r12v18 java.lang.Object) from 0x049b: CHECK_CAST (java.lang.String) (r12v18 java.lang.Object)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // java.lang.Runnable
    public final void run() {
        /*
            Method dump skipped, instruction units count: 1514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: w0.p2.run():void");
    }
}
