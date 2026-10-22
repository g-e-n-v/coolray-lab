package w0;

import android.graphics.Bitmap;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBarFloaterService;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qa implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4112a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4113c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Serializable f4114d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Serializable f4115e;
    public final /* synthetic */ Object f;

    public /* synthetic */ qa(Bitmap bitmap, MediaBarFloaterService mediaBarFloaterService, String str, String str2, String str3) {
        this.f4112a = 2;
        this.b = bitmap;
        this.f = mediaBarFloaterService;
        this.f4113c = str;
        this.f4114d = str2;
        this.f4115e = str3;
    }

    /* JADX WARN: Code duplicated, block: B:153:0x0153 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x013a A[Catch: all -> 0x0132, TryCatch #1 {all -> 0x0132, blocks: (B:37:0x0112, B:38:0x011c, B:40:0x0122, B:46:0x0136, B:48:0x013a, B:50:0x0146, B:52:0x0150, B:53:0x0153, B:54:0x0156, B:56:0x0165), top: B:138:0x0112, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x0146 A[Catch: all -> 0x0132, TryCatch #1 {all -> 0x0132, blocks: (B:37:0x0112, B:38:0x011c, B:40:0x0122, B:46:0x0136, B:48:0x013a, B:50:0x0146, B:52:0x0150, B:53:0x0153, B:54:0x0156, B:56:0x0165), top: B:138:0x0112, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0150 A[Catch: all -> 0x0132, TryCatch #1 {all -> 0x0132, blocks: (B:37:0x0112, B:38:0x011c, B:40:0x0122, B:46:0x0136, B:48:0x013a, B:50:0x0146, B:52:0x0150, B:53:0x0153, B:54:0x0156, B:56:0x0165), top: B:138:0x0112, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0165 A[Catch: all -> 0x0132, TRY_LEAVE, TryCatch #1 {all -> 0x0132, blocks: (B:37:0x0112, B:38:0x011c, B:40:0x0122, B:46:0x0136, B:48:0x013a, B:50:0x0146, B:52:0x0150, B:53:0x0153, B:54:0x0156, B:56:0x0165), top: B:138:0x0112, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x016a  */
    /* JADX WARN: Code duplicated, block: B:71:0x0196  */
    /* JADX WARN: Code duplicated, block: B:72:0x0199  */
    /* JADX WARN: Code duplicated, block: B:74:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:77:0x01af  */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r14v13 java.lang.Object, still in use, count: 2, list:
          (r14v13 java.lang.Object) from 0x0136: PHI (r14 I:??) = (r14v10 java.lang.Object), (r14v13 java.lang.Object) binds: [B:45:0x0135, B:42:0x0131] A[DONT_GENERATE, DONT_INLINE]
          (r14v13 java.lang.Object) from 0x0127: CHECK_CAST (java.lang.String) (r14v13 java.lang.Object)
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
            Method dump skipped, instruction units count: 1082
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: w0.qa.run():void");
    }

    public /* synthetic */ qa(MainActivity mainActivity, Object obj, Serializable serializable, Serializable serializable2, Object obj2, int i3) {
        this.f4112a = i3;
        this.b = mainActivity;
        this.f4113c = obj;
        this.f4114d = serializable;
        this.f4115e = serializable2;
        this.f = obj2;
    }

    public /* synthetic */ qa(MainActivity mainActivity, String str, e.i iVar, String str2, String str3) {
        this.f4112a = 1;
        this.b = mainActivity;
        this.f4113c = str;
        this.f = iVar;
        this.f4114d = str2;
        this.f4115e = str3;
    }
}
