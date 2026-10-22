.class public final Lw0/nd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lw0/nd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lw0/nd;->a:I

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lw0/od;->g:Z

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, Lw0/od;->a:Lw0/od;

    sget-object v0, Lw0/od;->d:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v1, Lw0/od;->e:Ljava/lang/Object;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    sget-boolean v2, Lw0/od;->f:Z

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->isServiceAlive()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lw0/od;->l()V

    goto :goto_2

    :cond_4
    sget v2, Lw0/od;->p:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    sget-boolean v2, Lw0/od;->y:Z

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->queryCurrentFocusClient(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual {v0, v1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->requestPlay(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkFocus IPC: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "MediaCenterBridge"

    invoke-static {v0, v1, v2}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_7
    :goto_2
    sget-object v0, Lw0/od;->k:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_3
    return-void

    :pswitch_0
    sget-boolean v0, Lw0/od;->g:Z

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    sget-object v0, Lw0/od;->a:Lw0/od;

    const-string v1, "poll"

    invoke-virtual {v0, v1}, Lw0/od;->b(Ljava/lang/String;)V

    sget-object v0, Lw0/od;->k:Landroid/os/Handler;

    if-eqz v0, :cond_a

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
