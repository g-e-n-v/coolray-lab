package w0;

import android.car.hardware.property.CarPropertyManager;
import com.ex.auto.MainActivity;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y9 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4583a = 1;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f4584c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ CarPropertyManager f4585d;

    public /* synthetic */ y9(int i3, MainActivity mainActivity, CarPropertyManager carPropertyManager) {
        this.b = i3;
        this.f4584c = mainActivity;
        this.f4585d = carPropertyManager;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0048  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f4583a;
        CarPropertyManager carPropertyManager = this.f4585d;
        switch (i3) {
            case 0:
                int i4 = MainActivity.f1002z1;
                Integer numC = null;
                for (int i5 : u.f4289c) {
                    AtomicInteger atomicInteger = p1.f4042a;
                    numC = p1.c(carPropertyManager, u.b, i5);
                    if (numC != null) {
                        if (numC != null) {
                            int iIntValue = numC.intValue();
                            MainActivity mainActivity = this.f4584c;
                            mainActivity.o0().edit().putInt("avas_sound_type_saved", iIntValue).apply();
                            mainActivity.f1045v.post(new na(this.b, mainActivity, iIntValue, 2, (byte) 0));
                        }
                    }
                    break;
                }
                if (numC != null) {
                    int iIntValue2 = numC.intValue();
                    MainActivity mainActivity2 = this.f4584c;
                    mainActivity2.o0().edit().putInt("avas_sound_type_saved", iIntValue2).apply();
                    mainActivity2.f1045v.post(new na(this.b, mainActivity2, iIntValue2, 2, (byte) 0));
                }
                break;
            default:
                MainActivity mainActivity3 = this.f4584c;
                if (this.b == mainActivity3.A.get() && !mainActivity3.isFinishing() && !mainActivity3.isDestroyed()) {
                    mainActivity3.x2(carPropertyManager != null);
                    if (mainActivity3.O) {
                        mainActivity3.z1();
                    }
                    break;
                }
                break;
        }
    }

    public /* synthetic */ y9(CarPropertyManager carPropertyManager, MainActivity mainActivity, int i3) {
        this.f4585d = carPropertyManager;
        this.f4584c = mainActivity;
        this.b = i3;
    }
}
