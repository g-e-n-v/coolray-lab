.class public Lecarx/xsf/mediacenter/session/IEasMediaSession$Default;
.super Ljava/lang/Object;

# interfaces
.implements Lecarx/xsf/mediacenter/session/IEasMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/session/IEasMediaSession;
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

.method public register(IILjava/lang/String;Lecarx/xsf/mediacenter/session/IEasSessionCallback;)Lecarx/xsf/mediacenter/session/ISessionToken;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPlaybackInfo(Lecarx/xsf/mediacenter/session/ISessionToken;Lecarx/xsf/mediacenter/session/PlaybackInfo;)V
    .locals 0

    return-void
.end method

.method public setPlaybackState(Lecarx/xsf/mediacenter/session/ISessionToken;Lecarx/xsf/mediacenter/session/PlaybackState;)V
    .locals 0

    return-void
.end method
