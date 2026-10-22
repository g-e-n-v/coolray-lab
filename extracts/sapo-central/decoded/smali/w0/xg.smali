.class public final Lw0/xg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:I

.field public static final B:I

.field public static final C:I

.field public static final D:I

.field public static final E:I

.field public static final F:[I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final u:I

.field public static final v:I

.field public static final w:I

.field public static final x:I

.field public static final y:I

.field public static final z:I


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Landroid/car/hardware/property/CarPropertyManager;

.field public final c:Lw0/wg;

.field public d:Ljava/lang/Float;

.field public e:Ljava/lang/Float;

.field public f:Z

.field public g:J

.field public h:Ljava/lang/String;

.field public final i:Ljava/util/ArrayDeque;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x27

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->k:I

    const/16 v0, 0x28

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->l:I

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->m:I

    const/16 v0, 0x16

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->n:I

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->o:I

    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->p:I

    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->q:I

    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->r:I

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->s:I

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->t:I

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->u:I

    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    const/16 v0, 0x29

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->v:I

    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->w:I

    const/16 v0, 0x2f

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->x:I

    const/16 v0, 0x30

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->y:I

    const/16 v0, 0x31

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->z:I

    const/16 v0, 0x32

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->A:I

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->B:I

    const/16 v0, 0x2a

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->C:I

    const/16 v0, 0x2b

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->D:I

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/xg;->E:I

    const/4 v0, 0x1

    const/high16 v1, 0x1000000

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lw0/xg;->F:[I

    return-void
.end method

.method public constructor <init>(Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lw0/xg;->a:Ljava/lang/String;

    new-instance v0, Lw0/wg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "unknown"

    iput-object v1, v0, Lw0/wg;->I:Ljava/lang/String;

    iput-object v0, p0, Lw0/xg;->c:Lw0/wg;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lw0/xg;->i:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput v0, p0, Lw0/xg;->j:I

    iput-object p1, p0, Lw0/xg;->b:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0, p1}, Lw0/xg;->e(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lw0/xg;->j:I

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Lw0/xg;->j:I

    return-object v0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lw0/xg;->j:I

    return-object p1
.end method

.method public final declared-synchronized b()Lw0/wg;
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lw0/xg;->b:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    invoke-virtual {v0}, Lw0/wg;->a()Lw0/wg;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :cond_0
    const v0, 0x11600208

    :try_start_1
    invoke-virtual {v1, v0}, Lw0/xg;->e(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v1, Lw0/xg;->c:Lw0/wg;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41900000    # 18.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v2, Lw0/wg;->a:Ljava/lang/Float;

    goto :goto_0

    :cond_1
    const v0, 0x11600207

    invoke-virtual {v1, v0}, Lw0/xg;->c(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v1, Lw0/xg;->c:Lw0/wg;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v2, Lw0/wg;->a:Ljava/lang/Float;

    :cond_2
    :goto_0
    const v0, 0x11400401

    invoke-virtual {v1, v0}, Lw0/xg;->e(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    iget-object v5, v1, Lw0/xg;->c:Lw0/wg;

    iput-object v0, v5, Lw0/wg;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v6, "D"

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    const/16 v7, 0x8

    if-eq v0, v7, :cond_7

    const/16 v7, 0x10

    if-lt v0, v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    const-string v6, "?"

    goto :goto_1

    :cond_4
    const-string v6, "P"

    goto :goto_1

    :cond_5
    const-string v6, "R"

    goto :goto_1

    :cond_6
    const-string v6, "N"

    :cond_7
    :goto_1
    iput-object v6, v5, Lw0/wg;->c:Ljava/lang/String;

    :cond_8
    const v0, 0x11600204

    invoke-virtual {v1, v0}, Lw0/xg;->c(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v5, v1, Lw0/xg;->c:Lw0/wg;

    iput-object v0, v5, Lw0/wg;->f:Ljava/lang/Float;

    :cond_9
    const v0, 0x11400308

    invoke-virtual {v1, v0}, Lw0/xg;->c(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v5, v1, Lw0/xg;->c:Lw0/wg;

    iput-object v0, v5, Lw0/wg;->e:Ljava/lang/Float;

    :cond_a
    sget v0, Lw0/xg;->o:I

    invoke-virtual {v1, v0}, Lw0/xg;->c(I)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lw0/e8;->P(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v5, v1, Lw0/xg;->c:Lw0/wg;

    iput-object v0, v5, Lw0/wg;->d:Ljava/lang/Float;

    :cond_b
    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    sget v5, Lw0/xg;->p:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lw0/xg;->j(II)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lw0/wg;->h:Ljava/lang/Integer;

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    sget v5, Lw0/xg;->A:I

    invoke-virtual {v1, v5, v6}, Lw0/xg;->j(II)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lw0/wg;->i:Ljava/lang/Integer;

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    sget v5, Lw0/xg;->B:I

    invoke-virtual {v1, v5, v6}, Lw0/xg;->j(II)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lw0/wg;->j:Ljava/lang/Integer;

    sget v0, Lw0/xg;->q:I

    iget-object v5, v1, Lw0/xg;->b:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v7, 0x0

    if-nez v5, :cond_d

    :cond_c
    move-object v0, v7

    goto :goto_5

    :cond_d
    sget-object v8, Lw0/xg;->F:[I

    array-length v9, v8

    move v10, v6

    :goto_2
    if-ge v10, v9, :cond_c

    aget v11, v8, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5, v0, v11}, Landroid/car/hardware/property/CarPropertyManager;->getBooleanProperty(II)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catch_0
    :try_start_3
    invoke-virtual {v5, v0, v11}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v11

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    goto :goto_3

    :cond_e
    move-object v11, v7

    :goto_3
    instance-of v12, v11, Ljava/lang/Boolean;

    if-eqz v12, :cond_f

    check-cast v11, Ljava/lang/Boolean;

    move-object v0, v11

    goto :goto_5

    :cond_f
    instance-of v12, v11, Ljava/lang/Integer;

    if-eqz v12, :cond_11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_10

    move v11, v4

    goto :goto_4

    :cond_10
    move v11, v6

    :goto_4
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_1
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :goto_5
    if-eqz v0, :cond_12

    :try_start_4
    iget-object v5, v1, Lw0/xg;->c:Lw0/wg;

    iput-object v0, v5, Lw0/wg;->m:Ljava/lang/Boolean;

    :cond_12
    sget v0, Lw0/xg;->r:I

    invoke-virtual {v1, v0}, Lw0/xg;->c(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v5, v1, Lw0/xg;->c:Lw0/wg;

    iput-object v0, v5, Lw0/wg;->k:Ljava/lang/Float;

    :cond_13
    sget v0, Lw0/xg;->s:I

    invoke-virtual {v1, v0}, Lw0/xg;->c(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v5, v1, Lw0/xg;->c:Lw0/wg;

    iput-object v0, v5, Lw0/wg;->l:Ljava/lang/Float;

    :cond_14
    sget v0, Lw0/xg;->t:I

    invoke-virtual {v1, v0}, Lw0/xg;->c(I)Ljava/lang/Float;

    sget v0, Lw0/xg;->u:I

    invoke-virtual {v1, v0}, Lw0/xg;->e(I)Ljava/lang/Integer;

    move-result-object v0

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_16

    :cond_15
    move-object v0, v7

    goto :goto_6

    :cond_16
    cmpl-float v10, v0, v8

    if-ltz v10, :cond_17

    const/high16 v10, 0x41a00000    # 20.0f

    cmpg-float v10, v0, v10

    if-gtz v10, :cond_17

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_6

    :cond_17
    const v10, 0x459c4000    # 5000.0f

    cmpl-float v10, v0, v10

    if-ltz v10, :cond_18

    const v10, 0x469c4000    # 20000.0f

    cmpg-float v10, v0, v10

    if-gtz v10, :cond_18

    div-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_6

    :cond_18
    const/high16 v10, 0x42480000    # 50.0f

    cmpl-float v10, v0, v10

    if-ltz v10, :cond_15

    const/high16 v10, 0x43480000    # 200.0f

    cmpg-float v10, v0, v10

    if-gtz v10, :cond_15

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_19

    iget-object v10, v1, Lw0/xg;->c:Lw0/wg;

    iput-object v0, v10, Lw0/wg;->q:Ljava/lang/Float;

    :cond_19
    const/16 v0, 0x31

    const/16 v10, 0x75

    const/4 v11, 0x5

    filled-new-array {v10, v4, v0, v11, v6}, [I

    move-result-object v12

    move v13, v6

    move-object v14, v7

    :goto_7
    const v15, 0x15400500

    if-ge v13, v11, :cond_1b

    aget v14, v12, v13

    invoke-virtual {v1, v15, v14}, Lw0/xg;->j(II)Ljava/lang/Integer;

    move-result-object v16

    if-eqz v16, :cond_1a

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "vivo:area=0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v14, v16

    goto :goto_8

    :cond_1a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v14, v16

    goto :goto_7

    :cond_1b
    move-object v12, v7

    :goto_8
    if-nez v14, :cond_1d

    filled-new-array {v10, v4, v0, v11, v6}, [I

    move-result-object v0

    move v10, v6

    :goto_9
    if-ge v10, v11, :cond_1d

    aget v13, v0, v10

    invoke-virtual {v1, v15, v13}, Lw0/xg;->f(II)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "semTs:area=0x"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_1c
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_1d
    :goto_a
    if-eqz v14, :cond_1e

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    iput-object v14, v0, Lw0/wg;->n:Ljava/lang/Integer;

    iget-object v0, v1, Lw0/xg;->a:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "TelemetryReader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "acFanLevel="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " via "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v12, v1, Lw0/xg;->a:Ljava/lang/String;

    :cond_1e
    sget v0, Lw0/xg;->n:I

    invoke-virtual {v1, v0}, Lw0/xg;->d(I)Ljava/lang/Float;

    move-result-object v0

    const/4 v10, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v11, v11, v10

    if-nez v11, :cond_24

    :cond_1f
    sget v0, Lw0/xg;->k:I

    invoke-virtual {v1, v0}, Lw0/xg;->c(I)Ljava/lang/Float;

    move-result-object v0

    const v11, 0x15200503

    invoke-virtual {v1, v11}, Lw0/xg;->c(I)Ljava/lang/Float;

    move-result-object v11

    filled-new-array {v0, v11}, [Ljava/lang/Float;

    move-result-object v0

    move v11, v6

    :goto_b
    if-ge v11, v3, :cond_21

    aget-object v12, v0, v11

    if-eqz v12, :cond_20

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpl-float v13, v13, v10

    if-eqz v13, :cond_20

    :goto_c
    move-object v0, v12

    goto :goto_e

    :cond_20
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_21
    move v11, v6

    :goto_d
    if-ge v11, v3, :cond_23

    aget-object v12, v0, v11

    if-eqz v12, :cond_22

    goto :goto_c

    :cond_22
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_23
    move-object v0, v7

    :cond_24
    :goto_e
    if-eqz v0, :cond_25

    iget-object v11, v1, Lw0/xg;->c:Lw0/wg;

    iput-object v0, v11, Lw0/wg;->o:Ljava/lang/Float;

    :cond_25
    sget v0, Lw0/xg;->m:I

    invoke-virtual {v1, v0, v6}, Lw0/xg;->f(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lw0/e8;->R(Ljava/lang/Integer;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v11, v1, Lw0/xg;->c:Lw0/wg;

    iput-object v0, v11, Lw0/wg;->p:Ljava/lang/Float;

    :cond_26
    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    iget-object v0, v0, Lw0/wg;->p:Ljava/lang/Float;

    if-nez v0, :cond_28

    sget v0, Lw0/xg;->l:I

    invoke-virtual {v1, v0}, Lw0/xg;->c(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v10, v11, v10

    if-eqz v10, :cond_27

    iget-object v10, v1, Lw0/xg;->c:Lw0/wg;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v10, Lw0/wg;->p:Ljava/lang/Float;

    goto :goto_f

    :cond_27
    const v0, 0x11400703

    invoke-virtual {v1, v0}, Lw0/xg;->c(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v5, v1, Lw0/xg;->c:Lw0/wg;

    iput-object v0, v5, Lw0/wg;->p:Ljava/lang/Float;

    :cond_28
    :goto_f
    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    sget v5, Lw0/xg;->w:I

    invoke-virtual {v1, v5, v6}, Lw0/xg;->j(II)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lw0/wg;->r:Ljava/lang/Integer;

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    sget v5, Lw0/xg;->x:I

    invoke-virtual {v1, v5, v4}, Lw0/xg;->i(II)Ljava/lang/Float;

    move-result-object v10

    iput-object v10, v0, Lw0/wg;->s:Ljava/lang/Float;

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    invoke-virtual {v1, v5, v3}, Lw0/xg;->i(II)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, v0, Lw0/wg;->t:Ljava/lang/Float;

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    sget v5, Lw0/xg;->y:I

    invoke-virtual {v1, v5, v4}, Lw0/xg;->j(II)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v0, Lw0/wg;->u:Ljava/lang/Integer;

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    invoke-virtual {v1, v5, v3}, Lw0/xg;->j(II)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lw0/wg;->v:Ljava/lang/Integer;

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    sget v5, Lw0/xg;->z:I

    invoke-virtual {v1, v5, v4}, Lw0/xg;->i(II)Ljava/lang/Float;

    move-result-object v10

    iput-object v10, v0, Lw0/wg;->w:Ljava/lang/Float;

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    invoke-virtual {v1, v5, v3}, Lw0/xg;->i(II)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v0, Lw0/wg;->x:Ljava/lang/Float;

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    sget v3, Lw0/xg;->v:I

    invoke-virtual {v1, v3}, Lw0/xg;->a(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lw0/wg;->y:Ljava/lang/Integer;

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    iget v3, v1, Lw0/xg;->j:I

    iput v3, v0, Lw0/wg;->B:I

    sget v3, Lw0/xg;->C:I

    invoke-virtual {v1, v3}, Lw0/xg;->a(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lw0/wg;->z:Ljava/lang/Integer;

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    iget v3, v1, Lw0/xg;->j:I

    iput v3, v0, Lw0/wg;->C:I

    sget v3, Lw0/xg;->D:I

    invoke-virtual {v1, v3}, Lw0/xg;->a(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lw0/wg;->A:Ljava/lang/Integer;

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    iget v3, v1, Lw0/xg;->j:I

    iput v3, v0, Lw0/wg;->D:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    iget-object v0, v0, Lw0/wg;->d:Ljava/lang/Float;

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lw0/xg;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/vg;

    if-eqz v0, :cond_29

    iget-object v3, v1, Lw0/xg;->c:Lw0/wg;

    iget-object v3, v3, Lw0/wg;->d:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget v0, v0, Lw0/vg;->b:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v5, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_29

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    :cond_29
    iget-object v0, v1, Lw0/xg;->i:Ljava/util/ArrayDeque;

    new-instance v3, Lw0/vg;

    iget-object v5, v1, Lw0/xg;->c:Lw0/wg;

    iget-object v5, v5, Lw0/wg;->d:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v3, v10, v11, v5}, Lw0/vg;-><init>(JF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_10
    iget-object v0, v1, Lw0/xg;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, v1, Lw0/xg;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/vg;

    iget-wide v12, v0, Lw0/vg;->a:J

    sub-long v12, v10, v12

    const-wide/16 v14, 0x7530

    cmp-long v0, v12, v14

    if-lez v0, :cond_2a

    iget-object v0, v1, Lw0/xg;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    goto :goto_10

    :cond_2a
    iget-object v0, v1, Lw0/xg;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/vg;

    iget-object v3, v1, Lw0/xg;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw0/vg;

    if-eqz v0, :cond_2b

    if-eqz v3, :cond_2b

    iget-wide v12, v3, Lw0/vg;->a:J

    iget-wide v14, v0, Lw0/vg;->a:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x1388

    cmp-long v5, v12, v14

    if-ltz v5, :cond_2b

    iget v0, v0, Lw0/vg;->b:F

    iget v3, v3, Lw0/vg;->b:F

    sub-float/2addr v0, v3

    long-to-float v3, v12

    div-float/2addr v3, v9

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v0, v5

    const v5, 0x47185800    # 39000.0f

    mul-float/2addr v0, v5

    const/high16 v5, 0x45610000    # 3600.0f

    mul-float/2addr v0, v5

    div-float/2addr v0, v3

    iget-object v3, v1, Lw0/xg;->c:Lw0/wg;

    div-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v3, Lw0/wg;->g:Ljava/lang/Float;

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    iget-object v0, v0, Lw0/wg;->a:Ljava/lang/Float;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_2b

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    iget-object v0, v0, Lw0/wg;->g:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    iget-object v0, v0, Lw0/wg;->a:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2b
    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    iput-object v7, v0, Lw0/wg;->E:Ljava/lang/Boolean;

    iput-object v7, v0, Lw0/wg;->F:Ljava/lang/Boolean;

    iput-object v7, v0, Lw0/wg;->G:Ljava/lang/Float;

    iget-object v0, v0, Lw0/wg;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2e

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    iget-object v0, v0, Lw0/wg;->g:Ljava/lang/Float;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    neg-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2d

    iget-object v2, v1, Lw0/xg;->c:Lw0/wg;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v2, Lw0/wg;->E:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lw0/wg;->G:Ljava/lang/Float;

    iget-object v2, v1, Lw0/xg;->c:Lw0/wg;

    const/high16 v3, 0x41700000    # 15.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2c

    goto :goto_11

    :cond_2c
    move v4, v6

    :goto_11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lw0/wg;->F:Ljava/lang/Boolean;

    goto :goto_12

    :cond_2d
    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v0, Lw0/wg;->E:Ljava/lang/Boolean;

    :cond_2e
    :goto_12
    invoke-virtual {v1, v10, v11}, Lw0/xg;->g(J)V

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    invoke-virtual {v1}, Lw0/xg;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lw0/wg;->I:Ljava/lang/String;

    iget-object v0, v1, Lw0/xg;->c:Lw0/wg;

    invoke-virtual {v0}, Lw0/wg;->a()Lw0/wg;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_13
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final c(I)Ljava/lang/Float;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lw0/xg;->b:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v2, Lw0/xg;->F:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget v5, v2, v4

    :try_start_0
    invoke-virtual {v1, p1, v5}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :try_start_1
    invoke-virtual {v1, p1, v5}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    instance-of v6, v5, Ljava/lang/Float;

    if-eqz v6, :cond_2

    check-cast v5, Ljava/lang/Float;

    return-object v5

    :cond_2
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_4

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public final d(I)Ljava/lang/Float;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lw0/xg;->b:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :try_start_1
    invoke-virtual {v1, p1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Float;

    return-object p1

    :cond_2
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :cond_4
    :goto_1
    return-object v0
.end method

.method public final e(I)Ljava/lang/Integer;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lw0/xg;->b:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v2, Lw0/xg;->F:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    :try_start_0
    invoke-virtual {v1, p1, v5}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final f(II)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lw0/xg;->b:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :try_start_1
    invoke-virtual {v1, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_2
    instance-of p2, p1, Ljava/lang/Float;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :cond_3
    return-object v0
.end method

.method public final g(J)V
    .locals 7

    iget-boolean v0, p0, Lw0/xg;->f:Z

    iget-object v1, p0, Lw0/xg;->c:Lw0/wg;

    iget-object v2, v1, Lw0/wg;->d:Ljava/lang/Float;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v5, p0, Lw0/xg;->d:Ljava/lang/Float;

    if-eqz v5, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-object v5, v1, Lw0/wg;->d:Ljava/lang/Float;

    iput-object v5, p0, Lw0/xg;->d:Ljava/lang/Float;

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iget-object v5, v1, Lw0/wg;->f:Ljava/lang/Float;

    if-eqz v5, :cond_3

    iget-object v6, p0, Lw0/xg;->e:Ljava/lang/Float;

    if-eqz v6, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    :cond_2
    iget-object v5, v1, Lw0/wg;->f:Ljava/lang/Float;

    iput-object v5, p0, Lw0/xg;->e:Ljava/lang/Float;

    :cond_3
    iget-object v5, v1, Lw0/wg;->a:Ljava/lang/Float;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_5

    :cond_4
    iget-object v5, v1, Lw0/wg;->b:Ljava/lang/Integer;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_6

    :cond_5
    move v4, v3

    :cond_6
    if-nez v2, :cond_a

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    iput-boolean v3, p0, Lw0/xg;->f:Z

    iput-wide p1, p0, Lw0/xg;->g:J

    return-void

    :cond_8
    iget-wide v2, p0, Lw0/xg;->g:J

    sub-long/2addr p1, v2

    const-wide/32 v2, 0x2bf20

    cmp-long p1, p1, v2

    if-ltz p1, :cond_9

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, v1, Lw0/wg;->H:Ljava/lang/Boolean;

    :cond_9
    return-void

    :cond_a
    :goto_2
    iput-boolean v3, p0, Lw0/xg;->f:Z

    iput-wide p1, p0, Lw0/xg;->g:J

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, v1, Lw0/wg;->H:Ljava/lang/Boolean;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 5

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lw0/xg;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lw0/xg;->b:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v2, :cond_2

    :try_start_0
    sget v3, Lw0/xg;->E:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    iput-object v2, p0, Lw0/xg;->h:Ljava/lang/String;

    return-object v2

    :cond_3
    :try_start_1
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "persist.device.real.serialno"

    const-string v3, ""

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v0

    :catchall_1
    :cond_4
    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "unknown"

    :goto_2
    iput-object v1, p0, Lw0/xg;->h:Ljava/lang/String;

    return-object v1
.end method

.method public final i(II)Ljava/lang/Float;
    .locals 2

    iget-object v0, p0, Lw0/xg;->b:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lw0/t1;->L(Ljava/lang/Long;Ljava/lang/Integer;)Lw0/i5;

    move-result-object p2

    sget-object v0, Lw0/i5;->a:Lw0/i5;

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Float;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Float;

    return-object p1

    :cond_3
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of p2, p1, Ljava/lang/Long;

    if-eqz p2, :cond_5

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final j(II)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lw0/xg;->b:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lw0/t1;->L(Ljava/lang/Long;Ljava/lang/Integer;)Lw0/i5;

    move-result-object p2

    sget-object v0, Lw0/i5;->a:Lw0/i5;

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_3
    instance-of p2, p1, Ljava/lang/Float;

    if-eqz p2, :cond_4

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
