.class Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;


# direct methods
.method public constructor <init>(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)V
    .locals 0

    iput-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$3;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10

    const-string p1, "MediaCenter service connected directly (fallback)"

    const-string v1, "EasMediaCenterAPIImpl"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "com.ecarx.eas.framework.sdk.IEASFrameworkSuppportService"

    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$3;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->k(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService;)V

    new-instance v4, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v5, "mediacenter"

    const-string v6, "MediaCenterAPI"

    const-string v7, "getMainBinder"

    const-string v0, "NoParam"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$3;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->c(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)[B

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$3;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->e(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-interface {v0, v4, v3, p1}, Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService;->call(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;II)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$3;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {p2, v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->n(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;Landroid/os/IBinder;)V

    :goto_0
    iget-object p2, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$3;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {p2, v2}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->m(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;Z)V

    return-void

    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$3;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {v0, p2}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->n(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    const-string v0, "Failed in direct connection"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p2, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$3;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {p2, p1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->m(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "EasMediaCenterAPIImpl"

    const-string v0, "MediaCenter service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$3;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {p1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->j(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)V

    return-void
.end method
