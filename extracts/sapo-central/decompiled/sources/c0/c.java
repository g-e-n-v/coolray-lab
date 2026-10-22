package c0;

import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeProvider;
import com.ex.auto.R;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final View.AccessibilityDelegate f700c = new View.AccessibilityDelegate();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View.AccessibilityDelegate f701a;
    public final a b;

    public c() {
        this(f700c);
    }

    public boolean a(View view, AccessibilityEvent accessibilityEvent) {
        return this.f701a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public androidx.emoji2.text.m b(View view) {
        AccessibilityNodeProvider accessibilityNodeProviderA = b.a(this.f701a, view);
        if (accessibilityNodeProviderA != null) {
            return new androidx.emoji2.text.m(9, accessibilityNodeProviderA);
        }
        return null;
    }

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        this.f701a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void d(View view, d0.f fVar) {
        this.f701a.onInitializeAccessibilityNodeInfo(view, fVar.f1533a);
    }

    public void e(View view, AccessibilityEvent accessibilityEvent) {
        this.f701a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f701a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean g(View view, int i3, Bundle bundle) {
        boolean zB;
        WeakReference weakReference;
        ClickableSpan clickableSpan;
        List list = (List) view.getTag(R.id.tag_accessibility_actions);
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        boolean z2 = false;
        int i4 = 0;
        while (true) {
            if (i4 < list.size()) {
                d0.d dVar = (d0.d) list.get(i4);
                if (dVar.a() == i3) {
                    Class cls = dVar.f1530c;
                    d0.q qVar = dVar.f1531d;
                    if (qVar != null) {
                        if (cls != null) {
                            try {
                                if (cls.getDeclaredConstructor(null).newInstance(null) == null) {
                                    throw null;
                                }
                                throw new ClassCastException();
                            } catch (Exception e3) {
                                Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: ".concat(cls.getName()), e3);
                            }
                        }
                        zB = qVar.d(view);
                        break;
                    }
                } else {
                    i4++;
                }
            }
            zB = false;
            break;
        }
        if (!zB) {
            zB = b.b(this.f701a, view, i3, bundle);
        }
        if (zB || i3 != R.id.accessibility_action_clickable_span || bundle == null) {
            return zB;
        }
        int i5 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
        if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i5)) != null && (clickableSpan = (ClickableSpan) weakReference.get()) != null) {
            CharSequence text = view.createAccessibilityNodeInfo().getText();
            ClickableSpan[] clickableSpanArr = text instanceof Spanned ? (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class) : null;
            for (int i6 = 0; clickableSpanArr != null && i6 < clickableSpanArr.length; i6++) {
                if (clickableSpan.equals(clickableSpanArr[i6])) {
                    clickableSpan.onClick(view);
                    z2 = true;
                    break;
                }
            }
        }
        return z2;
    }

    public void h(View view, int i3) {
        this.f701a.sendAccessibilityEvent(view, i3);
    }

    public void i(View view, AccessibilityEvent accessibilityEvent) {
        this.f701a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public c(View.AccessibilityDelegate accessibilityDelegate) {
        this.f701a = accessibilityDelegate;
        this.b = new a(this);
    }
}
