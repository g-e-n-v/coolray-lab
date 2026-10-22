package e;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: loaded from: classes.dex */
public class h implements d0.q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1606a;
    public final Object b;

    public /* synthetic */ h(int i3, Object obj) {
        this.f1606a = i3;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v7, types: [android.widget.ListAdapter] */
    public i a() {
        ?? fVar;
        d dVar = (d) this.b;
        ContextThemeWrapper contextThemeWrapper = dVar.f1552a;
        ContextThemeWrapper contextThemeWrapper2 = dVar.f1552a;
        i iVar = new i(contextThemeWrapper, this.f1606a);
        View view = dVar.f1555e;
        g gVar = iVar.f1611e;
        if (view != null) {
            gVar.f1599w = view;
        } else {
            CharSequence charSequence = dVar.f1554d;
            if (charSequence != null) {
                gVar.f1581d = charSequence;
                TextView textView = gVar.f1597u;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = dVar.f1553c;
            if (drawable != null) {
                gVar.f1595s = drawable;
                ImageView imageView = gVar.f1596t;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    gVar.f1596t.setImageDrawable(drawable);
                }
            }
        }
        CharSequence charSequence2 = dVar.f;
        if (charSequence2 != null) {
            gVar.f1582e = charSequence2;
            TextView textView2 = gVar.f1598v;
            if (textView2 != null) {
                textView2.setText(charSequence2);
            }
        }
        CharSequence charSequence3 = dVar.f1556g;
        if (charSequence3 != null) {
            gVar.c(-1, charSequence3, dVar.f1557h);
        }
        CharSequence charSequence4 = dVar.f1558i;
        if (charSequence4 != null) {
            gVar.c(-2, charSequence4, dVar.f1559j);
        }
        String str = dVar.f1560k;
        if (str != null) {
            gVar.c(-3, str, dVar.f1561l);
        }
        if (dVar.f1565p != null || dVar.f1566q != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) dVar.b.inflate(gVar.A, (ViewGroup) null);
            if (dVar.f1570u) {
                fVar = new a(dVar, contextThemeWrapper2, gVar.B, dVar.f1565p, alertController$RecycleListView);
            } else {
                int i3 = dVar.f1571v ? gVar.C : gVar.D;
                Object obj = dVar.f1566q;
                fVar = obj;
                if (obj == null) {
                    fVar = new f(contextThemeWrapper2, i3, R.id.text1, dVar.f1565p);
                }
            }
            gVar.f1600x = fVar;
            gVar.f1601y = dVar.f1572w;
            if (dVar.f1567r != null) {
                alertController$RecycleListView.setOnItemClickListener(new b(dVar, gVar));
            } else if (dVar.f1573x != null) {
                alertController$RecycleListView.setOnItemClickListener(new c(dVar, alertController$RecycleListView, gVar));
            }
            if (dVar.f1571v) {
                alertController$RecycleListView.setChoiceMode(1);
            } else if (dVar.f1570u) {
                alertController$RecycleListView.setChoiceMode(2);
            }
            gVar.f = alertController$RecycleListView;
        }
        View view2 = dVar.f1568s;
        if (view2 != null) {
            gVar.f1583g = view2;
            gVar.f1584h = false;
        }
        iVar.setCancelable(dVar.f1562m);
        if (dVar.f1562m) {
            iVar.setCanceledOnTouchOutside(true);
        }
        iVar.setOnCancelListener(dVar.f1563n);
        iVar.setOnDismissListener(null);
        h.n nVar = dVar.f1564o;
        if (nVar != null) {
            iVar.setOnKeyListener(nVar);
        }
        return iVar;
    }

    public void b(int i3, DialogInterface.OnClickListener onClickListener) {
        d dVar = (d) this.b;
        dVar.f1558i = dVar.f1552a.getText(i3);
        dVar.f1559j = onClickListener;
    }

    public void c(String str, DialogInterface.OnClickListener onClickListener) {
        d dVar = (d) this.b;
        dVar.f1558i = str;
        dVar.f1559j = onClickListener;
    }

    @Override // d0.q
    public boolean d(View view) {
        ((BottomSheetBehavior) this.b).y(this.f1606a);
        return true;
    }

    public void e(int i3, DialogInterface.OnClickListener onClickListener) {
        d dVar = (d) this.b;
        dVar.f1556g = dVar.f1552a.getText(i3);
        dVar.f1557h = onClickListener;
    }

    public void f(String str, DialogInterface.OnClickListener onClickListener) {
        d dVar = (d) this.b;
        dVar.f1556g = str;
        dVar.f1557h = onClickListener;
    }

    public void g(int i3) {
        d dVar = (d) this.b;
        dVar.f1554d = dVar.f1552a.getText(i3);
    }

    public i h() {
        i iVarA = a();
        iVarA.show();
        return iVarA;
    }

    public h(Context context) {
        this(context, i.i(context, 0));
    }

    public h(Context context, int i3) {
        this.b = new d(new ContextThemeWrapper(context, i.i(context, i3)));
        this.f1606a = i3;
    }

    public h(BottomSheetBehavior bottomSheetBehavior, int i3) {
        this.b = bottomSheetBehavior;
        this.f1606a = i3;
    }
}
