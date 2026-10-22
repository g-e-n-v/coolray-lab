.class public final synthetic Lw0/gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MediaBrowserHostActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MediaBrowserHostActivity;I)V
    .locals 0

    iput p2, p0, Lw0/gd;->a:I

    iput-object p1, p0, Lw0/gd;->b:Lcom/ex/auto/MediaBrowserHostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lw0/gd;->a:I

    iget-object v1, p0, Lw0/gd;->b:Lcom/ex/auto/MediaBrowserHostActivity;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lcom/ex/auto/MediaBrowserHostActivity;->c:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    :cond_0
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    iget-object v0, v1, Lcom/ex/auto/MediaBrowserHostActivity;->c:Landroid/media/session/MediaController;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    :goto_0
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_1
    iget-object v0, v1, Lcom/ex/auto/MediaBrowserHostActivity;->c:Landroid/media/session/MediaController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    :cond_3
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_2
    sget-object v0, Lx1/e;->c:Lx1/e;

    iget-object v1, v1, Lcom/ex/auto/MediaBrowserHostActivity;->c:Landroid/media/session/MediaController;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "android.media.extras.ERROR_RESOLUTION_ACTION_INTENT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    if-eqz v1, :cond_5

    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    goto :goto_1

    :catchall_0
    move-exception v1

    new-instance v2, Lx1/b;

    invoke-direct {v2, v1}, Lx1/b;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    instance-of v1, v2, Lx1/b;

    if-eqz v1, :cond_4

    check-cast v2, Lx1/b;

    iget-object v1, v2, Lx1/b;->a:Ljava/lang/Throwable;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PendingIntent de login falhou: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MediaBrowserHost"

    invoke-static {v1, v2, v3}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    return-object v0

    :pswitch_3
    sget v0, Lcom/ex/auto/MediaBrowserHostActivity;->s:I

    invoke-virtual {v1}, Lcom/ex/auto/MediaBrowserHostActivity;->i()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
