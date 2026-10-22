package com.google.android.material.datepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import c0.c0;
import c0.f0;
import c0.p0;
import com.ex.auto.R;
import com.google.android.material.internal.CheckableImageButton;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.TimeZone;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class n<S> extends androidx.fragment.app.n {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final LinkedHashSet f1405e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final LinkedHashSet f1406f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f1407g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public u f1408h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public b f1409i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public m f1410j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f1411k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public CharSequence f1412l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f1413m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int f1414n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public CheckableImageButton f1415o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public s1.g f1416p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public Button f1417q0;

    public n() {
        new LinkedHashSet();
        new LinkedHashSet();
        this.f1405e0 = new LinkedHashSet();
        this.f1406f0 = new LinkedHashSet();
    }

    public static int B(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        Calendar calendarB = x.b();
        calendarB.set(5, 1);
        Calendar calendarA = x.a(calendarB);
        calendarA.get(2);
        calendarA.get(1);
        int maximum = calendarA.getMaximum(7);
        calendarA.getActualMaximum(5);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("LLLL, yyyy", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        simpleDateFormat.format(calendarA.getTime());
        calendarA.getTimeInMillis();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width) * maximum;
        return ((maximum - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding)) + dimensionPixelSize + (dimensionPixelOffset * 2);
    }

    public static boolean C(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(k1.a.O(R.attr.materialCalendarStyle, context, m.class.getCanonicalName()), new int[]{android.R.attr.windowFullscreen});
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z2;
    }

    @Override // androidx.fragment.app.n
    public final Dialog A() {
        Context contextW = w();
        w();
        int i3 = this.f1407g0;
        if (i3 == 0) {
            throw null;
        }
        Dialog dialog = new Dialog(contextW, i3);
        Context context = dialog.getContext();
        this.f1413m0 = C(context);
        int iO = k1.a.O(R.attr.colorSurface, context, n.class.getCanonicalName());
        s1.g gVar = new s1.g(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        this.f1416p0 = gVar;
        gVar.g(context);
        this.f1416p0.i(ColorStateList.valueOf(iO));
        s1.g gVar2 = this.f1416p0;
        View decorView = dialog.getWindow().getDecorView();
        WeakHashMap weakHashMap = p0.f727a;
        gVar2.h(f0.i(decorView));
        return dialog;
    }

    @Override // androidx.fragment.app.n, androidx.fragment.app.r
    public final void m(Bundle bundle) {
        super.m(bundle);
        if (bundle == null) {
            bundle = this.f;
        }
        this.f1407g0 = bundle.getInt("OVERRIDE_THEME_RES_ID");
        if (bundle.getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f1409i0 = (b) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f1411k0 = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f1412l0 = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.f1414n0 = bundle.getInt("INPUT_MODE_KEY");
    }

    @Override // androidx.fragment.app.r
    public final View n(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View viewInflate = layoutInflater.inflate(this.f1413m0 ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        int i3 = 1;
        if (this.f1413m0) {
            viewInflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(B(context), -2));
        } else {
            View viewFindViewById = viewInflate.findViewById(R.id.mtrl_calendar_main_pane);
            View viewFindViewById2 = viewInflate.findViewById(R.id.mtrl_calendar_frame);
            viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(B(context), -1));
            Resources resources = w().getResources();
            int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(R.dimen.mtrl_calendar_navigation_height);
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_days_of_week_height);
            int i4 = q.f1423d;
            viewFindViewById2.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_vertical_padding) * (i4 - 1)) + (resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * i4) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_bottom_padding));
        }
        TextView textView = (TextView) viewInflate.findViewById(R.id.mtrl_picker_header_selection_text);
        WeakHashMap weakHashMap = p0.f727a;
        c0.f(textView, 1);
        this.f1415o0 = (CheckableImageButton) viewInflate.findViewById(R.id.mtrl_picker_header_toggle);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.mtrl_picker_title_text);
        CharSequence charSequence = this.f1412l0;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.f1411k0);
        }
        this.f1415o0.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.f1415o0;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, a1.b.v(context, R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], a1.b.v(context, R.drawable.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.f1415o0.setChecked(this.f1414n0 != 0);
        p0.i(this.f1415o0, null);
        CheckableImageButton checkableImageButton2 = this.f1415o0;
        this.f1415o0.setContentDescription(checkableImageButton2.f1437d ? checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
        this.f1415o0.setOnClickListener(new k(i3, this));
        this.f1417q0 = (Button) viewInflate.findViewById(R.id.confirm_button);
        throw null;
    }

    @Override // androidx.fragment.app.n, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.f1405e0.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.n, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f1406f0.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) this.E;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.n, androidx.fragment.app.r
    public final void r(Bundle bundle) {
        super.r(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f1407g0);
        bundle.putParcelable("DATE_SELECTOR_KEY", null);
        b bVar = this.f1409i0;
        a aVar = new a();
        int i3 = a.b;
        int i4 = a.b;
        long j3 = bVar.f1385a.f1422g;
        long j4 = bVar.b.f1422g;
        aVar.f1384a = Long.valueOf(bVar.f1386c.f1422g);
        d dVar = bVar.f1387d;
        p pVar = this.f1410j0.U;
        if (pVar != null) {
            aVar.f1384a = Long.valueOf(pVar.f1422g);
        }
        if (aVar.f1384a == null) {
            Calendar calendarB = x.b();
            calendarB.set(5, 1);
            Calendar calendarA = x.a(calendarB);
            calendarA.get(2);
            calendarA.get(1);
            calendarA.getMaximum(7);
            calendarA.getActualMaximum(5);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("LLLL, yyyy", Locale.getDefault());
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            simpleDateFormat.format(calendarA.getTime());
            long timeInMillis = calendarA.getTimeInMillis();
            if (j3 > timeInMillis || timeInMillis > j4) {
                timeInMillis = j3;
            }
            aVar.f1384a = Long.valueOf(timeInMillis);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", dVar);
        Calendar calendarC = x.c(null);
        calendarC.setTimeInMillis(j3);
        p pVar2 = new p(calendarC);
        Calendar calendarC2 = x.c(null);
        calendarC2.setTimeInMillis(j4);
        p pVar3 = new p(calendarC2);
        long jLongValue = aVar.f1384a.longValue();
        Calendar calendarC3 = x.c(null);
        calendarC3.setTimeInMillis(jLongValue);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new b(pVar2, pVar3, new p(calendarC3), (d) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY")));
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f1411k0);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f1412l0);
    }

    @Override // androidx.fragment.app.n, androidx.fragment.app.r
    public final void s() {
        u uVar;
        super.s();
        Dialog dialog = this.f474a0;
        if (dialog == null) {
            throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
        }
        Window window = dialog.getWindow();
        if (this.f1413m0) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f1416p0);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = w().getResources().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f1416p0, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            View decorView = window.getDecorView();
            Dialog dialog2 = this.f474a0;
            if (dialog2 == null) {
                throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
            }
            decorView.setOnTouchListener(new l1.a(dialog2, rect));
        }
        w();
        int i3 = this.f1407g0;
        if (i3 == 0) {
            throw null;
        }
        b bVar = this.f1409i0;
        m mVar = new m();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i3);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar);
        bundle.putParcelable("CURRENT_MONTH_KEY", bVar.f1386c);
        mVar.z(bundle);
        this.f1410j0 = mVar;
        if (this.f1415o0.f1437d) {
            uVar = mVar;
            b bVar2 = this.f1409i0;
            o oVar = new o();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("DATE_SELECTOR_KEY", null);
            bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar2);
            oVar.z(bundle2);
            uVar = oVar;
        }
        uVar = mVar;
        this.f1408h0 = uVar;
        throw null;
    }

    @Override // androidx.fragment.app.n, androidx.fragment.app.r
    public final void t() {
        this.f1408h0.R.clear();
        super.t();
    }
}
