.class public interface abstract Lecarx/xsf/mediacenter/ISearchMusicCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/ISearchMusicCallback$Default;,
        Lecarx/xsf/mediacenter/ISearchMusicCallback$Stub;,
        Lecarx/xsf/mediacenter/ISearchMusicCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "ecarx.xsf.mediacenter.ISearchMusicCallback"


# virtual methods
.method public abstract onSearchFail(Ljava/lang/String;)V
.end method

.method public abstract onSearchSuccess(Ljava/lang/String;)V
.end method
