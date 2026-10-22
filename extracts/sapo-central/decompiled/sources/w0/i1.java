package w0;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i1 implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3694a;
    public final /* synthetic */ CarPropertyManager b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3695c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f3696d;

    public /* synthetic */ i1(CarPropertyManager carPropertyManager, int i3, int i4, int i5) {
        this.f3694a = i5;
        this.b = carPropertyManager;
        this.f3695c = i3;
        this.f3696d = i4;
    }

    @Override // h2.a
    public final Object a() {
        switch (this.f3694a) {
            case 0:
                return this.b.getProperty(Integer.class, this.f3695c, this.f3696d);
            case 1:
                return Float.valueOf(this.b.getFloatProperty(this.f3695c, this.f3696d));
            case 2:
                return Integer.valueOf(this.b.getIntProperty(this.f3695c, this.f3696d));
            case 3:
                CarPropertyValue property = this.b.getProperty(Integer.class, this.f3695c, this.f3696d);
                if (property != null) {
                    return property.getValue();
                }
                return null;
            default:
                return Boolean.valueOf(this.b.getBooleanProperty(this.f3695c, this.f3696d));
        }
    }
}
