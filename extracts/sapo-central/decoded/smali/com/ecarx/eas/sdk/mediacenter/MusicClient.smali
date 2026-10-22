.class public abstract Lcom/ecarx/eas/sdk/mediacenter/MusicClient;
.super Ljava/lang/Object;


# static fields
.field public static final CODE_FAILURE:I = 0x0

.field public static final CODE_FAILURE_EXCEED:I = -0x2

.field public static final CODE_FAILURE_NOT_VIP:I = -0x3

.field public static final CODE_FAILURE_UNLOAD:I = -0x1

.field public static final CODE_SUCCESS:I = 0x1

.field public static final FAV_COLLECTED:I = 0x1

.field public static final FAV_COLLECTED_NOT_SUPPORT:I = -0x1

.field public static final FAV_COLLECTED_SUPPORT:I = 0x1

.field public static final FAV_NOT_COLLECTED:I = -0x1

.field public static final LOOP_MODE_ALL:I = 0x0

.field public static final LOOP_MODE_NEXT_MODE:I = 0x3

.field public static final LOOP_MODE_SHUFFLE:I = 0x2

.field public static final LOOP_MODE_SINGLE:I = 0x1

.field public static final TYPE_CAPABILITY_DEFAULT:I = -0x1

.field public static final TYPE_CAPABILITY_DIM:I = 0x2

.field public static final TYPE_CAPABILITY_SQUARE_KEY:I = 0x0

.field public static final TYPE_CAPABILITY_VR:I = 0x1

.field public static final TYPE_CAPABILITY_WIDGET:I = 0x3

.field public static final TYPE_COLLECTION_IMAGE:I = 0x2

.field public static final TYPE_COLLECTION_MUSIC:I = 0x0

.field public static final TYPE_COLLECTION_NEWS:I = 0x4

.field public static final TYPE_COLLECTION_RADIO:I = 0x3

.field public static final TYPE_COLLECTION_UNKNOWN:I = -0x1

.field public static final TYPE_COLLECTION_VIDEO:I = 0x1

.field public static final TYPE_CONTROL_APP:I = 0x4

.field public static final TYPE_DIM:I = 0x3

.field public static final TYPE_GESTURE:I = 0x6

.field public static final TYPE_MEDIA_INNER:I = 0x5

.field public static final TYPE_MEDIA_LIST_NORMAL:I = 0x0

.field public static final TYPE_MEDIA_LIST_RECOMMEND:I = 0x1

.field public static final TYPE_MEDIA_LIST_SCENARIO:I = 0x2

.field public static final TYPE_MEDIA_LIST_VIP:I = 0x3

.field public static final TYPE_NO_MEDIA_LIST:I = -0x1

.field public static final TYPE_SQUARE_KEY:I = 0x2

.field public static final TYPE_VR:I = 0x1

.field public static final TYPE_WIDGET:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

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

    new-array v0, v0, [I

    return-object v0
.end method

.method public getMultiMediaList([I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMusicPlaybackInfo()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaylist(I)Ljava/util/List;
    .locals 0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public onCancelRecommend(Ljava/lang/Object;)Z
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

.method public onMediaSelected(ILjava/lang/String;)Z
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

.method public onPlayRecommend(Ljava/lang/Object;)Z
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

.method public onSearchMusic(Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onSeek(J)V
    .locals 0

    return-void
.end method

.method public onSourceChanged(ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

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
