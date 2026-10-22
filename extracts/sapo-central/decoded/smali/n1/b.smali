.class public final Ln1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:F

.field public B:F

.field public C:[I

.field public D:Z

.field public final E:Landroid/text/TextPaint;

.field public final F:Landroid/text/TextPaint;

.field public G:Landroid/animation/TimeInterpolator;

.field public H:Landroid/animation/TimeInterpolator;

.field public I:F

.field public J:F

.field public K:F

.field public L:Landroid/content/res/ColorStateList;

.field public M:Landroid/text/StaticLayout;

.field public N:Ljava/lang/CharSequence;

.field public final a:Lcom/google/android/material/textfield/TextInputLayout;

.field public b:Z

.field public c:F

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/RectF;

.field public g:I

.field public h:I

.field public i:F

.field public j:F

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:Landroid/graphics/Typeface;

.field public t:Landroid/graphics/Typeface;

.field public u:Landroid/graphics/Typeface;

.field public v:Lp1/a;

.field public w:Ljava/lang/CharSequence;

.field public x:Ljava/lang/CharSequence;

.field public y:Z

.field public z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Ln1/b;->g:I

    iput v0, p0, Ln1/b;->h:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Ln1/b;->i:F

    iput v0, p0, Ln1/b;->j:F

    iput-object p1, p0, Ln1/b;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Ln1/b;->E:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Ln1/b;->F:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ln1/b;->e:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ln1/b;->d:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Ln1/b;->f:Landroid/graphics/RectF;

    return-void
.end method

.method public static a(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v3, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v4, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    float-to-int p0, v2

    float-to-int p2, v3

    float-to-int v0, v4

    float-to-int p1, p1

    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static e(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    sget-object p3, Lc1/a;->a:Landroid/view/animation/LinearInterpolator;

    invoke-static {p1, p0, p2, p0}, Landroidx/activity/result/b;->d(FFFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()F
    .locals 4

    iget-object v0, p0, Ln1/b;->w:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Ln1/b;->j:F

    iget-object v1, p0, Ln1/b;->F:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Ln1/b;->s:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Ln1/b;->w:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method public final c(F)V
    .locals 9

    iget-object v0, p0, Ln1/b;->w:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Ln1/b;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Ln1/b;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Ln1/b;->j:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gez v2, :cond_2

    iget p1, p0, Ln1/b;->j:F

    iput v4, p0, Ln1/b;->A:F

    iget-object v1, p0, Ln1/b;->u:Landroid/graphics/Typeface;

    iget-object v2, p0, Ln1/b;->s:Landroid/graphics/Typeface;

    if-eq v1, v2, :cond_1

    iput-object v2, p0, Ln1/b;->u:Landroid/graphics/Typeface;

    move v1, v5

    goto :goto_3

    :cond_1
    move v1, v6

    goto :goto_3

    :cond_2
    iget v2, p0, Ln1/b;->i:F

    iget-object v7, p0, Ln1/b;->u:Landroid/graphics/Typeface;

    iget-object v8, p0, Ln1/b;->t:Landroid/graphics/Typeface;

    if-eq v7, v8, :cond_3

    iput-object v8, p0, Ln1/b;->u:Landroid/graphics/Typeface;

    move v7, v5

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    sub-float v8, p1, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v3, v8, v3

    if-gez v3, :cond_4

    iput v4, p0, Ln1/b;->A:F

    goto :goto_1

    :cond_4
    iget v3, p0, Ln1/b;->i:F

    div-float/2addr p1, v3

    iput p1, p0, Ln1/b;->A:F

    :goto_1
    iget p1, p0, Ln1/b;->j:F

    iget v3, p0, Ln1/b;->i:F

    div-float/2addr p1, v3

    mul-float v3, v1, p1

    cmpl-float v3, v3, v0

    if-lez v3, :cond_5

    div-float/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v0, p1

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move p1, v2

    move v1, v7

    :goto_3
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_8

    iget v2, p0, Ln1/b;->B:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_7

    iget-boolean v2, p0, Ln1/b;->D:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v6

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v5

    :goto_5
    iput p1, p0, Ln1/b;->B:F

    iput-boolean v6, p0, Ln1/b;->D:Z

    :cond_8
    iget-object p1, p0, Ln1/b;->x:Ljava/lang/CharSequence;

    if-eqz p1, :cond_a

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    :goto_6
    return-void

    :cond_a
    :goto_7
    iget p1, p0, Ln1/b;->B:F

    iget-object v1, p0, Ln1/b;->E:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Ln1/b;->u:Landroid/graphics/Typeface;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget p1, p0, Ln1/b;->A:F

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_b

    move p1, v5

    goto :goto_8

    :cond_b
    move p1, v6

    :goto_8
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setLinearText(Z)V

    iget-object p1, p0, Ln1/b;->w:Ljava/lang/CharSequence;

    sget-object v2, Lc0/p0;->a:Ljava/util/WeakHashMap;

    iget-object v2, p0, Ln1/b;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v2}, Lc0/b0;->d(Landroid/view/View;)I

    move-result v2

    if-ne v2, v5, :cond_c

    sget-object v2, La0/h;->d:La0/g;

    goto :goto_9

    :cond_c
    sget-object v2, La0/h;->c:La0/g;

    :goto_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, p1, v3}, La0/g;->b(Ljava/lang/CharSequence;I)Z

    move-result p1

    iput-boolean p1, p0, Ln1/b;->y:Z

    iget-object v2, p0, Ln1/b;->w:Ljava/lang/CharSequence;

    float-to-int v0, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v8, v0

    invoke-static {v2, v1, v8, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz p1, :cond_d

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :cond_d
    invoke-static {v2, v6, v3, v1, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    if-eqz p1, :cond_e

    sget-object p1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_a

    :cond_e
    sget-object p1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    :goto_a
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    if-eqz v7, :cond_f

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    :cond_f
    invoke-virtual {v0, v5}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ln1/b;->M:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ln1/b;->x:Ljava/lang/CharSequence;

    return-void
.end method

.method public final d(Landroid/content/res/ColorStateList;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Ln1/b;->C:[I

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Ln1/b;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ln1/b;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ln1/b;->b:Z

    return-void
.end method

.method public final g()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Ln1/b;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_f

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_f

    iget v2, v0, Ln1/b;->B:F

    iget v3, v0, Ln1/b;->j:F

    invoke-virtual {v0, v3}, Ln1/b;->c(F)V

    iget-object v3, v0, Ln1/b;->x:Ljava/lang/CharSequence;

    iget-object v4, v0, Ln1/b;->E:Landroid/text/TextPaint;

    if-eqz v3, :cond_0

    iget-object v5, v0, Ln1/b;->M:Landroid/text/StaticLayout;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Ln1/b;->N:Ljava/lang/CharSequence;

    :cond_0
    iget-object v3, v0, Ln1/b;->N:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v4, v3, v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    iget v7, v0, Ln1/b;->h:I

    iget-boolean v8, v0, Ln1/b;->y:Z

    invoke-static {v7, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    and-int/lit8 v8, v7, 0x70

    iget-object v9, v0, Ln1/b;->e:Landroid/graphics/Rect;

    const/16 v10, 0x50

    const/16 v11, 0x30

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v8, v11, :cond_3

    if-eq v8, v10, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    sub-float/2addr v8, v13

    div-float/2addr v8, v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v8

    iput v13, v0, Ln1/b;->n:F

    goto :goto_1

    :cond_2
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    add-float/2addr v13, v8

    iput v13, v0, Ln1/b;->n:F

    goto :goto_1

    :cond_3
    iget v8, v9, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iput v8, v0, Ln1/b;->n:F

    :goto_1
    const v8, 0x800007

    and-int/2addr v7, v8

    const/4 v13, 0x5

    const/4 v14, 0x1

    if-eq v7, v14, :cond_5

    if-eq v7, v13, :cond_4

    iget v3, v9, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, v0, Ln1/b;->p:F

    goto :goto_2

    :cond_4
    iget v7, v9, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    iput v7, v0, Ln1/b;->p:F

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v12

    sub-float/2addr v7, v3

    iput v7, v0, Ln1/b;->p:F

    :goto_2
    iget v3, v0, Ln1/b;->i:F

    invoke-virtual {v0, v3}, Ln1/b;->c(F)V

    iget-object v3, v0, Ln1/b;->M:Landroid/text/StaticLayout;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    goto :goto_3

    :cond_6
    move v3, v5

    :goto_3
    iget-object v7, v0, Ln1/b;->x:Ljava/lang/CharSequence;

    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-virtual {v4, v7, v6, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    goto :goto_4

    :cond_7
    move v7, v5

    :goto_4
    iget-object v15, v0, Ln1/b;->M:Landroid/text/StaticLayout;

    if-eqz v15, :cond_8

    invoke-virtual {v15, v6}, Landroid/text/Layout;->getLineLeft(I)F

    :cond_8
    iget v15, v0, Ln1/b;->g:I

    move/from16 v16, v8

    iget-boolean v8, v0, Ln1/b;->y:Z

    invoke-static {v15, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    and-int/lit8 v15, v8, 0x70

    move/from16 v17, v12

    iget-object v12, v0, Ln1/b;->d:Landroid/graphics/Rect;

    if-eq v15, v11, :cond_a

    if-eq v15, v10, :cond_9

    div-float v3, v3, v17

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v3

    iput v10, v0, Ln1/b;->m:F

    goto :goto_5

    :cond_9
    iget v10, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, v3

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v3

    add-float/2addr v3, v10

    iput v3, v0, Ln1/b;->m:F

    goto :goto_5

    :cond_a
    iget v3, v12, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v0, Ln1/b;->m:F

    :goto_5
    and-int v3, v8, v16

    if-eq v3, v14, :cond_c

    if-eq v3, v13, :cond_b

    iget v3, v12, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, v0, Ln1/b;->o:F

    goto :goto_6

    :cond_b
    iget v3, v12, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v7

    iput v3, v0, Ln1/b;->o:F

    goto :goto_6

    :cond_c
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    div-float v7, v7, v17

    sub-float/2addr v3, v7

    iput v3, v0, Ln1/b;->o:F

    :goto_6
    iget-object v3, v0, Ln1/b;->z:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    iput-object v3, v0, Ln1/b;->z:Landroid/graphics/Bitmap;

    :cond_d
    invoke-virtual {v0, v2}, Ln1/b;->j(F)V

    iget v2, v0, Ln1/b;->c:F

    iget v3, v12, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v7, v9, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget-object v8, v0, Ln1/b;->G:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v7, v2, v8}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget-object v7, v0, Ln1/b;->f:Landroid/graphics/RectF;

    iput v3, v7, Landroid/graphics/RectF;->left:F

    iget v3, v0, Ln1/b;->m:F

    iget v8, v0, Ln1/b;->n:F

    iget-object v10, v0, Ln1/b;->G:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v8, v2, v10}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v7, Landroid/graphics/RectF;->top:F

    iget v3, v12, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v8, v9, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget-object v10, v0, Ln1/b;->G:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v8, v2, v10}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v7, Landroid/graphics/RectF;->right:F

    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    iget-object v9, v0, Ln1/b;->G:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v8, v2, v9}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v7, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Ln1/b;->o:F

    iget v7, v0, Ln1/b;->p:F

    iget-object v8, v0, Ln1/b;->G:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v7, v2, v8}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v0, Ln1/b;->q:F

    iget v3, v0, Ln1/b;->m:F

    iget v7, v0, Ln1/b;->n:F

    iget-object v8, v0, Ln1/b;->G:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v7, v2, v8}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v0, Ln1/b;->r:F

    iget v3, v0, Ln1/b;->i:F

    iget v7, v0, Ln1/b;->j:F

    iget-object v8, v0, Ln1/b;->H:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v7, v2, v8}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    invoke-virtual {v0, v3}, Ln1/b;->j(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v7, v3, v2

    sget-object v8, Lc1/a;->b:Lm0/a;

    invoke-static {v5, v3, v7, v8}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    sget-object v7, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lc0/a0;->k(Landroid/view/View;)V

    invoke-static {v3, v5, v2, v8}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    invoke-static {v1}, Lc0/a0;->k(Landroid/view/View;)V

    iget-object v3, v0, Ln1/b;->l:Landroid/content/res/ColorStateList;

    iget-object v7, v0, Ln1/b;->k:Landroid/content/res/ColorStateList;

    if-eq v3, v7, :cond_e

    invoke-virtual {v0, v7}, Ln1/b;->d(Landroid/content/res/ColorStateList;)I

    move-result v3

    iget-object v7, v0, Ln1/b;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v7}, Ln1/b;->d(Landroid/content/res/ColorStateList;)I

    move-result v7

    invoke-static {v3, v7, v2}, Ln1/b;->a(IIF)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    :cond_e
    invoke-virtual {v0, v3}, Ln1/b;->d(Landroid/content/res/ColorStateList;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_7
    iget v3, v0, Ln1/b;->I:F

    invoke-static {v3, v5, v2, v5}, Landroidx/activity/result/b;->d(FFFF)F

    move-result v3

    iget v7, v0, Ln1/b;->J:F

    invoke-static {v7, v5, v2, v5}, Landroidx/activity/result/b;->d(FFFF)F

    move-result v7

    iget v8, v0, Ln1/b;->K:F

    invoke-static {v8, v5, v2, v5}, Landroidx/activity/result/b;->d(FFFF)F

    move-result v5

    iget-object v8, v0, Ln1/b;->L:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v8}, Ln1/b;->d(Landroid/content/res/ColorStateList;)I

    move-result v8

    invoke-static {v6, v8, v2}, Ln1/b;->a(IIF)I

    move-result v2

    invoke-virtual {v4, v3, v7, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-static {v1}, Lc0/a0;->k(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method public final h(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Ln1/b;->l:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Ln1/b;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Ln1/b;->g()V

    :cond_0
    return-void
.end method

.method public final i(F)V
    .locals 8

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    move p1, v2

    :cond_1
    :goto_0
    iget v1, p0, Ln1/b;->c:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_3

    iput p1, p0, Ln1/b;->c:F

    iget-object v1, p0, Ln1/b;->d:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Ln1/b;->e:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Ln1/b;->G:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v5, p1, v6}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget-object v5, p0, Ln1/b;->f:Landroid/graphics/RectF;

    iput v3, v5, Landroid/graphics/RectF;->left:F

    iget v3, p0, Ln1/b;->m:F

    iget v6, p0, Ln1/b;->n:F

    iget-object v7, p0, Ln1/b;->G:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v6, p1, v7}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v5, Landroid/graphics/RectF;->top:F

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v6, v4, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget-object v7, p0, Ln1/b;->G:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v6, p1, v7}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v5, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v4, p0, Ln1/b;->G:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v3, p1, v4}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v5, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Ln1/b;->o:F

    iget v3, p0, Ln1/b;->p:F

    iget-object v4, p0, Ln1/b;->G:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v3, p1, v4}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, p0, Ln1/b;->q:F

    iget v1, p0, Ln1/b;->m:F

    iget v3, p0, Ln1/b;->n:F

    iget-object v4, p0, Ln1/b;->G:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v3, p1, v4}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, p0, Ln1/b;->r:F

    iget v1, p0, Ln1/b;->i:F

    iget v3, p0, Ln1/b;->j:F

    iget-object v4, p0, Ln1/b;->H:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v3, p1, v4}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    invoke-virtual {p0, v1}, Ln1/b;->j(F)V

    sub-float v1, v2, p1

    sget-object v3, Lc1/a;->b:Lm0/a;

    invoke-static {v0, v2, v1, v3}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    sget-object v1, Lc0/p0;->a:Ljava/util/WeakHashMap;

    iget-object v1, p0, Ln1/b;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v1}, Lc0/a0;->k(Landroid/view/View;)V

    invoke-static {v2, v0, p1, v3}, Ln1/b;->e(FFFLandroid/animation/TimeInterpolator;)F

    invoke-static {v1}, Lc0/a0;->k(Landroid/view/View;)V

    iget-object v2, p0, Ln1/b;->l:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Ln1/b;->k:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Ln1/b;->E:Landroid/text/TextPaint;

    if-eq v2, v3, :cond_2

    invoke-virtual {p0, v3}, Ln1/b;->d(Landroid/content/res/ColorStateList;)I

    move-result v2

    iget-object v3, p0, Ln1/b;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v3}, Ln1/b;->d(Landroid/content/res/ColorStateList;)I

    move-result v3

    invoke-static {v2, v3, p1}, Ln1/b;->a(IIF)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Ln1/b;->d(Landroid/content/res/ColorStateList;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget v2, p0, Ln1/b;->I:F

    invoke-static {v2, v0, p1, v0}, Landroidx/activity/result/b;->d(FFFF)F

    move-result v2

    iget v3, p0, Ln1/b;->J:F

    invoke-static {v3, v0, p1, v0}, Landroidx/activity/result/b;->d(FFFF)F

    move-result v3

    iget v5, p0, Ln1/b;->K:F

    invoke-static {v5, v0, p1, v0}, Landroidx/activity/result/b;->d(FFFF)F

    move-result v0

    iget-object v5, p0, Ln1/b;->L:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v5}, Ln1/b;->d(Landroid/content/res/ColorStateList;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5, p1}, Ln1/b;->a(IIF)I

    move-result p1

    invoke-virtual {v4, v2, v3, v0, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-static {v1}, Lc0/a0;->k(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final j(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln1/b;->c(F)V

    sget-object p1, Lc0/p0;->a:Ljava/util/WeakHashMap;

    iget-object p1, p0, Ln1/b;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p1}, Lc0/a0;->k(Landroid/view/View;)V

    return-void
.end method
