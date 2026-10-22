.class public final synthetic Lw0/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;ZI)V
    .locals 0

    iput p3, p0, Lw0/k2;->a:I

    iput-object p1, p0, Lw0/k2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean p2, p0, Lw0/k2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lw0/k2;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/k2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v2, p0, Lw0/k2;->c:Z

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    if-eqz v2, :cond_0

    const v2, 0x7f0f0326

    goto :goto_0

    :cond_0
    const v2, 0x7f0f0327

    :goto_0
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/k2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v2, p0, Lw0/k2;->c:Z

    :try_start_1
    const-string v3, "settings get global global_http_proxy_host 2>/dev/null"

    const/16 v4, 0x1388

    invoke-static {v4, v3}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :catchall_1
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/j2;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3}, Lw0/j2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/k2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v1, p0, Lw0/k2;->c:Z

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->c1()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->N0:Lw0/l4;

    const-string v3, "anterior"

    invoke-static {v2, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    sget-object v2, Lw0/l4;->c:Lw0/l4;

    :goto_1
    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->N0:Lw0/l4;

    if-eq v2, v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dono do WiFi: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/ex/auto/CentralWatchdogService;->N0:Lw0/l4;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (STA caiu, ap0 no ar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CentralWatchdog"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->N0:Lw0/l4;

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
