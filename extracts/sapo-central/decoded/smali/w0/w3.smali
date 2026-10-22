.class public final Lw0/w3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:[F

.field public final d:[I

.field public final e:[F

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lw0/w3;->g:I

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lw0/w3;->a:I

    iput-boolean p2, p0, Lw0/w3;->b:Z

    new-array p2, p1, [F

    iput-object p2, p0, Lw0/w3;->c:[F

    new-array p2, p1, [I

    iput-object p2, p0, Lw0/w3;->d:[I

    new-array p1, p1, [F

    iput-object p1, p0, Lw0/w3;->e:[F

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Float;)V
    .locals 12

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p0, Lw0/w3;->f:I

    iget-object v1, p0, Lw0/w3;->d:[I

    iget-object v2, p0, Lw0/w3;->c:[F

    iget-object v3, p0, Lw0/w3;->e:[F

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_1

    iput v5, p0, Lw0/w3;->f:I

    iput v6, p0, Lw0/w3;->h:I

    aput v4, v2, v6

    aput v6, v1, v6

    aput v4, v3, v6

    :cond_1
    iget v0, p0, Lw0/w3;->f:I

    sub-int/2addr v0, v5

    aget v7, v2, v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v8, v7

    aput v8, v2, v0

    aget v7, v1, v0

    add-int/2addr v7, v5

    aput v7, v1, v0

    iget-boolean v8, p0, Lw0/w3;->b:Z

    if-eq v7, v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aget v9, v3, v0

    if-eqz v8, :cond_2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    goto :goto_0

    :cond_2
    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v3, v0

    :cond_4
    iget p1, p0, Lw0/w3;->h:I

    add-int/2addr p1, v5

    iput p1, p0, Lw0/w3;->h:I

    iget v0, p0, Lw0/w3;->g:I

    if-lt p1, v0, :cond_b

    iput v6, p0, Lw0/w3;->h:I

    iget p1, p0, Lw0/w3;->f:I

    iget v0, p0, Lw0/w3;->a:I

    if-ge p1, v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lw0/w3;->f:I

    aput v4, v2, p1

    aput v6, v1, p1

    aput v4, v3, p1

    return-void

    :cond_5
    move p1, v6

    move v7, p1

    :goto_1
    add-int/lit8 v9, p1, 0x1

    iget v10, p0, Lw0/w3;->f:I

    if-ge v9, v10, :cond_8

    aget v10, v2, p1

    aget v11, v2, v9

    add-float/2addr v10, v11

    aput v10, v2, v7

    aget v10, v1, p1

    aget v11, v1, v9

    add-int/2addr v10, v11

    aput v10, v1, v7

    aget v10, v3, p1

    aget v11, v3, v9

    if-eqz v8, :cond_6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    goto :goto_2

    :cond_6
    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    :goto_2
    aget v9, v3, p1

    goto :goto_3

    :cond_7
    aget v9, v3, v9

    :goto_3
    aput v9, v3, v7

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    rem-int/lit8 p1, v10, 0x2

    if-ne p1, v5, :cond_9

    sub-int/2addr v10, v5

    aget p1, v2, v10

    aput p1, v2, v7

    aget p1, v1, v10

    aput p1, v1, v7

    aget p1, v3, v10

    aput p1, v3, v7

    add-int/lit8 v7, v7, 0x1

    :cond_9
    iput v7, p0, Lw0/w3;->f:I

    iget p1, p0, Lw0/w3;->g:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lw0/w3;->g:I

    if-ge v7, v0, :cond_a

    add-int/lit8 p1, v7, 0x1

    iput p1, p0, Lw0/w3;->f:I

    aput v4, v2, v7

    aput v6, v1, v7

    aput v4, v3, v7

    :cond_a
    iput v6, p0, Lw0/w3;->h:I

    :cond_b
    :goto_4
    return-void
.end method

.method public final b(FZ)Ljava/lang/String;
    .locals 6

    iget v0, p0, Lw0/w3;->f:I

    iget-object v1, p0, Lw0/w3;->d:[I

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget v3, v1, v2

    if-nez v3, :cond_0

    move v0, v2

    :cond_0
    if-gtz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v0, 0x5

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    if-lez v3, :cond_2

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p2, :cond_3

    iget-object v4, p0, Lw0/w3;->e:[F

    aget v4, v4, v3

    goto :goto_1

    :cond_3
    aget v4, v1, v3

    if-lez v4, :cond_4

    iget-object v5, p0, Lw0/w3;->c:[F

    aget v5, v5, v3

    int-to-float v4, v4

    div-float v4, v5, v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
