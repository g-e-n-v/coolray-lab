package i;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.widget.ImageView;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2144a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f2145c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Serializable f2146d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f2147e;
    public final Object f;

    public s(MainActivity mainActivity, SharedPreferences sharedPreferences) {
        this.f2144a = mainActivity;
        this.b = sharedPreferences;
        this.f2146d = "green";
        this.f2147e = y1.f.U(new String[]{"green", "gray", "white", "silver"});
        this.f = y1.s.X(new x1.a("green", Integer.valueOf(R.drawable.geely_ex2_verde_pistachio)), new x1.a("gray", Integer.valueOf(R.drawable.geely_ex2_cinza_street)), new x1.a("white", Integer.valueOf(R.drawable.geely_ex2_branco_horizon)), new x1.a("silver", Integer.valueOf(R.drawable.geely_ex2_prata_urban)));
    }

    public static boolean b(int[] iArr, int i3) {
        for (int i4 : iArr) {
            if (i4 == i3) {
                return true;
            }
        }
        return false;
    }

    public static ColorStateList c(Context context, int i3) {
        int iC = z2.c(context, R.attr.colorControlHighlight);
        int iB = z2.b(context, R.attr.colorButtonNormal);
        int[] iArr = z2.b;
        int[] iArr2 = z2.f2235d;
        int iB2 = v.a.b(iC, i3);
        return new ColorStateList(new int[][]{iArr, iArr2, z2.f2234c, z2.f}, new int[]{iB, iB2, v.a.b(iC, i3), i3});
    }

    public static LayerDrawable d(k2 k2Var, Context context, int i3) {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i3);
        Drawable drawableC = k2Var.c(context, R.drawable.abc_star_black_48dp);
        Drawable drawableC2 = k2Var.c(context, R.drawable.abc_star_half_black_48dp);
        if ((drawableC instanceof BitmapDrawable) && drawableC.getIntrinsicWidth() == dimensionPixelSize && drawableC.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) drawableC;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawableC.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawableC.draw(canvas);
            bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((drawableC2 instanceof BitmapDrawable) && drawableC2.getIntrinsicWidth() == dimensionPixelSize && drawableC2.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) drawableC2;
        } else {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
            drawableC2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawableC2.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.secondaryProgress);
        layerDrawable.setId(2, android.R.id.progress);
        return layerDrawable;
    }

    public static void f(Drawable drawable, int i3, PorterDuff.Mode mode) {
        int[] iArr = k1.f2070a;
        Drawable drawableMutate = drawable.mutate();
        if (mode == null) {
            mode = t.b;
        }
        drawableMutate.setColorFilter(t.c(i3, mode));
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.util.Map] */
    public void a(String str, boolean z2) {
        this.f2146d = str;
        ImageView imageView = (ImageView) this.f2145c;
        if (imageView == null) {
            i2.g.h("imageView");
            throw null;
        }
        imageView.setImageResource(((Number) y1.s.U(this.f, str)).intValue());
        if (z2) {
            ((SharedPreferences) this.b).edit().putString("master_home_car_color", str).apply();
        }
    }

    public ColorStateList e(Context context, int i3) {
        if (i3 == R.drawable.abc_edit_text_material) {
            return a1.b.t(context, R.color.abc_tint_edittext);
        }
        if (i3 == R.drawable.abc_switch_track_mtrl_alpha) {
            return a1.b.t(context, R.color.abc_tint_switch_track);
        }
        if (i3 != R.drawable.abc_switch_thumb_material) {
            if (i3 == R.drawable.abc_btn_default_mtrl_shape) {
                return c(context, z2.c(context, R.attr.colorButtonNormal));
            }
            if (i3 == R.drawable.abc_btn_borderless_material) {
                return c(context, 0);
            }
            if (i3 == R.drawable.abc_btn_colored_material) {
                return c(context, z2.c(context, R.attr.colorAccent));
            }
            if (i3 == R.drawable.abc_spinner_mtrl_am_alpha || i3 == R.drawable.abc_spinner_textfield_background_material) {
                return a1.b.t(context, R.color.abc_tint_spinner);
            }
            if (b((int[]) this.b, i3)) {
                return z2.d(context, R.attr.colorControlNormal);
            }
            if (b((int[]) this.f2147e, i3)) {
                return a1.b.t(context, R.color.abc_tint_default);
            }
            if (b((int[]) this.f, i3)) {
                return a1.b.t(context, R.color.abc_tint_btn_checkable);
            }
            if (i3 == R.drawable.abc_seekbar_thumb_material) {
                return a1.b.t(context, R.color.abc_tint_seek_thumb);
            }
            return null;
        }
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList colorStateListD = z2.d(context, R.attr.colorSwitchThumbNormal);
        if (colorStateListD == null || !colorStateListD.isStateful()) {
            iArr[0] = z2.b;
            iArr2[0] = z2.b(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = z2.f2236e;
            iArr2[1] = z2.c(context, R.attr.colorControlActivated);
            iArr[2] = z2.f;
            iArr2[2] = z2.c(context, R.attr.colorSwitchThumbNormal);
        } else {
            int[] iArr3 = z2.b;
            iArr[0] = iArr3;
            iArr2[0] = colorStateListD.getColorForState(iArr3, 0);
            iArr[1] = z2.f2236e;
            iArr2[1] = z2.c(context, R.attr.colorControlActivated);
            iArr[2] = z2.f;
            iArr2[2] = colorStateListD.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [int[], java.io.Serializable] */
    public s() {
        this.f2144a = new int[]{R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
        this.b = new int[]{R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
        this.f2145c = new int[]{R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};
        this.f2146d = new int[]{R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
        this.f2147e = new int[]{R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
        this.f = new int[]{R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};
    }
}
