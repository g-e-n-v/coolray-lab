package c0;

import android.text.TextUtils;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class w extends y {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f736e;

    public w(int i3, Class cls, int i4, int i5, int i6) {
        this.f736e = i6;
        this.f739a = i3;
        this.f741d = cls;
        this.f740c = i4;
        this.b = i5;
    }

    @Override // c0.y
    public final Object b(View view) {
        switch (this.f736e) {
            case 0:
                return Boolean.valueOf(j0.d(view));
            case 1:
                return j0.b(view);
            default:
                return Boolean.valueOf(j0.c(view));
        }
    }

    @Override // c0.y
    public final void c(View view, Object obj) {
        switch (this.f736e) {
            case 0:
                j0.i(view, ((Boolean) obj).booleanValue());
                break;
            case 1:
                j0.h(view, (CharSequence) obj);
                break;
            default:
                j0.g(view, ((Boolean) obj).booleanValue());
                break;
        }
    }

    @Override // c0.y
    public final boolean e(Object obj, Object obj2) {
        switch (this.f736e) {
            case 0:
                Boolean bool = (Boolean) obj;
                Boolean bool2 = (Boolean) obj2;
                return !((bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue()));
            case 1:
                return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
            default:
                Boolean bool3 = (Boolean) obj;
                Boolean bool4 = (Boolean) obj2;
                return !((bool3 != null && bool3.booleanValue()) == (bool4 != null && bool4.booleanValue()));
        }
    }
}
