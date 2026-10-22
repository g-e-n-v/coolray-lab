.class public abstract Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lecarx/xsf/mediacenter/IMediaCenterSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/IMediaCenterSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_asyncSendVrChannelResult:I = 0x24

.field static final TRANSACTION_cancelMusicCtrlCapabilityDeclaration:I = 0x18

.field static final TRANSACTION_cancelNewsCtrlCapabilityDeclaration:I = 0x1c

.field static final TRANSACTION_cancelRadioCtrlCapabilityDeclaration:I = 0x1a

.field static final TRANSACTION_cancelSupportCollectTypes:I = 0x10

.field static final TRANSACTION_cancelSupportDownloadTypes:I = 0x12

.field static final TRANSACTION_cancelVrChannelCapability:I = 0x23

.field static final TRANSACTION_declareMediaCenterCapability:I = 0x1e

.field static final TRANSACTION_declareMusicCtrlCapability:I = 0x17

.field static final TRANSACTION_declareNewsCtrlCapability:I = 0x1b

.field static final TRANSACTION_declareRadioCtrlCapability:I = 0x19

.field static final TRANSACTION_declareSupportCollectTypes:I = 0xf

.field static final TRANSACTION_declareSupportDownloadTypes:I = 0x11

.field static final TRANSACTION_declareVrChannelCapability:I = 0x22

.field static final TRANSACTION_declareVrCtrlPriority:I = 0x16

.field static final TRANSACTION_getMediaControlClientApi:I = 0x20

.field static final TRANSACTION_getMediaControllerApi:I = 0x21

.field static final TRANSACTION_getStateBinder:I = 0x1f

.field static final TRANSACTION_queryCurrentFocusClient:I = 0x2a

.field static final TRANSACTION_registerInMusic:I = 0x13

.field static final TRANSACTION_registerInNews:I = 0x14

.field static final TRANSACTION_registerInVideo:I = 0x15

.field static final TRANSACTION_registerMusic:I = 0x1

.field static final TRANSACTION_registerNews:I = 0x2

.field static final TRANSACTION_registerVideo:I = 0x3

.field static final TRANSACTION_requestPlay:I = 0x5

.field static final TRANSACTION_unregister:I = 0x4

.field static final TRANSACTION_updateCollectMsg:I = 0x29

.field static final TRANSACTION_updateCurrentLyric:I = 0xe

.field static final TRANSACTION_updateCurrentProgress:I = 0xa

.field static final TRANSACTION_updateCurrentRecommendInfo:I = 0xd

.field static final TRANSACTION_updateCurrentSourceType:I = 0x8

.field static final TRANSACTION_updateErrorMsg:I = 0x25

.field static final TRANSACTION_updateMediaContent:I = 0x26

.field static final TRANSACTION_updateMediaList:I = 0x1d

.field static final TRANSACTION_updateMediaPlayList:I = 0x28

.field static final TRANSACTION_updateMediaSourceTypeList:I = 0x7

.field static final TRANSACTION_updateMultiMediaList:I = 0x27

.field static final TRANSACTION_updateMusicPlaybackState:I = 0x6

.field static final TRANSACTION_updateNewsPlaybackState:I = 0xc

.field static final TRANSACTION_updatePlaylist:I = 0x9

.field static final TRANSACTION_updateVideoPlaybackState:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "ecarx.xsf.mediacenter.IMediaCenterSvc"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterSvc;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "ecarx.xsf.mediacenter.IMediaCenterSvc"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lecarx/xsf/mediacenter/IMediaCenterSvc;

    if-eqz v1, :cond_1

    check-cast v0, Lecarx/xsf/mediacenter/IMediaCenterSvc;

    return-object v0

    :cond_1
    new-instance v0, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub$Proxy;

    invoke-direct {v0, p0}, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    const-string v0, "ecarx.xsf.mediacenter.IMediaCenterSvc"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->queryCurrentFocusClient(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateCollectMsg(Lecarx/xsf/mediacenter/IMediaCenterClientToken;ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateMediaPlayList(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    sget-object p4, Lecarx/xsf/mediacenter/IMediaLists;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lecarx/xsf/mediacenter/IMediaCenterSvc$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lecarx/xsf/mediacenter/IMediaLists;

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateMultiMediaList(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Lecarx/xsf/mediacenter/IMediaLists;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateMediaContent(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Ljava/util/List;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateErrorMsg(Lecarx/xsf/mediacenter/IMediaCenterClientToken;ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->asyncSendVrChannelResult(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->cancelVrChannelCapability(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->declareVrChannelCapability(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_9
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->getMediaControllerApi()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    :pswitch_a
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->getMediaControlClientApi()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    :pswitch_b
    invoke-interface {p0}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->getStateBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->declareMediaCenterCapability(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p4, v0, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateMediaList(Lecarx/xsf/mediacenter/IMediaCenterClientToken;IILjava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->cancelNewsCtrlCapabilityDeclaration(Landroid/os/IBinder;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->declareNewsCtrlCapability(Landroid/os/IBinder;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->cancelRadioCtrlCapabilityDeclaration(Landroid/os/IBinder;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->declareRadioCtrlCapability([ILandroid/os/IBinder;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->cancelMusicCtrlCapabilityDeclaration(Landroid/os/IBinder;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->declareMusicCtrlCapability([ILandroid/os/IBinder;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->declareVrCtrlPriority(Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_15
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->registerInVideo(Ljava/lang/String;Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return v1

    :pswitch_16
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->registerInNews(Ljava/lang/String;Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return v1

    :pswitch_17
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lecarx/xsf/mediacenter/IMusicClient$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMusicClient;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->registerInMusic(Ljava/lang/String;Lecarx/xsf/mediacenter/IMusicClient;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return v1

    :pswitch_18
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->cancelSupportDownloadTypes(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_19
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->declareSupportDownloadTypes(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->cancelSupportCollectTypes(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->declareSupportCollectTypes(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateCurrentLyric(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lecarx/xsf/mediacenter/IRecommend$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IRecommend;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateCurrentRecommendInfo(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Lecarx/xsf/mediacenter/IRecommend;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateNewsPlaybackState(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateVideoPlaybackState(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Landroid/os/IBinder;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_20
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-interface {p0, p1, v3, v4}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateCurrentProgress(Lecarx/xsf/mediacenter/IMediaCenterClientToken;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_21
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updatePlaylist(Lecarx/xsf/mediacenter/IMediaCenterClientToken;ILjava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_22
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateCurrentSourceType(Lecarx/xsf/mediacenter/IMediaCenterClientToken;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_23
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateMediaSourceTypeList(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_24
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lecarx/xsf/mediacenter/IMusicPlaybackInfo$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMusicPlaybackInfo;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateMusicPlaybackState(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Lecarx/xsf/mediacenter/IMusicPlaybackInfo;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_25
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->requestPlay(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_26
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->unregister(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_27
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->registerVideo(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return v1

    :pswitch_28
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->registerNews(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return v1

    :pswitch_29
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMusicClient$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMusicClient;

    move-result-object p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->registerMusic(Lecarx/xsf/mediacenter/IMusicClient;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
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
