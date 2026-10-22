.class public final synthetic Lw0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lw0/g;->a:I

    iput-object p1, p0, Lw0/g;->b:Ljava/lang/Object;

    iput-object p3, p0, Lw0/g;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    iget p1, p0, Lw0/g;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lw0/g;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/TempBattPillFloaterService;

    iget-object v2, p0, Lw0/g;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/ex/auto/TempBattPillFloaterService;->v:Lcom/ex/auto/TempBattPillFloaterService;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lw0/t1;->O(Landroid/content/Context;I)Lw0/k;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, p1, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    iget-object v4, p1, Lcom/ex/auto/TempBattPillFloaterService;->o:Lw0/yg;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v3, v2, Lw0/k;->c:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/ex/auto/TempBattPillFloaterService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_1

    new-instance v1, Lw0/j;

    invoke-direct {v1, v4, v4, v4}, Lw0/j;-><init>(Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    move-object v4, v1

    goto :goto_3

    :cond_1
    :try_start_0
    sget v5, Lw0/u;->d:I

    invoke-virtual {v3, v5, v1}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v4

    :goto_0
    iget-object v5, p1, Lcom/ex/auto/TempBattPillFloaterService;->j:[I

    array-length v6, v5

    move v7, v0

    move-object v8, v4

    :goto_1
    if-ge v7, v6, :cond_2

    aget v8, v5, v7

    const v9, 0x15400500

    :try_start_1
    invoke-virtual {v3, v9, v8}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-object v8, v4

    :goto_2
    if-nez v8, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :try_start_2
    sget v5, Lw0/u;->e:I

    sget v6, Lw0/u;->f:I

    invoke-virtual {v3, v5, v6}, Landroid/car/hardware/property/CarPropertyManager;->getBooleanProperty(II)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    new-instance v3, Lw0/j;

    invoke-direct {v3, v1, v8, v4}, Lw0/j;-><init>(Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    move-object v4, v3

    :cond_3
    :goto_3
    iput-object v4, p1, Lcom/ex/auto/TempBattPillFloaterService;->n:Lw0/j;

    iput-object v2, p1, Lcom/ex/auto/TempBattPillFloaterService;->l:Lw0/k;

    iput v0, p1, Lcom/ex/auto/TempBattPillFloaterService;->m:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/ex/auto/TempBattPillFloaterService;->k:Ljava/lang/Integer;

    iget-object p2, p1, Lcom/ex/auto/TempBattPillFloaterService;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    const v0, -0xff0100

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object p2, p1, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    iget-object p1, p1, Lcom/ex/auto/TempBattPillFloaterService;->o:Lw0/yg;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4
    return-void

    :pswitch_0
    iget-object p1, p0, Lw0/g;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/MainActivity;

    iget-object p2, p0, Lw0/g;->c:Ljava/lang/Object;

    check-cast p2, Lw0/xb;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {p1, p2}, Lcom/ex/auto/MainActivity;->s0(Lw0/xb;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lw0/g;->b:Ljava/lang/Object;

    check-cast p1, Lw0/hc;

    iget-object p2, p0, Lw0/g;->c:Ljava/lang/Object;

    check-cast p2, Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v2, Lw0/i0;->a:Landroidx/emoji2/text/m;

    iget-object v2, p1, Lw0/hc;->b:Ljava/lang/String;

    const-string v3, "download:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "phase"

    invoke-static {v2, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lw0/i0;->a:Landroidx/emoji2/text/m;

    const-string v4, "manual"

    invoke-virtual {v3, v4, v2}, Landroidx/emoji2/text/m;->u(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v5, "getString(...)"

    if-nez v2, :cond_7

    iget-object p1, v3, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw0/n6;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lw0/n6;->b:Ljava/lang/String;

    if-nez p1, :cond_6

    :cond_5
    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->W2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_6
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f0f00b4

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/ex/auto/MainActivity;->Z1(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1, v1}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_5

    :cond_7
    const v1, 0x7f0f053d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/ex/auto/MainActivity;->Z1(Ljava/lang/CharSequence;)V

    :try_start_3
    iget-object v1, p2, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lw0/lb;

    invoke-direct {v2, p2, p1, v0}, Lw0/lb;-><init>(Lcom/ex/auto/MainActivity;Lw0/hc;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    sget-object v0, Lw0/i0;->a:Landroidx/emoji2/text/m;

    invoke-virtual {v0, v4}, Landroidx/emoji2/text/m;->r(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lcom/ex/auto/MainActivity;->Z(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ex/auto/MainActivity;->Z1(Ljava/lang/CharSequence;)V

    :goto_5
    return-void

    :pswitch_2
    iget-object p1, p0, Lw0/g;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p2, p0, Lw0/g;->c:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/CountDownLatch;

    sget v0, Lcom/ex/auto/InstallerActivity;->v:I

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lw0/g;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/AcProgramEditActivity;

    iget-object p2, p0, Lw0/g;->c:Ljava/lang/Object;

    check-cast p2, Landroid/widget/RadioButton;

    iget-object v0, p1, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

    new-instance v1, Lw0/l;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_6

    :cond_8
    const-wide/16 v2, 0x0

    :goto_6
    const-string p2, "recirc"

    invoke-direct {v1, p2, v2, v3}, Lw0/l;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/ex/auto/AcProgramEditActivity;->t()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
