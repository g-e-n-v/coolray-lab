package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import h.b0;
import h.m;

/* JADX INFO: loaded from: classes.dex */
public class NavigationMenuView extends RecyclerView implements b0 {
    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setLayoutManager(new LinearLayoutManager(1));
    }

    @Override // h.b0
    public final void a(m mVar) {
    }

    public int getWindowAnimations() {
        return 0;
    }
}
