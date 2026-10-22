.class public interface abstract Lecarx/xsf/mediacenter/session/IEasSessionCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/session/IEasSessionCallback$Default;,
        Lecarx/xsf/mediacenter/session/IEasSessionCallback$Stub;,
        Lecarx/xsf/mediacenter/session/IEasSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "ecarx.xsf.mediacenter.session.IEasSessionCallback"


# virtual methods
.method public abstract onDownload(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onFastForward()V
.end method

.method public abstract onFavorite(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onLoopModeChanged(I)V
.end method

.method public abstract onMediaEffectChange(I)V
.end method

.method public abstract onMediaQualityChange(I)V
.end method

.method public abstract onMediaSourceTypeChanged(I)V
.end method

.method public abstract onMediaSourceTypeChangedWithZone(ILjava/lang/String;I)V
.end method

.method public abstract onNext()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPlay()V
.end method

.method public abstract onPrevious()V
.end method

.method public abstract onRadioModeChanged(I)V
.end method

.method public abstract onRewind()V
.end method

.method public abstract onSearchMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLecarx/xsf/mediacenter/ISearchMusicCallback;)V
.end method

.method public abstract onSeekTo(J)V
.end method

.method public abstract onSelect(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onSelectFrom(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract onStop()V
.end method

.method public abstract operationType(I)V
.end method
