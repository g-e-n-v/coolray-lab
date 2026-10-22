.class public final Lw0/bd;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/ex/auto/MainActivity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "drive_regen"

    iput-object p1, p0, Lw0/bd;->a:Ljava/lang/String;

    const/16 p1, 0x64

    iput p1, p0, Lw0/bd;->b:I

    iput p1, p0, Lw0/bd;->c:I

    iput p1, p0, Lw0/bd;->d:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lw0/bd;->e:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, 0x3fb33333    # 1.4f

    invoke-virtual {p0, v1}, Lw0/bd;->b(F)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iput-object p1, p0, Lw0/bd;->f:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iput-object p1, p0, Lw0/bd;->g:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const-string p1, "sans-serif-medium"

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput-object v0, p0, Lw0/bd;->h:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lw0/bd;->i:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/RectF;
    .locals 6

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {p0, v1}, Lw0/bd;->b(F)F

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {p0, v3}, Lw0/bd;->b(F)F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v1}, Lw0/bd;->b(F)F

    move-result v1

    sub-float/2addr v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v3}, Lw0/bd;->b(F)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-direct {v0, v2, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final b(F)F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public final c(Landroid/graphics/Canvas;IIIZ)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lw0/bd;->a()Landroid/graphics/RectF;

    move-result-object v8

    if-eqz p5, :cond_0

    iget v1, v8, Landroid/graphics/RectF;->top:F

    :goto_0
    move v9, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v2}, Lw0/bd;->b(F)F

    move-result v2

    sub-float/2addr v1, v2

    goto :goto_0

    :goto_1
    const-string v1, "Rosto"

    const-string v2, "P\u00e9s"

    const-string v3, "Vidro"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v0, v2}, Lw0/bd;->b(F)F

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v11, 0x2

    int-to-float v3, v11

    mul-float/2addr v3, v10

    sub-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float v12, v2, v3

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    move v1, v14

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v15, 0x0

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v16, v1, 0x1

    if-ltz v1, :cond_2

    check-cast v2, Ljava/lang/String;

    move-object v4, v2

    new-instance v2, Landroid/graphics/RectF;

    iget v5, v8, Landroid/graphics/RectF;->left:F

    int-to-float v6, v1

    add-float v7, v12, v10

    mul-float/2addr v7, v6

    add-float/2addr v7, v5

    add-float v5, v7, v12

    const/high16 v6, 0x42100000    # 36.0f

    invoke-virtual {v0, v6}, Lw0/bd;->b(F)F

    move-result v6

    add-float/2addr v6, v9

    invoke-direct {v2, v7, v9, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-ne v1, v3, :cond_1

    move-object v1, v4

    move v4, v3

    move-object v3, v1

    :goto_3
    move-object/from16 v1, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    goto :goto_4

    :cond_1
    move-object v3, v4

    move v4, v14

    goto :goto_3

    :goto_4
    invoke-virtual/range {v0 .. v7}, Lw0/bd;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;ZIII)V

    move/from16 v1, v16

    goto :goto_2

    :cond_2
    invoke-static {}, Ly1/h;->W()V

    throw v15

    :cond_3
    if-eqz p5, :cond_6

    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {v0, v1}, Lw0/bd;->b(F)F

    move-result v1

    add-float/2addr v9, v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x3

    int-to-float v2, v2

    mul-float/2addr v2, v10

    sub-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float v12, v1, v2

    const-string v1, "2"

    const-string v2, "3"

    const-string v4, "0"

    const-string v5, "1"

    filled-new-array {v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v1, v14

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v16, v1, 0x1

    if-ltz v1, :cond_5

    check-cast v2, Ljava/lang/String;

    move v4, v3

    move-object v3, v2

    new-instance v2, Landroid/graphics/RectF;

    iget v5, v8, Landroid/graphics/RectF;->left:F

    int-to-float v6, v1

    add-float v7, v12, v10

    mul-float/2addr v7, v6

    add-float/2addr v7, v5

    add-float v5, v7, v12

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-virtual {v0, v6}, Lw0/bd;->b(F)F

    move-result v6

    add-float/2addr v6, v9

    invoke-direct {v2, v7, v9, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move/from16 v17, v4

    if-ne v1, v11, :cond_4

    :goto_6
    move-object/from16 v1, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    goto :goto_7

    :cond_4
    move v4, v14

    goto :goto_6

    :goto_7
    invoke-virtual/range {v0 .. v7}, Lw0/bd;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;ZIII)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v3, v17

    goto :goto_5

    :cond_5
    invoke-static {}, Ly1/h;->W()V

    throw v15

    :cond_6
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;ZIII)V
    .locals 1

    if-eqz p4, :cond_0

    move p5, p6

    :cond_0
    iget-object p6, p0, Lw0/bd;->e:Landroid/graphics/Paint;

    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p5, 0x41100000    # 9.0f

    invoke-virtual {p0, p5}, Lw0/bd;->b(F)F

    move-result v0

    invoke-virtual {p0, p5}, Lw0/bd;->b(F)F

    move-result p5

    invoke-virtual {p1, p2, v0, p5, p6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 p5, 0x41280000    # 10.5f

    invoke-virtual {p0, p5}, Lw0/bd;->b(F)F

    move-result p5

    iget-object p6, p0, Lw0/bd;->g:Landroid/graphics/Paint;

    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p4, :cond_1

    const/4 p7, -0x1

    :cond_1
    invoke-virtual {p6, p7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-virtual {p6}, Landroid/graphics/Paint;->ascent()F

    move-result p5

    invoke-virtual {p6}, Landroid/graphics/Paint;->descent()F

    move-result p7

    add-float/2addr p7, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p7, p5

    sub-float/2addr p2, p7

    invoke-virtual {p1, p3, p4, p2, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getBackgroundPercent()I
    .locals 1

    iget v0, p0, Lw0/bd;->c:I

    return v0
.end method

.method public final getGlobalBackgroundPercent()I
    .locals 1

    iget v0, p0, Lw0/bd;->d:I

    return v0
.end method

.method public final getSizePercent()I
    .locals 1

    iget v0, p0, Lw0/bd;->b:I

    return v0
.end method

.method public final getWidgetKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw0/bd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "canvas"

    invoke-static {v1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_12

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050082

    invoke-static {v2, v3}, Landroidx/core/content/c;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050083

    invoke-static {v3, v4}, Landroidx/core/content/c;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05007d

    invoke-static {v3, v4}, Landroidx/core/content/c;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f050087

    invoke-static {v4, v6}, Landroidx/core/content/c;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f050089

    invoke-static {v6, v7}, Landroidx/core/content/c;->a(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f05007e

    invoke-static {v6, v8}, Landroidx/core/content/c;->a(Landroid/content/Context;I)I

    move-result v6

    new-instance v8, Landroid/graphics/RectF;

    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {v0, v9}, Lw0/bd;->b(F)F

    move-result v10

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-virtual {v0, v11}, Lw0/bd;->b(F)F

    move-result v12

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v0, v9}, Lw0/bd;->b(F)F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v0, v11}, Lw0/bd;->b(F)F

    move-result v15

    sub-float/2addr v14, v15

    invoke-direct {v8, v10, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v10, v5

    iget-object v5, v0, Lw0/bd;->e:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lw0/bd;->c:I

    iget v12, v0, Lw0/bd;->d:I

    mul-int/2addr v2, v12

    int-to-float v2, v2

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v2, v12

    const v12, 0x40233333    # 2.55f

    mul-float/2addr v2, v12

    float-to-int v2, v2

    const/4 v12, 0x0

    const/16 v13, 0xff

    invoke-static {v2, v12, v13}, Lk1/a;->k(III)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v2}, Lw0/bd;->b(F)F

    move-result v14

    invoke-virtual {v0, v2}, Lw0/bd;->b(F)F

    move-result v15

    invoke-virtual {v1, v8, v14, v15, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v14, v0, Lw0/bd;->f:Landroid/graphics/Paint;

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v15, 0x2d

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v14, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0, v2}, Lw0/bd;->b(F)F

    move-result v12

    invoke-virtual {v0, v2}, Lw0/bd;->b(F)F

    move-result v2

    invoke-virtual {v1, v8, v12, v2, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lw0/bd;->b:I

    add-int/lit8 v2, v2, -0x32

    int-to-float v2, v2

    const/high16 v8, 0x43160000    # 150.0f

    div-float/2addr v2, v8

    const v8, 0x3e8f5c29    # 0.28f

    mul-float/2addr v2, v8

    const v8, 0x3f3851ec    # 0.72f

    add-float/2addr v2, v8

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v2, v8, v12}, Lk1/a;->j(FFF)F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v8, v12

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v12

    invoke-virtual {v1, v2, v2, v8, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, v0, Lw0/bd;->g:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, v0, Lw0/bd;->h:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lw0/bd;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v13

    move/from16 v16, v12

    const/high16 v18, 0x40400000    # 3.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/16 v20, 0x0

    const/4 v12, 0x2

    sparse-switch v13, :sswitch_data_0

    goto/16 :goto_11

    :sswitch_0
    const-string v2, "heating"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_11

    :cond_1
    invoke-virtual {v0}, Lw0/bd;->a()Landroid/graphics/RectF;

    move-result-object v8

    const-string v2, "Traseiro"

    const-string v3, "Bancos"

    const-string v4, "Volante"

    const-string v5, "Frente"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly1/h;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v11}, Lw0/bd;->b(F)F

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v9

    div-float v11, v3, v16

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-virtual {v0, v3}, Lw0/bd;->b(F)F

    move-result v12

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v14, v2, 0x1

    if-ltz v2, :cond_4

    check-cast v3, Ljava/lang/String;

    rem-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v2, 0x2

    iget v15, v8, Landroid/graphics/RectF;->left:F

    int-to-float v4, v4

    add-float v16, v11, v9

    mul-float v16, v16, v4

    add-float v4, v16, v15

    iget v15, v8, Landroid/graphics/RectF;->top:F

    int-to-float v5, v5

    add-float v16, v12, v9

    mul-float v16, v16, v5

    add-float v5, v16, v15

    new-instance v15, Landroid/graphics/RectF;

    add-float v0, v4, v11

    add-float v1, v5, v12

    invoke-direct {v15, v4, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz v2, :cond_3

    const/4 v0, 0x3

    if-ne v2, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v10

    move-object v2, v15

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    goto :goto_1

    :goto_3
    invoke-virtual/range {v0 .. v7}, Lw0/bd;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;ZIII)V

    move v10, v5

    move v2, v14

    goto :goto_0

    :cond_4
    move-object v6, v0

    invoke-static {}, Ly1/h;->W()V

    throw v20

    :cond_5
    move-object v6, v0

    goto/16 :goto_11

    :sswitch_1
    move v15, v6

    move-object v6, v0

    const-string v0, "drive_regen"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_11

    :cond_6
    invoke-virtual {v6}, Lw0/bd;->a()Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v6, v9}, Lw0/bd;->b(F)F

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v0, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v9}, Lw0/bd;->b(F)F

    move-result v4

    add-float/2addr v4, v2

    const-string v2, "Condu\u00e7\u00e3o"

    invoke-virtual {v1, v2, v0, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v6, v2}, Lw0/bd;->b(F)F

    move-result v4

    add-float/2addr v4, v0

    iget v0, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v9}, Lw0/bd;->b(F)F

    move-result v2

    add-float/2addr v2, v0

    const-string v0, "Regenera\u00e7\u00e3o"

    invoke-virtual {v1, v0, v4, v2, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v6, v2}, Lw0/bd;->b(F)F

    move-result v3

    sub-float/2addr v0, v3

    iget v3, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v6, v2}, Lw0/bd;->b(F)F

    move-result v2

    add-float/2addr v2, v4

    iget v4, v11, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v29, v1

    move v1, v0

    move-object/from16 v0, v29

    move/from16 v29, v3

    move v3, v2

    move/from16 v2, v29

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v11, Landroid/graphics/RectF;->top:F

    const/high16 v1, 0x41b80000    # 23.0f

    invoke-virtual {v6, v1}, Lw0/bd;->b(F)F

    move-result v1

    add-float v8, v1, v0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {v6, v0}, Lw0/bd;->b(F)F

    move-result v9

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v0, v0, v16

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v6, v2}, Lw0/bd;->b(F)F

    move-result v1

    sub-float/2addr v0, v1

    int-to-float v1, v12

    mul-float/2addr v1, v9

    sub-float/2addr v0, v1

    div-float v12, v0, v18

    const-string v0, "Conforto"

    const-string v1, "Sport"

    const-string v2, "Eco"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/h;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v0, 0x0

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v14, 0x41f00000    # 30.0f

    if-eqz v1, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v16, v0, 0x1

    if-ltz v0, :cond_8

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    new-instance v2, Landroid/graphics/RectF;

    iget v1, v11, Landroid/graphics/RectF;->left:F

    int-to-float v4, v0

    add-float v5, v12, v9

    mul-float/2addr v5, v4

    add-float/2addr v5, v1

    add-float v1, v5, v12

    invoke-virtual {v6, v14}, Lw0/bd;->b(F)F

    move-result v4

    add-float/2addr v4, v8

    invoke-direct {v2, v5, v8, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v1, p1

    move-object v0, v6

    move v5, v10

    move v6, v15

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    :goto_6
    invoke-virtual/range {v0 .. v7}, Lw0/bd;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;ZIII)V

    move v10, v5

    move v15, v6

    move-object v6, v0

    move/from16 v0, v16

    goto :goto_4

    :cond_8
    move-object v0, v6

    invoke-static {}, Ly1/h;->W()V

    throw v20

    :cond_9
    move-object v0, v6

    move v5, v10

    move v6, v15

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v0, v2}, Lw0/bd;->b(F)F

    move-result v2

    add-float v10, v2, v1

    const-string v1, "M\u00e9dia"

    const-string v2, "Alta"

    const-string v3, "Baixa"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ly1/h;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v13, v1, 0x1

    if-ltz v1, :cond_b

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v4, v1

    add-float v15, v12, v9

    mul-float/2addr v15, v4

    add-float/2addr v15, v10

    add-float v4, v15, v12

    invoke-virtual {v0, v14}, Lw0/bd;->b(F)F

    move-result v16

    add-float v14, v16, v8

    invoke-direct {v2, v15, v8, v4, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v15, 0x1

    if-ne v1, v15, :cond_a

    move v4, v15

    :goto_8
    move-object/from16 v1, p1

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    goto :goto_8

    :goto_9
    invoke-virtual/range {v0 .. v7}, Lw0/bd;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;ZIII)V

    const/high16 v14, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    move v1, v13

    goto :goto_7

    :cond_b
    invoke-static {}, Ly1/h;->W()V

    throw v20

    :sswitch_2
    move v5, v10

    const-string v0, "vent"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_11

    :cond_c
    move v2, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lw0/bd;->c(Landroid/graphics/Canvas;IIIZ)V

    goto/16 :goto_11

    :sswitch_3
    move v5, v10

    const-string v1, "temp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_11

    :cond_d
    invoke-virtual {v0}, Lw0/bd;->a()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    new-instance v2, Landroid/graphics/RectF;

    iget v1, v9, Landroid/graphics/RectF;->left:F

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v0, v11}, Lw0/bd;->b(F)F

    move-result v3

    sub-float v3, v10, v3

    iget v4, v9, Landroid/graphics/RectF;->left:F

    const/high16 v12, 0x42380000    # 46.0f

    invoke-virtual {v0, v12}, Lw0/bd;->b(F)F

    move-result v13

    add-float/2addr v13, v4

    invoke-virtual {v0, v11}, Lw0/bd;->b(F)F

    move-result v4

    add-float/2addr v4, v10

    invoke-direct {v2, v1, v3, v13, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const-string v3, "\u2212"

    const/4 v4, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lw0/bd;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;ZIII)V

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v0, v2}, Lw0/bd;->b(F)F

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v4

    add-float/2addr v4, v3

    div-float v4, v4, v16

    sub-float v3, v10, v4

    const-string v4, "22\u00b0"

    invoke-virtual {v1, v4, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/RectF;

    iget v3, v9, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v12}, Lw0/bd;->b(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v11}, Lw0/bd;->b(F)F

    move-result v4

    sub-float v4, v10, v4

    iget v8, v9, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v11}, Lw0/bd;->b(F)F

    move-result v9

    add-float/2addr v9, v10

    invoke-direct {v2, v3, v4, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const-string v3, "+"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v7}, Lw0/bd;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;ZIII)V

    goto/16 :goto_11

    :sswitch_4
    move-object v3, v5

    move v5, v10

    const-string v8, "apps"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_11

    :cond_e
    invoke-virtual {v0}, Lw0/bd;->a()Landroid/graphics/RectF;

    move-result-object v4

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v0, v8}, Lw0/bd;->b(F)F

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v10

    int-to-float v11, v12

    mul-float/2addr v11, v8

    sub-float/2addr v10, v11

    div-float v10, v10, v18

    const/high16 v12, 0x42180000    # 38.0f

    invoke-virtual {v0, v12}, Lw0/bd;->b(F)F

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/4 v12, 0x3

    int-to-float v12, v12

    mul-float/2addr v12, v10

    add-float/2addr v12, v11

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    div-float v12, v12, v16

    sub-float/2addr v11, v12

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v4, v10

    div-float v12, v8, v16

    sub-float/2addr v4, v12

    const/4 v12, 0x0

    :goto_a
    const/4 v13, 0x6

    if-ge v12, v13, :cond_18

    rem-int/lit8 v13, v12, 0x3

    int-to-float v13, v13

    add-float v14, v10, v8

    mul-float/2addr v13, v14

    add-float/2addr v13, v11

    div-int/lit8 v15, v12, 0x3

    int-to-float v15, v15

    mul-float/2addr v15, v14

    add-float/2addr v15, v4

    if-nez v12, :cond_f

    move v14, v6

    goto :goto_b

    :cond_f
    move v14, v5

    :goto_b
    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v14, Landroid/graphics/RectF;

    add-float v9, v13, v10

    move/from16 v17, v4

    add-float v4, v15, v10

    invoke-direct {v14, v13, v15, v9, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v0, v4}, Lw0/bd;->b(F)F

    move-result v9

    move/from16 v21, v5

    invoke-virtual {v0, v4}, Lw0/bd;->b(F)F

    move-result v5

    invoke-virtual {v1, v14, v9, v5, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v0, v4}, Lw0/bd;->b(F)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    if-nez v12, :cond_10

    const/4 v4, -0x1

    goto :goto_c

    :cond_10
    move v4, v7

    :goto_c
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    div-float v5, v10, v16

    add-float/2addr v13, v5

    add-float/2addr v15, v5

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v9

    add-float/2addr v9, v5

    div-float v9, v9, v16

    sub-float/2addr v15, v9

    invoke-virtual {v1, v4, v13, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move/from16 v4, v17

    move/from16 v5, v21

    const/high16 v9, 0x41400000    # 12.0f

    goto :goto_a

    :sswitch_5
    move-object v3, v5

    move/from16 v21, v10

    const/4 v15, 0x1

    const-string v2, "fan"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_11

    :cond_11
    invoke-virtual {v0}, Lw0/bd;->a()Landroid/graphics/RectF;

    move-result-object v2

    iget v4, v2, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x42280000    # 42.0f

    invoke-virtual {v0, v5}, Lw0/bd;->b(F)F

    move-result v5

    add-float/2addr v5, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move/from16 v4, v18

    invoke-virtual {v0, v4}, Lw0/bd;->b(F)F

    move-result v4

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v4, 0x0

    :goto_d
    const/high16 v9, 0x40a00000    # 5.0f

    const/4 v10, 0x4

    if-ge v4, v10, :cond_12

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v10, v4

    const/high16 v13, 0x42b40000    # 90.0f

    mul-float/2addr v10, v13

    invoke-virtual {v1, v10, v5, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v10, v0, Lw0/bd;->i:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v0, v9}, Lw0/bd;->b(F)F

    move-result v9

    sub-float v9, v8, v9

    invoke-virtual {v10, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v9, 0x40e00000    # 7.0f

    invoke-virtual {v0, v9}, Lw0/bd;->b(F)F

    move-result v13

    add-float v23, v13, v5

    const/high16 v9, 0x41d00000    # 26.0f

    invoke-virtual {v0, v9}, Lw0/bd;->b(F)F

    move-result v9

    sub-float v24, v8, v9

    const/high16 v9, 0x41b00000    # 22.0f

    invoke-virtual {v0, v9}, Lw0/bd;->b(F)F

    move-result v9

    add-float v25, v9, v5

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v0, v9}, Lw0/bd;->b(F)F

    move-result v9

    sub-float v26, v8, v9

    const/high16 v13, 0x41200000    # 10.0f

    invoke-virtual {v0, v13}, Lw0/bd;->b(F)F

    move-result v9

    add-float v27, v9, v5

    const/high16 v9, 0x40800000    # 4.0f

    invoke-virtual {v0, v9}, Lw0/bd;->b(F)F

    move-result v16

    sub-float v28, v8, v16

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v28}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v9, v22

    invoke-virtual {v1, v9, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_12
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v9}, Lw0/bd;->b(F)F

    move-result v4

    invoke-virtual {v1, v5, v8, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x42ae0000    # 87.0f

    invoke-virtual {v0, v4}, Lw0/bd;->b(F)F

    move-result v4

    add-float v9, v4, v3

    invoke-virtual {v0, v11}, Lw0/bd;->b(F)F

    move-result v10

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v9

    const/4 v3, 0x3

    int-to-float v3, v3

    mul-float/2addr v3, v10

    sub-float/2addr v2, v3

    const/high16 v19, 0x40800000    # 4.0f

    div-float v11, v2, v19

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "0"

    const-string v5, "1"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly1/h;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v2, 0x0

    :goto_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v14, v2, 0x1

    if-ltz v2, :cond_14

    check-cast v3, Ljava/lang/String;

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    add-float v16, v11, v10

    mul-float v16, v16, v5

    add-float v5, v16, v9

    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v0, v15}, Lw0/bd;->b(F)F

    move-result v16

    sub-float v12, v8, v16

    add-float v1, v5, v11

    invoke-virtual {v0, v15}, Lw0/bd;->b(F)F

    move-result v16

    add-float v15, v16, v8

    invoke-direct {v4, v5, v12, v1, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v12, 0x2

    if-ne v2, v12, :cond_13

    move-object v2, v4

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v1, p1

    move/from16 v5, v21

    goto :goto_10

    :cond_13
    move-object v2, v4

    const/4 v4, 0x0

    goto :goto_f

    :goto_10
    invoke-virtual/range {v0 .. v7}, Lw0/bd;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;ZIII)V

    move v15, v6

    move-object v6, v0

    move-object/from16 v1, p1

    move/from16 v21, v5

    move v2, v14

    move v6, v15

    const/4 v15, 0x1

    goto :goto_e

    :cond_14
    move-object v6, v0

    invoke-static {}, Ly1/h;->W()V

    throw v20

    :sswitch_6
    move-object v3, v5

    move v15, v6

    move-object v6, v0

    move v0, v7

    move v7, v10

    const-string v1, "volume"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_11

    :cond_15
    invoke-virtual {v6}, Lw0/bd;->a()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    iget v1, v8, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v6, v2}, Lw0/bd;->b(F)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v10, 0x40e00000    # 7.0f

    invoke-virtual {v6, v10}, Lw0/bd;->b(F)F

    move-result v0

    sub-float v2, v9, v0

    const/high16 v11, 0x41100000    # 9.0f

    invoke-virtual {v6, v11}, Lw0/bd;->b(F)F

    move-result v0

    add-float/2addr v0, v1

    invoke-virtual {v6, v10}, Lw0/bd;->b(F)F

    move-result v4

    add-float/2addr v4, v9

    move-object v5, v3

    move v3, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v2, v1

    move-object v1, v0

    iget-object v0, v6, Lw0/bd;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v6, v11}, Lw0/bd;->b(F)F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {v6, v10}, Lw0/bd;->b(F)F

    move-result v4

    sub-float v4, v9, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v6, v3}, Lw0/bd;->b(F)F

    move-result v4

    add-float/2addr v4, v2

    const/high16 v10, 0x41880000    # 17.0f

    invoke-virtual {v6, v10}, Lw0/bd;->b(F)F

    move-result v11

    sub-float v11, v9, v11

    invoke-virtual {v0, v4, v11}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v3}, Lw0/bd;->b(F)F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {v6, v10}, Lw0/bd;->b(F)F

    move-result v4

    add-float/2addr v4, v9

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v11, 0x41100000    # 9.0f

    invoke-virtual {v6, v11}, Lw0/bd;->b(F)F

    move-result v3

    add-float/2addr v3, v2

    const/high16 v10, 0x40e00000    # 7.0f

    invoke-virtual {v6, v10}, Lw0/bd;->b(F)F

    move-result v4

    add-float/2addr v4, v9

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {v1, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {v6, v0}, Lw0/bd;->b(F)F

    move-result v0

    add-float/2addr v0, v2

    iget v2, v8, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/RectF;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v6, v4}, Lw0/bd;->b(F)F

    move-result v7

    sub-float v7, v9, v7

    invoke-virtual {v6, v4}, Lw0/bd;->b(F)F

    move-result v8

    add-float/2addr v8, v9

    invoke-direct {v3, v0, v7, v2, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v4}, Lw0/bd;->b(F)F

    move-result v7

    invoke-virtual {v6, v4}, Lw0/bd;->b(F)F

    move-result v8

    invoke-virtual {v1, v3, v7, v8, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {v5, v15}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v6, v4}, Lw0/bd;->b(F)F

    move-result v7

    sub-float v7, v9, v7

    const v8, 0x3f1eb852    # 0.62f

    invoke-static {v2, v0, v8, v0}, Landroidx/activity/result/b;->d(FFFF)F

    move-result v2

    invoke-virtual {v6, v4}, Lw0/bd;->b(F)F

    move-result v8

    add-float/2addr v8, v9

    invoke-direct {v3, v0, v7, v2, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v4}, Lw0/bd;->b(F)F

    move-result v0

    invoke-virtual {v6, v4}, Lw0/bd;->b(F)F

    move-result v4

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v11, 0x41100000    # 9.0f

    invoke-virtual {v6, v11}, Lw0/bd;->b(F)F

    move-result v0

    invoke-virtual {v1, v2, v9, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    :sswitch_7
    move v15, v6

    move-object v6, v0

    move v0, v7

    move v7, v10

    const-string v3, "sysinfo"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_11

    :cond_16
    invoke-virtual {v6}, Lw0/bd;->a()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v6, v4}, Lw0/bd;->b(F)F

    move-result v7

    invoke-virtual {v6, v4}, Lw0/bd;->b(F)F

    move-result v9

    invoke-virtual {v1, v3, v7, v9, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v6, v5}, Lw0/bd;->b(F)F

    move-result v5

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    const/high16 v10, 0x40e00000    # 7.0f

    invoke-virtual {v6, v10}, Lw0/bd;->b(F)F

    move-result v9

    sub-float/2addr v7, v9

    const-string v9, "CPU 42%"

    invoke-virtual {v1, v9, v5, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v6, v4}, Lw0/bd;->b(F)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v6, v4}, Lw0/bd;->b(F)F

    move-result v4

    add-float/2addr v4, v3

    const-string v3, "58 \u00b0C  \u2022  Central"

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_11

    :sswitch_8
    move v15, v6

    move-object v6, v0

    move v0, v7

    move v7, v10

    const-string v2, "vent_fan"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_11

    :cond_17
    const/4 v5, 0x1

    move v4, v0

    move-object v0, v6

    move v2, v7

    move v3, v15

    invoke-virtual/range {v0 .. v5}, Lw0/bd;->c(Landroid/graphics/Canvas;IIIZ)V

    :cond_18
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_19
    :goto_12
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d1b7b77 -> :sswitch_8
        -0x67930b05 -> :sswitch_7
        -0x305518e6 -> :sswitch_6
        0x18b13 -> :sswitch_5
        0x2dca72 -> :sswitch_4
        0x3643d4 -> :sswitch_3
        0x372cb5 -> :sswitch_2
        0x2b4e1d48 -> :sswitch_1
        0x2f6ec3f2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setBackgroundPercent(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lk1/a;->k(III)I

    move-result p1

    iput p1, p0, Lw0/bd;->c:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setGlobalBackgroundPercent(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lk1/a;->k(III)I

    move-result p1

    iput p1, p0, Lw0/bd;->d:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setSizePercent(I)V
    .locals 2

    const/16 v0, 0x32

    const/16 v1, 0xc8

    invoke-static {p1, v0, v1}, Lk1/a;->k(III)I

    move-result p1

    iput p1, p0, Lw0/bd;->b:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setWidgetKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lw0/bd;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
