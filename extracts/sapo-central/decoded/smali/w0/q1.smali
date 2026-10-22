.class public final synthetic Lw0/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lw0/q1;->a:I

    iput-object p2, p0, Lw0/q1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lw0/q1;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "it"

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/q1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/TimerFloaterService;

    check-cast p1, Ljava/lang/Runnable;

    sget-boolean v1, Lcom/ex/auto/TimerFloaterService;->o:Z

    invoke-static {p1, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/ex/auto/TimerFloaterService;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lw0/q1;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    check-cast p1, Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lw0/q1;->b:Ljava/lang/Object;

    check-cast v0, Lw0/dd;

    check-cast p1, Landroid/graphics/Bitmap;

    sget-object v1, Lcom/ex/auto/MediaBarFloaterService;->v:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lw0/dd;->c(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lw0/q1;->b:Ljava/lang/Object;

    check-cast v0, Le/i;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Le/i;->dismiss()V

    sget-object p1, Lw0/ae;->a:Lw0/ae;

    const-string p1, "BanChecker"

    const-string v0, "bloqueio removido \u2014 este XDSN saiu da banlist"

    invoke-static {p1, v0, v1}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_3
    iget-object v0, p0, Lw0/q1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ly1/s;->U(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%08x"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object v0, p0, Lw0/q1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/CentralWatchdogService;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    if-eqz p1, :cond_1

    const-string v2, "viagem zerada pelo toque no \u00edcone da barra"

    goto :goto_0

    :cond_1
    const-string v2, "toque no \u00edcone da barra: N\u00c3O zerou (od\u00f4metro ileg\u00edvel)"

    :goto_0
    const-string v3, "CentralWatchdog"

    invoke-static {v3, v2, v1}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/k2;

    const/4 v3, 0x2

    invoke-direct {v2, v0, p1, v3}, Lw0/k2;-><init>(Lcom/ex/auto/CentralWatchdogService;ZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_5
    iget-object v0, p0, Lw0/q1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
