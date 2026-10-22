package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import androidx.fragment.app.f;
import c0.a0;
import c0.p0;
import com.ex.auto.R;
import i.m3;
import i.n;
import i.o0;
import i.o2;
import i.p2;
import i.q2;
import i.r2;
import i.s2;
import i.t2;
import i.u2;
import i.v1;
import i.v2;
import i.w1;
import i.w2;
import i.y2;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class SearchView extends v1 implements g.b {

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final f f199g0;
    public final Rect A;
    public final int[] B;
    public final int[] C;
    public final ImageView D;
    public final Drawable E;
    public final int F;
    public final int G;
    public final Intent H;
    public final Intent I;
    public final CharSequence J;
    public View.OnFocusChangeListener K;
    public View.OnClickListener L;
    public boolean M;
    public boolean N;
    public g0.c O;
    public boolean P;
    public CharSequence Q;
    public boolean R;
    public boolean S;
    public int T;
    public boolean U;
    public CharSequence V;
    public boolean W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f200a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public SearchableInfo f201b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public Bundle f202c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final p2 f203d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final p2 f204e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final WeakHashMap f205f0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final SearchAutoComplete f206p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final View f207q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final View f208r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final View f209s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ImageView f210t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ImageView f211u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final ImageView f212v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final ImageView f213w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final View f214x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public w2 f215y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final Rect f216z;

    public static class SearchAutoComplete extends n {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f217e;
        public SearchView f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f218g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final d f219h;

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f219h = new d(this);
            this.f217e = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i3 = configuration.screenWidthDp;
            int i4 = configuration.screenHeightDp;
            if (i3 >= 960 && i4 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i3 < 600) {
                return (i3 < 640 || i4 < 480) ? 160 : 192;
            }
            return 192;
        }

        public final void a() {
            if (Build.VERSION.SDK_INT >= 29) {
                c.b(this, 1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            f fVar = SearchView.f199g0;
            fVar.getClass();
            f.w();
            Method method = (Method) fVar.f414d;
            if (method != null) {
                try {
                    method.invoke(this, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final boolean enoughToFilter() {
            return this.f217e <= 0 || super.enoughToFilter();
        }

        @Override // i.n, android.widget.TextView, android.view.View
        public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f218g) {
                d dVar = this.f219h;
                removeCallbacks(dVar);
                post(dVar);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        public final void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onFocusChanged(boolean z2, int i3, Rect rect) {
            super.onFocusChanged(z2, i3, rect);
            SearchView searchView = this.f;
            searchView.w(searchView.N);
            searchView.post(searchView.f203d0);
            if (searchView.f206p.hasFocus()) {
                searchView.l();
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final boolean onKeyPreIme(int i3, KeyEvent keyEvent) {
            if (i3 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i3, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onWindowFocusChanged(boolean z2) {
            super.onWindowFocusChanged(z2);
            if (z2 && this.f.hasFocus() && getVisibility() == 0) {
                this.f218g = true;
                Context context = getContext();
                f fVar = SearchView.f199g0;
                if (context.getResources().getConfiguration().orientation == 2) {
                    a();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public final void replaceText(CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z2) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            d dVar = this.f219h;
            if (!z2) {
                this.f218g = false;
                removeCallbacks(dVar);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f218g = true;
                    return;
                }
                this.f218g = false;
                removeCallbacks(dVar);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(SearchView searchView) {
            this.f = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i3) {
            super.setThreshold(i3);
            this.f217e = i3;
        }
    }

    static {
        f fVar = null;
        if (Build.VERSION.SDK_INT < 29) {
            f fVar2 = new f(4);
            fVar2.b = null;
            fVar2.f413c = null;
            fVar2.f414d = null;
            f.w();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", null);
                fVar2.b = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", null);
                fVar2.f413c = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                fVar2.f414d = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
            fVar = fVar2;
        }
        f199g0 = fVar;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        SearchAutoComplete searchAutoComplete = this.f206p;
        searchAutoComplete.setText(charSequence);
        searchAutoComplete.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void clearFocus() {
        this.S = true;
        super.clearFocus();
        SearchAutoComplete searchAutoComplete = this.f206p;
        searchAutoComplete.clearFocus();
        searchAutoComplete.setImeVisibility(false);
        this.S = false;
    }

    public int getImeOptions() {
        return this.f206p.getImeOptions();
    }

    public int getInputType() {
        return this.f206p.getInputType();
    }

    public int getMaxWidth() {
        return this.T;
    }

    public CharSequence getQuery() {
        return this.f206p.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.Q;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.f201b0;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.J : getContext().getText(this.f201b0.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.G;
    }

    public int getSuggestionRowLayout() {
        return this.F;
    }

    public g0.c getSuggestionsAdapter() {
        return this.O;
    }

    public final Intent j(String str, Uri uri, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.V);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f202c0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        intent.setComponent(this.f201b0.getSearchActivity());
        return intent;
    }

    public final Intent k(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f202c0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public final void l() {
        int i3 = Build.VERSION.SDK_INT;
        SearchAutoComplete searchAutoComplete = this.f206p;
        if (i3 >= 29) {
            c.a(searchAutoComplete);
            return;
        }
        f fVar = f199g0;
        fVar.getClass();
        f.w();
        Method method = (Method) fVar.b;
        if (method != null) {
            try {
                method.invoke(searchAutoComplete, null);
            } catch (Exception unused) {
            }
        }
        fVar.getClass();
        f.w();
        Method method2 = (Method) fVar.f413c;
        if (method2 != null) {
            try {
                method2.invoke(searchAutoComplete, null);
            } catch (Exception unused2) {
            }
        }
    }

    public final void m() {
        SearchAutoComplete searchAutoComplete = this.f206p;
        if (!TextUtils.isEmpty(searchAutoComplete.getText())) {
            searchAutoComplete.setText("");
            searchAutoComplete.requestFocus();
            searchAutoComplete.setImeVisibility(true);
        } else if (this.M) {
            clearFocus();
            w(true);
        }
    }

    public final void n(int i3) {
        int position;
        String strH;
        Cursor cursor = this.O.f1794c;
        if (cursor != null && cursor.moveToPosition(i3)) {
            Intent intentJ = null;
            try {
                int i4 = y2.f2202x;
                String strH2 = y2.h(cursor, cursor.getColumnIndex("suggest_intent_action"));
                if (strH2 == null) {
                    strH2 = this.f201b0.getSuggestIntentAction();
                }
                if (strH2 == null) {
                    strH2 = "android.intent.action.SEARCH";
                }
                String strH3 = y2.h(cursor, cursor.getColumnIndex("suggest_intent_data"));
                if (strH3 == null) {
                    strH3 = this.f201b0.getSuggestIntentData();
                }
                if (strH3 != null && (strH = y2.h(cursor, cursor.getColumnIndex("suggest_intent_data_id"))) != null) {
                    strH3 = strH3 + "/" + Uri.encode(strH);
                }
                intentJ = j(strH2, strH3 == null ? null : Uri.parse(strH3), y2.h(cursor, cursor.getColumnIndex("suggest_intent_extra_data")), y2.h(cursor, cursor.getColumnIndex("suggest_intent_query")));
            } catch (RuntimeException e3) {
                try {
                    position = cursor.getPosition();
                } catch (RuntimeException unused) {
                    position = -1;
                }
                Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e3);
            }
            if (intentJ != null) {
                try {
                    getContext().startActivity(intentJ);
                } catch (RuntimeException e4) {
                    Log.e("SearchView", "Failed launch activity: " + intentJ, e4);
                }
            }
        }
        SearchAutoComplete searchAutoComplete = this.f206p;
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    public final void o(int i3) {
        Editable text = this.f206p.getText();
        Cursor cursor = this.O.f1794c;
        if (cursor == null) {
            return;
        }
        if (!cursor.moveToPosition(i3)) {
            setQuery(text);
            return;
        }
        String strC = this.O.c(cursor);
        if (strC != null) {
            setQuery(strC);
        } else {
            setQuery(text);
        }
    }

    @Override // g.b
    public final void onActionViewCollapsed() {
        SearchAutoComplete searchAutoComplete = this.f206p;
        searchAutoComplete.setText("");
        searchAutoComplete.setSelection(searchAutoComplete.length());
        this.V = "";
        clearFocus();
        w(true);
        searchAutoComplete.setImeOptions(this.f200a0);
        this.W = false;
    }

    @Override // g.b
    public final void onActionViewExpanded() {
        if (this.W) {
            return;
        }
        this.W = true;
        SearchAutoComplete searchAutoComplete = this.f206p;
        int imeOptions = searchAutoComplete.getImeOptions();
        this.f200a0 = imeOptions;
        searchAutoComplete.setImeOptions(imeOptions | 33554432);
        searchAutoComplete.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f203d0);
        post(this.f204e0);
        super.onDetachedFromWindow();
    }

    @Override // i.v1, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
        if (z2) {
            SearchAutoComplete searchAutoComplete = this.f206p;
            int[] iArr = this.B;
            searchAutoComplete.getLocationInWindow(iArr);
            int[] iArr2 = this.C;
            getLocationInWindow(iArr2);
            int i7 = iArr[1] - iArr2[1];
            int i8 = iArr[0] - iArr2[0];
            int width = searchAutoComplete.getWidth() + i8;
            int height = searchAutoComplete.getHeight() + i7;
            Rect rect = this.f216z;
            rect.set(i8, i7, width, height);
            int i9 = rect.left;
            int i10 = rect.right;
            int i11 = i6 - i4;
            Rect rect2 = this.A;
            rect2.set(i9, 0, i10, i11);
            w2 w2Var = this.f215y;
            if (w2Var == null) {
                w2 w2Var2 = new w2(rect2, rect, searchAutoComplete);
                this.f215y = w2Var2;
                setTouchDelegate(w2Var2);
            } else {
                w2Var.b.set(rect2);
                Rect rect3 = w2Var.f2192d;
                rect3.set(rect2);
                int i12 = -w2Var.f2193e;
                rect3.inset(i12, i12);
                w2Var.f2191c.set(rect);
            }
        }
    }

    @Override // i.v1, android.view.View
    public final void onMeasure(int i3, int i4) {
        int i5;
        if (this.N) {
            super.onMeasure(i3, i4);
            return;
        }
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (mode == Integer.MIN_VALUE) {
            int i6 = this.T;
            size = i6 > 0 ? Math.min(i6, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.T;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i5 = this.T) > 0) {
            size = Math.min(i5, size);
        }
        int mode2 = View.MeasureSpec.getMode(i4);
        int size2 = View.MeasureSpec.getSize(i4);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof v2)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        v2 v2Var = (v2) parcelable;
        super.onRestoreInstanceState(v2Var.f1951a);
        w(v2Var.f2187c);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        v2 v2Var = new v2(super.onSaveInstanceState());
        v2Var.f2187c = this.N;
        return v2Var;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        post(this.f203d0);
    }

    public final void p(CharSequence charSequence) {
        setQuery(charSequence);
    }

    public final void q() {
        SearchAutoComplete searchAutoComplete = this.f206p;
        Editable text = searchAutoComplete.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        if (this.f201b0 != null) {
            getContext().startActivity(j("android.intent.action.SEARCH", null, null, text.toString()));
        }
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    public final void r() {
        boolean zIsEmpty = TextUtils.isEmpty(this.f206p.getText());
        int i3 = (!zIsEmpty || (this.M && !this.W)) ? 0 : 8;
        ImageView imageView = this.f212v;
        imageView.setVisibility(i3);
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            drawable.setState(!zIsEmpty ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i3, Rect rect) {
        if (this.S || !isFocusable()) {
            return false;
        }
        if (this.N) {
            return super.requestFocus(i3, rect);
        }
        boolean zRequestFocus = this.f206p.requestFocus(i3, rect);
        if (zRequestFocus) {
            w(false);
        }
        return zRequestFocus;
    }

    public final void s() {
        int[] iArr = this.f206p.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f208r.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f209s.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public void setAppSearchData(Bundle bundle) {
        this.f202c0 = bundle;
    }

    public void setIconified(boolean z2) {
        if (z2) {
            m();
            return;
        }
        w(false);
        SearchAutoComplete searchAutoComplete = this.f206p;
        searchAutoComplete.requestFocus();
        searchAutoComplete.setImeVisibility(true);
        View.OnClickListener onClickListener = this.L;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void setIconifiedByDefault(boolean z2) {
        if (this.M == z2) {
            return;
        }
        this.M = z2;
        w(z2);
        t();
    }

    public void setImeOptions(int i3) {
        this.f206p.setImeOptions(i3);
    }

    public void setInputType(int i3) {
        this.f206p.setInputType(i3);
    }

    public void setMaxWidth(int i3) {
        this.T = i3;
        requestLayout();
    }

    public void setOnCloseListener(s2 s2Var) {
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.K = onFocusChangeListener;
    }

    public void setOnQueryTextListener(t2 t2Var) {
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.L = onClickListener;
    }

    public void setOnSuggestionListener(u2 u2Var) {
    }

    public void setQueryHint(CharSequence charSequence) {
        this.Q = charSequence;
        t();
    }

    public void setQueryRefinementEnabled(boolean z2) {
        this.R = z2;
        g0.c cVar = this.O;
        if (cVar instanceof y2) {
            ((y2) cVar).f2211p = z2 ? 2 : 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0098  */
    public void setSearchableInfo(SearchableInfo searchableInfo) {
        boolean z2;
        this.f201b0 = searchableInfo;
        Intent intent = null;
        SearchAutoComplete searchAutoComplete = this.f206p;
        if (searchableInfo != null) {
            searchAutoComplete.setThreshold(searchableInfo.getSuggestThreshold());
            searchAutoComplete.setImeOptions(this.f201b0.getImeOptions());
            int inputType = this.f201b0.getInputType();
            if ((inputType & 15) == 1) {
                inputType &= -65537;
                if (this.f201b0.getSuggestAuthority() != null) {
                    inputType |= 589824;
                }
            }
            searchAutoComplete.setInputType(inputType);
            g0.c cVar = this.O;
            if (cVar != null) {
                cVar.b(null);
            }
            if (this.f201b0.getSuggestAuthority() != null) {
                y2 y2Var = new y2(getContext(), this, this.f201b0, this.f205f0);
                this.O = y2Var;
                searchAutoComplete.setAdapter(y2Var);
                ((y2) this.O).f2211p = this.R ? 2 : 1;
            }
            t();
        }
        SearchableInfo searchableInfo2 = this.f201b0;
        if (searchableInfo2 != null && searchableInfo2.getVoiceSearchEnabled()) {
            if (this.f201b0.getVoiceSearchLaunchWebSearch()) {
                intent = this.H;
            } else if (this.f201b0.getVoiceSearchLaunchRecognizer()) {
                intent = this.I;
            }
            z2 = (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
        }
        this.U = z2;
        if (z2) {
            searchAutoComplete.setPrivateImeOptions("nm");
        }
        w(this.N);
    }

    public void setSubmitButtonEnabled(boolean z2) {
        this.P = z2;
        w(this.N);
    }

    public void setSuggestionsAdapter(g0.c cVar) {
        this.O = cVar;
        this.f206p.setAdapter(cVar);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void t() {
        Drawable drawable;
        CharSequence queryHint = getQueryHint();
        CharSequence charSequence = queryHint;
        if (queryHint == null) {
            charSequence = "";
        }
        boolean z2 = this.M;
        SearchAutoComplete searchAutoComplete = this.f206p;
        CharSequence charSequence2 = charSequence;
        if (z2 && (drawable = this.E) != null) {
            charSequence2 = charSequence;
            int textSize = (int) (((double) searchAutoComplete.getTextSize()) * 1.25d);
            drawable.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(drawable), 1, 2, 33);
            spannableStringBuilder.append(charSequence);
            charSequence2 = spannableStringBuilder;
        }
        charSequence2 = charSequence;
        searchAutoComplete.setHint(charSequence2);
    }

    public final void u() {
        this.f209s.setVisibility(((this.P || this.U) && !this.N && (this.f211u.getVisibility() == 0 || this.f213w.getVisibility() == 0)) ? 0 : 8);
    }

    public final void v(boolean z2) {
        boolean z3 = this.P;
        this.f211u.setVisibility((!z3 || !(z3 || this.U) || this.N || !hasFocus() || (!z2 && this.U)) ? 8 : 0);
    }

    public final void w(boolean z2) {
        this.N = z2;
        int i3 = 8;
        int i4 = z2 ? 0 : 8;
        boolean zIsEmpty = TextUtils.isEmpty(this.f206p.getText());
        this.f210t.setVisibility(i4);
        v(!zIsEmpty);
        this.f207q.setVisibility(z2 ? 8 : 0);
        ImageView imageView = this.D;
        imageView.setVisibility((imageView.getDrawable() == null || this.M) ? 8 : 0);
        r();
        if (this.U && !this.N && zIsEmpty) {
            this.f211u.setVisibility(8);
            i3 = 0;
        }
        this.f213w.setVisibility(i3);
        u();
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i3) {
        super(context, attributeSet, i3);
        this.f216z = new Rect();
        this.A = new Rect();
        this.B = new int[2];
        this.C = new int[2];
        this.f203d0 = new p2(this, 0);
        this.f204e0 = new p2(this, 1);
        this.f205f0 = new WeakHashMap();
        a aVar = new a(this);
        b bVar = new b(this);
        r2 r2Var = new r2(this);
        o0 o0Var = new o0(1, this);
        w1 w1Var = new w1(1, this);
        o2 o2Var = new o2(0, this);
        int[] iArr = d.a.f1514u;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i3, 0);
        f fVar = new f(context, typedArrayObtainStyledAttributes);
        p0.h(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i3);
        LayoutInflater.from(context).inflate(typedArrayObtainStyledAttributes.getResourceId(9, R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f206p = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f207q = findViewById(R.id.search_edit_frame);
        View viewFindViewById = findViewById(R.id.search_plate);
        this.f208r = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.submit_area);
        this.f209s = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        this.f210t = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_go_btn);
        this.f211u = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.search_close_btn);
        this.f212v = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.search_voice_btn);
        this.f213w = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.search_mag_icon);
        this.D = imageView5;
        a0.q(viewFindViewById, fVar.k(10));
        a0.q(viewFindViewById2, fVar.k(14));
        imageView.setImageDrawable(fVar.k(13));
        imageView2.setImageDrawable(fVar.k(7));
        imageView3.setImageDrawable(fVar.k(4));
        imageView4.setImageDrawable(fVar.k(16));
        imageView5.setImageDrawable(fVar.k(13));
        this.E = fVar.k(12);
        m3.a(imageView, getResources().getString(R.string.abc_searchview_description_search));
        this.F = typedArrayObtainStyledAttributes.getResourceId(15, R.layout.abc_search_dropdown_item_icons_2line);
        this.G = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        imageView.setOnClickListener(aVar);
        imageView3.setOnClickListener(aVar);
        imageView2.setOnClickListener(aVar);
        imageView4.setOnClickListener(aVar);
        searchAutoComplete.setOnClickListener(aVar);
        searchAutoComplete.addTextChangedListener(o2Var);
        searchAutoComplete.setOnEditorActionListener(r2Var);
        searchAutoComplete.setOnItemClickListener(o0Var);
        searchAutoComplete.setOnItemSelectedListener(w1Var);
        searchAutoComplete.setOnKeyListener(bVar);
        searchAutoComplete.setOnFocusChangeListener(new q2(0, this));
        setIconifiedByDefault(typedArrayObtainStyledAttributes.getBoolean(8, true));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        this.J = typedArrayObtainStyledAttributes.getText(6);
        this.Q = typedArrayObtainStyledAttributes.getText(11);
        int i4 = typedArrayObtainStyledAttributes.getInt(3, -1);
        if (i4 != -1) {
            setImeOptions(i4);
        }
        int i5 = typedArrayObtainStyledAttributes.getInt(2, -1);
        if (i5 != -1) {
            setInputType(i5);
        }
        setFocusable(typedArrayObtainStyledAttributes.getBoolean(0, true));
        fVar.x();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.H = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.I = intent2;
        intent2.addFlags(268435456);
        View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f214x = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new f1.a(1, this));
        }
        w(this.M);
        t();
    }
}
