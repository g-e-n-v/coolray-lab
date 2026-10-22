package i;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class z extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.material.datepicker.c f2219a;
    public final y b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2220c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(Context context, AttributeSet attributeSet, int i3) {
        super(context, attributeSet, i3);
        a3.a(context);
        this.f2220c = false;
        z2.a(this, getContext());
        com.google.android.material.datepicker.c cVar = new com.google.android.material.datepicker.c(this);
        this.f2219a = cVar;
        cVar.e(attributeSet, i3);
        y yVar = new y(this);
        this.b = yVar;
        yVar.b(attributeSet, i3);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        com.google.android.material.datepicker.c cVar = this.f2219a;
        if (cVar != null) {
            cVar.a();
        }
        y yVar = this.b;
        if (yVar != null) {
            yVar.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        com.google.android.material.datepicker.c cVar = this.f2219a;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        com.google.android.material.datepicker.c cVar = this.f2219a;
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        b3 b3Var;
        y yVar = this.b;
        if (yVar == null || (b3Var = yVar.b) == null) {
            return null;
        }
        return b3Var.f1982a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        b3 b3Var;
        y yVar = this.b;
        if (yVar == null || (b3Var = yVar.b) == null) {
            return null;
        }
        return b3Var.b;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return !(this.b.f2200a.getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        com.google.android.material.datepicker.c cVar = this.f2219a;
        if (cVar != null) {
            cVar.f();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i3) {
        super.setBackgroundResource(i3);
        com.google.android.material.datepicker.c cVar = this.f2219a;
        if (cVar != null) {
            cVar.g(i3);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        y yVar = this.b;
        if (yVar != null) {
            yVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        y yVar = this.b;
        if (yVar != null && drawable != null && !this.f2220c) {
            yVar.f2201c = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (yVar != null) {
            yVar.a();
            if (this.f2220c) {
                return;
            }
            ImageView imageView = yVar.f2200a;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(yVar.f2201c);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i3) {
        super.setImageLevel(i3);
        this.f2220c = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i3) {
        y yVar = this.b;
        if (yVar != null) {
            ImageView imageView = yVar.f2200a;
            if (i3 != 0) {
                Drawable drawableV = a1.b.v(imageView.getContext(), i3);
                if (drawableV != null) {
                    k1.a(drawableV);
                }
                imageView.setImageDrawable(drawableV);
            } else {
                imageView.setImageDrawable(null);
            }
            yVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        y yVar = this.b;
        if (yVar != null) {
            yVar.a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        com.google.android.material.datepicker.c cVar = this.f2219a;
        if (cVar != null) {
            cVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        com.google.android.material.datepicker.c cVar = this.f2219a;
        if (cVar != null) {
            cVar.j(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        y yVar = this.b;
        if (yVar != null) {
            if (yVar.b == null) {
                yVar.b = new b3();
            }
            b3 b3Var = yVar.b;
            b3Var.f1982a = colorStateList;
            b3Var.f1984d = true;
            yVar.a();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        y yVar = this.b;
        if (yVar != null) {
            if (yVar.b == null) {
                yVar.b = new b3();
            }
            b3 b3Var = yVar.b;
            b3Var.b = mode;
            b3Var.f1983c = true;
            yVar.a();
        }
    }
}
