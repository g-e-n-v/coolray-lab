.class public interface abstract Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService$Default;,
        Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService$Stub;,
        Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService$Stub$Proxy;,
        Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService$_Parcel;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.ecarx.eas.framework.sdk.IEASFrameworkSuppportService"


# virtual methods
.method public abstract asyncBinderCall(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;II)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
.end method

.method public abstract asyncCall(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;II)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
.end method

.method public abstract call(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;II)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
.end method
