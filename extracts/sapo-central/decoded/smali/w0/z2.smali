.class public final synthetic Lw0/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lw0/a3;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;ZZLw0/a3;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/z2;->a:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean p2, p0, Lw0/z2;->b:Z

    iput-boolean p3, p0, Lw0/z2;->c:Z

    iput-object p4, p0, Lw0/z2;->d:Lw0/a3;

    iput-boolean p5, p0, Lw0/z2;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lw0/z2;->a:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v1, p0, Lw0/z2;->b:Z

    iget-boolean v2, p0, Lw0/z2;->c:Z

    iget-object v3, p0, Lw0/z2;->d:Lw0/a3;

    iget-boolean v4, p0, Lw0/z2;->e:Z

    sget-object v5, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v5, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v5, :cond_7

    iget-boolean v5, v0, Lcom/ex/auto/CentralWatchdogService;->W0:Z

    if-nez v5, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string v1, "proje\u00e7\u00e3o ativa"

    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->R0(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz v2, :cond_5

    iget v1, v0, Lcom/ex/auto/CentralWatchdogService;->X0:I

    iget v2, v0, Lcom/ex/auto/CentralWatchdogService;->S0:I

    if-lt v1, v2, :cond_2

    const-string v1, "limite de pedidos de sa\u00fade"

    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->R0(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "boot_stable"

    const/4 v5, 0x0

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "CentralWatchdog"

    if-nez v1, :cond_3

    const-string v1, "AA trigger: sem conex\u00e3o, mas boot ainda n\u00e3o estabilizou \u2014 adiando"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-wide v4, v0, Lcom/ex/auto/CentralWatchdogService;->T0:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    if-eqz v4, :cond_4

    const-string v1, "CarPlay em sess\u00e3o"

    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->R0(Ljava/lang/String;)V

    return-void

    :cond_4
    iget v1, v0, Lcom/ex/auto/CentralWatchdogService;->X0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ex/auto/CentralWatchdogService;->X0:I

    iput v5, v0, Lcom/ex/auto/CentralWatchdogService;->Z0:I

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "AA trigger: sem conex\u00e3o em ~"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/ex/auto/CentralWatchdogService;->U0:I

    int-to-long v6, v4

    iget-wide v8, v0, Lcom/ex/auto/CentralWatchdogService;->T0:J

    mul-long/2addr v6, v8

    const/16 v4, 0x3e8

    int-to-long v8, v4

    div-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "s \u2014 pedindo avalia\u00e7\u00e3o de sa\u00fade (#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/ex/auto/CentralWatchdogService;->X0:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "); n\u00e3o reinicio servi\u00e7os por conta pr\u00f3pria"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v5}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->f1:J

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AA trigger #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/ex/auto/CentralWatchdogService;->X0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->G(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/v2;

    const/16 v4, 0xf

    invoke-direct {v2, v0, v4}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    iget v1, v0, Lcom/ex/auto/CentralWatchdogService;->Y0:I

    iget v2, v0, Lcom/ex/auto/CentralWatchdogService;->V0:I

    if-lt v1, v2, :cond_6

    const-string v1, "timeout geral"

    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->R0(Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-wide v4, v0, Lcom/ex/auto/CentralWatchdogService;->T0:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_0
    return-void
.end method
