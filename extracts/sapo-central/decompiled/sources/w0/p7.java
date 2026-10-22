package w0;

import android.widget.ImageView;
import com.ex.auto.HomeFloatingWidgetsService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p7 extends i2.e implements h2.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ c0.f f4055i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ ImageView f4056j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ HomeFloatingWidgetsService f4057k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p7(c0.f fVar, ImageView imageView, HomeFloatingWidgetsService homeFloatingWidgetsService) {
        super(0, i2.f.class, "refreshMuteIcon", "addVolumeView$refreshMuteIcon(Lcom/ex/auto/CarMediaVolume;Landroid/widget/ImageView;Lcom/ex/auto/HomeFloatingWidgetsService;)V");
        this.f4055i = fVar;
        this.f4056j = imageView;
        this.f4057k = homeFloatingWidgetsService;
    }

    @Override // h2.a
    public final Object a() {
        HomeFloatingWidgetsService.l(this.f4055i, this.f4056j, this.f4057k);
        return x1.e.f4647c;
    }
}
