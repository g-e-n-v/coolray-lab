.class public final Lw0/md;
.super Lcom/ecarx/eas/sdk/mediacenter/MusicClient;
.source "SourceFile"


# instance fields
.field public volatile a:Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;


# direct methods
.method public static a(Ljava/lang/String;Lh2/l;)V
    .locals 3

    sget-object v0, Lw0/od;->l:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "MediaCenterBridge"

    const-string v2, "MC\u2192"

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " sem player espelhado"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p1, v0}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, " falhou ("

    invoke-static {v2, p0, v0}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") \u2014 reavaliando o player"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lw0/od;->k:Landroid/os/Handler;

    if-eqz p0, :cond_2

    new-instance p1, Lw0/r0;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, Lw0/r0;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final ctrlCollect(IZ)I
    .locals 0

    sget-object p1, Lw0/od;->a:Lw0/od;

    invoke-static {}, Lw0/od;->r()V

    const/4 p1, 0x0

    return p1
.end method

.method public final ctrlCollectByUUID(ILjava/lang/String;Z)V
    .locals 0

    sget-object p1, Lw0/od;->a:Lw0/od;

    invoke-static {}, Lw0/od;->r()V

    return-void
.end method

.method public final getCurrentProgress()J
    .locals 2

    sget-object v0, Lw0/od;->l:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getCurrentSourceType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final getMediaSourceTypeList()[I
    .locals 1

    const/4 v0, 0x6

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public final getMusicPlaybackInfo()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;
    .locals 1

    iget-object v0, p0, Lw0/md;->a:Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    return-object v0
.end method

.method public final onCollect(IZ)Z
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MC\u2192onCollect "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCenterBridge"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lw0/od;->a:Lw0/od;

    invoke-static {}, Lw0/od;->r()V

    const/4 p1, 0x1

    return p1
.end method

.method public final onExit()Z
    .locals 2

    new-instance v0, Lw0/ya;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lw0/ya;-><init>(I)V

    const-string v1, "onExit"

    invoke-static {v1, v0}, Lw0/md;->a(Ljava/lang/String;Lh2/l;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onForward()Z
    .locals 2

    new-instance v0, Lw0/ya;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lw0/ya;-><init>(I)V

    const-string v1, "onForward"

    invoke-static {v1, v0}, Lw0/md;->a(Ljava/lang/String;Lh2/l;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onMediaCenterFocusChanged(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MC\u2192onMediaCenterFocusChanged foco="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCenterBridge"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onMediaForward(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Lw0/ya;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Lw0/ya;-><init>(I)V

    const-string v0, "onMediaForward"

    invoke-static {v0, p1}, Lw0/md;->a(Ljava/lang/String;Lh2/l;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onMediaRewind(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Lw0/ya;

    const/16 v0, 0x12

    invoke-direct {p1, v0}, Lw0/ya;-><init>(I)V

    const-string v0, "onMediaRewind"

    invoke-static {v0, p1}, Lw0/md;->a(Ljava/lang/String;Lh2/l;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onNext()Z
    .locals 2

    new-instance v0, Lw0/ya;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lw0/ya;-><init>(I)V

    const-string v1, "onNext"

    invoke-static {v1, v0}, Lw0/md;->a(Ljava/lang/String;Lh2/l;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onPause()Z
    .locals 2

    new-instance v0, Lw0/ya;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lw0/ya;-><init>(I)V

    const-string v1, "onPause"

    invoke-static {v1, v0}, Lw0/md;->a(Ljava/lang/String;Lh2/l;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onPlay()Z
    .locals 2

    new-instance v0, Lw0/ya;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lw0/ya;-><init>(I)V

    const-string v1, "onPlay"

    invoke-static {v1, v0}, Lw0/md;->a(Ljava/lang/String;Lh2/l;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onPrevious()Z
    .locals 2

    new-instance v0, Lw0/ya;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lw0/ya;-><init>(I)V

    const-string v1, "onPrevious"

    invoke-static {v1, v0}, Lw0/md;->a(Ljava/lang/String;Lh2/l;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onReplay()Z
    .locals 2

    new-instance v0, Lw0/ya;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lw0/ya;-><init>(I)V

    const-string v1, "onReplay"

    invoke-static {v1, v0}, Lw0/md;->a(Ljava/lang/String;Lh2/l;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onRewind()Z
    .locals 2

    new-instance v0, Lw0/ya;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lw0/ya;-><init>(I)V

    const-string v1, "onRewind"

    invoke-static {v1, v0}, Lw0/md;->a(Ljava/lang/String;Lh2/l;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onSeek(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSeek "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lw0/ld;

    invoke-direct {v1, p1, p2}, Lw0/ld;-><init>(J)V

    invoke-static {v0, v1}, Lw0/md;->a(Ljava/lang/String;Lh2/l;)V

    return-void
.end method

.method public final onSourceChanged(ILjava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MC\u2192onSourceChanged type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pkg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCenterBridge"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public final onSourceSelected(I)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    new-instance p1, Lw0/ya;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lw0/ya;-><init>(I)V

    const-string v0, "onSourceSelected"

    invoke-static {v0, p1}, Lw0/md;->a(Ljava/lang/String;Lh2/l;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
