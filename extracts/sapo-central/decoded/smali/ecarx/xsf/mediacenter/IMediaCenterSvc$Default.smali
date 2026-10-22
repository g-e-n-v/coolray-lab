.class public Lecarx/xsf/mediacenter/IMediaCenterSvc$Default;
.super Ljava/lang/Object;

# interfaces
.implements Lecarx/xsf/mediacenter/IMediaCenterSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/IMediaCenterSvc;
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

.method public asyncSendVrChannelResult(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public cancelMusicCtrlCapabilityDeclaration(Landroid/os/IBinder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public cancelNewsCtrlCapabilityDeclaration(Landroid/os/IBinder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public cancelRadioCtrlCapabilityDeclaration(Landroid/os/IBinder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public cancelSupportCollectTypes(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public cancelSupportDownloadTypes(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public cancelVrChannelCapability(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public declareMediaCenterCapability(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)V
    .locals 0

    return-void
.end method

.method public declareMusicCtrlCapability([ILandroid/os/IBinder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public declareNewsCtrlCapability(Landroid/os/IBinder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public declareRadioCtrlCapability([ILandroid/os/IBinder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public declareSupportCollectTypes(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public declareSupportDownloadTypes(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public declareVrChannelCapability(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public declareVrCtrlPriority(Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public getMediaControlClientApi()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaControllerApi()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStateBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryCurrentFocusClient(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerInMusic(Ljava/lang/String;Lecarx/xsf/mediacenter/IMusicClient;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerInNews(Ljava/lang/String;Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerInVideo(Ljava/lang/String;Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerMusic(Lecarx/xsf/mediacenter/IMusicClient;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerNews(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerVideo(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public requestPlay(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public unregister(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateCollectMsg(Lecarx/xsf/mediacenter/IMediaCenterClientToken;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateCurrentLyric(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateCurrentProgress(Lecarx/xsf/mediacenter/IMediaCenterClientToken;J)V
    .locals 0

    return-void
.end method

.method public updateCurrentRecommendInfo(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Lecarx/xsf/mediacenter/IRecommend;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateCurrentSourceType(Lecarx/xsf/mediacenter/IMediaCenterClientToken;I)V
    .locals 0

    return-void
.end method

.method public updateErrorMsg(Lecarx/xsf/mediacenter/IMediaCenterClientToken;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateMediaContent(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Ljava/util/List;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateMediaList(Lecarx/xsf/mediacenter/IMediaCenterClientToken;IILjava/util/List;)V
    .locals 0

    return-void
.end method

.method public updateMediaPlayList(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public updateMediaSourceTypeList(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)V
    .locals 0

    return-void
.end method

.method public updateMultiMediaList(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Lecarx/xsf/mediacenter/IMediaLists;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateMusicPlaybackState(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Lecarx/xsf/mediacenter/IMusicPlaybackInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateNewsPlaybackState(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updatePlaylist(Lecarx/xsf/mediacenter/IMediaCenterClientToken;ILjava/util/List;)V
    .locals 0

    return-void
.end method

.method public updateVideoPlaybackState(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
