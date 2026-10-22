.class public final Lw0/sf;
.super Li/b1;
.source "SourceFile"


# instance fields
.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Paint;

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/RectF;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Li/b1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iput-object p1, p0, Lw0/sf;->g:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lw0/sf;->h:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput-object p1, p0, Lw0/sf;->i:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lw0/sf;->j:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lw0/sf;->k:Landroid/graphics/RectF;

    const-string p1, "wifi"

    iput-object p1, p0, Lw0/sf;->l:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public final f(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const v1, 0x3ef5c28f    # 0.48f

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v8, p0, Lw0/sf;->j:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    const/high16 v1, 0x41e80000    # 29.0f

    const/high16 v2, 0x42980000    # 76.0f

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v3, 0x41500000    # 13.0f

    const/high16 v9, 0x428e0000    # 71.0f

    invoke-virtual {v8, v1, v2, v3, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/high16 v1, 0x423c0000    # 47.0f

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v4, 0x42540000    # 53.0f

    const/high16 v10, 0x42480000    # 50.0f

    invoke-virtual {v8, v10, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/high16 v1, 0x42ae0000    # 87.0f

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v3, 0x42ac0000    # 86.0f

    invoke-virtual {v8, v1, v2, v3, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v8, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, p0, Lw0/sf;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    const/high16 v1, 0x41b00000    # 22.0f

    const/high16 v3, 0x42b20000    # 89.0f

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x42240000    # 41.0f

    invoke-virtual {v8, v10, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x429c0000    # 78.0f

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8, v10, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v6, 0x41100000    # 9.0f

    const/high16 v1, 0x42580000    # 54.0f

    const/high16 v2, 0x41d80000    # 27.0f

    const/high16 v3, 0x42bc0000    # 94.0f

    const/high16 v4, 0x42920000    # 73.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x42940000    # 74.0f

    const/high16 v2, 0x41380000    # 11.5f

    invoke-virtual {p1, v1, v10, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    const/high16 v1, 0x422c0000    # 43.0f

    invoke-virtual {v8, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x42a40000    # 82.0f

    invoke-virtual {v8, v1, v10}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x42640000    # 57.0f

    invoke-virtual {v8, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Lw0/sf;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getIconColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lw0/sf;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIconId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw0/sf;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "canvas"

    invoke-static {v1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

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

    if-lez v2, :cond_18

    if-gtz v3, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    int-to-float v2, v2

    sub-float/2addr v2, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    add-float/2addr v2, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    int-to-float v3, v3

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v6

    iget-object v4, v0, Lw0/sf;->m:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f050087

    invoke-static {v4, v6}, Landroidx/core/content/c;->a(Landroid/content/Context;I)I

    move-result v4

    :goto_0
    iget-object v6, v0, Lw0/sf;->g:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v7, 0x40b00000    # 5.5f

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v9, v0, Lw0/sf;->h:Landroid/graphics/Paint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v0, Lw0/sf;->i:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v2, v0, Lw0/sf;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/high16 v4, 0x42b60000    # 91.0f

    const/high16 v14, 0x41b80000    # 23.0f

    const/high16 v15, 0x41200000    # 10.0f

    const/high16 v5, 0x41300000    # 11.0f

    const/high16 v10, 0x41d00000    # 26.0f

    move/from16 v16, v3

    const/high16 v17, 0x429e0000    # 79.0f

    const/high16 v7, 0x42ac0000    # 86.0f

    const/high16 v11, 0x429c0000    # 78.0f

    const/high16 v12, 0x41600000    # 14.0f

    const/high16 v13, 0x42480000    # 50.0f

    iget-object v3, v0, Lw0/sf;->k:Landroid/graphics/RectF;

    iget-object v8, v0, Lw0/sf;->j:Landroid/graphics/Path;

    sparse-switch v16, :sswitch_data_0

    :goto_1
    move-object v3, v8

    goto/16 :goto_7

    :sswitch_0
    const-string v4, "regressiva"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v12, v12, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    const v4, 0x43898000    # 275.0f

    const/4 v5, 0x0

    move-object v2, v3

    const/high16 v3, 0x42340000    # 45.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    const/high16 v2, 0x41d80000    # 27.0f

    invoke-virtual {v8, v11, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v2, 0x42b20000    # 89.0f

    invoke-virtual {v8, v2, v10}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x42a80000    # 84.0f

    const/high16 v3, 0x42140000    # 37.0f

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, 0x42080000    # 34.0f

    iget-object v3, v0, Lw0/sf;->i:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v2, "10"

    const/high16 v4, 0x42780000    # 62.0f

    invoke-virtual {v1, v2, v13, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :sswitch_1
    const-string v4, "power_off"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v12, v12, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v4, 0x438a0000    # 276.0f

    const/4 v5, 0x0

    move-object v2, v3

    const/high16 v3, -0x3dc00000    # -48.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x424c0000    # 51.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x41100000    # 9.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :sswitch_2
    const-string v1, "telemetry"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_2
    move-object/from16 v1, p1

    goto :goto_1

    :cond_4
    move-object v8, v6

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x42680000    # 58.0f

    const/high16 v4, 0x41d80000    # 27.0f

    const/high16 v5, 0x42a80000    # 84.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move-object v6, v8

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x42100000    # 36.0f

    const/high16 v3, 0x42200000    # 40.0f

    const/high16 v4, 0x42440000    # 49.0f

    move v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move-object v6, v8

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x42680000    # 58.0f

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x428e0000    # 71.0f

    move v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move-object v6, v8

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x42a00000    # 80.0f

    const/high16 v3, 0x42400000    # 48.0f

    const/high16 v4, 0x42b00000    # 88.0f

    move v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move-object v3, v1

    goto/16 :goto_9

    :sswitch_3
    move-object v3, v1

    move-object v1, v8

    const-string v4, "drive_regen"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v25, v3

    move-object v3, v1

    move-object/from16 v1, v25

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v23, 0x42480000    # 50.0f

    const/high16 v24, 0x41400000    # 12.0f

    const/high16 v19, 0x41300000    # 11.0f

    const/high16 v20, 0x41c80000    # 25.0f

    const/high16 v21, 0x41d80000    # 27.0f

    const/high16 v22, 0x41400000    # 12.0f

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v23, 0x42b20000    # 89.0f

    const/high16 v24, 0x42400000    # 48.0f

    const/high16 v19, 0x42920000    # 73.0f

    const/high16 v20, 0x41400000    # 12.0f

    const/high16 v21, 0x42b20000    # 89.0f

    const/high16 v22, 0x41c80000    # 25.0f

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v23, 0x42680000    # 58.0f

    const/high16 v24, 0x42b00000    # 88.0f

    const/high16 v19, 0x42b20000    # 89.0f

    const/high16 v20, 0x42880000    # 68.0f

    const/high16 v21, 0x42960000    # 75.0f

    const/high16 v22, 0x42a80000    # 84.0f

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v23, 0x42280000    # 42.0f

    const/high16 v19, 0x42540000    # 53.0f

    const/high16 v20, 0x42b20000    # 89.0f

    const/high16 v21, 0x423c0000    # 47.0f

    const/high16 v22, 0x42b20000    # 89.0f

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v23, 0x41300000    # 11.0f

    const/high16 v24, 0x42400000    # 48.0f

    const/high16 v19, 0x41c80000    # 25.0f

    const/high16 v20, 0x42a80000    # 84.0f

    const/high16 v21, 0x41300000    # 11.0f

    const/high16 v22, 0x42880000    # 68.0f

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v7, v18

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object v8, v6

    const/high16 v6, 0x41100000    # 9.0f

    const/high16 v7, 0x41100000    # 9.0f

    const/high16 v2, 0x41e80000    # 29.0f

    const/high16 v3, 0x42140000    # 37.0f

    const/high16 v4, 0x428e0000    # 71.0f

    const/high16 v5, 0x427c0000    # 63.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move-object v6, v8

    const/high16 v4, 0x41e80000    # 29.0f

    const/high16 v5, 0x42400000    # 48.0f

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x422c0000    # 43.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x428e0000    # 71.0f

    const/high16 v2, 0x42b00000    # 88.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x41f80000    # 31.0f

    const/high16 v5, 0x42a00000    # 80.0f

    const/high16 v2, 0x42100000    # 36.0f

    const/high16 v3, 0x427c0000    # 63.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x428a0000    # 69.0f

    const/high16 v2, 0x42800000    # 64.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :sswitch_4
    move-object v7, v8

    const-string v4, "aa_reset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :goto_3
    move-object v3, v7

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const v2, 0x3f147ae1    # 0.58f

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual/range {p0 .. p1}, Lw0/sf;->f(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v8, 0x42b80000    # 92.0f

    invoke-virtual {v3, v2, v2, v8, v8}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v4, 0x438d0000    # 282.0f

    const/4 v5, 0x0

    move-object v2, v3

    const/high16 v3, -0x3dc00000    # -48.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v7, v11, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v7, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x42b00000    # 88.0f

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v7, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_9

    :sswitch_5
    move-object v7, v8

    const-string v3, "cronometro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v8, v6

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v3, 0x40e00000    # 7.0f

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move-object v6, v8

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x41b80000    # 23.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x41880000    # 17.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x429e0000    # 79.0f

    const/high16 v5, 0x41f80000    # 31.0f

    const/high16 v2, 0x428c0000    # 70.0f

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x42000000    # 32.0f

    const/high16 v7, 0x42640000    # 57.0f

    invoke-virtual {v1, v13, v7, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x42080000    # 34.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x42640000    # 57.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42840000    # 66.0f

    const/high16 v5, 0x42840000    # 66.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x40600000    # 3.5f

    invoke-virtual {v1, v13, v7, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :sswitch_6
    move-object v7, v8

    const-string v3, "fullscreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_3

    :cond_8
    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x42180000    # 38.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42140000    # 37.0f

    const/high16 v3, 0x41700000    # 15.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42ac0000    # 86.0f

    const/high16 v2, 0x427c0000    # 63.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x42180000    # 38.0f

    const/high16 v2, 0x42ac0000    # 86.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v5, 0x42aa0000    # 85.0f

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x42780000    # 62.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42140000    # 37.0f

    const/high16 v3, 0x42aa0000    # 85.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42ac0000    # 86.0f

    const/high16 v2, 0x427c0000    # 63.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x42780000    # 62.0f

    const/high16 v2, 0x42ac0000    # 86.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :sswitch_7
    move-object v7, v8

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const v3, 0x3f47ae14    # 0.78f

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v3, 0x41180000    # 9.5f

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v5, 0x421c0000    # 39.0f

    invoke-virtual {v7, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v23, 0x42be0000    # 95.0f

    const/high16 v24, 0x421c0000    # 39.0f

    const/high16 v19, 0x41e80000    # 29.0f

    const/high16 v20, 0x41600000    # 14.0f

    const/high16 v21, 0x428e0000    # 71.0f

    const/high16 v22, 0x41600000    # 14.0f

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v1, v7, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    const/high16 v3, 0x42700000    # 60.0f

    invoke-virtual {v7, v14, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v23, 0x429a0000    # 77.0f

    const/high16 v24, 0x42700000    # 60.0f

    const/high16 v19, 0x42180000    # 38.0f

    const/high16 v20, 0x42300000    # 44.0f

    const/high16 v21, 0x42780000    # 62.0f

    const/high16 v22, 0x42300000    # 44.0f

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v1, v7, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v7, v5, v11}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v23, 0x42740000    # 61.0f

    const/high16 v24, 0x429c0000    # 78.0f

    const/high16 v19, 0x42340000    # 45.0f

    const/high16 v20, 0x428e0000    # 71.0f

    const/high16 v21, 0x425c0000    # 55.0f

    const/high16 v22, 0x428e0000    # 71.0f

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v8, v18

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-virtual {v1, v13, v4, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_9

    :sswitch_8
    move-object v7, v3

    const-string v3, "avas"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_1

    :cond_a
    const/high16 v2, 0x424c0000    # 51.0f

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v1, v13, v2, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x42ac0000    # 86.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x42640000    # 57.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42780000    # 62.0f

    const/high16 v2, 0x42180000    # 38.0f

    const/high16 v3, 0x42ac0000    # 86.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x42860000    # 67.0f

    const/high16 v2, 0x42880000    # 68.0f

    const/high16 v3, 0x42040000    # 33.0f

    const/high16 v4, 0x42080000    # 34.0f

    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v4, 0x43000000    # 128.0f

    const/4 v5, 0x0

    const/high16 v3, -0x3d800000    # -64.0f

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v1, 0x41980000    # 19.0f

    const/high16 v3, 0x42a40000    # 82.0f

    const/high16 v4, 0x41900000    # 18.0f

    const/high16 v5, 0x42a60000    # 83.0f

    invoke-virtual {v2, v4, v1, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v4, 0x42e00000    # 112.0f

    const/4 v5, 0x0

    const/high16 v3, -0x3da00000    # -56.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v3, 0x42f80000    # 124.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :sswitch_9
    const-string v3, "aeb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    const/high16 v2, 0x427c0000    # 63.0f

    invoke-virtual {v8, v12, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v2, 0x42340000    # 45.0f

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v8, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x421c0000    # 39.0f

    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v4, 0x42180000    # 38.0f

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-virtual {v8, v5, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v3, 0x42980000    # 76.0f

    const/high16 v4, 0x428e0000    # 71.0f

    invoke-virtual {v8, v4, v2, v3, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/high16 v2, 0x42540000    # 53.0f

    const/high16 v5, 0x42a60000    # 83.0f

    invoke-virtual {v8, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x42860000    # 67.0f

    const/high16 v3, 0x42ae0000    # 87.0f

    invoke-virtual {v8, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8, v12, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, 0x428a0000    # 69.0f

    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v4, 0x41e80000    # 29.0f

    invoke-virtual {v1, v4, v2, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x428c0000    # 70.0f

    invoke-virtual {v1, v4, v2, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    :goto_4
    const/16 v3, 0x8

    if-ge v2, v3, :cond_e

    int-to-double v3, v2

    const-wide v9, 0x4046800000000000L    # 45.0

    mul-double/2addr v3, v9

    const-wide v9, 0x4056800000000000L    # 90.0

    sub-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    rem-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_c

    const-wide/high16 v9, 0x4026000000000000L    # 11.0

    goto :goto_5

    :cond_c
    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    :goto_5
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    double-to-float v5, v11

    add-float v5, v5, v17

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v9

    double-to-float v3, v3

    add-float/2addr v3, v14

    if-nez v2, :cond_d

    invoke-virtual {v8, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_6

    :cond_d
    invoke-virtual {v8, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_9

    :sswitch_a
    const-string v3, "screen_rest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_1

    :cond_f
    const/high16 v2, 0x424c0000    # 51.0f

    const/high16 v3, 0x42100000    # 36.0f

    invoke-virtual {v1, v13, v2, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x41e00000    # 28.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x424c0000    # 51.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42840000    # 66.0f

    const/high16 v5, 0x42740000    # 61.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42280000    # 42.0f

    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v2, 0x42080000    # 34.0f

    const/high16 v3, 0x41100000    # 9.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42680000    # 58.0f

    const/high16 v2, 0x42840000    # 66.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :sswitch_b
    const-string v3, "split_screen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v8, v12, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v2, 0x41980000    # 19.0f

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v8, v12, v2, v3, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/high16 v2, 0x42aa0000    # 85.0f

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v11, 0x41a80000    # 21.0f

    invoke-virtual {v8, v4, v3, v2, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/high16 v2, 0x42920000    # 73.0f

    invoke-virtual {v8, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x42a00000    # 80.0f

    move/from16 v3, v17

    invoke-virtual {v8, v7, v3, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x42a60000    # 83.0f

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x429a0000    # 77.0f

    invoke-virtual {v8, v15, v3, v5, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v4, 0x42400000    # 48.0f

    const/high16 v5, 0x429e0000    # 79.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42a40000    # 82.0f

    const/high16 v5, 0x42860000    # 67.0f

    const/high16 v2, 0x41980000    # 19.0f

    const/high16 v3, 0x428c0000    # 70.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x40200000    # 2.5f

    const/high16 v3, 0x42980000    # 76.0f

    invoke-virtual {v1, v10, v3, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v3, 0x42100000    # 36.0f

    const/high16 v4, 0x42970000    # 75.5f

    invoke-virtual {v1, v3, v4, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :sswitch_c
    const-string v5, "screen_off"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v5, 0x41e80000    # 29.0f

    invoke-virtual {v8, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v8, v2, v5, v7, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v5, 0x42a60000    # 83.0f

    invoke-virtual {v8, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v8, v4, v2, v5, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/high16 v2, 0x42ae0000    # 87.0f

    const/high16 v4, 0x428e0000    # 71.0f

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v4, 0x429e0000    # 79.0f

    invoke-virtual {v8, v2, v11, v4, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v4, 0x42a40000    # 82.0f

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41100000    # 9.0f

    const/high16 v5, 0x42940000    # 74.0f

    invoke-virtual {v8, v2, v4, v15, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, 0x42820000    # 65.0f

    const/high16 v4, 0x42780000    # 62.0f

    const/high16 v5, 0x42000000    # 32.0f

    const/high16 v7, 0x420c0000    # 35.0f

    invoke-virtual {v3, v7, v5, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v4, 0x438a0000    # 276.0f

    const/4 v5, 0x0

    move-object v2, v3

    const/high16 v3, -0x3dc00000    # -48.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x42400000    # 48.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x41e00000    # 28.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :sswitch_d
    const/high16 v7, 0x41a00000    # 20.0f

    const-string v1, "recirc_guard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_2

    :cond_12
    const/high16 v1, 0x41880000    # 17.0f

    const/high16 v9, 0x41500000    # 13.0f

    const/high16 v2, 0x42ae0000    # 87.0f

    const/high16 v5, 0x42a60000    # 83.0f

    invoke-virtual {v3, v9, v1, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v4, 0x432a0000    # 170.0f

    const/4 v5, 0x0

    move-object v2, v3

    const/high16 v3, 0x43460000    # 198.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v8, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v4, 0x41e80000    # 29.0f

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    const/high16 v2, 0x42a80000    # 84.0f

    const/high16 v3, 0x42820000    # 65.0f

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v2, 0x42a00000    # 80.0f

    const/high16 v3, 0x42ae0000    # 87.0f

    invoke-virtual {v8, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v4, 0x428e0000    # 71.0f

    invoke-virtual {v8, v4, v11}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_9

    :sswitch_e
    const-string v3, "app_pip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_1

    :cond_13
    move-object v8, v6

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v2, 0x41500000    # 13.0f

    const/high16 v3, 0x41d80000    # 27.0f

    const/high16 v4, 0x42880000    # 68.0f

    const/high16 v5, 0x42a20000    # 81.0f

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move-object v6, v8

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x42040000    # 33.0f

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x42ae0000    # 87.0f

    const/high16 v5, 0x42820000    # 65.0f

    move v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :sswitch_f
    move-object v10, v3

    move-object v3, v8

    move/from16 v4, v17

    const-string v1, "karaoke"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    move-object/from16 v1, p1

    goto :goto_7

    :cond_14
    move-object v8, v6

    const/high16 v6, 0x41700000    # 15.0f

    const/high16 v7, 0x41700000    # 15.0f

    const/high16 v2, 0x420c0000    # 35.0f

    const/high16 v3, 0x41400000    # 12.0f

    move/from16 v17, v4

    const/high16 v4, 0x42820000    # 65.0f

    const/high16 v5, 0x42740000    # 61.0f

    move-object/from16 v1, p1

    move/from16 v9, v17

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move-object v6, v8

    const/high16 v1, 0x429a0000    # 77.0f

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v10, v14, v3, v1, v9}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x429e0000    # 79.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42820000    # 65.0f

    const/high16 v2, 0x420c0000    # 35.0f

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :sswitch_10
    move-object v3, v8

    const-string v4, "aa_activate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual/range {p0 .. p1}, Lw0/sf;->f(Landroid/graphics/Canvas;)V

    goto/16 :goto_9

    :sswitch_11
    move-object v3, v8

    const-string v4, "close_apps"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :goto_7
    const/high16 v2, 0x42140000    # 37.0f

    invoke-virtual {v1, v13, v13, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    const/high16 v4, 0x42180000    # 38.0f

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v23, 0x42800000    # 64.0f

    const/high16 v24, 0x421c0000    # 39.0f

    const/high16 v19, 0x42180000    # 38.0f

    const/high16 v20, 0x41c00000    # 24.0f

    const/high16 v21, 0x427c0000    # 63.0f

    const/high16 v22, 0x41c00000    # 24.0f

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v23, 0x42480000    # 50.0f

    const/high16 v24, 0x42780000    # 62.0f

    const/high16 v19, 0x42800000    # 64.0f

    const/high16 v20, 0x42440000    # 49.0f

    const/high16 v21, 0x424c0000    # 51.0f

    const/high16 v22, 0x42480000    # 50.0f

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v7, v18

    invoke-virtual {v1, v7, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x42980000    # 76.0f

    invoke-virtual {v1, v13, v3, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_16
    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x422c0000    # 43.0f

    invoke-direct {v2, v12, v12, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    const/high16 v5, 0x42640000    # 57.0f

    invoke-direct {v4, v5, v12, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v12, v5, v3, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v5, v5, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    filled-new-array {v2, v4, v8, v3}, [Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x4

    if-ge v3, v4, :cond_17

    aget-object v4, v2, v3

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v1, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_17
    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v5, 0x42a00000    # 80.0f

    const/high16 v2, 0x427c0000    # 63.0f

    const/high16 v3, 0x427c0000    # 63.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x427c0000    # 63.0f

    const/high16 v2, 0x42a00000    # 80.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_18
    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ae95fa7 -> :sswitch_11
        -0x62d361ce -> :sswitch_10
        -0x37caea1c -> :sswitch_f
        -0x2f4d9d87 -> :sswitch_e
        -0x2ce42810 -> :sswitch_d
        -0x18db78e4 -> :sswitch_c
        -0xab92ecf -> :sswitch_b
        -0x2924839 -> :sswitch_a
        0x178be -> :sswitch_9
        0x2ddf27 -> :sswitch_8
        0x37af15 -> :sswitch_7
        0x68f7bbb -> :sswitch_6
        0x809b218 -> :sswitch_5
        0x1020f470 -> :sswitch_4
        0x2b4e1d48 -> :sswitch_3
        0x2e8323b9 -> :sswitch_2
        0x32655b35 -> :sswitch_1
        0x54b7810d -> :sswitch_0
    .end sparse-switch
.end method

.method public final setIconColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lw0/sf;->m:Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setIconId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lw0/sf;->l:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
