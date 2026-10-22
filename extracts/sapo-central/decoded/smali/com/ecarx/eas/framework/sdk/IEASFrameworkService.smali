.class public interface abstract Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/eas/framework/sdk/IEASFrameworkService$Default;,
        Lcom/ecarx/eas/framework/sdk/IEASFrameworkService$Stub;,
        Lcom/ecarx/eas/framework/sdk/IEASFrameworkService$Stub$Proxy;,
        Lcom/ecarx/eas/framework/sdk/IEASFrameworkService$_Parcel;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.ecarx.eas.framework.sdk.IEASFrameworkService"


# virtual methods
.method public abstract asyncBinderCall(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
.end method

.method public abstract asyncCall(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
.end method

.method public abstract call(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
.end method

.method public abstract getAvailableEASServices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableServices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getService(IILjava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
.end method

.method public abstract init([Ljava/lang/String;)V
.end method

.method public abstract registerNotifyListener(Landroid/os/IBinder;)Z
.end method

.method public abstract reserved3()V
.end method
