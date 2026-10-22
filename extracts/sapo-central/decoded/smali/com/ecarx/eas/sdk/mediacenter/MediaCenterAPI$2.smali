.class Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$2;
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

    iput-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$2;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "EasMediaCenterAPIImpl"

    const-string v0, "EAS Framework connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$2;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/IEASFrameworkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->f(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;)V

    iget-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$2;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {p1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->l(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "EasMediaCenterAPIImpl"

    const-string v0, "EAS Framework disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$2;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->f(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;)V

    iget-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$2;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {p1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->g(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)V

    return-void
.end method
