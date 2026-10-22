package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.Scroller;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import c0.p0;
import com.ex.auto.R;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import q0.z0;

/* JADX INFO: loaded from: classes.dex */
public final class m<S> extends u {
    public int S;
    public b T;
    public p U;
    public int V;
    public androidx.fragment.app.f W;
    public RecyclerView X;
    public RecyclerView Y;
    public View Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public View f1404a0;

    public final void A(p pVar) {
        t tVar = (t) this.Y.getAdapter();
        int iD = tVar.f1429c.f1385a.d(pVar);
        int iD2 = iD - tVar.f1429c.f1385a.d(this.U);
        boolean z2 = Math.abs(iD2) > 3;
        boolean z3 = iD2 > 0;
        this.U = pVar;
        if (z2 && z3) {
            this.Y.Y(iD - 3);
            this.Y.post(new androidx.emoji2.text.i(this, iD, 1));
        } else if (!z2) {
            this.Y.post(new androidx.emoji2.text.i(this, iD, 1));
        } else {
            this.Y.Y(iD + 3);
            this.Y.post(new androidx.emoji2.text.i(this, iD, 1));
        }
    }

    public final void B(int i3) {
        this.V = i3;
        if (i3 == 2) {
            this.X.getLayoutManager().i0(this.U.f1420d - ((z) this.X.getAdapter()).f1434c.T.f1385a.f1420d);
            this.Z.setVisibility(0);
            this.f1404a0.setVisibility(8);
            return;
        }
        if (i3 == 1) {
            this.Z.setVisibility(8);
            this.f1404a0.setVisibility(0);
            A(this.U);
        }
    }

    @Override // androidx.fragment.app.r
    public final void m(Bundle bundle) {
        super.m(bundle);
        if (bundle == null) {
            bundle = this.f;
        }
        this.S = bundle.getInt("THEME_RES_ID_KEY");
        if (bundle.getParcelable("GRID_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.T = (b) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.U = (p) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.r
    public final View n(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        int i3;
        int i4;
        q0.x xVar;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(h(), this.S);
        this.W = new androidx.fragment.app.f(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        p pVar = this.T.f1385a;
        if (n.C(contextThemeWrapper)) {
            i3 = R.layout.mtrl_calendar_vertical;
            i4 = 1;
        } else {
            i3 = R.layout.mtrl_calendar_horizontal;
            i4 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i3, viewGroup, false);
        GridView gridView = (GridView) viewInflate.findViewById(R.id.mtrl_calendar_days_of_week);
        p0.i(gridView, new f(0));
        gridView.setAdapter((ListAdapter) new e());
        gridView.setNumColumns(pVar.f1421e);
        gridView.setEnabled(false);
        this.Y = (RecyclerView) viewInflate.findViewById(R.id.mtrl_calendar_months);
        this.Y.setLayoutManager(new g(this, i4, i4));
        this.Y.setTag("MONTHS_VIEW_GROUP_TAG");
        t tVar = new t(contextThemeWrapper, this.T, new androidx.emoji2.text.m(8, this));
        this.Y.setAdapter(tVar);
        int integer = contextThemeWrapper.getResources().getInteger(R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView3 = (RecyclerView) viewInflate.findViewById(R.id.mtrl_calendar_year_selector_frame);
        this.X = recyclerView3;
        if (recyclerView3 != null) {
            recyclerView3.setHasFixedSize(true);
            this.X.setLayoutManager(new GridLayoutManager(integer));
            this.X.setAdapter(new z(this));
            RecyclerView recyclerView4 = this.X;
            h hVar = new h();
            x.c(null);
            x.c(null);
            recyclerView4.g(hVar);
        }
        if (viewInflate.findViewById(R.id.month_navigation_fragment_toggle) != null) {
            MaterialButton materialButton = (MaterialButton) viewInflate.findViewById(R.id.month_navigation_fragment_toggle);
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            p0.i(materialButton, new i(0, this));
            MaterialButton materialButton2 = (MaterialButton) viewInflate.findViewById(R.id.month_navigation_previous);
            materialButton2.setTag("NAVIGATION_PREV_TAG");
            MaterialButton materialButton3 = (MaterialButton) viewInflate.findViewById(R.id.month_navigation_next);
            materialButton3.setTag("NAVIGATION_NEXT_TAG");
            this.Z = viewInflate.findViewById(R.id.mtrl_calendar_year_selector_frame);
            this.f1404a0 = viewInflate.findViewById(R.id.mtrl_calendar_day_selector_frame);
            B(1);
            materialButton.setText(this.U.b);
            this.Y.h(new j(this, tVar, materialButton));
            materialButton.setOnClickListener(new k(0, this));
            materialButton3.setOnClickListener(new l(this, tVar, 0));
            materialButton2.setOnClickListener(new l(this, tVar, 1));
        }
        if (!n.C(contextThemeWrapper) && (recyclerView2 = (xVar = new q0.x()).f3064a) != (recyclerView = this.Y)) {
            z0 z0Var = xVar.f3065c;
            if (recyclerView2 != null) {
                ArrayList arrayList = recyclerView2.f623e0;
                if (arrayList != null) {
                    arrayList.remove(z0Var);
                }
                xVar.f3064a.setOnFlingListener(null);
            }
            xVar.f3064a = recyclerView;
            if (recyclerView != null) {
                if (recyclerView.getOnFlingListener() != null) {
                    throw new IllegalStateException("An instance of OnFlingListener already set.");
                }
                xVar.f3064a.h(z0Var);
                xVar.f3064a.setOnFlingListener(xVar);
                xVar.b = new Scroller(xVar.f3064a.getContext(), new DecelerateInterpolator());
                xVar.f();
            }
        }
        this.Y.Y(tVar.f1429c.f1385a.d(this.U));
        return viewInflate;
    }

    @Override // androidx.fragment.app.r
    public final void r(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.S);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.T);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.U);
    }
}
