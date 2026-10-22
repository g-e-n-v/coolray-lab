package i;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Parcelable f2138a;
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2139c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2140d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2141e;
    public final Object f;

    public /* synthetic */ r(TextView textView) {
        this.f2138a = null;
        this.b = null;
        this.f2139c = false;
        this.f2140d = false;
        this.f = textView;
    }

    public void a() {
        CompoundButton compoundButton = (CompoundButton) this.f;
        Drawable drawableA = f0.c.a(compoundButton);
        if (drawableA != null) {
            if (this.f2139c || this.f2140d) {
                Drawable drawableMutate = drawableA.mutate();
                if (this.f2139c) {
                    w.b.h(drawableMutate, (ColorStateList) this.f2138a);
                }
                if (this.f2140d) {
                    w.b.i(drawableMutate, (PorterDuff.Mode) this.b);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(drawableMutate);
            }
        }
    }

    public void b() {
        q qVar = (q) this.f;
        Drawable checkMarkDrawable = qVar.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.f2139c || this.f2140d) {
                Drawable drawableMutate = checkMarkDrawable.mutate();
                if (this.f2139c) {
                    w.b.h(drawableMutate, (ColorStateList) this.f2138a);
                }
                if (this.f2140d) {
                    w.b.i(drawableMutate, (PorterDuff.Mode) this.b);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(qVar.getDrawableState());
                }
                qVar.setCheckMarkDrawable(drawableMutate);
            }
        }
    }

    public Bundle c(String str) {
        if (!this.f2140d) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = (Bundle) this.f2138a;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        Bundle bundle3 = (Bundle) this.f2138a;
        if (bundle3 != null) {
            bundle3.remove(str);
        }
        Bundle bundle4 = (Bundle) this.f2138a;
        if (bundle4 != null && !bundle4.isEmpty()) {
            return bundle2;
        }
        this.f2138a = null;
        return bundle2;
    }

    public void d(AttributeSet attributeSet, int i3) {
        int resourceId;
        int resourceId2;
        CompoundButton compoundButton = (CompoundButton) this.f;
        Context context = compoundButton.getContext();
        int[] iArr = d.a.f1506m;
        androidx.fragment.app.f fVarV = androidx.fragment.app.f.v(context, attributeSet, iArr, i3);
        TypedArray typedArray = (TypedArray) fVarV.f413c;
        c0.p0.h(compoundButton, compoundButton.getContext(), iArr, attributeSet, (TypedArray) fVarV.f413c, i3);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    compoundButton.setButtonDrawable(a1.b.v(compoundButton.getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                    if (typedArray.hasValue(0)) {
                        compoundButton.setButtonDrawable(a1.b.v(compoundButton.getContext(), resourceId));
                    }
                }
            } else if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                compoundButton.setButtonDrawable(a1.b.v(compoundButton.getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
                f0.b.c(compoundButton, fVarV.j(2));
            }
            if (typedArray.hasValue(3)) {
                f0.b.d(compoundButton, k1.b(typedArray.getInt(3, -1), null));
            }
        } finally {
            fVarV.x();
        }
    }

    public void e(String str, r0.c cVar) {
        Object obj;
        k.f fVar = (k.f) this.f;
        k.c cVarA = fVar.a(str);
        if (cVarA != null) {
            obj = cVarA.b;
        } else {
            k.c cVar2 = new k.c(str, cVar);
            fVar.f2339d++;
            k.c cVar3 = fVar.b;
            if (cVar3 == null) {
                fVar.f2337a = cVar2;
                fVar.b = cVar2;
            } else {
                cVar3.f2333c = cVar2;
                cVar2.f2334d = cVar3;
                fVar.b = cVar2;
            }
            obj = null;
        }
        if (((r0.c) obj) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public r() {
        this.f = new k.f();
        this.f2141e = true;
    }
}
