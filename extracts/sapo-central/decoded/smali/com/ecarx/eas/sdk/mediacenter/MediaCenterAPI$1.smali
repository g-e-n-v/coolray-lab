.class Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    iput-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;->lambda$binderDied$0()V

    return-void
.end method

.method private synthetic lambda$binderDied$0()V
    .locals 3

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->o()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {v2}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->b(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->init(Landroid/content/Context;Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    const-string v0, "EasMediaCenterAPIImpl"

    const-string v1, "MediaCenter service died \u2014 cleaning up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {v1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->d(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {v1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->d(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {v1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->i(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)V

    :cond_0
    iget-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {v1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->j(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)V

    iget-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {v1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->h(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->o()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;->this$0:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-static {v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->b(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ecarx/eas/sdk/mediacenter/b;

    invoke-direct {v1, p0}, Lcom/ecarx/eas/sdk/mediacenter/b;-><init>(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
