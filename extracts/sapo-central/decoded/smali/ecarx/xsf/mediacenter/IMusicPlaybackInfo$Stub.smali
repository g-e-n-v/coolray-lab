.class public abstract Lecarx/xsf/mediacenter/IMusicPlaybackInfo$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lecarx/xsf/mediacenter/IMusicPlaybackInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/IMusicPlaybackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/IMusicPlaybackInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getAlbum:I = 0x4

.field static final TRANSACTION_getAppIcon:I = 0x1a

.field static final TRANSACTION_getAppName:I = 0x19

.field static final TRANSACTION_getArtist:I = 0x3

.field static final TRANSACTION_getArtwork:I = 0x10

.field static final TRANSACTION_getCurrentLyricSentence:I = 0xe

.field static final TRANSACTION_getDisplayId:I = 0x22

.field static final TRANSACTION_getDuration:I = 0x7

.field static final TRANSACTION_getLaunchIntent:I = 0x1

.field static final TRANSACTION_getLoopMode:I = 0x12

.field static final TRANSACTION_getLyric:I = 0xd

.field static final TRANSACTION_getLyricContent:I = 0xc

.field static final TRANSACTION_getMediaPath:I = 0xa

.field static final TRANSACTION_getMediaType:I = 0x23

.field static final TRANSACTION_getNextArtwork:I = 0x11

.field static final TRANSACTION_getPackageName:I = 0x1b

.field static final TRANSACTION_getPlaybackStatus:I = 0xb

.field static final TRANSACTION_getPlayerIntent:I = 0x21

.field static final TRANSACTION_getPlayingItemPositionInQueue:I = 0x8

.field static final TRANSACTION_getPlayingMediaListId:I = 0x1e

.field static final TRANSACTION_getPlayingMediaListType:I = 0x20

.field static final TRANSACTION_getPreviousArtwork:I = 0xf

.field static final TRANSACTION_getRadioFrequency:I = 0x5

.field static final TRANSACTION_getRadioMode:I = 0x13

.field static final TRANSACTION_getRadioStationName:I = 0x6

.field static final TRANSACTION_getSourceType:I = 0x9

.field static final TRANSACTION_getTitle:I = 0x2

.field static final TRANSACTION_getUuid:I = 0x18

.field static final TRANSACTION_getVip:I = 0x1f

.field static final TRANSACTION_isCollected:I = 0x15

.field static final TRANSACTION_isDownloaded:I = 0x17

.field static final TRANSACTION_isSupportCollect:I = 0x14

.field static final TRANSACTION_isSupportDownload:I = 0x16

.field static final TRANSACTION_isSupportLoopModeSwitch:I = 0x1c

.field static final TRANSACTION_isSupportVrCtrlPlayStatus:I = 0x1d


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "ecarx.xsf.mediacenter.IMusicPlaybackInfo"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMusicPlaybackInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "ecarx.xsf.mediacenter.IMusicPlaybackInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;

    return-object v0

    :cond_1
    new-instance v0, Lecarx/xsf/mediacenter/IMusicPlaybackInfo$Stub$Proxy;

    invoke-direct {v0, p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "ecarx.xsf.mediacenter.IMusicPlaybackInfo"

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
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getMediaType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getDisplayId()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getPlayerIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo$_Parcel;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return v1

    :pswitch_3
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getPlayingMediaListType()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_4
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getVip()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_5
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getPlayingMediaListId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_6
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->isSupportVrCtrlPlayStatus()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_7
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->isSupportLoopModeSwitch()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_8
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_9
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getAppIcon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_a
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_b
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_c
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->isDownloaded()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_d
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->isSupportDownload()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_e
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->isCollected()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_f
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->isSupportCollect()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_10
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getRadioMode()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_11
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getLoopMode()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_12
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getNextArtwork()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo$_Parcel;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return v1

    :pswitch_13
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getArtwork()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo$_Parcel;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return v1

    :pswitch_14
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getPreviousArtwork()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo$_Parcel;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return v1

    :pswitch_15
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getCurrentLyricSentence()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_16
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getLyric()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo$_Parcel;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return v1

    :pswitch_17
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getLyricContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_18
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getPlaybackStatus()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_19
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getMediaPath()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo$_Parcel;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return v1

    :pswitch_1a
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getSourceType()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1b
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getPlayingItemPositionInQueue()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1c
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getDuration()J

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    :pswitch_1d
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getRadioStationName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1e
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getRadioFrequency()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1f
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getAlbum()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_20
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getArtist()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_21
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_22
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo;->getLaunchIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo$_Parcel;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
