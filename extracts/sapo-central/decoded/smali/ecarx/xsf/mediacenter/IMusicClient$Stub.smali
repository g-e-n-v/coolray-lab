.class public abstract Lecarx/xsf/mediacenter/IMusicClient$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lecarx/xsf/mediacenter/IMusicClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/IMusicClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/IMusicClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_ctrlCollect:I = 0x20

.field static final TRANSACTION_ctrlCollectByUUID:I = 0x22

.field static final TRANSACTION_ctrlPauseMediaList:I = 0x1f

.field static final TRANSACTION_ctrlPlayMediaList:I = 0x1e

.field static final TRANSACTION_getContentList:I = 0x1c

.field static final TRANSACTION_getCurrentProgress:I = 0xd

.field static final TRANSACTION_getCurrentSourceType:I = 0xc

.field static final TRANSACTION_getMediaSourceTypeList:I = 0xb

.field static final TRANSACTION_getMultiMediaList:I = 0x1d

.field static final TRANSACTION_getMusicPlaybackInfo:I = 0xa

.field static final TRANSACTION_getPlaylist:I = 0xe

.field static final TRANSACTION_onCancelRecommend:I = 0x14

.field static final TRANSACTION_onCollect:I = 0xf

.field static final TRANSACTION_onDownload:I = 0x10

.field static final TRANSACTION_onExit:I = 0x1a

.field static final TRANSACTION_onForward:I = 0x5

.field static final TRANSACTION_onLoopModeChange:I = 0x7

.field static final TRANSACTION_onMediaCenterFocusChanged:I = 0x19

.field static final TRANSACTION_onMediaForward:I = 0x16

.field static final TRANSACTION_onMediaQualityChange:I = 0x18

.field static final TRANSACTION_onMediaRewind:I = 0x17

.field static final TRANSACTION_onMediaSelected:I = 0x9

.field static final TRANSACTION_onMediaSelectedPlay:I = 0x15

.field static final TRANSACTION_onNext:I = 0x3

.field static final TRANSACTION_onPause:I = 0x2

.field static final TRANSACTION_onPlay:I = 0x1

.field static final TRANSACTION_onPlayMediaList:I = 0x24

.field static final TRANSACTION_onPlayRecommend:I = 0x13

.field static final TRANSACTION_onPrevious:I = 0x4

.field static final TRANSACTION_onReplay:I = 0x12

.field static final TRANSACTION_onRewind:I = 0x6

.field static final TRANSACTION_onSearchMusic:I = 0x23

.field static final TRANSACTION_onSeek:I = 0x25

.field static final TRANSACTION_onSourceChanged:I = 0x11

.field static final TRANSACTION_onSourceSelected:I = 0x8

.field static final TRANSACTION_operationType:I = 0x21

.field static final TRANSACTION_selectListMediaPlay:I = 0x1b


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "ecarx.xsf.mediacenter.IMusicClient"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMusicClient;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "ecarx.xsf.mediacenter.IMusicClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lecarx/xsf/mediacenter/IMusicClient;

    if-eqz v1, :cond_1

    check-cast v0, Lecarx/xsf/mediacenter/IMusicClient;

    return-object v0

    :cond_1
    new-instance v0, Lecarx/xsf/mediacenter/IMusicClient$Stub$Proxy;

    invoke-direct {v0, p0}, Lecarx/xsf/mediacenter/IMusicClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    const-string v0, "ecarx.xsf.mediacenter.IMusicClient"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMusicClient;->onSeek(J)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMusicClient;->onPlayMediaList(II)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v6, v1

    goto :goto_0

    :cond_2
    move v6, v0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v7, v1

    goto :goto_1

    :cond_3
    move v7, v0

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/ISearchMusicCallback$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/ISearchMusicCallback;

    move-result-object v8

    move-object v2, p0

    invoke-interface/range {v2 .. v8}, Lecarx/xsf/mediacenter/IMusicClient;->onSearchMusic(Ljava/lang/String;Ljava/lang/String;IZZLecarx/xsf/mediacenter/ISearchMusicCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_4

    move v0, v1

    :cond_4
    invoke-interface {p0, p1, p4, v0}, Lecarx/xsf/mediacenter/IMusicClient;->ctrlCollectByUUID(ILjava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMusicClient;->operationType(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    move v0, v1

    :cond_5
    invoke-interface {p0, p1, v0}, Lecarx/xsf/mediacenter/IMusicClient;->ctrlCollect(IZ)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMusicClient;->ctrlPauseMediaList(I)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_7
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMusicClient;->ctrlPlayMediaList(I)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMusicClient;->getMultiMediaList([I)Lecarx/xsf/mediacenter/IMediaLists;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1, v1}, Lecarx/xsf/mediacenter/IMusicClient$_Parcel;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    return v1

    :pswitch_9
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicClient;->getContentList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v1

    :pswitch_a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lecarx/xsf/mediacenter/IMusicClient;->selectListMediaPlay(IILjava/lang/String;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_b
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicClient;->onExit()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMusicClient;->onMediaCenterFocusChanged(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMusicClient;->onMediaQualityChange(I)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    :cond_6
    invoke-interface {p0, v0}, Lecarx/xsf/mediacenter/IMusicClient;->onMediaRewind(Z)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    move v0, v1

    :cond_7
    invoke-interface {p0, v0}, Lecarx/xsf/mediacenter/IMusicClient;->onMediaForward(Z)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_10
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMusicClient;->onMediaSelectedPlay(ILjava/lang/String;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_11
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IRecommend$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IRecommend;

    move-result-object p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMusicClient;->onCancelRecommend(Lecarx/xsf/mediacenter/IRecommend;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_12
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IRecommend$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IRecommend;

    move-result-object p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMusicClient;->onPlayRecommend(Lecarx/xsf/mediacenter/IRecommend;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_13
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicClient;->onReplay()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_14
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMusicClient;->onSourceChanged(ILjava/lang/String;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_15
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_8

    move v0, v1

    :cond_8
    invoke-interface {p0, p1, v0}, Lecarx/xsf/mediacenter/IMusicClient;->onDownload(IZ)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_16
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_9

    move v0, v1

    :cond_9
    invoke-interface {p0, p1, v0}, Lecarx/xsf/mediacenter/IMusicClient;->onCollect(IZ)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_17
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMusicClient;->getPlaylist(I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v1

    :pswitch_18
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicClient;->getCurrentProgress()J

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    :pswitch_19
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicClient;->getCurrentSourceType()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1a
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicClient;->getMediaSourceTypeList()[I

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    :pswitch_1b
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicClient;->getMusicPlaybackInfo()Lecarx/xsf/mediacenter/IMusicPlaybackInfo;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return v1

    :pswitch_1c
    move-object v2, p0

    sget-object p1, Lecarx/xsf/mediacenter/IMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lecarx/xsf/mediacenter/IMusicClient$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lecarx/xsf/mediacenter/IMedia;

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMusicClient;->onMediaSelected(Lecarx/xsf/mediacenter/IMedia;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMusicClient;->onSourceSelected(I)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMusicClient;->onLoopModeChange(I)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1f
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicClient;->onRewind()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_20
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicClient;->onForward()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_21
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicClient;->onPrevious()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_22
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicClient;->onNext()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_23
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicClient;->onPause()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_24
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicClient;->onPlay()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
