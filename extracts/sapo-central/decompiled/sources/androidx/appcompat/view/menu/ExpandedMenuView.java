package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.fragment.app.f;
import h.b0;
import h.l;
import h.m;
import h.o;

/* JADX INFO: loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements l, b0, AdapterView.OnItemClickListener {
    public static final int[] b = {R.attr.background, R.attr.divider};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public m f114a;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        f fVarV = f.v(context, attributeSet, b, R.attr.listViewStyle);
        TypedArray typedArray = (TypedArray) fVarV.f413c;
        if (typedArray.hasValue(0)) {
            setBackgroundDrawable(fVarV.k(0));
        }
        if (typedArray.hasValue(1)) {
            setDivider(fVarV.k(1));
        }
        fVarV.x();
    }

    @Override // h.b0
    public final void a(m mVar) {
        this.f114a = mVar;
    }

    @Override // h.l
    public final boolean b(o oVar) {
        return this.f114a.q(oVar, null, 0);
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i3, long j3) {
        b((o) getAdapter().getItem(i3));
    }
}
