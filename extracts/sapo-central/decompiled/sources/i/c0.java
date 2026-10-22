package i;

import android.R;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AbsSeekBar;
import android.widget.EditText;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public class c0 implements a1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f1986d = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1987a;
    public final View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f1988c;

    public c0(AbsSeekBar absSeekBar) {
        this.f1987a = 0;
        this.b = absSeekBar;
    }

    @Override // i.a1
    public void a(int i3) {
        super/*android.widget.TextView*/.setLastBaselineToBottomHeight(i3);
    }

    @Override // i.a1
    public void b(int i3) {
        super/*android.widget.TextView*/.setFirstBaselineToTopHeight(i3);
    }

    public KeyListener c(KeyListener keyListener) {
        if (keyListener instanceof NumberKeyListener) {
            return keyListener;
        }
        ((androidx.activity.result.c) ((androidx.emoji2.text.m) this.f1988c).b).getClass();
        if (keyListener instanceof k0.e) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new k0.e(keyListener);
    }

    public void d(AttributeSet attributeSet, int i3) {
        switch (this.f1987a) {
            case 0:
                AbsSeekBar absSeekBar = (AbsSeekBar) this.b;
                androidx.fragment.app.f fVarV = androidx.fragment.app.f.v(absSeekBar.getContext(), attributeSet, f1986d, i3);
                Drawable drawableL = fVarV.l(0);
                if (drawableL != null) {
                    if (drawableL instanceof AnimationDrawable) {
                        AnimationDrawable animationDrawable = (AnimationDrawable) drawableL;
                        int numberOfFrames = animationDrawable.getNumberOfFrames();
                        AnimationDrawable animationDrawable2 = new AnimationDrawable();
                        animationDrawable2.setOneShot(animationDrawable.isOneShot());
                        for (int i4 = 0; i4 < numberOfFrames; i4++) {
                            Drawable drawableG = g(animationDrawable.getFrame(i4), true);
                            drawableG.setLevel(10000);
                            animationDrawable2.addFrame(drawableG, animationDrawable.getDuration(i4));
                        }
                        animationDrawable2.setLevel(10000);
                        drawableL = animationDrawable2;
                    }
                    absSeekBar.setIndeterminateDrawable(drawableL);
                }
                Drawable drawableL2 = fVarV.l(1);
                if (drawableL2 != null) {
                    absSeekBar.setProgressDrawable(g(drawableL2, false));
                }
                fVarV.x();
                return;
            default:
                TypedArray typedArrayObtainStyledAttributes = ((EditText) this.b).getContext().obtainStyledAttributes(attributeSet, d.a.f1502i, i3, 0);
                try {
                    boolean z2 = true;
                    if (typedArrayObtainStyledAttributes.hasValue(14)) {
                        z2 = typedArrayObtainStyledAttributes.getBoolean(14, true);
                        break;
                    }
                    typedArrayObtainStyledAttributes.recycle();
                    f(z2);
                    return;
                } catch (Throwable th) {
                    typedArrayObtainStyledAttributes.recycle();
                    throw th;
                }
        }
    }

    public k0.b e(InputConnection inputConnection, EditorInfo editorInfo) {
        androidx.emoji2.text.m mVar = (androidx.emoji2.text.m) this.f1988c;
        if (inputConnection == null) {
            mVar.getClass();
            inputConnection = null;
        } else {
            androidx.activity.result.c cVar = (androidx.activity.result.c) mVar.b;
            cVar.getClass();
            if (!(inputConnection instanceof k0.b)) {
                inputConnection = new k0.b((EditText) cVar.f100a, inputConnection, editorInfo);
            }
        }
        return (k0.b) inputConnection;
    }

    public void f(boolean z2) {
        k0.i iVar = (k0.i) ((androidx.activity.result.c) ((androidx.emoji2.text.m) this.f1988c).b).b;
        if (iVar.f2351c != z2) {
            if (iVar.b != null) {
                androidx.emoji2.text.k kVarA = androidx.emoji2.text.k.a();
                k0.h hVar = iVar.b;
                kVarA.getClass();
                a1.b.l(hVar, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = kVarA.f336a;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    kVarA.b.remove(hVar);
                    reentrantReadWriteLock.writeLock().unlock();
                } catch (Throwable th) {
                    reentrantReadWriteLock.writeLock().unlock();
                    throw th;
                }
            }
            iVar.f2351c = z2;
            if (z2) {
                k0.i.a(iVar.f2350a, androidx.emoji2.text.k.a().b());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable g(Drawable drawable, boolean z2) {
        if (drawable instanceof w.e) {
            ((w.f) ((w.e) drawable)).getClass();
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i3 = 0; i3 < numberOfLayers; i3++) {
                    int id = layerDrawable.getId(i3);
                    drawableArr[i3] = g(layerDrawable.getDrawable(i3), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i4 = 0; i4 < numberOfLayers; i4++) {
                    layerDrawable2.setId(i4, layerDrawable.getId(i4));
                    layerDrawable2.setLayerGravity(i4, layerDrawable.getLayerGravity(i4));
                    layerDrawable2.setLayerWidth(i4, layerDrawable.getLayerWidth(i4));
                    layerDrawable2.setLayerHeight(i4, layerDrawable.getLayerHeight(i4));
                    layerDrawable2.setLayerInsetLeft(i4, layerDrawable.getLayerInsetLeft(i4));
                    layerDrawable2.setLayerInsetRight(i4, layerDrawable.getLayerInsetRight(i4));
                    layerDrawable2.setLayerInsetTop(i4, layerDrawable.getLayerInsetTop(i4));
                    layerDrawable2.setLayerInsetBottom(i4, layerDrawable.getLayerInsetBottom(i4));
                    layerDrawable2.setLayerInsetStart(i4, layerDrawable.getLayerInsetStart(i4));
                    layerDrawable2.setLayerInsetEnd(i4, layerDrawable.getLayerInsetEnd(i4));
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (((Bitmap) this.f1988c) == null) {
                    this.f1988c = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z2 ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }

    public c0(EditText editText) {
        this.f1987a = 1;
        this.b = editText;
        this.f1988c = new androidx.emoji2.text.m(editText);
    }

    public c0(b1 b1Var) {
        this.f1987a = 2;
        this.f1988c = b1Var;
        this.f1987a = 2;
        this.b = b1Var;
    }
}
