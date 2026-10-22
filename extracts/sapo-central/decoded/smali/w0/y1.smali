.class public final synthetic Lw0/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lw0/y1;->a:I

    iput-boolean p2, p0, Lw0/y1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lw0/y1;->a:I

    iget-boolean v1, p0, Lw0/y1;->b:Z

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lw0/od;->a:Lw0/od;

    if-eqz v1, :cond_0

    const-string v1, "CarPlay conectado"

    goto :goto_0

    :cond_0
    const-string v1, "CarPlay desconectado"

    :goto_0
    invoke-virtual {v0, v1}, Lw0/od;->b(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v0, "cmd"

    const-string v2, "keepAlive: launcher app_monitor_disabled="

    const-string v3, "setprop persist.launcher.app_monitor_disabled "

    const-string v4, "CentralWatchdog"

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "true"

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    const-string v1, "false"

    :goto_1
    const-string v5, "getprop persist.launcher.app_monitor_disabled"

    new-instance v6, Lw0/n;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lw0/n;-><init>(I)V

    const/4 v8, 0x0

    const/16 v9, 0xbb8

    invoke-static {v5, v9, v8, v6}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nam force-stop com.flyme.auto.launcher"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw0/n;

    invoke-direct {v0, v7}, Lw0/n;-><init>(I)V

    const/16 v5, 0x1770

    invoke-static {v3, v5, v8, v0}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (launcher reiniciado p/ reler)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keepAlive app_monitor prop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
