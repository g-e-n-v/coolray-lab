.class public Lecarx/xsf/mediacenter/IMusicClient$Default;
.super Ljava/lang/Object;

# interfaces
.implements Lecarx/xsf/mediacenter/IMusicClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/IMusicClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ctrlCollect(IZ)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ctrlCollectByUUID(ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public ctrlPauseMediaList(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ctrlPlayMediaList(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getContentList()Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentProgress()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentSourceType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMediaSourceTypeList()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiMediaList([I)Lecarx/xsf/mediacenter/IMediaLists;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMusicPlaybackInfo()Lecarx/xsf/mediacenter/IMusicPlaybackInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaylist(I)Ljava/util/List;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCancelRecommend(Lecarx/xsf/mediacenter/IRecommend;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCollect(IZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDownload(IZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onExit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onForward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLoopModeChange(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMediaCenterFocusChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMediaForward(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMediaQualityChange(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMediaRewind(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMediaSelected(Lecarx/xsf/mediacenter/IMedia;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMediaSelectedPlay(ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPlay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPlayMediaList(II)Z
    .locals 0

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

    const/4 v0, 0x0

    return v0
.end method

.method public onReplay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRewind()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSearchMusic(Ljava/lang/String;Ljava/lang/String;IZZLecarx/xsf/mediacenter/ISearchMusicCallback;)V
    .locals 0

    return-void
.end method

.method public onSeek(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSourceChanged(ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSourceSelected(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public operationType(I)V
    .locals 0

    return-void
.end method

.method public selectListMediaPlay(IILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
