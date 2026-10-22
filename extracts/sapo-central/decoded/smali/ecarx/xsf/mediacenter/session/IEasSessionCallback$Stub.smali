.class public abstract Lecarx/xsf/mediacenter/session/IEasSessionCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lecarx/xsf/mediacenter/session/IEasSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/session/IEasSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/session/IEasSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDownload:I = 0x1

.field static final TRANSACTION_onFastForward:I = 0x2

.field static final TRANSACTION_onFavorite:I = 0x3

.field static final TRANSACTION_onLoopModeChanged:I = 0x4

.field static final TRANSACTION_onMediaEffectChange:I = 0x12

.field static final TRANSACTION_onMediaQualityChange:I = 0x11

.field static final TRANSACTION_onMediaSourceTypeChanged:I = 0x5

.field static final TRANSACTION_onMediaSourceTypeChangedWithZone:I = 0x13

.field static final TRANSACTION_onNext:I = 0x6

.field static final TRANSACTION_onPause:I = 0x7

.field static final TRANSACTION_onPlay:I = 0x8

.field static final TRANSACTION_onPrevious:I = 0x9

.field static final TRANSACTION_onRadioModeChanged:I = 0xa

.field static final TRANSACTION_onRewind:I = 0xb

.field static final TRANSACTION_onSearchMusic:I = 0x14

.field static final TRANSACTION_onSeekTo:I = 0xc

.field static final TRANSACTION_onSelect:I = 0xd

.field static final TRANSACTION_onSelectFrom:I = 0x10

.field static final TRANSACTION_onStop:I = 0xe

.field static final TRANSACTION_operationType:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "ecarx.xsf.mediacenter.session.IEasSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/session/IEasSessionCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "ecarx.xsf.mediacenter.session.IEasSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lecarx/xsf/mediacenter/session/IEasSessionCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lecarx/xsf/mediacenter/session/IEasSessionCallback;

    return-object v0

    :cond_1
    new-instance v0, Lecarx/xsf/mediacenter/session/IEasSessionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lecarx/xsf/mediacenter/session/IEasSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10

    const-string v0, "ecarx.xsf.mediacenter.session.IEasSessionCallback"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v7, v1

    goto :goto_0

    :cond_2
    move v7, v0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v8, v1

    goto :goto_1

    :cond_3
    move v8, v0

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lecarx/xsf/mediacenter/ISearchMusicCallback$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/ISearchMusicCallback;

    move-result-object v9

    move-object v2, p0

    invoke-interface/range {v2 .. v9}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onSearchMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLecarx/xsf/mediacenter/ISearchMusicCallback;)V

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onMediaSourceTypeChangedWithZone(ILjava/lang/String;I)V

    goto :goto_2

    :pswitch_2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onMediaEffectChange(I)V

    goto :goto_2

    :pswitch_3
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onMediaQualityChange(I)V

    goto :goto_2

    :pswitch_4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, v0, p2}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onSelectFrom(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    :pswitch_5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->operationType(I)V

    goto :goto_2

    :pswitch_6
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onStop()V

    goto :goto_2

    :pswitch_7
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    move v0, v1

    :cond_5
    invoke-interface {p0, p1, p4, v0}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onSelect(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :pswitch_8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onSeekTo(J)V

    goto :goto_2

    :pswitch_9
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onRewind()V

    goto :goto_2

    :pswitch_a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onRadioModeChanged(I)V

    goto :goto_2

    :pswitch_b
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onPrevious()V

    goto :goto_2

    :pswitch_c
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onPlay()V

    goto/16 :goto_2

    :pswitch_d
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onPause()V

    goto/16 :goto_2

    :pswitch_e
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onNext()V

    goto/16 :goto_2

    :pswitch_f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onMediaSourceTypeChanged(I)V

    goto/16 :goto_2

    :pswitch_10
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onLoopModeChanged(I)V

    goto/16 :goto_2

    :pswitch_11
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_6

    move v0, v1

    :cond_6
    invoke-interface {p0, p1, p4, v0}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onFavorite(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :pswitch_12
    move-object v2, p0

    invoke-interface {p0}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onFastForward()V

    goto/16 :goto_2

    :pswitch_13
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_7

    move v0, v1

    :cond_7
    invoke-interface {p0, p1, p4, v0}, Lecarx/xsf/mediacenter/session/IEasSessionCallback;->onDownload(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
