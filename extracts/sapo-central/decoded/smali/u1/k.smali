.class public final Lu1/k;
.super Lu1/l;
.source "SourceFile"


# instance fields
.field public final d:Li/o2;

.field public final e:Li/q2;

.field public final f:Lu1/h;

.field public final g:Lu1/a;

.field public final h:Lu1/b;

.field public i:Z

.field public j:Z

.field public k:J

.field public l:Landroid/graphics/drawable/StateListDrawable;

.field public m:Ls1/g;

.field public n:Landroid/view/accessibility/AccessibilityManager;

.field public o:Landroid/animation/ValueAnimator;

.field public p:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    invoke-direct {p0, p1}, Lu1/l;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    new-instance v0, Li/o2;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Li/o2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lu1/k;->d:Li/o2;

    new-instance v0, Li/q2;

    invoke-direct {v0, v1, p0}, Li/q2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lu1/k;->e:Li/q2;

    new-instance v0, Lu1/h;

    invoke-direct {v0, p0, p1}, Lu1/h;-><init>(Lu1/k;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v0, p0, Lu1/k;->f:Lu1/h;

    new-instance p1, Lu1/a;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lu1/a;-><init>(Lu1/l;I)V

    iput-object p1, p0, Lu1/k;->g:Lu1/a;

    new-instance p1, Lu1/b;

    invoke-direct {p1, p0, v0}, Lu1/b;-><init>(Lu1/l;I)V

    iput-object p1, p0, Lu1/k;->h:Lu1/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lu1/k;->i:Z

    iput-boolean p1, p0, Lu1/k;->j:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lu1/k;->k:J

    return-void
.end method

.method public static d(Lu1/k;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    instance-of p0, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lu1/k;Landroid/widget/AutoCompleteTextView;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lu1/k;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    const-wide/16 v4, 0x12c

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    :cond_1
    iput-boolean v3, p0, Lu1/k;->i:Z

    :cond_2
    iget-boolean v0, p0, Lu1/k;->i:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lu1/k;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lu1/k;->g(Z)V

    iget-boolean p0, p0, Lu1/k;->j:Z

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    return-void

    :cond_4
    iput-boolean v3, p0, Lu1/k;->i:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lu1/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060118

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0, v1, v1, v2, v3}, Lu1/k;->f(FFFI)Ls1/g;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1, v2, v3}, Lu1/k;->f(FFFI)Ls1/g;

    move-result-object v1

    iput-object v4, p0, Lu1/k;->m:Ls1/g;

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v2, p0, Lu1/k;->l:Landroid/graphics/drawable/StateListDrawable;

    const v3, 0x10100aa

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lu1/k;->l:Landroid/graphics/drawable/StateListDrawable;

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0700e7

    invoke-static {v0, v1}, La1/b;->v(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lu1/l;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0045

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/material/datepicker/k;

    const/4 v3, 0x6

    invoke-direct {v1, v3, p0}, Lcom/google/android/material/datepicker/k;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Lcom/google/android/material/textfield/TextInputLayout;->b0:Ljava/util/LinkedHashSet;

    iget-object v3, p0, Lu1/k;->g:Lu1/a;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {v3, v2}, Lu1/a;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_0
    iget-object v1, p0, Lu1/k;->h:Lu1/b;

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->f0:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v3, Lc1/a;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v4, 0x43

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lg1/b;

    invoke-direct {v4, v1, p0}, Lg1/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v2, p0, Lu1/k;->p:Landroid/animation/ValueAnimator;

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v3, 0x32

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lg1/b;

    invoke-direct {v3, v1, p0}, Lg1/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v2, p0, Lu1/k;->o:Landroid/animation/ValueAnimator;

    new-instance v3, Le1/a;

    invoke-direct {v3, v1, p0}, Le1/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v2, Lc0/p0;->a:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lu1/l;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v2, v1}, Lc0/a0;->s(Landroid/view/View;I)V

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lu1/k;->n:Landroid/view/accessibility/AccessibilityManager;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final b(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f(FFFI)Ls1/g;
    .locals 11

    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ls1/i;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ls1/i;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ls1/e;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ls1/e;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ls1/e;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ls1/e;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ls1/a;

    invoke-direct {v8, p1}, Ls1/a;-><init>(F)V

    new-instance v9, Ls1/a;

    invoke-direct {v9, p1}, Ls1/a;-><init>(F)V

    new-instance p1, Ls1/a;

    invoke-direct {p1, p2}, Ls1/a;-><init>(F)V

    new-instance v10, Ls1/a;

    invoke-direct {v10, p2}, Ls1/a;-><init>(F)V

    new-instance p2, Ls1/k;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v0, p2, Ls1/k;->a:Lk1/a;

    iput-object v1, p2, Ls1/k;->b:Lk1/a;

    iput-object v2, p2, Ls1/k;->c:Lk1/a;

    iput-object v3, p2, Ls1/k;->d:Lk1/a;

    iput-object v8, p2, Ls1/k;->e:Ls1/c;

    iput-object v9, p2, Ls1/k;->f:Ls1/c;

    iput-object v10, p2, Ls1/k;->g:Ls1/c;

    iput-object p1, p2, Ls1/k;->h:Ls1/c;

    iput-object v4, p2, Ls1/k;->i:Ls1/e;

    iput-object v5, p2, Ls1/k;->j:Ls1/e;

    iput-object v6, p2, Ls1/k;->k:Ls1/e;

    iput-object v7, p2, Ls1/k;->l:Ls1/e;

    sget-object p1, Ls1/g;->w:Landroid/graphics/Paint;

    const-class p1, Ls1/g;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0300c2

    iget-object v1, p0, Lu1/l;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lk1/a;->O(ILandroid/content/Context;Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ls1/g;

    invoke-direct {v0}, Ls1/g;-><init>()V

    invoke-virtual {v0, v1}, Ls1/g;->g(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls1/g;->i(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, p3}, Ls1/g;->h(F)V

    invoke-virtual {v0, p2}, Ls1/g;->setShapeAppearanceModel(Ls1/k;)V

    iget-object p1, v0, Ls1/g;->a:Ls1/f;

    iget-object p2, p1, Ls1/f;->g:Landroid/graphics/Rect;

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p1, Ls1/f;->g:Landroid/graphics/Rect;

    :cond_0
    iget-object p1, v0, Ls1/g;->a:Ls1/f;

    iget-object p1, p1, Ls1/f;->g:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p4, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Ls1/g;->invalidateSelf()V

    return-object v0
.end method

.method public final g(Z)V
    .locals 1

    iget-boolean v0, p0, Lu1/k;->j:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lu1/k;->j:Z

    iget-object p1, p0, Lu1/k;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lu1/k;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
