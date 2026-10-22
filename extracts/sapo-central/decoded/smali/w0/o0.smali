.class public final synthetic Lw0/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lw0/o0;->a:I

    iput p1, p0, Lw0/o0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/BlackoutFloaterService;I)V
    .locals 0

    .line 2
    const/4 p1, 0x0

    iput p1, p0, Lw0/o0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lw0/o0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lw0/o0;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lw0/o0;->b:I

    sget-object v2, Lw0/rg;->d:Landroid/os/Handler;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const-wide/16 v3, 0x7d0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lw0/rg;->e:J

    sget-object v0, Lw0/rg;->f:Lw0/r0;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    :cond_2
    sget-wide v6, Lw0/rg;->e:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sget-wide v10, Lw0/rg;->e:J

    sub-long/2addr v6, v10

    cmp-long v0, v6, v3

    if-ltz v0, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    sget-object v3, Lw0/rg;->f:Lw0/r0;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sput-wide v8, Lw0/rg;->e:J

    if-nez v0, :cond_9

    sget-object v0, Lw0/od;->a:Lw0/od;

    const-string v0, "mic do volante: "

    sget-boolean v2, Lw0/od;->z:Z

    if-eqz v2, :cond_4

    goto :goto_5

    :cond_4
    sget-object v2, Lw0/od;->l:Landroid/media/session/MediaController;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    goto :goto_1

    :cond_6
    move v5, v1

    :goto_1
    const-string v3, "MediaCenterBridge"

    if-eqz v5, :cond_7

    :try_start_0
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/session/MediaController$TransportControls;->play()V

    :goto_2
    sget-object v4, Lw0/ae;->a:Lw0/ae;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_8

    const-string v0, "pause"

    goto :goto_3

    :cond_8
    const-string v0, "play"

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " em "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mic do volante: play/pause falhou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-void

    :pswitch_0
    iget v0, p0, Lw0/o0;->b:I

    sget v2, Lcom/ex/auto/DpadFloaterService;->i:I

    const-string v2, "input keyevent "

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cmd"

    invoke-static {v2, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lw0/n;

    invoke-direct {v3, v1}, Lw0/n;-><init>(I)V

    const/16 v1, 0xbb8

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v1

    const-string v2, "keyevent "

    const-string v3, " falhou: "

    invoke-static {v2, v0, v3}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "DpadFloater"

    invoke-static {v1, v0, v2}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_6
    return-void

    :pswitch_1
    iget v0, p0, Lw0/o0;->b:I

    invoke-static {v0}, Lcom/ex/auto/BlackoutFloaterService;->e(I)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/ex/auto/BlackoutFloaterService;->a()Z

    invoke-static {v0}, Lcom/ex/auto/BlackoutFloaterService;->e(I)Z

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
