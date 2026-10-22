package i;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.ex.auto.R;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public class q1 extends ListView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f2127a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2128c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2129d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2130e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o1 f2131g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2132h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f2133i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2134j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public f0.g f2135k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public androidx.activity.d f2136l;

    public q1(Context context, boolean z2) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.f2127a = new Rect();
        this.b = 0;
        this.f2128c = 0;
        this.f2129d = 0;
        this.f2130e = 0;
        this.f2133i = z2;
        setCacheColorHint(0);
    }

    public final int a(int i3, int i4) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i5 = 0;
        View view = null;
        for (int i6 = 0; i6 < count; i6++) {
            int itemViewType = adapter.getItemViewType(i6);
            if (itemViewType != i5) {
                view = null;
                i5 = itemViewType;
            }
            view = adapter.getView(i6, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i7 = layoutParams.height;
            view.measure(i3, i7 > 0 ? View.MeasureSpec.makeMeasureSpec(i7, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i6 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i4) {
                return i4;
            }
        }
        return measuredHeight;
    }

    /* JADX WARN: Code duplicated, block: B:81:0x014c  */
    /* JADX WARN: Code duplicated, block: B:83:0x0161  */
    /* JADX WARN: Code duplicated, block: B:85:0x0166  */
    /* JADX WARN: Code duplicated, block: B:87:0x016a  */
    /* JADX WARN: Code duplicated, block: B:89:0x017c  */
    /* JADX WARN: Code duplicated, block: B:91:0x0180  */
    /* JADX WARN: Code duplicated, block: B:93:0x0184  */
    /* JADX WARN: Code duplicated, block: B:9:0x0016  */
    public final boolean b(MotionEvent motionEvent, int i3) {
        boolean z2;
        boolean zA;
        View childAt;
        View childAt2;
        f0.g gVar;
        int actionMasked = motionEvent.getActionMasked();
        boolean z3 = true;
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                z2 = true;
            } else if (actionMasked != 3) {
                z2 = true;
                z3 = false;
            } else {
                z2 = false;
                z3 = false;
            }
            if (z2 || z3) {
                this.f2134j = false;
                setPressed(false);
                drawableStateChanged();
                childAt2 = getChildAt(this.f - getFirstVisiblePosition());
                if (childAt2 != null) {
                    childAt2.setPressed(false);
                }
            }
            if (z2) {
                if (this.f2135k == null) {
                    this.f2135k = new f0.g(this);
                }
                f0.g gVar2 = this.f2135k;
                boolean z4 = gVar2.f1736p;
                gVar2.f1736p = true;
                gVar2.onTouch(this, motionEvent);
            } else {
                gVar = this.f2135k;
                if (gVar != null) {
                    if (gVar.f1736p) {
                        gVar.d();
                    }
                    gVar.f1736p = false;
                }
            }
            return z2;
        }
        z2 = false;
        int iFindPointerIndex = motionEvent.findPointerIndex(i3);
        if (iFindPointerIndex < 0) {
            z2 = false;
            z3 = false;
        } else {
            int x2 = (int) motionEvent.getX(iFindPointerIndex);
            int y2 = (int) motionEvent.getY(iFindPointerIndex);
            int iPointToPosition = pointToPosition(x2, y2);
            if (iPointToPosition != -1) {
                View childAt3 = getChildAt(iPointToPosition - getFirstVisiblePosition());
                float f = x2;
                float f3 = y2;
                this.f2134j = true;
                l1.a(this, f, f3);
                if (!isPressed()) {
                    setPressed(true);
                }
                layoutChildren();
                int i4 = this.f;
                if (i4 != -1 && (childAt = getChildAt(i4 - getFirstVisiblePosition())) != null && childAt != childAt3 && childAt.isPressed()) {
                    childAt.setPressed(false);
                }
                this.f = iPointToPosition;
                l1.a(childAt3, f - childAt3.getLeft(), f3 - childAt3.getTop());
                if (!childAt3.isPressed()) {
                    childAt3.setPressed(true);
                }
                Drawable selector = getSelector();
                boolean z5 = (selector == null || iPointToPosition == -1) ? false : true;
                if (z5) {
                    selector.setVisible(false, false);
                }
                int left = childAt3.getLeft();
                int top = childAt3.getTop();
                int right = childAt3.getRight();
                int bottom = childAt3.getBottom();
                Rect rect = this.f2127a;
                rect.set(left, top, right, bottom);
                rect.left -= this.b;
                rect.top -= this.f2128c;
                rect.right += this.f2129d;
                rect.bottom += this.f2130e;
                if (k1.a.E()) {
                    zA = n1.a(this);
                } else {
                    Field field = p1.f2121a;
                    if (field != null) {
                        try {
                            zA = field.getBoolean(this);
                        } catch (IllegalAccessException e3) {
                            e3.printStackTrace();
                            zA = false;
                        }
                    } else {
                        zA = false;
                    }
                }
                if (childAt3.isEnabled() != zA) {
                    boolean z6 = !zA;
                    if (k1.a.E()) {
                        n1.b(this, z6);
                    } else {
                        Field field2 = p1.f2121a;
                        if (field2 != null) {
                            try {
                                field2.set(this, Boolean.valueOf(z6));
                            } catch (IllegalAccessException e4) {
                                e4.printStackTrace();
                            }
                        }
                    }
                    if (iPointToPosition != -1) {
                        refreshDrawableState();
                    }
                }
                if (z5) {
                    float fExactCenterX = rect.exactCenterX();
                    float fExactCenterY = rect.exactCenterY();
                    selector.setVisible(getVisibility() == 0, false);
                    w.b.e(selector, fExactCenterX, fExactCenterY);
                }
                Drawable selector2 = getSelector();
                if (selector2 != null && iPointToPosition != -1) {
                    w.b.e(selector2, f, f3);
                }
                o1 o1Var = this.f2131g;
                if (o1Var != null) {
                    o1Var.b = false;
                }
                refreshDrawableState();
                if (actionMasked == 1) {
                    performItemClick(childAt3, iPointToPosition, getItemIdAtPosition(iPointToPosition));
                }
                z3 = false;
                z2 = true;
            }
        }
        if (z2) {
            this.f2134j = false;
            setPressed(false);
            drawableStateChanged();
            childAt2 = getChildAt(this.f - getFirstVisiblePosition());
            if (childAt2 != null) {
                childAt2.setPressed(false);
            }
        } else {
            this.f2134j = false;
            setPressed(false);
            drawableStateChanged();
            childAt2 = getChildAt(this.f - getFirstVisiblePosition());
            if (childAt2 != null) {
                childAt2.setPressed(false);
            }
        }
        if (z2) {
            if (this.f2135k == null) {
                this.f2135k = new f0.g(this);
            }
            f0.g gVar3 = this.f2135k;
            boolean z7 = gVar3.f1736p;
            gVar3.f1736p = true;
            gVar3.onTouch(this, motionEvent);
        } else {
            gVar = this.f2135k;
            if (gVar != null) {
                if (gVar.f1736p) {
                    gVar.d();
                }
                gVar.f1736p = false;
            }
        }
        return z2;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable selector;
        Rect rect = this.f2127a;
        if (!rect.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(rect);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.f2136l != null) {
            return;
        }
        super.drawableStateChanged();
        o1 o1Var = this.f2131g;
        if (o1Var != null) {
            o1Var.b = true;
        }
        Drawable selector = getSelector();
        if (selector != null && this.f2134j && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean hasFocus() {
        return this.f2133i || super.hasFocus();
    }

    @Override // android.view.View
    public final boolean hasWindowFocus() {
        return this.f2133i || super.hasWindowFocus();
    }

    @Override // android.view.View
    public final boolean isFocused() {
        return this.f2133i || super.isFocused();
    }

    @Override // android.view.View
    public final boolean isInTouchMode() {
        return (this.f2133i && this.f2132h) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f2136l = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int i3 = Build.VERSION.SDK_INT;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f2136l == null) {
            androidx.activity.d dVar = new androidx.activity.d(6, this);
            this.f2136l = dVar;
            post(dVar);
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked != 9 && actionMasked != 7) {
            setSelection(-1);
            return zOnHoverEvent;
        }
        int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
            View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
            if (childAt.isEnabled()) {
                requestFocus();
                if (i3 < 30 || !m1.f2100d) {
                    setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                } else {
                    try {
                        m1.f2098a.invoke(this, Integer.valueOf(iPointToPosition), childAt, Boolean.FALSE, -1, -1);
                        m1.b.invoke(this, Integer.valueOf(iPointToPosition));
                        m1.f2099c.invoke(this, Integer.valueOf(iPointToPosition));
                    } catch (IllegalAccessException e3) {
                        e3.printStackTrace();
                    } catch (InvocationTargetException e4) {
                        e4.printStackTrace();
                    }
                }
            }
            Drawable selector = getSelector();
            if (selector != null && this.f2134j && isPressed()) {
                selector.setState(getDrawableState());
            }
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        androidx.activity.d dVar = this.f2136l;
        if (dVar != null) {
            q1 q1Var = (q1) dVar.b;
            q1Var.f2136l = null;
            q1Var.removeCallbacks(dVar);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z2) {
        this.f2132h = z2;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        o1 o1Var = null;
        if (drawable != null) {
            o1 o1Var2 = new o1();
            Drawable drawable2 = o1Var2.f2115a;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            o1Var2.f2115a = drawable;
            drawable.setCallback(o1Var2);
            o1Var2.b = true;
            o1Var = o1Var2;
        }
        this.f2131g = o1Var;
        super.setSelector(o1Var);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.b = rect.left;
        this.f2128c = rect.top;
        this.f2129d = rect.right;
        this.f2130e = rect.bottom;
    }
}
