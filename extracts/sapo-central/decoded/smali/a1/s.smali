.class public final La1/s;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, La1/s;->a:I

    iput-object p2, p0, La1/s;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget v0, p0, La1/s;->a:I

    iget-object v1, p0, La1/s;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    const-string v0, "ctx"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/ex/auto/WifiFloaterService;

    iget-object p1, v1, Lcom/ex/auto/WifiFloaterService;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const-string v0, "alpha"

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void

    :pswitch_0
    check-cast v1, Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->s()V

    return-void

    :pswitch_1
    check-cast v1, Lcom/ex/auto/CentralApplication;

    :try_start_0
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    sget p1, Lcom/ex/auto/CentralApplication;->a:I

    invoke-virtual {v1}, Lcom/ex/auto/CentralApplication;->a()V

    return-void

    :pswitch_2
    check-cast v1, Lcom/ex/auto/BlackoutFloaterService;

    iget-boolean p1, v1, Lcom/ex/auto/BlackoutFloaterService;->c:Z

    if-eqz p1, :cond_1

    const-string p1, "BlackoutFloater"

    const-string p2, "Volume (broadcast) alterado \u2014 restaurando backlight"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/ex/auto/BlackoutFloaterService;->d()V

    :cond_1
    return-void

    :pswitch_3
    check-cast v1, Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->h()V

    return-void

    :pswitch_4
    const-string p1, "com.geely.hvacstepperv2.PRESETS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast v1, Lcom/geely/hvacstepperv2/TempStepperService;

    iget-object p1, v1, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    new-instance p2, La1/r;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, La1/r;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
