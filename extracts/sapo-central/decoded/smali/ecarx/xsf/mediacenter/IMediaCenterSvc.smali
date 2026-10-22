.class public interface abstract Lecarx/xsf/mediacenter/IMediaCenterSvc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/IMediaCenterSvc$Default;,
        Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub;,
        Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub$Proxy;,
        Lecarx/xsf/mediacenter/IMediaCenterSvc$_Parcel;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "ecarx.xsf.mediacenter.IMediaCenterSvc"


# virtual methods
.method public abstract asyncSendVrChannelResult(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;Ljava/lang/String;)Z
.end method

.method public abstract cancelMusicCtrlCapabilityDeclaration(Landroid/os/IBinder;)Z
.end method

.method public abstract cancelNewsCtrlCapabilityDeclaration(Landroid/os/IBinder;)Z
.end method

.method public abstract cancelRadioCtrlCapabilityDeclaration(Landroid/os/IBinder;)Z
.end method

.method public abstract cancelSupportCollectTypes(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)Z
.end method

.method public abstract cancelSupportDownloadTypes(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)Z
.end method

.method public abstract cancelVrChannelCapability(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;)Z
.end method

.method public abstract declareMediaCenterCapability(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)V
.end method

.method public abstract declareMusicCtrlCapability([ILandroid/os/IBinder;)Z
.end method

.method public abstract declareNewsCtrlCapability(Landroid/os/IBinder;)Z
.end method

.method public abstract declareRadioCtrlCapability([ILandroid/os/IBinder;)Z
.end method

.method public abstract declareSupportCollectTypes(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)Z
.end method

.method public abstract declareSupportDownloadTypes(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)Z
.end method

.method public abstract declareVrChannelCapability(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;Landroid/os/IBinder;)Z
.end method

.method public abstract declareVrCtrlPriority(Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
.end method

.method public abstract getMediaControlClientApi()Landroid/os/IBinder;
.end method

.method public abstract getMediaControllerApi()Landroid/os/IBinder;
.end method

.method public abstract getStateBinder()Landroid/os/IBinder;
.end method

.method public abstract queryCurrentFocusClient(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Ljava/lang/String;
.end method

.method public abstract registerInMusic(Ljava/lang/String;Lecarx/xsf/mediacenter/IMusicClient;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
.end method

.method public abstract registerInNews(Ljava/lang/String;Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
.end method

.method public abstract registerInVideo(Ljava/lang/String;Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
.end method

.method public abstract registerMusic(Lecarx/xsf/mediacenter/IMusicClient;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
.end method

.method public abstract registerNews(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
.end method

.method public abstract registerVideo(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
.end method

.method public abstract requestPlay(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z
.end method

.method public abstract unregister(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z
.end method

.method public abstract updateCollectMsg(Lecarx/xsf/mediacenter/IMediaCenterClientToken;ILjava/lang/String;)V
.end method

.method public abstract updateCurrentLyric(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Ljava/lang/String;)V
.end method

.method public abstract updateCurrentProgress(Lecarx/xsf/mediacenter/IMediaCenterClientToken;J)V
.end method

.method public abstract updateCurrentRecommendInfo(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Lecarx/xsf/mediacenter/IRecommend;)Z
.end method

.method public abstract updateCurrentSourceType(Lecarx/xsf/mediacenter/IMediaCenterClientToken;I)V
.end method

.method public abstract updateErrorMsg(Lecarx/xsf/mediacenter/IMediaCenterClientToken;ILjava/lang/String;)V
.end method

.method public abstract updateMediaContent(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Ljava/util/List;)Z
.end method

.method public abstract updateMediaList(Lecarx/xsf/mediacenter/IMediaCenterClientToken;IILjava/util/List;)V
.end method

.method public abstract updateMediaPlayList(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;)V
.end method

.method public abstract updateMediaSourceTypeList(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)V
.end method

.method public abstract updateMultiMediaList(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Lecarx/xsf/mediacenter/IMediaLists;)Z
.end method

.method public abstract updateMusicPlaybackState(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Lecarx/xsf/mediacenter/IMusicPlaybackInfo;)Z
.end method

.method public abstract updateNewsPlaybackState(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;)Z
.end method

.method public abstract updatePlaylist(Lecarx/xsf/mediacenter/IMediaCenterClientToken;ILjava/util/List;)V
.end method

.method public abstract updateVideoPlaybackState(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;)Z
.end method
