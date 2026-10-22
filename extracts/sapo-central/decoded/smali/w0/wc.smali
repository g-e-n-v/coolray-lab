.class public final Lw0/wc;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/RectF;

.field public e:Ljava/lang/String;

.field public f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/ex/auto/MainActivity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lw0/wc;->a:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iput-object p1, p0, Lw0/wc;->b:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lw0/wc;->c:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lw0/wc;->d:Landroid/graphics/RectF;

    const-string p1, ""

    iput-object p1, p0, Lw0/wc;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lw0/wc;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw0/wc;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "canvas"

    invoke-static {v1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gtz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    const/4 v9, 0x2

    div-int/2addr v4, v9

    add-int/2addr v4, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    div-int/2addr v5, v9

    add-int/2addr v5, v3

    iget-object v3, v0, Lw0/wc;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    int-to-float v6, v2

    const v7, 0x3d75c28f    # 0.06f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int v7, v4, v6

    add-int v8, v5, v6

    add-int/2addr v4, v2

    sub-int/2addr v4, v6

    add-int/2addr v5, v2

    sub-int/2addr v5, v6

    invoke-virtual {v3, v7, v8, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v4

    int-to-float v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v2, v0, Lw0/wc;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v10, "com.geely.connadaptorlogger"

    const-string v11, "org.bromite.chromium"

    const-string v12, "br.com.central.dualdashcam"

    const-string v13, "com.waze"

    const-string v14, "com.amazon.amazonvideo.livingroom"

    const-string v15, "app.revanced.android.gms"

    const-string v4, "org.videolan.vlc"

    const-string v5, "com.amaze.filemanager"

    const-string v6, "org.mozilla.firefox"

    const-string v7, "com.timhss.geelybattery"

    const-string v16, "#7656D6"

    const-string v8, "com.jazibkhan.equalizer"

    const-string v9, "com.geely.eisapo"

    move/from16 v17, v3

    const-string v3, "com.disney.disneyplus"

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v2, "#173AA8"

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const-string v2, "#A4C95A"

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    move-object/from16 v2, v16

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const-string v2, "#19B84A"

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const-string v2, "#562C82"

    goto :goto_1

    :sswitch_5
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const-string v2, "#3478F6"

    goto :goto_1

    :sswitch_6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const-string v2, "#253447"

    goto :goto_1

    :sswitch_7
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const-string v2, "#F3F5F6"

    goto :goto_1

    :sswitch_8
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const-string v2, "#132B3A"

    goto :goto_1

    :sswitch_9
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    const-string v2, "#2DB8E8"

    goto :goto_1

    :sswitch_a
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    const-string v2, "#425B72"

    goto :goto_1

    :sswitch_b
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    :cond_d
    const-string v2, "#4285F4"

    goto :goto_1

    :sswitch_c
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :goto_0
    const-string v2, "#66717A"

    goto :goto_1

    :cond_e
    const-string v2, "#626C76"

    :goto_1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v17, v8

    iget-object v8, v0, Lw0/wc;->a:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object v2, v6

    const/high16 v6, 0x41b80000    # 23.0f

    move-object/from16 v18, v7

    const/high16 v7, 0x41b80000    # 23.0f

    move-object/from16 v19, v2

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v20, v3

    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v21, v4

    const/high16 v4, 0x42c40000    # 98.0f

    move-object/from16 v22, v5

    const/high16 v5, 0x42c40000    # 98.0f

    move-object/from16 v23, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v10

    move-object/from16 v10, v21

    move-object/from16 v21, v15

    move-object/from16 v15, v20

    move-object/from16 v20, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v11

    move-object/from16 v11, v22

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40b00000    # 5.5f

    iget-object v6, v0, Lw0/wc;->b:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lw0/wc;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    move/from16 v22, v2

    const/high16 v7, 0x428c0000    # 70.0f

    iget-object v5, v0, Lw0/wc;->d:Landroid/graphics/RectF;

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v2, 0x42880000    # 68.0f

    iget-object v4, v0, Lw0/wc;->c:Landroid/graphics/Path;

    sparse-switch v22, :sswitch_data_1

    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_4

    :sswitch_d
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v1, 0x42ae0000    # 87.0f

    const/high16 v2, 0x41700000    # 15.0f

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v5, v2, v3, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v29, v4

    const/high16 v4, 0x43000000    # 128.0f

    move-object v2, v5

    const/4 v5, 0x0

    const/high16 v3, 0x43430000    # 195.0f

    move-object/from16 v1, p1

    move-object/from16 v7, v29

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object v4, v1

    move-object v10, v6

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    const/high16 v1, 0x42040000    # 33.0f

    const/high16 v2, 0x42940000    # 74.0f

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v34, 0x42880000    # 68.0f

    const/high16 v35, 0x42440000    # 49.0f

    const/high16 v30, 0x42100000    # 36.0f

    const/high16 v31, 0x42240000    # 41.0f

    const/high16 v32, 0x42700000    # 60.0f

    const/high16 v33, 0x420c0000    # 35.0f

    invoke-virtual/range {v29 .. v35}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v34, 0x42040000    # 33.0f

    const/high16 v35, 0x42940000    # 74.0f

    const/high16 v30, 0x42980000    # 76.0f

    const/high16 v31, 0x42820000    # 65.0f

    const/high16 v32, 0x426c0000    # 59.0f

    const/high16 v33, 0x429c0000    # 78.0f

    invoke-virtual/range {v29 .. v35}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v9, v29

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    :sswitch_e
    move-object/from16 v4, p1

    move-object v11, v5

    move-object v10, v6

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    move-object v6, v10

    goto :goto_2

    :cond_10
    const/16 v1, 0xfa

    const/16 v5, 0xe4

    const/16 v6, 0xf4

    invoke-static {v6, v1, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x42a40000    # 82.0f

    const/high16 v5, 0x429e0000    # 79.0f

    move v1, v2

    const/high16 v2, 0x41900000    # 18.0f

    move v6, v3

    const/high16 v3, 0x42080000    # 34.0f

    move-object v9, v8

    move v8, v6

    move-object v6, v9

    move v14, v1

    const/high16 v9, 0x41f80000    # 31.0f

    const/high16 v12, 0x41400000    # 12.0f

    const/high16 v13, 0x42080000    # 34.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    move-object v15, v6

    const/16 v2, 0x40

    const/16 v3, 0x52

    const/16 v4, 0x1e

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v5, 0x42000000    # 32.0f

    invoke-virtual {v1, v5, v13, v12, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v14, v13, v12, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v5, -0x1

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v13, v9, v8, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v7, v9, v8, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, 0x428e0000    # 71.0f

    const/high16 v3, 0x428a0000    # 69.0f

    const/high16 v4, 0x42380000    # 46.0f

    const/high16 v5, 0x41e80000    # 29.0f

    invoke-virtual {v11, v5, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v4, 0x43100000    # 144.0f

    const/4 v5, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    move-object v6, v10

    move-object v2, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_7

    :sswitch_f
    move-object v15, v8

    move v8, v3

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_2

    :cond_11
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x3

    new-array v7, v1, [F

    fill-array-data v7, :array_0

    new-array v8, v1, [F

    fill-array-data v8, :array_1

    new-instance v1, Ll2/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Ll2/a;-><init>(III)V

    invoke-virtual {v1}, Ll2/a;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    move-object v1, v9

    check-cast v1, Ll2/b;

    invoke-virtual {v1}, Ll2/b;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Ll2/b;->nextInt()I

    move-result v10

    aget v2, v7, v10

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v5, 0x42a60000    # 83.0f

    move v4, v2

    move-object/from16 v1, p1

    const/high16 v11, 0x41100000    # 9.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v4, v1

    const/4 v5, -0x1

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setColor(I)V

    aget v1, v7, v10

    aget v2, v8, v10

    invoke-virtual {v4, v1, v2, v11, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setColor(I)V

    aget v1, v7, v10

    aget v2, v8, v10

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v4, v1, v2, v3, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_12
    move-object/from16 v4, p1

    goto/16 :goto_7

    :sswitch_10
    move-object v9, v4

    move-object v15, v8

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_4

    :cond_13
    move-object v8, v6

    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v3, 0x42000000    # 32.0f

    const/high16 v4, 0x429c0000    # 78.0f

    const/high16 v5, 0x428c0000    # 70.0f

    move-object/from16 v1, p1

    const/high16 v10, 0x423c0000    # 47.0f

    const/high16 v11, 0x42400000    # 48.0f

    const/high16 v12, 0x42280000    # 42.0f

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v2, 0x429c0000    # 78.0f

    const/high16 v3, 0x422c0000    # 43.0f

    const/high16 v4, 0x42ae0000    # 87.0f

    const/high16 v5, 0x426c0000    # 59.0f

    move-object v8, v15

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move-object v4, v1

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    const/high16 v1, 0x42140000    # 37.0f

    invoke-virtual {v9, v11, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x42100000    # 36.0f

    const/high16 v2, 0x425c0000    # 55.0f

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v9, v11, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x42860000    # 67.0f

    invoke-virtual {v9, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x42820000    # 65.0f

    invoke-virtual {v9, v1, v10}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x42500000    # 52.0f

    invoke-virtual {v9, v1, v10}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    invoke-virtual {v4, v9, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    :sswitch_11
    move-object v9, v4

    move-object v15, v8

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_4

    :cond_14
    const/16 v1, 0x84

    const/16 v2, 0x1b

    const/16 v3, 0xff

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    const/high16 v1, 0x41b80000    # 23.0f

    const/high16 v2, 0x42980000    # 76.0f

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v34, 0x42680000    # 58.0f

    const/high16 v35, 0x42a60000    # 83.0f

    const/high16 v30, 0x42b80000    # 92.0f

    const/high16 v31, 0x42240000    # 41.0f

    const/high16 v32, 0x42a60000    # 83.0f

    const/high16 v33, 0x42960000    # 75.0f

    move-object/from16 v29, v9

    invoke-virtual/range {v29 .. v35}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v34, 0x41880000    # 17.0f

    const/high16 v35, 0x42340000    # 45.0f

    const/high16 v30, 0x41f80000    # 31.0f

    const/high16 v31, 0x42b60000    # 91.0f

    const/high16 v32, 0x41200000    # 10.0f

    const/high16 v33, 0x428c0000    # 70.0f

    invoke-virtual/range {v29 .. v35}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v34, 0x42400000    # 48.0f

    const/high16 v35, 0x41600000    # 14.0f

    const/high16 v30, 0x41b00000    # 22.0f

    const/high16 v31, 0x41d80000    # 27.0f

    const/high16 v32, 0x420c0000    # 35.0f

    const/high16 v33, 0x41880000    # 17.0f

    invoke-virtual/range {v29 .. v35}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v34, 0x42640000    # 57.0f

    const/high16 v35, 0x421c0000    # 39.0f

    const/high16 v30, 0x42180000    # 38.0f

    const/high16 v32, 0x42300000    # 44.0f

    const/high16 v33, 0x421c0000    # 39.0f

    invoke-virtual/range {v29 .. v35}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v34, 0x428e0000    # 71.0f

    const/high16 v35, 0x42780000    # 62.0f

    const/high16 v30, 0x428e0000    # 71.0f

    const/high16 v31, 0x421c0000    # 39.0f

    const/high16 v32, 0x429c0000    # 78.0f

    const/high16 v33, 0x424c0000    # 51.0f

    invoke-virtual/range {v29 .. v35}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v34, 0x420c0000    # 35.0f

    const/high16 v35, 0x42640000    # 57.0f

    const/high16 v30, 0x427c0000    # 63.0f

    const/high16 v31, 0x42960000    # 75.0f

    const/high16 v32, 0x421c0000    # 39.0f

    const/high16 v33, 0x42900000    # 72.0f

    invoke-virtual/range {v29 .. v35}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v34, 0x42980000    # 76.0f

    const/high16 v35, 0x41b80000    # 23.0f

    const/high16 v30, 0x41f00000    # 30.0f

    const/high16 v31, 0x42200000    # 40.0f

    const/high16 v32, 0x42440000    # 49.0f

    const/high16 v33, 0x41d80000    # 27.0f

    invoke-virtual/range {v29 .. v35}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v7, v29

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    invoke-virtual {v4, v7, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    :sswitch_12
    move-object v7, v4

    const/4 v3, 0x0

    const/high16 v13, 0x42080000    # 34.0f

    move-object/from16 v4, p1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_4

    :cond_15
    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v7, v2, v13}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x42240000    # 41.0f

    invoke-virtual {v7, v1, v13}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x42440000    # 49.0f

    const/high16 v3, 0x422c0000    # 43.0f

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x42aa0000    # 85.0f

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x42a00000    # 80.0f

    const/high16 v5, 0x42980000    # 76.0f

    invoke-virtual {v7, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v7, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    invoke-virtual {v4, v7, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    :sswitch_13
    move-object v7, v4

    move-object v15, v8

    const/4 v3, 0x0

    const/high16 v5, 0x42980000    # 76.0f

    move-object/from16 v4, p1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_4

    :cond_16
    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v2, 0x429a0000    # 77.0f

    invoke-virtual {v7, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    invoke-virtual {v4, v7, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string v1, "#F47B20"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v4, 0x427c0000    # 63.0f

    const/high16 v5, 0x423c0000    # 47.0f

    const/high16 v2, 0x42140000    # 37.0f

    const/high16 v3, 0x423c0000    # 47.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x428a0000    # 69.0f

    const/high16 v5, 0x42780000    # 62.0f

    const/high16 v2, 0x41f80000    # 31.0f

    const/high16 v3, 0x42780000    # 62.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    :sswitch_14
    move-object v4, v5

    move-object/from16 v2, v21

    const/4 v3, 0x0

    const/high16 v11, 0x41100000    # 9.0f

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_4

    :cond_17
    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v7, 0x42

    const/16 v8, 0x85

    const/16 v1, 0xf4

    invoke-static {v7, v8, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x429c0000    # 78.0f

    const/high16 v10, 0x41b00000    # 22.0f

    invoke-virtual {v4, v10, v10, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    move-object v2, v4

    const/high16 v4, 0x43520000    # 210.0f

    const/4 v5, 0x0

    const/high16 v3, -0x3dcc0000    # -45.0f

    move v9, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/16 v1, 0xa8

    const/16 v3, 0x53

    const/16 v4, 0x34

    invoke-static {v4, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x428c0000    # 70.0f

    const/high16 v3, 0x43250000    # 165.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/16 v1, 0xbc

    const/4 v3, 0x5

    const/16 v4, 0xfb

    invoke-static {v4, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x425c0000    # 55.0f

    const/high16 v3, 0x436b0000    # 235.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/16 v1, 0x43

    const/16 v3, 0x35

    const/16 v4, 0xea

    invoke-static {v4, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41c80000    # 25.0f

    const/high16 v3, 0x43910000    # 290.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v5, 0x424c0000    # 51.0f

    const/high16 v2, 0x42540000    # 53.0f

    const/high16 v3, 0x424c0000    # 51.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v4, v1

    goto/16 :goto_7

    :sswitch_15
    move v14, v2

    move-object v7, v4

    move-object/from16 v2, v20

    const/4 v3, 0x0

    const/high16 v10, 0x423c0000    # 47.0f

    const/high16 v12, 0x42280000    # 42.0f

    move-object/from16 v4, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_4

    :cond_18
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    const/high16 v1, 0x41880000    # 17.0f

    const/high16 v2, 0x422c0000    # 43.0f

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v34, 0x42a40000    # 82.0f

    const/high16 v35, 0x423c0000    # 47.0f

    const/high16 v30, 0x420c0000    # 35.0f

    const/high16 v31, 0x42540000    # 53.0f

    const/high16 v32, 0x42700000    # 60.0f

    const/high16 v33, 0x42600000    # 56.0f

    move-object/from16 v29, v7

    invoke-virtual/range {v29 .. v35}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v13, v29

    invoke-virtual {v4, v13, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v13, v14, v12}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x42a80000    # 84.0f

    invoke-virtual {v13, v1, v10}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x42780000    # 62.0f

    const/high16 v2, 0x42980000    # 76.0f

    invoke-virtual {v13, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v4, v13, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    :sswitch_16
    move v14, v2

    move-object v13, v4

    move-object v15, v8

    move-object/from16 v7, v19

    const/high16 v2, 0x429a0000    # 77.0f

    const/4 v3, 0x0

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v9, 0x41f80000    # 31.0f

    const/high16 v10, 0x41b00000    # 22.0f

    const/high16 v11, 0x42400000    # 48.0f

    const/high16 v12, 0x41400000    # 12.0f

    move-object/from16 v4, p1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_4

    :cond_19
    move-object v8, v6

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, 0x41a00000    # 20.0f

    move/from16 v25, v2

    const/high16 v2, 0x41980000    # 19.0f

    const/high16 v3, 0x41b80000    # 23.0f

    const/high16 v4, 0x429e0000    # 79.0f

    move/from16 v24, v5

    const/high16 v5, 0x42880000    # 68.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move-object v4, v1

    move-object v6, v8

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    const/high16 v1, 0x42680000    # 58.0f

    invoke-virtual {v13, v10, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x42900000    # 72.0f

    invoke-virtual {v13, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v13, v9, v14}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v4, v13, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v1, 0x420c0000    # 35.0f

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v4, v1, v11, v2, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x427c0000    # 63.0f

    invoke-virtual {v4, v1, v11, v2, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x429a0000    # 77.0f

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-virtual {v4, v9, v2, v5, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v4, v14, v2, v5, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    :sswitch_17
    move v14, v2

    move-object v9, v4

    move-object/from16 v5, v18

    const/high16 v2, 0x422c0000    # 43.0f

    const/4 v3, 0x0

    const/high16 v12, 0x42280000    # 42.0f

    const/high16 v13, 0x42080000    # 34.0f

    move-object/from16 v4, p1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_4

    :cond_1a
    move-object v8, v6

    const/high16 v6, 0x41100000    # 9.0f

    const/high16 v7, 0x41100000    # 9.0f

    move/from16 v27, v2

    const/high16 v2, 0x41500000    # 13.0f

    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v4, 0x42920000    # 73.0f

    const/high16 v5, 0x42900000    # 72.0f

    move-object/from16 v1, p1

    move/from16 v10, v27

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move-object v4, v1

    move-object v6, v8

    const/high16 v1, 0x424c0000    # 51.0f

    invoke-virtual {v4, v10, v1, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    const/high16 v1, 0x42920000    # 73.0f

    invoke-virtual {v9, v1, v12}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v2, 0x42b00000    # 88.0f

    invoke-virtual {v9, v2, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v9, v2, v14}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    invoke-virtual {v4, v9, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    :sswitch_18
    move-object/from16 v4, p1

    move-object v15, v8

    move-object/from16 v2, v17

    const/4 v3, 0x0

    const/high16 v9, 0x41f80000    # 31.0f

    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_4

    :cond_1b
    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v5, -0x1

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v4, v2, v2, v9, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v4, v2, v2, v12, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x421c0000    # 39.0f

    const/high16 v5, 0x42300000    # 44.0f

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v3, 0x42080000    # 34.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x428c0000    # 70.0f

    const/high16 v5, 0x42a00000    # 80.0f

    const/high16 v2, 0x42680000    # 58.0f

    const/high16 v3, 0x42700000    # 60.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42a20000    # 81.0f

    const/high16 v5, 0x41d80000    # 27.0f

    const/high16 v2, 0x42780000    # 62.0f

    const/high16 v3, 0x421c0000    # 39.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    :sswitch_19
    move-object/from16 v2, v23

    const/4 v3, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    :goto_4
    move v9, v3

    const/4 v10, 0x2

    :goto_5
    if-ge v9, v10, :cond_1e

    move v11, v3

    :goto_6
    if-ge v11, v10, :cond_1c

    int-to-float v1, v11

    const/high16 v26, 0x41e80000    # 29.0f

    mul-float v1, v1, v26

    const/high16 v2, 0x41c80000    # 25.0f

    add-float/2addr v1, v2

    int-to-float v4, v9

    mul-float v4, v4, v26

    add-float/2addr v4, v2

    const/high16 v2, 0x41a80000    # 21.0f

    move/from16 v28, v3

    move v3, v4

    add-float v4, v1, v2

    add-float v5, v3, v2

    move-object v8, v6

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x40800000    # 4.0f

    move v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move-object v6, v8

    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v28

    goto :goto_6

    :cond_1c
    move/from16 v28, v3

    const/high16 v26, 0x41e80000    # 29.0f

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_1d
    move-object v8, v6

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v2, 0x41b00000    # 22.0f

    const/high16 v3, 0x41500000    # 13.0f

    const/high16 v4, 0x429c0000    # 78.0f

    const/high16 v5, 0x42ae0000    # 87.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move-object v6, v8

    const/high16 v4, 0x42840000    # 66.0f

    const/high16 v5, 0x42080000    # 34.0f

    const/high16 v2, 0x42080000    # 34.0f

    const/high16 v3, 0x42080000    # 34.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42640000    # 57.0f

    const/high16 v5, 0x42840000    # 66.0f

    const/high16 v3, 0x42840000    # 66.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1e
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7662df1e -> :sswitch_c
        -0x7404949e -> :sswitch_b
        -0x6e5dcb83 -> :sswitch_a
        -0x2757ec3e -> :sswitch_9
        -0x1453bc28 -> :sswitch_8
        0x141f6c3f -> :sswitch_7
        0x1e89a887 -> :sswitch_6
        0x38bd9236 -> :sswitch_5
        0x3b8380d1 -> :sswitch_4
        0x47f8d08a -> :sswitch_3
        0x49f4d1bd -> :sswitch_2
        0x4a361ed8 -> :sswitch_1
        0x76ef8a9b -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7662df1e -> :sswitch_19
        -0x7404949e -> :sswitch_18
        -0x6e5dcb83 -> :sswitch_17
        -0x2757ec3e -> :sswitch_16
        -0x1453bc28 -> :sswitch_15
        0x141f6c3f -> :sswitch_14
        0x1e89a887 -> :sswitch_13
        0x38bd9236 -> :sswitch_12
        0x3b8380d1 -> :sswitch_11
        0x47f8d08a -> :sswitch_10
        0x49f4d1bd -> :sswitch_f
        0x4a361ed8 -> :sswitch_e
        0x76ef8a9b -> :sswitch_d
    .end sparse-switch

    :array_0
    .array-data 4
        0x41c80000    # 25.0f
        0x42480000    # 50.0f
        0x42960000    # 75.0f
    .end array-data

    :array_1
    .array-data 4
        0x42100000    # 36.0f
        0x42820000    # 65.0f
        0x42340000    # 45.0f
    .end array-data
.end method

.method public final setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lw0/wc;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lw0/wc;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
