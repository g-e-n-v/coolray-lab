.class public interface abstract Lcom/ecarx/eas/xsf/mediacenter/IExCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/eas/xsf/mediacenter/IExCallback$Default;,
        Lcom/ecarx/eas/xsf/mediacenter/IExCallback$Stub;,
        Lcom/ecarx/eas/xsf/mediacenter/IExCallback$Stub$Proxy;,
        Lcom/ecarx/eas/xsf/mediacenter/IExCallback$_Parcel;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.ecarx.eas.xsf.mediacenter.IExCallback"


# virtual methods
.method public abstract onAction(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;
.end method

.method public abstract onExAction(ILjava/lang/String;Ljava/lang/String;Lcom/ecarx/eas/xsf/mediacenter/IExContent;Landroid/os/IBinder;)Lcom/ecarx/eas/xsf/mediacenter/IExContent;
.end method
