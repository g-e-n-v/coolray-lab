package c0;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.ex.auto.R;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static WeakHashMap f727a;
    public static Field b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f728c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final v f729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final x f730e;

    static {
        new AtomicInteger(1);
        f727a = null;
        f728c = false;
        f729d = new v();
        f730e = new x();
    }

    public static w0 a(View view) {
        if (f727a == null) {
            f727a = new WeakHashMap();
        }
        w0 w0Var = (w0) f727a.get(view);
        if (w0Var != null) {
            return w0Var;
        }
        w0 w0Var2 = new w0(view);
        f727a.put(view, w0Var2);
        return w0Var2;
    }

    public static View.AccessibilityDelegate b(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return k0.a(view);
        }
        if (f728c) {
            return null;
        }
        if (b == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                b = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f728c = true;
                return null;
            }
        }
        try {
            Object obj = b.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f728c = true;
            return null;
        }
    }

    public static String[] c(i.v vVar) {
        return Build.VERSION.SDK_INT >= 31 ? m0.a(vVar) : (String[]) vVar.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static void d(View view, int i3) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z2 = j0.b(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (c0.a(view) != 0 || z2) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z2 ? 32 : 2048);
                c0.g(accessibilityEventObtain, i3);
                if (z2) {
                    accessibilityEventObtain.getText().add(j0.b(view));
                    if (a0.c(view) == 0) {
                        a0.s(view, 1);
                    }
                    for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                        if (a0.c((View) parent) == 4) {
                            a0.s(view, 2);
                            break;
                        }
                    }
                }
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (i3 != 32) {
                if (view.getParent() != null) {
                    try {
                        c0.e(view.getParent(), view, view, i3);
                        return;
                    } catch (AbstractMethodError e3) {
                        Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e3);
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(accessibilityEventObtain2);
            accessibilityEventObtain2.setEventType(32);
            c0.g(accessibilityEventObtain2, i3);
            accessibilityEventObtain2.setSource(view);
            view.onPopulateAccessibilityEvent(accessibilityEventObtain2);
            accessibilityEventObtain2.getText().add(j0.b(view));
            accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static h e(View view, h hVar) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + hVar + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return m0.b(view, hVar);
        }
        s sVar = (s) view.getTag(R.id.tag_on_receive_content_listener);
        t tVar = f729d;
        if (sVar == null) {
            if (view instanceof t) {
                tVar = (t) view;
            }
            return tVar.a(hVar);
        }
        h hVarA = ((f0.r) sVar).a(view, hVar);
        if (hVarA == null) {
            return null;
        }
        if (view instanceof t) {
            tVar = (t) view;
        }
        return tVar.a(hVarA);
    }

    public static void f(View view, int i3) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList == null) {
            arrayList = new ArrayList();
            view.setTag(R.id.tag_accessibility_actions, arrayList);
        }
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            if (((d0.d) arrayList.get(i4)).a() == i3) {
                arrayList.remove(i4);
                return;
            }
        }
    }

    public static void g(View view, d0.d dVar, d0.q qVar) {
        c cVar = null;
        d0.d dVar2 = new d0.d(null, dVar.b, qVar, dVar.f1530c);
        View.AccessibilityDelegate accessibilityDelegateB = b(view);
        if (accessibilityDelegateB != null) {
            cVar = accessibilityDelegateB instanceof a ? ((a) accessibilityDelegateB).f698a : new c(accessibilityDelegateB);
        }
        if (cVar == null) {
            cVar = new c();
        }
        i(view, cVar);
        f(view, dVar2.a());
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList == null) {
            arrayList = new ArrayList();
            view.setTag(R.id.tag_accessibility_actions, arrayList);
        }
        arrayList.add(dVar2);
        d(view, 0);
    }

    public static void h(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i3) {
        if (Build.VERSION.SDK_INT >= 29) {
            k0.c(view, context, iArr, attributeSet, typedArray, i3, 0);
        }
    }

    public static void i(View view, c cVar) {
        if (cVar == null && (b(view) instanceof a)) {
            cVar = new c();
        }
        view.setAccessibilityDelegate(cVar == null ? null : cVar.b);
    }

    public static void j(View view, CharSequence charSequence) {
        new w(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28, 1).d(view, charSequence);
        x xVar = f730e;
        if (charSequence == null) {
            xVar.f738a.remove(view);
            view.removeOnAttachStateChangeListener(xVar);
            a0.o(view.getViewTreeObserver(), xVar);
        } else {
            xVar.f738a.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(xVar);
            if (c0.b(view)) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(xVar);
            }
        }
    }
}
