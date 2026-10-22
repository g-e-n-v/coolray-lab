package i;

import android.R;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class x2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f2196a;
    public final TextView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f2197c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f2198d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImageView f2199e;

    public x2(View view) {
        this.f2196a = (TextView) view.findViewById(R.id.text1);
        this.b = (TextView) view.findViewById(R.id.text2);
        this.f2197c = (ImageView) view.findViewById(R.id.icon1);
        this.f2198d = (ImageView) view.findViewById(R.id.icon2);
        this.f2199e = (ImageView) view.findViewById(com.ex.auto.R.id.edit_query);
    }
}
