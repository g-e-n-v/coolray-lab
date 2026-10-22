.class Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
.super Landroid/support/v4/app/INotificationSideChannel$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/core/app/e;


# direct methods
.method public constructor <init>(Landroidx/core/app/e;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/INotificationSideChannel$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    const/4 p1, 0x0

    throw p1
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    const/4 p1, 0x0

    throw p1
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    const/4 p1, 0x0

    throw p1
.end method
