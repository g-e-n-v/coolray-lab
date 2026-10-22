package e;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import com.ex.auto.R;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public final boolean E;
    public final e F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1579a;
    public final i b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Window f1580c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public CharSequence f1581d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f1582e;
    public AlertController$RecycleListView f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public View f1583g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Button f1585i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f1586j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Message f1587k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Button f1588l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CharSequence f1589m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Message f1590n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Button f1591o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public CharSequence f1592p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Message f1593q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public NestedScrollView f1594r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Drawable f1595s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ImageView f1596t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public TextView f1597u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public TextView f1598v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public View f1599w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ListAdapter f1600x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f1602z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1584h = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f1601y = -1;
    public final com.google.android.material.datepicker.k G = new com.google.android.material.datepicker.k(2, this);

    public g(Context context, i iVar, Window window) {
        this.f1579a = context;
        this.b = iVar;
        this.f1580c = window;
        e eVar = new e();
        eVar.f1575a = new WeakReference(iVar);
        this.F = eVar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, d.a.f1499e, R.attr.alertDialogStyle, 0);
        this.f1602z = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.getResourceId(2, 0);
        this.A = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        this.B = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.C = typedArrayObtainStyledAttributes.getResourceId(7, 0);
        this.D = typedArrayObtainStyledAttributes.getResourceId(3, 0);
        this.E = typedArrayObtainStyledAttributes.getBoolean(6, true);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        iVar.d().l(1);
    }

    public static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public static ViewGroup b(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    public final void c(int i3, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        Message messageObtainMessage = onClickListener != null ? this.F.obtainMessage(i3, onClickListener) : null;
        if (i3 == -3) {
            this.f1592p = charSequence;
            this.f1593q = messageObtainMessage;
        } else if (i3 == -2) {
            this.f1589m = charSequence;
            this.f1590n = messageObtainMessage;
        } else {
            if (i3 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f1586j = charSequence;
            this.f1587k = messageObtainMessage;
        }
    }
}
