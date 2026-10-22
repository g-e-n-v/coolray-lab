package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.fragment.app.f;
import c0.p0;
import com.ex.auto.R;
import d.a;
import h.a0;
import h.m;
import h.o;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements a0, AbsListView.SelectionBoundsAdjuster {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o f115a;
    public ImageView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RadioButton f116c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TextView f117d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CheckBox f118e;
    public TextView f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ImageView f119g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ImageView f120h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LinearLayout f121i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Drawable f122j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f123k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Context f124l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f125m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Drawable f126n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f127o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public LayoutInflater f128p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f129q;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        f fVarV = f.v(getContext(), attributeSet, a.f1511r, R.attr.listMenuViewStyle);
        this.f122j = fVarV.k(5);
        TypedArray typedArray = (TypedArray) fVarV.f413c;
        this.f123k = typedArray.getResourceId(1, -1);
        this.f125m = typedArray.getBoolean(7, false);
        this.f124l = context;
        this.f126n = fVarV.k(8);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.f127o = typedArrayObtainStyledAttributes.hasValue(0);
        fVarV.x();
        typedArrayObtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.f128p == null) {
            this.f128p = LayoutInflater.from(getContext());
        }
        return this.f128p;
    }

    private void setSubMenuArrowVisible(boolean z2) {
        ImageView imageView = this.f119g;
        if (imageView != null) {
            imageView.setVisibility(z2 ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f120h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f120h.getLayoutParams();
        rect.top = this.f120h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0035  */
    /* JADX WARN: Code duplicated, block: B:25:0x0054  */
    /* JADX WARN: Code duplicated, block: B:28:0x0058  */
    @Override // h.a0
    public final void c(o oVar) {
        boolean z2;
        int i3;
        String string;
        boolean z3;
        this.f115a = oVar;
        boolean zIsVisible = oVar.isVisible();
        m mVar = oVar.f1921n;
        setVisibility(zIsVisible ? 0 : 8);
        setTitle(oVar.f1913e);
        setCheckable(oVar.isCheckable());
        if (mVar.o()) {
            if ((mVar.n() ? oVar.f1917j : oVar.f1915h) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        mVar.n();
        if (z2) {
            o oVar2 = this.f115a;
            m mVar2 = oVar2.f1921n;
            if (mVar2.o()) {
                if ((mVar2.n() ? oVar2.f1917j : oVar2.f1915h) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
            } else {
                z3 = false;
            }
            i3 = z3 ? 0 : 8;
        }
        if (i3 == 0) {
            TextView textView = this.f;
            o oVar3 = this.f115a;
            m mVar3 = oVar3.f1921n;
            Context context = mVar3.f1886a;
            char c3 = mVar3.n() ? oVar3.f1917j : oVar3.f1915h;
            if (c3 == 0) {
                string = "";
            } else {
                Resources resources = context.getResources();
                StringBuilder sb = new StringBuilder();
                if (ViewConfiguration.get(context).hasPermanentMenuKey()) {
                    sb.append(resources.getString(R.string.abc_prepend_shortcut_label));
                }
                int i4 = mVar3.n() ? oVar3.f1918k : oVar3.f1916i;
                o.c(sb, i4, 65536, resources.getString(R.string.abc_menu_meta_shortcut_label));
                o.c(sb, i4, 4096, resources.getString(R.string.abc_menu_ctrl_shortcut_label));
                o.c(sb, i4, 2, resources.getString(R.string.abc_menu_alt_shortcut_label));
                o.c(sb, i4, 1, resources.getString(R.string.abc_menu_shift_shortcut_label));
                o.c(sb, i4, 4, resources.getString(R.string.abc_menu_sym_shortcut_label));
                o.c(sb, i4, 8, resources.getString(R.string.abc_menu_function_shortcut_label));
                if (c3 == '\b') {
                    sb.append(resources.getString(R.string.abc_menu_delete_shortcut_label));
                } else if (c3 == '\n') {
                    sb.append(resources.getString(R.string.abc_menu_enter_shortcut_label));
                } else if (c3 != ' ') {
                    sb.append(c3);
                } else {
                    sb.append(resources.getString(R.string.abc_menu_space_shortcut_label));
                }
                string = sb.toString();
            }
            textView.setText(string);
        }
        if (this.f.getVisibility() != i3) {
            this.f.setVisibility(i3);
        }
        setIcon(oVar.getIcon());
        setEnabled(oVar.isEnabled());
        setSubMenuArrowVisible(oVar.hasSubMenu());
        setContentDescription(oVar.f1924q);
    }

    @Override // h.a0
    public o getItemData() {
        return this.f115a;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        WeakHashMap weakHashMap = p0.f727a;
        c0.a0.q(this, this.f122j);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f117d = textView;
        int i3 = this.f123k;
        if (i3 != -1) {
            textView.setTextAppearance(this.f124l, i3);
        }
        this.f = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f119g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f126n);
        }
        this.f120h = (ImageView) findViewById(R.id.group_divider);
        this.f121i = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        if (this.b != null && this.f125m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.b.getLayoutParams();
            int i5 = layoutParams.height;
            if (i5 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i5;
            }
        }
        super.onMeasure(i3, i4);
    }

    public void setCheckable(boolean z2) {
        CompoundButton compoundButton;
        View view;
        if (!z2 && this.f116c == null && this.f118e == null) {
            return;
        }
        if ((this.f115a.f1931x & 4) != 0) {
            if (this.f116c == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f116c = radioButton;
                LinearLayout linearLayout = this.f121i;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f116c;
            view = this.f118e;
        } else {
            if (this.f118e == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f118e = checkBox;
                LinearLayout linearLayout2 = this.f121i;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f118e;
            view = this.f116c;
        }
        if (z2) {
            compoundButton.setChecked(this.f115a.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f118e;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f116c;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    public void setChecked(boolean z2) {
        CompoundButton compoundButton;
        if ((this.f115a.f1931x & 4) != 0) {
            if (this.f116c == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f116c = radioButton;
                LinearLayout linearLayout = this.f121i;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f116c;
        } else {
            if (this.f118e == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f118e = checkBox;
                LinearLayout linearLayout2 = this.f121i;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f118e;
        }
        compoundButton.setChecked(z2);
    }

    public void setForceShowIcon(boolean z2) {
        this.f129q = z2;
        this.f125m = z2;
    }

    public void setGroupDividerEnabled(boolean z2) {
        ImageView imageView = this.f120h;
        if (imageView != null) {
            imageView.setVisibility((this.f127o || !z2) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        m mVar = this.f115a.f1921n;
        boolean z2 = this.f129q;
        if (z2 || this.f125m) {
            ImageView imageView = this.b;
            if (imageView == null && drawable == null && !this.f125m) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.b = imageView2;
                LinearLayout linearLayout = this.f121i;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.f125m) {
                this.b.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.b;
            if (!z2) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.b.getVisibility() != 0) {
                this.b.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f117d.getVisibility() != 8) {
                this.f117d.setVisibility(8);
            }
        } else {
            this.f117d.setText(charSequence);
            if (this.f117d.getVisibility() != 0) {
                this.f117d.setVisibility(0);
            }
        }
    }
}
