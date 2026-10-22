.class public interface abstract Lecarx/xsf/mediacenter/IMusicPlaybackInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/IMusicPlaybackInfo$Default;,
        Lecarx/xsf/mediacenter/IMusicPlaybackInfo$Stub;,
        Lecarx/xsf/mediacenter/IMusicPlaybackInfo$Stub$Proxy;,
        Lecarx/xsf/mediacenter/IMusicPlaybackInfo$_Parcel;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "ecarx.xsf.mediacenter.IMusicPlaybackInfo"


# virtual methods
.method public abstract getAlbum()Ljava/lang/String;
.end method

.method public abstract getAppIcon()Ljava/lang/String;
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getArtist()Ljava/lang/String;
.end method

.method public abstract getArtwork()Landroid/net/Uri;
.end method

.method public abstract getCurrentLyricSentence()Ljava/lang/String;
.end method

.method public abstract getDisplayId()I
.end method

.method public abstract getDuration()J
.end method

.method public abstract getLaunchIntent()Landroid/app/PendingIntent;
.end method

.method public abstract getLoopMode()I
.end method

.method public abstract getLyric()Landroid/net/Uri;
.end method

.method public abstract getLyricContent()Ljava/lang/String;
.end method

.method public abstract getMediaPath()Landroid/net/Uri;
.end method

.method public abstract getMediaType()Ljava/lang/String;
.end method

.method public abstract getNextArtwork()Landroid/net/Uri;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPlaybackStatus()I
.end method

.method public abstract getPlayerIntent()Landroid/app/PendingIntent;
.end method

.method public abstract getPlayingItemPositionInQueue()I
.end method

.method public abstract getPlayingMediaListId()Ljava/lang/String;
.end method

.method public abstract getPlayingMediaListType()I
.end method

.method public abstract getPreviousArtwork()Landroid/net/Uri;
.end method

.method public abstract getRadioFrequency()Ljava/lang/String;
.end method

.method public abstract getRadioMode()I
.end method

.method public abstract getRadioStationName()Ljava/lang/String;
.end method

.method public abstract getSourceType()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUuid()Ljava/lang/String;
.end method

.method public abstract getVip()I
.end method

.method public abstract isCollected()Z
.end method

.method public abstract isDownloaded()Z
.end method

.method public abstract isSupportCollect()Z
.end method

.method public abstract isSupportDownload()Z
.end method

.method public abstract isSupportLoopModeSwitch()Z
.end method

.method public abstract isSupportVrCtrlPlayStatus()Z
.end method
