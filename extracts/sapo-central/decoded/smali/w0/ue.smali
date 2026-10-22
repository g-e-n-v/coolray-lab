.class public final synthetic Lw0/ue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/QuickAccessFloaterService;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lw0/ue;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw0/ue;->c:I

    iput-object p2, p0, Lw0/ue;->b:Lcom/ex/auto/QuickAccessFloaterService;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;II)V
    .locals 0

    .line 2
    iput p3, p0, Lw0/ue;->a:I

    iput-object p1, p0, Lw0/ue;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iput p2, p0, Lw0/ue;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lw0/ue;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lw0/ue;->c:I

    iget-object v1, p0, Lw0/ue;->b:Lcom/ex/auto/QuickAccessFloaterService;

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    iget-object v2, v1, Lcom/ex/auto/QuickAccessFloaterService;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/ue;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v3, p0, Lw0/ue;->c:I

    iget-boolean v4, v0, Lcom/ex/auto/QuickAccessFloaterService;->M:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    filled-new-array {v1, v2}, [I

    move-result-object v2

    :goto_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_4

    aget v4, v2, v1

    const v5, 0x20020500

    invoke-static {v0, v5, v4, v3}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/ue;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v1, p0, Lw0/ue;->c:I

    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->v(I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/ue;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v2, p0, Lw0/ue;->c:I

    iget-boolean v3, v0, Lcom/ex/auto/QuickAccessFloaterService;->N:Z

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/ex/auto/QuickAccessFloaterService;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v2, v3, :cond_5

    iput-boolean v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->N:Z

    const-string v0, "QuickAccessFloater"

    const-string v1, "initDriveRegenCar: CarService n\u00e3o respondeu em 10 s \u2014 liberando nova tentativa"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
