.class public interface abstract Lecarx/xsf/mediacenter/IMusicClient;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/IMusicClient$Default;,
        Lecarx/xsf/mediacenter/IMusicClient$Stub;,
        Lecarx/xsf/mediacenter/IMusicClient$Stub$Proxy;,
        Lecarx/xsf/mediacenter/IMusicClient$_Parcel;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "ecarx.xsf.mediacenter.IMusicClient"


# virtual methods
.method public abstract ctrlCollect(IZ)I
.end method

.method public abstract ctrlCollectByUUID(ILjava/lang/String;Z)V
.end method

.method public abstract ctrlPauseMediaList(I)Z
.end method

.method public abstract ctrlPlayMediaList(I)Z
.end method

.method public abstract getContentList()Ljava/util/List;
.end method

.method public abstract getCurrentProgress()J
.end method

.method public abstract getCurrentSourceType()I
.end method

.method public abstract getMediaSourceTypeList()[I
.end method

.method public abstract getMultiMediaList([I)Lecarx/xsf/mediacenter/IMediaLists;
.end method

.method public abstract getMusicPlaybackInfo()Lecarx/xsf/mediacenter/IMusicPlaybackInfo;
.end method

.method public abstract getPlaylist(I)Ljava/util/List;
.end method

.method public abstract onCancelRecommend(Lecarx/xsf/mediacenter/IRecommend;)Z
.end method

.method public abstract onCollect(IZ)Z
.end method

.method public abstract onDownload(IZ)Z
.end method

.method public abstract onExit()Z
.end method

.method public abstract onForward()Z
.end method

.method public abstract onLoopModeChange(I)Z
.end method

.method public abstract onMediaCenterFocusChanged(Ljava/lang/String;)V
.end method

.method public abstract onMediaForward(Z)Z
.end method

.method public abstract onMediaQualityChange(I)Z
.end method

.method public abstract onMediaRewind(Z)Z
.end method

.method public abstract onMediaSelected(Lecarx/xsf/mediacenter/IMedia;)Z
.end method

.method public abstract onMediaSelectedPlay(ILjava/lang/String;)Z
.end method

.method public abstract onNext()Z
.end method

.method public abstract onPause()Z
.end method

.method public abstract onPlay()Z
.end method

.method public abstract onPlayMediaList(II)Z
.end method

.method public abstract onPlayRecommend(Lecarx/xsf/mediacenter/IRecommend;)Z
.end method

.method public abstract onPrevious()Z
.end method

.method public abstract onReplay()Z
.end method

.method public abstract onRewind()Z
.end method

.method public abstract onSearchMusic(Ljava/lang/String;Ljava/lang/String;IZZLecarx/xsf/mediacenter/ISearchMusicCallback;)V
.end method

.method public abstract onSeek(J)Z
.end method

.method public abstract onSourceChanged(ILjava/lang/String;)Z
.end method

.method public abstract onSourceSelected(I)Z
.end method

.method public abstract operationType(I)V
.end method

.method public abstract selectListMediaPlay(IILjava/lang/String;)Z
.end method
