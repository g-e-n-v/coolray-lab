.class public interface abstract Lecarx/xsf/mediacenter/session/IEasMediaSession;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/session/IEasMediaSession$Default;,
        Lecarx/xsf/mediacenter/session/IEasMediaSession$Stub;,
        Lecarx/xsf/mediacenter/session/IEasMediaSession$Stub$Proxy;,
        Lecarx/xsf/mediacenter/session/IEasMediaSession$_Parcel;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "ecarx.xsf.mediacenter.session.IEasMediaSession"


# virtual methods
.method public abstract register(IILjava/lang/String;Lecarx/xsf/mediacenter/session/IEasSessionCallback;)Lecarx/xsf/mediacenter/session/ISessionToken;
.end method

.method public abstract setPlaybackInfo(Lecarx/xsf/mediacenter/session/ISessionToken;Lecarx/xsf/mediacenter/session/PlaybackInfo;)V
.end method

.method public abstract setPlaybackState(Lecarx/xsf/mediacenter/session/ISessionToken;Lecarx/xsf/mediacenter/session/PlaybackState;)V
.end method
