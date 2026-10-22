package j1;

import android.graphics.Typeface;
import com.google.android.material.chip.Chip;

/* JADX INFO: loaded from: classes.dex */
public final class a extends k1.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2296c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f2297d;

    public /* synthetic */ a(int i3, Object obj) {
        this.f2296c = i3;
        this.f2297d = obj;
    }

    private final void U(int i3) {
    }

    @Override // k1.a
    public final void K(int i3) {
        switch (this.f2296c) {
            case 0:
                break;
            default:
                n1.h hVar = (n1.h) this.f2297d;
                hVar.f2520d = true;
                n1.g gVar = (n1.g) hVar.f2521e.get();
                if (gVar != null) {
                    e eVar = (e) gVar;
                    eVar.t();
                    eVar.invalidateSelf();
                }
                break;
        }
    }

    @Override // k1.a
    public final void L(Typeface typeface, boolean z2) {
        switch (this.f2296c) {
            case 0:
                Chip chip = (Chip) this.f2297d;
                e eVar = chip.f1362e;
                chip.setText(eVar.C0 ? eVar.E : chip.getText());
                chip.requestLayout();
                chip.invalidate();
                break;
            default:
                if (!z2) {
                    n1.h hVar = (n1.h) this.f2297d;
                    hVar.f2520d = true;
                    n1.g gVar = (n1.g) hVar.f2521e.get();
                    if (gVar != null) {
                        e eVar2 = (e) gVar;
                        eVar2.t();
                        eVar2.invalidateSelf();
                    }
                    break;
                }
                break;
        }
    }
}
