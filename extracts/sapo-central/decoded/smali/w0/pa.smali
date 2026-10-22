.class public final synthetic Lw0/pa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Landroid/car/hardware/property/CarPropertyManager;

.field public final synthetic d:Z

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroid/car/hardware/property/CarPropertyManager;ILcom/ex/auto/MainActivity;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lw0/pa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/pa;->c:Landroid/car/hardware/property/CarPropertyManager;

    iput p2, p0, Lw0/pa;->e:I

    iput-object p3, p0, Lw0/pa;->b:Lcom/ex/auto/MainActivity;

    iput-boolean p4, p0, Lw0/pa;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Landroid/car/hardware/property/CarPropertyManager;ZI)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lw0/pa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/pa;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/pa;->c:Landroid/car/hardware/property/CarPropertyManager;

    iput-boolean p3, p0, Lw0/pa;->d:Z

    iput p4, p0, Lw0/pa;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lw0/pa;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v3, p0, Lw0/pa;->b:Lcom/ex/auto/MainActivity;

    iget-object v0, p0, Lw0/pa;->c:Landroid/car/hardware/property/CarPropertyManager;

    iget-boolean v6, p0, Lw0/pa;->d:Z

    iget v7, p0, Lw0/pa;->e:I

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-static {v4, v5}, Lcom/ex/auto/VhalProviderService;->b(J)Lw0/wg;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v5, v2, Lw0/wg;->q:Ljava/lang/Float;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    const/4 v5, 0x1

    :try_start_1
    filled-new-array {v1, v5}, [I

    move-result-object v5

    move v8, v1

    :goto_1
    const/4 v9, 0x2

    if-ge v8, v9, :cond_2

    aget v9, v5, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v10, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v10, 0x14

    invoke-static {v10}, Lcom/ex/auto/Politica;->h(I)I

    move-result v10

    invoke-static {v0, v10, v9}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x40a00000    # 5.0f

    cmpg-float v10, v10, v9

    if-gtz v10, :cond_1

    const/high16 v10, 0x41a00000    # 20.0f

    cmpg-float v10, v9, v10

    if-gtz v10, :cond_1

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_1
    :cond_2
    move-object v5, v4

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    :try_start_3
    iget-object v2, v2, Lw0/wg;->d:Ljava/lang/Float;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_5

    :cond_4
    :try_start_4
    sget v2, Lw0/pg;->a:I

    invoke-static {v0}, Lw0/pg;->l(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_2
    move-object v2, v4

    :cond_5
    :goto_3
    if-eqz v6, :cond_6

    :try_start_5
    iget-object v8, v3, Lcom/ex/auto/MainActivity;->q1:[I

    iget-object v9, v3, Lcom/ex/auto/MainActivity;->s1:Ljava/util/Set;

    const v10, 0x20020500

    invoke-static {v0, v10, v8, v9}, Lcom/ex/auto/MainActivity;->b1(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_4

    :cond_6
    move-object v8, v4

    :goto_4
    if-eqz v6, :cond_7

    iget-object v4, v3, Lcom/ex/auto/MainActivity;->r1:[I

    iget-object v9, v3, Lcom/ex/auto/MainActivity;->t1:Ljava/util/Set;

    const v10, 0x22010100

    invoke-static {v0, v10, v4, v9}, Lcom/ex/auto/MainActivity;->b1(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;

    move-result-object v4

    :cond_7
    move-object v9, v4

    iget-object v0, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    move-object v4, v5

    move-object v5, v2

    new-instance v2, Lw0/r9;

    invoke-direct/range {v2 .. v9}, Lw0/r9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/Float;Ljava/lang/Float;ZILjava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iput-boolean v1, v3, Lcom/ex/auto/MainActivity;->y:Z

    return-void

    :goto_5
    iput-boolean v1, v3, Lcom/ex/auto/MainActivity;->y:Z

    throw v0

    :pswitch_0
    iget-object v0, p0, Lw0/pa;->c:Landroid/car/hardware/property/CarPropertyManager;

    iget v2, p0, Lw0/pa;->e:I

    iget-object v3, p0, Lw0/pa;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v4, p0, Lw0/pa;->d:Z

    sget v5, Lcom/ex/auto/MainActivity;->z1:I

    sget v5, Lw0/u;->q:I

    invoke-static {v0, v5, v1, v2}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v0

    iget-object v1, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/ta;

    const/4 v5, 0x3

    invoke-direct {v2, v3, v0, v4, v5}, Lw0/ta;-><init>(Landroid/content/ContextWrapper;ZZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
