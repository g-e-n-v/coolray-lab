package w0;

import android.graphics.Bitmap;
import com.ex.auto.MediaBarFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dd implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MediaBarFloaterService f3507a;
    public final /* synthetic */ String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3508c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f3509d;

    public /* synthetic */ dd(MediaBarFloaterService mediaBarFloaterService, String str, String str2, String str3) {
        this.f3507a = mediaBarFloaterService;
        this.b = str;
        this.f3508c = str2;
        this.f3509d = str3;
    }

    @Override // h2.l
    public final Object c(Object obj) {
        Bitmap bitmap = (Bitmap) obj;
        MediaBarFloaterService mediaBarFloaterService = this.f3507a;
        return Boolean.valueOf(mediaBarFloaterService.f1062c.post(new qa(bitmap, mediaBarFloaterService, this.b, this.f3508c, this.f3509d)));
    }
}
