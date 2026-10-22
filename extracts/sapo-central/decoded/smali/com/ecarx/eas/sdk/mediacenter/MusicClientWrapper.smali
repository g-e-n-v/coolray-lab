.class public Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;
.super Lecarx/xsf/mediacenter/IMusicClient$Stub;

# interfaces
.implements Lcom/ecarx/eas/sdk/mediacenter/ExCallbackWrapper$Action;


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicClientWrapper"


# instance fields
.field private final mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;


# direct methods
.method public constructor <init>(Lcom/ecarx/eas/sdk/mediacenter/MusicClient;)V
    .locals 0

    invoke-direct {p0}, Lecarx/xsf/mediacenter/IMusicClient$Stub;-><init>()V

    iput-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    return-void
.end method


# virtual methods
.method public ctrlCollect(IZ)I
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->ctrlCollect(IZ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public ctrlCollectByUUID(ILjava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->ctrlCollectByUUID(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public ctrlPauseMediaList(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->ctrlPauseMediaList(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ctrlPlayMediaList(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->ctrlPlayMediaList(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getContentList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->getContentList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentProgress()J
    .locals 2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->getCurrentProgress()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentSourceType()I
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->getCurrentSourceType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaSourceTypeList()[I
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->getMediaSourceTypeList()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getMultiMediaList([I)Lecarx/xsf/mediacenter/IMediaLists;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMusicPlaybackInfo()Lecarx/xsf/mediacenter/IMusicPlaybackInfo;
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->createPlaybackInfoBinder(Lcom/ecarx/eas/sdk/mediacenter/MusicClient;)Lecarx/xsf/mediacenter/IMusicPlaybackInfo$Stub;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaylist(I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->getPlaylist(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onAction(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAction:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "MusicClientWrapper"

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "progress"

    const-wide/16 v0, -0x1

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    invoke-virtual {v0, p1, p2}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onSeek(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onSeek(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onSeek parse error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCancelRecommend(Lecarx/xsf/mediacenter/IRecommend;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCollect(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onCollect(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDownload(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onDownload(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onExAction(ILjava/lang/String;Ljava/lang/String;Lcom/ecarx/eas/xsf/mediacenter/IExContent;Landroid/os/IBinder;)Lcom/ecarx/eas/xsf/mediacenter/IExContent;
    .locals 0

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "onExAction:"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MusicClientWrapper"

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public onExit()Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onExit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onForward()Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onForward()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLoopModeChange(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onLoopModeChange(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMediaCenterFocusChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onMediaCenterFocusChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMediaForward(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onMediaForward(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMediaQualityChange(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onMediaQualityChange(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMediaRewind(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onMediaRewind(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMediaSelected(Lecarx/xsf/mediacenter/IMedia;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMediaSelectedPlay(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onMediaSelectedPlay(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNext()Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onPause()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPlay()Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPlayMediaList(II)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onPlayMediaList(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPlayRecommend(Lecarx/xsf/mediacenter/IRecommend;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onReplay()Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onReplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRewind()Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onRewind()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchMusic(Ljava/lang/String;Ljava/lang/String;IZZLecarx/xsf/mediacenter/ISearchMusicCallback;)V
    .locals 0

    return-void
.end method

.method public onSeek(J)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onSeek(J)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSourceChanged(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onSourceChanged(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSourceSelected(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->onSourceSelected(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public operationType(I)V
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->operationType(I)V

    :cond_0
    return-void
.end method

.method public selectListMediaPlay(IILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;->mOriginClazz:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->selectListMediaPlay(IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
