.class public final synthetic Lw0/d6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    iput p2, p0, Lw0/d6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    iget v0, p0, Lw0/d6;->a:I

    const/16 v1, 0x10

    const/16 v2, 0x12

    const/16 v3, 0x8

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x3

    const/4 v11, 0x6

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/ExSapoCastFloaterService;->j:I

    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {p2}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-ge v0, v5, :cond_0

    move v0, v5

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-ge p1, v5, :cond_1

    move p1, v5

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    int-to-float v0, v0

    div-float/2addr v12, v0

    invoke-static {v12, v8, v9}, Lk1/a;->j(FFF)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    int-to-float p1, p1

    div-float/2addr v12, p1

    invoke-static {v12, v8, v9}, Lk1/a;->j(FFF)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-eqz p2, :cond_4

    if-eq p2, v5, :cond_3

    if-eq p2, v6, :cond_2

    if-eq p2, v10, :cond_5

    if-eq p2, v4, :cond_4

    if-eq p2, v11, :cond_3

    goto :goto_2

    :cond_2
    move v10, v5

    goto :goto_0

    :cond_3
    move v10, v6

    goto :goto_0

    :cond_4
    move v10, v7

    :cond_5
    :goto_0
    sget-object p2, Lw0/m;->i:Lw0/m6;

    if-eqz p2, :cond_8

    iget-boolean v4, p2, Lw0/m6;->d:Z

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    new-array v2, v2, [B

    int-to-byte v4, v10

    aput-byte v4, v2, v7

    int-to-byte v4, v7

    aput-byte v4, v2, v5

    invoke-static {v2, v6, v0}, Lw0/m6;->d([BIF)V

    invoke-static {v2, v11, p1}, Lw0/m6;->d([BIF)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :goto_1
    if-ge v7, v3, :cond_7

    add-int/lit8 p1, v7, 0xa

    mul-int/lit8 v0, v7, 0x8

    rsub-int/lit8 v0, v0, 0x38

    ushr-long v10, v8, v0

    long-to-int v0, v10

    int-to-byte v0, v0

    aput-byte v0, v2, p1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p2, v1, v2}, Lw0/m6;->i(I[B)V

    :cond_8
    :goto_2
    return v5

    :pswitch_0
    sget v0, Lcom/ex/auto/ExSapoCastActivity;->e:I

    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {p2}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-ge v0, v5, :cond_9

    move v0, v5

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-ge p1, v5, :cond_a

    move p1, v5

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    int-to-float v0, v0

    div-float/2addr v12, v0

    invoke-static {v12, v8, v9}, Lk1/a;->j(FFF)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    int-to-float p1, p1

    div-float/2addr v12, p1

    invoke-static {v12, v8, v9}, Lk1/a;->j(FFF)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-eqz p2, :cond_d

    if-eq p2, v5, :cond_c

    if-eq p2, v6, :cond_b

    if-eq p2, v10, :cond_e

    if-eq p2, v4, :cond_d

    if-eq p2, v11, :cond_c

    goto :goto_5

    :cond_b
    move v10, v5

    goto :goto_3

    :cond_c
    move v10, v6

    goto :goto_3

    :cond_d
    move v10, v7

    :cond_e
    :goto_3
    sget-object p2, Lw0/m;->i:Lw0/m6;

    if-eqz p2, :cond_11

    iget-boolean v4, p2, Lw0/m6;->d:Z

    if-nez v4, :cond_f

    goto :goto_5

    :cond_f
    new-array v2, v2, [B

    int-to-byte v4, v10

    aput-byte v4, v2, v7

    int-to-byte v4, v7

    aput-byte v4, v2, v5

    invoke-static {v2, v6, v0}, Lw0/m6;->d([BIF)V

    invoke-static {v2, v11, p1}, Lw0/m6;->d([BIF)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :goto_4
    if-ge v7, v3, :cond_10

    add-int/lit8 p1, v7, 0xa

    mul-int/lit8 v0, v7, 0x8

    rsub-int/lit8 v0, v0, 0x38

    ushr-long v10, v8, v0

    long-to-int v0, v10

    int-to-byte v0, v0

    aput-byte v0, v2, p1

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_10
    invoke-virtual {p2, v1, v2}, Lw0/m6;->i(I[B)V

    :cond_11
    :goto_5
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
