.class public Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService$Default;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService;
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

.method public asyncBinderCall(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;II)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public asyncCall(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;II)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public call(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;II)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
