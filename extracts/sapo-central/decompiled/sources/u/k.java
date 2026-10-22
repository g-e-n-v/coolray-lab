package u;

import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ColorStateList f3232a;
    public final Configuration b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3233c;

    public k(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
        this.f3232a = colorStateList;
        this.b = configuration;
        this.f3233c = theme == null ? 0 : theme.hashCode();
    }
}
