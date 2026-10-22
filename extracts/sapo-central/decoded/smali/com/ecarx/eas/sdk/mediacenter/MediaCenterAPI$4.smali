.class Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;
.super Lecarx/xsf/mediacenter/IMusicPlaybackInfo$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->createPlaybackInfoBinder(Lcom/ecarx/eas/sdk/mediacenter/MusicClient;)Lecarx/xsf/mediacenter/IMusicPlaybackInfo$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final val$client:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;


# direct methods
.method public constructor <init>(Lcom/ecarx/eas/sdk/mediacenter/MusicClient;)V
    .locals 0

    iput-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->val$client:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    invoke-direct {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo$Stub;-><init>()V

    return-void
.end method

.method private info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->val$client:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;->getMusicPlaybackInfo()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getAlbum()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAppIcon()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getAppIcon()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getArtwork()Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getArtwork()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentLyricSentence()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getCurrentLyricSentence()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getCurrentLyricSentence()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getDisplayId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .locals 2

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLaunchIntent()Landroid/app/PendingIntent;
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getLaunchIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoopMode()I
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getLoopMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLyric()Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getLyric()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLyricContent()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getLyricContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getLyricContent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getMediaPath()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getMediaType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextArtwork()Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getNextArtwork()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaybackStatus()I
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getPlaybackStatus()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayerIntent()Landroid/app/PendingIntent;
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getPlayerIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayingItemPositionInQueue()I
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getPlayingItemPositionInQueue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayingMediaListId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getPlayingMediaListId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayingMediaListType()I
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getPlayingMediaListType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPreviousArtwork()Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getPreviousArtwork()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRadioFrequency()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getRadioFrequency()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getRadioFrequency()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRadioMode()I
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getRadioMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRadioStationName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getRadioStationName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceType()I
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getSourceType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVip()I
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getVip()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isCollected()Z
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->isCollected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDownloaded()Z
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportCollect()Z
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->isSupportCollect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportDownload()Z
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->isSupportDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportLoopModeSwitch()Z
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->isSupportLoopModeSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportVrCtrlPlayStatus()Z
    .locals 1

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;->info()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->isSupportVrCtrlPlayStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
