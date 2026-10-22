package c0;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ViewParent f722a;
    public ViewParent b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ViewGroup f723c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f725e;

    public n(ViewGroup viewGroup) {
        this.f723c = viewGroup;
    }

    public final boolean a(float f, float f3, boolean z2) {
        ViewParent viewParentE;
        if (this.f724d && (viewParentE = e(0)) != null) {
            try {
                return s0.a(viewParentE, this.f723c, f, f3, z2);
            } catch (AbstractMethodError e3) {
                Log.e("ViewParentCompat", "ViewParent " + viewParentE + " does not implement interface method onNestedFling", e3);
            }
        }
        return false;
    }

    public final boolean b(float f, float f3) {
        ViewParent viewParentE;
        if (this.f724d && (viewParentE = e(0)) != null) {
            try {
                return s0.b(viewParentE, this.f723c, f, f3);
            } catch (AbstractMethodError e3) {
                Log.e("ViewParentCompat", "ViewParent " + viewParentE + " does not implement interface method onNestedPreFling", e3);
            }
        }
        return false;
    }

    public final boolean c(int i3, int i4, int[] iArr, int[] iArr2, int i5) {
        ViewParent viewParentE;
        int i6;
        int i7;
        if (!this.f724d || (viewParentE = e(i5)) == null) {
            return false;
        }
        if (i3 == 0 && i4 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        ViewGroup viewGroup = this.f723c;
        if (iArr2 != null) {
            viewGroup.getLocationInWindow(iArr2);
            i6 = iArr2[0];
            i7 = iArr2[1];
        } else {
            i6 = 0;
            i7 = 0;
        }
        if (iArr == null) {
            if (this.f725e == null) {
                this.f725e = new int[2];
            }
            iArr = this.f725e;
        }
        int[] iArr3 = iArr;
        iArr3[0] = 0;
        iArr3[1] = 0;
        if (viewParentE instanceof o) {
            ((o) viewParentE).c(viewGroup, i3, i4, iArr3, i5);
        } else if (i5 == 0) {
            try {
                s0.c(viewParentE, viewGroup, i3, i4, iArr3);
            } catch (AbstractMethodError e3) {
                Log.e("ViewParentCompat", "ViewParent " + viewParentE + " does not implement interface method onNestedPreScroll", e3);
            }
        }
        if (iArr2 != null) {
            viewGroup.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i6;
            iArr2[1] = iArr2[1] - i7;
        }
        return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
    }

    public final boolean d(int i3, int i4, int i5, int i6, int[] iArr, int i7, int[] iArr2) {
        ViewParent viewParentE;
        int i8;
        int i9;
        int[] iArr3;
        if (this.f724d && (viewParentE = e(i7)) != null) {
            if (i3 != 0 || i4 != 0 || i5 != 0 || i6 != 0) {
                ViewGroup viewGroup = this.f723c;
                if (iArr != null) {
                    viewGroup.getLocationInWindow(iArr);
                    i8 = iArr[0];
                    i9 = iArr[1];
                } else {
                    i8 = 0;
                    i9 = 0;
                }
                if (iArr2 == null) {
                    if (this.f725e == null) {
                        this.f725e = new int[2];
                    }
                    int[] iArr4 = this.f725e;
                    iArr4[0] = 0;
                    iArr4[1] = 0;
                    iArr3 = iArr4;
                } else {
                    iArr3 = iArr2;
                }
                if (viewParentE instanceof p) {
                    ((p) viewParentE).d(viewGroup, i3, i4, i5, i6, i7, iArr3);
                } else {
                    iArr3[0] = iArr3[0] + i5;
                    iArr3[1] = iArr3[1] + i6;
                    if (viewParentE instanceof o) {
                        ((o) viewParentE).e(viewGroup, i3, i4, i5, i6, i7);
                    } else if (i7 == 0) {
                        try {
                            s0.d(viewParentE, viewGroup, i3, i4, i5, i6);
                        } catch (AbstractMethodError e3) {
                            Log.e("ViewParentCompat", "ViewParent " + viewParentE + " does not implement interface method onNestedScroll", e3);
                        }
                    }
                }
                if (iArr != null) {
                    viewGroup.getLocationInWindow(iArr);
                    iArr[0] = iArr[0] - i8;
                    iArr[1] = iArr[1] - i9;
                }
                return true;
            }
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                return false;
            }
        }
        return false;
    }

    public final ViewParent e(int i3) {
        if (i3 == 0) {
            return this.f722a;
        }
        if (i3 != 1) {
            return null;
        }
        return this.b;
    }

    public final boolean f(int i3) {
        return e(i3) != null;
    }

    public final boolean g(int i3, int i4) {
        boolean zF;
        if (!f(i4)) {
            if (this.f724d) {
                ViewGroup viewGroup = this.f723c;
                View view = viewGroup;
                for (ViewParent parent = viewGroup.getParent(); parent != null; parent = parent.getParent()) {
                    boolean z2 = parent instanceof o;
                    if (z2) {
                        zF = ((o) parent).f(view, viewGroup, i3, i4);
                    } else if (i4 == 0) {
                        try {
                            zF = s0.f(parent, view, viewGroup, i3);
                        } catch (AbstractMethodError e3) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e3);
                            zF = false;
                        }
                    } else {
                        zF = false;
                    }
                    if (zF) {
                        if (i4 == 0) {
                            this.f722a = parent;
                        } else if (i4 == 1) {
                            this.b = parent;
                        }
                        if (z2) {
                            ((o) parent).a(view, viewGroup, i3, i4);
                        } else if (i4 == 0) {
                            try {
                                s0.e(parent, view, viewGroup, i3);
                            } catch (AbstractMethodError e4) {
                                Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e4);
                            }
                        }
                    } else {
                        if (parent instanceof View) {
                            view = (View) parent;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final void h(int i3) {
        ViewParent viewParentE = e(i3);
        if (viewParentE != null) {
            boolean z2 = viewParentE instanceof o;
            ViewGroup viewGroup = this.f723c;
            if (z2) {
                ((o) viewParentE).b(viewGroup, i3);
            } else if (i3 == 0) {
                try {
                    s0.g(viewParentE, viewGroup);
                } catch (AbstractMethodError e3) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParentE + " does not implement interface method onStopNestedScroll", e3);
                }
            }
            if (i3 == 0) {
                this.f722a = null;
            } else {
                if (i3 != 1) {
                    return;
                }
                this.b = null;
            }
        }
    }
}
