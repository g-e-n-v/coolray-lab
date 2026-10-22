.class public final Lu1/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/material/textfield/TextInputLayout;

.field public c:Landroid/widget/LinearLayout;

.field public d:I

.field public e:Landroid/widget/FrameLayout;

.field public f:I

.field public g:Landroid/animation/AnimatorSet;

.field public final h:F

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Z

.field public m:Li/b1;

.field public n:Ljava/lang/CharSequence;

.field public o:I

.field public p:Landroid/content/res/ColorStateList;

.field public q:Ljava/lang/CharSequence;

.field public r:Z

.field public s:Li/b1;

.field public t:I

.field public u:Landroid/content/res/ColorStateList;

.field public v:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu1/n;->a:Landroid/content/Context;

    iput-object p1, p0, Lu1/n;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06008b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lu1/n;->h:F

    return-void
.end method


# virtual methods
.method public final a(Li/b1;I)V
    .locals 6

    iget-object v0, p0, Lu1/n;->c:Landroid/widget/LinearLayout;

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lu1/n;->e:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lu1/n;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu1/n;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lu1/n;->c:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    iget-object v5, p0, Lu1/n;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5, v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu1/n;->e:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, Lu1/n;->c:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lu1/n;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/n;->b()V

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lu1/n;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p2, p0, Lu1/n;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lu1/n;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget p1, p0, Lu1/n;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lu1/n;->f:I

    :goto_1
    iget-object p1, p0, Lu1/n;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lu1/n;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lu1/n;->d:I

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lu1/n;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu1/n;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lu1/n;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    sget-object v3, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2}, Lc0/b0;->f(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lc0/b0;->e(Landroid/view/View;)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0, v3}, Lc0/b0;->k(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lu1/n;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/util/ArrayList;ZLi/b1;III)V
    .locals 6

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p4, p6, :cond_1

    if-ne p4, p5, :cond_3

    :cond_1
    const/4 p2, 0x0

    if-ne p6, p4, :cond_2

    const/high16 p5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    move p5, p2

    :goto_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p5, v2, v3

    invoke-static {p3, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    const-wide/16 v4, 0xa7

    invoke-virtual {p5, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lc1/a;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p5, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne p6, p4, :cond_3

    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget p5, p0, Lu1/n;->h:F

    neg-float p5, p5

    const/4 p6, 0x2

    new-array p6, p6, [F

    aput p5, p6, v3

    aput p2, p6, v1

    invoke-static {p3, p4, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 p3, 0xd9

    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p3, Lc1/a;->d:Lm0/a;

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lu1/n;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lu1/n;->m:Li/b1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu1/n;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(I)Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lu1/n;->s:Li/b1;

    return-object p1

    :cond_1
    iget-object p1, p0, Lu1/n;->m:Li/b1;

    return-object p1
.end method

.method public final g()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lu1/n;->k:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lu1/n;->c()V

    iget v1, p0, Lu1/n;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lu1/n;->r:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lu1/n;->q:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lu1/n;->j:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lu1/n;->j:I

    :cond_1
    :goto_0
    iget v1, p0, Lu1/n;->i:I

    iget v2, p0, Lu1/n;->j:I

    iget-object v3, p0, Lu1/n;->m:Li/b1;

    invoke-virtual {p0, v3, v0}, Lu1/n;->i(Li/b1;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lu1/n;->j(IIZ)V

    return-void
.end method

.method public final h(Li/b1;I)V
    .locals 3

    iget-object v0, p0, Lu1/n;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v2, :cond_3

    :cond_1
    iget-object p2, p0, Lu1/n;->e:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_3

    iget v0, p0, Lu1/n;->f:I

    sub-int/2addr v0, v2

    iput v0, p0, Lu1/n;->f:I

    if-nez v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p2, p0, Lu1/n;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    iget p1, p0, Lu1/n;->d:I

    sub-int/2addr p1, v2

    iput p1, p0, Lu1/n;->d:I

    iget-object p2, p0, Lu1/n;->c:Landroid/widget/LinearLayout;

    if-nez p1, :cond_4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final i(Li/b1;Ljava/lang/CharSequence;)Z
    .locals 2

    sget-object v0, Lc0/p0;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lu1/n;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Lc0/c0;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lu1/n;->j:I

    iget v1, p0, Lu1/n;->i:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Li/b1;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final j(IIZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    if-ne v5, v6, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x0

    if-eqz v7, :cond_2

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, v0, Lu1/n;->g:Landroid/animation/AnimatorSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, v0, Lu1/n;->r:Z

    iget-object v3, v0, Lu1/n;->s:Li/b1;

    const/4 v4, 0x2

    invoke-virtual/range {v0 .. v6}, Lu1/n;->d(Ljava/util/ArrayList;ZLi/b1;III)V

    iget-boolean v2, v0, Lu1/n;->l:Z

    iget-object v3, v0, Lu1/n;->m:Li/b1;

    const/4 v4, 0x1

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v0 .. v6}, Lu1/n;->d(Ljava/util/ArrayList;ZLi/b1;III)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    move v5, v8

    :goto_0
    if-ge v5, v2, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v11

    invoke-virtual {v10}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v13

    add-long/2addr v13, v11

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    filled-new-array {v8, v8}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v1, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual/range {p0 .. p1}, Lu1/n;->f(I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v6}, Lu1/n;->f(I)Landroid/widget/TextView;

    move-result-object v5

    new-instance v0, Lu1/m;

    move-object/from16 v1, p0

    move/from16 v4, p1

    move v2, v6

    invoke-direct/range {v0 .. v5}, Lu1/m;-><init>(Lu1/n;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    move-object v15, v1

    move-object v1, v0

    move-object v0, v15

    invoke-virtual {v9, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_2
    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v0, v6}, Lu1/n;->f(I)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual/range {p0 .. p1}, Lu1/n;->f(I)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    if-ne v5, v2, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iput v6, v0, Lu1/n;->i:I

    :goto_1
    iget-object v1, v0, Lu1/n;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    invoke-virtual {v1, v7, v8}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    return-void
.end method
