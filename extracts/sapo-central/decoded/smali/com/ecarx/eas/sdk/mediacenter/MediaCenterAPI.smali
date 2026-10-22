.class public Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;
.super Ljava/lang/Object;


# static fields
.field private static final GET_BINDER_MAX_RETRIES:I = 0xa

.field private static final GET_BINDER_RETRY_DELAY_MS:J = 0xc8L

.field private static final MEDIACENTER_MODULE:Ljava/lang/String; = "MediaCenterAPI"

.field private static final MEDIACENTER_SERVICE:Ljava/lang/String; = "mediacenter"

.field private static final TAG:Ljava/lang/String; = "EasMediaCenterAPIImpl"

.field private static sAppContext:Landroid/content/Context;

.field private static sInstance:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;


# instance fields
.field private final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final easConnection:Landroid/content/ServiceConnection;

.field private easService:Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;

.field private exCallbackWrapper:Lcom/ecarx/eas/sdk/mediacenter/ExCallbackWrapper;

.field private initCallback:Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;

.field private initHandler:Landroid/os/Handler;

.field private isBound:Z

.field private isInitialized:Z

.field private final mAttachParam:[B

.field private mediaCenterBinder:Landroid/os/IBinder;

.field private final mediaCenterConnection:Landroid/content/ServiceConnection;

.field private volatile mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

.field private musicClient:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

.field private musicClientWrapper:Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;

.field private supportService:Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->isBound:Z

    iput-boolean v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->isInitialized:Z

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mAttachParam:[B

    new-instance v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;

    invoke-direct {v0, p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;-><init>(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$2;

    invoke-direct {v0, p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$2;-><init>(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->easConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$3;

    invoke-direct {v0, p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$3;-><init>(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/ecarx/eas/sdk/mediacenter/ExCallbackWrapper;

    invoke-direct {v0}, Lcom/ecarx/eas/sdk/mediacenter/ExCallbackWrapper;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->exCallbackWrapper:Lcom/ecarx/eas/sdk/mediacenter/ExCallbackWrapper;

    return-void
.end method

.method public static synthetic a(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->lambda$attemptGetMainBinder$0(I)V

    return-void
.end method

.method private attemptGetMainBinder(I)V
    .locals 4

    const-string v0, "EasMediaCenterAPIImpl"

    :try_start_0
    const-string v1, "getMainBinder"

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sendStrMsgForBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->setMediaCenterBinder(Landroid/os/IBinder;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMainBinder via EAS: OK (attempt "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "InitialImpl OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->notifyReady(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMainBinder attempt "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lk1/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    :cond_0
    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMainBinder returned null, retry in 200ms ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/10)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->getInitHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ecarx/eas/sdk/mediacenter/a;

    invoke-direct {v1, p0, p1}, Lcom/ecarx/eas/sdk/mediacenter/a;-><init>(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string p1, "getMainBinder failed after 10 attempts, trying direct binding"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->bindDirectlyToMediaCenter()V

    :goto_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    .locals 0

    iget-object p0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->initCallback:Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;

    return-object p0
.end method

.method private bindDirectlyToMediaCenter()V
    .locals 6

    const-string v0, "EasMediaCenterAPIImpl"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ecarx.eas.core.intent.action.SUPPORT_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "ecarx.xsf.mediacenter"

    const-string v4, "ecarx.xsf.mediacenter.MediaCenterService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sAppContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Direct MediaCenter binding failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->notifyReady(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v3, "Error in direct binding"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v2}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->notifyReady(Z)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)[B
    .locals 0

    iget-object p0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mAttachParam:[B

    return-object p0
.end method

.method private completeInit()V
    .locals 4

    const-string v0, "EasMediaCenterAPIImpl"

    iget-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->easService:Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->notifyReady(Z)V

    return-void

    :cond_0
    :try_start_0
    const-string v3, "mediacenter"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;->init([Ljava/lang/String;)V

    const-string v1, "EAS Framework init() done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->attemptGetMainBinder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "completeInit failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->bindDirectlyToMediaCenter()V

    return-void
.end method

.method public static createPlaybackInfoBinder(Lcom/ecarx/eas/sdk/mediacenter/MusicClient;)Lecarx/xsf/mediacenter/IMusicPlaybackInfo$Stub;
    .locals 1

    new-instance v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;

    invoke-direct {v0, p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$4;-><init>(Lcom/ecarx/eas/sdk/mediacenter/MusicClient;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService;
    .locals 0

    iget-object p0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->supportService:Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;)V
    .locals 0

    iput-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->easService:Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;

    return-void
.end method

.method public static bridge synthetic g(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->isBound:Z

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;
    .locals 1

    const-class v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sInstance:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    invoke-direct {v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;-><init>()V

    sput-object v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sInstance:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sAppContext:Landroid/content/Context;

    sget-object p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sInstance:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    monitor-exit v0

    return-object p0

    :goto_0
    :try_start_1
    const-class v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0
.end method

.method private getInitHandler()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->initHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->initHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->initHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->isInitialized:Z

    return-void
.end method

.method public static bridge synthetic i(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterBinder:Landroid/os/IBinder;

    return-void
.end method

.method public static bridge synthetic j(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    return-void
.end method

.method public static bridge synthetic k(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService;)V
    .locals 0

    iput-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->supportService:Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService;

    return-void
.end method

.method public static bridge synthetic l(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;)V
    .locals 0

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->completeInit()V

    return-void
.end method

.method private synthetic lambda$attemptGetMainBinder$0(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->attemptGetMainBinder(I)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->notifyReady(Z)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->setMediaCenterBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method private notifyReady(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->initCallback:Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAPIReady("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "EasMediaCenterAPIImpl"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->initCallback:Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;

    invoke-interface {v0, p1}, Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;->onAPIReady(Z)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic o()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private sendMsg(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
    .locals 4

    const-string v0, "EasMediaCenterAPIImpl"

    iget-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->easService:Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1, p1}, Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;->call(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mCode:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendMsg fail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendMsg RemoteException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->supportService:Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService;->call(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;II)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;

    invoke-direct {v0}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;-><init>()V

    iget v1, p1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    iput v1, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mCode:I

    iput-object p1, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendMsg via support failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lk1/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private sendMsgAndBinder(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
    .locals 2

    const-string v0, "EasMediaCenterAPIImpl"

    iget-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->easService:Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;->asyncBinderCall(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p2, p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mCode:I

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "sendMsgAndBinder fail:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mCode:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-object p1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "sendMsgAndBinder RemoteException: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private sendStrMsgAndBinderForStr(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->easService:Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    const-string p2, "NoParam"

    :cond_1
    :try_start_1
    new-instance v2, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iget-object v7, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mAttachParam:[B

    const-string v3, "mediacenter"

    const-string v4, "MediaCenterAPI"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, p1

    :try_start_2
    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    invoke-direct {p0, v2, p3}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sendMsgAndBinder(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    if-eqz p1, :cond_2

    array-length p2, p1

    if-lez p2, :cond_2

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p2

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_2

    :cond_2
    :goto_1
    return-object v1

    :catch_1
    move-exception v0

    move-object v5, p1

    goto :goto_0

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "sendStrMsgAndBinderForStr("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lk1/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    return-object v1
.end method

.method private sendStrMsgForBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 8

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->easService:Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    const-string p2, "NoParam"

    :cond_1
    :try_start_1
    new-instance v2, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iget-object v7, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mAttachParam:[B

    const-string v3, "mediacenter"

    const-string v4, "MediaCenterAPI"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, p1

    :try_start_2
    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    invoke-direct {p0, v2}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sendMsg(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mBinder:Landroid/os/IBinder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_2

    :cond_2
    :goto_1
    return-object v1

    :catch_1
    move-exception v0

    move-object v5, p1

    goto :goto_0

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "sendStrMsgForBinder("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lk1/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    return-object v1
.end method

.method private setMediaCenterBinder(Landroid/os/IBinder;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterBinder:Landroid/os/IBinder;

    invoke-static {p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterSvc;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "EasMediaCenterAPIImpl"

    const-string v1, "Failed to link death recipient"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->isInitialized:Z

    const-string p1, "EasMediaCenterAPIImpl"

    const-string v0, "IMediaCenterSvc obtained successfully"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public declareMediaCenterCapability(Ljava/lang/Object;[I)V
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    invoke-interface {v0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->declareMediaCenterCapability(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "declareMediaCenterCapability failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lk1/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declareSupportCollectTypes(Ljava/lang/Object;[I)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    invoke-interface {v0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->declareSupportCollectTypes(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "declareSupportCollectTypes failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lk1/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->initHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->initHandler:Landroid/os/Handler;

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->isBound:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->easConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :try_start_1
    sget-object v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    iput-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    iput-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->easService:Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;

    iput-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->supportService:Lcom/ecarx/eas/framework/sdk/IEASFrameworkSuppportService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->isInitialized:Z

    iput-boolean v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->isBound:Z

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;)V
    .locals 3

    iput-object p2, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->initCallback:Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sAppContext:Landroid/content/Context;

    const-string p1, "init() called \u2014 binding to EAS Framework"

    const-string p2, "EasMediaCenterAPIImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.ecarx.easframework.intent.action.EASFRAMEWORK"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.ecarx.sdk.openapi"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    sget-object v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->easConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v2, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->isBound:Z

    const-string p1, "Binding to EAS Framework..."

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string p1, "EAS Framework bind failed, trying direct binding"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->bindDirectlyToMediaCenter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    const-string v0, "Error binding to EAS Framework"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->bindDirectlyToMediaCenter()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isServiceAlive()Z
    .locals 3

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_1
    return v1
.end method

.method public queryCurrentFocusClient(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const-string v0, "EasMediaCenterAPIImpl"

    iget-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    const-string v2, ""

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v3, "queryCurrentFocusClient"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    invoke-interface {v1, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->queryCurrentFocusClient(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryCurrentFocusClient failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lk1/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_0
    return-object v2
.end method

.method public reconnect()V
    .locals 4

    const-string v0, "EasMediaCenterAPIImpl"

    const-string v1, "reconnect() \u2014 forcing re-initialization"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_2
    iput-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterBinder:Landroid/os/IBinder;

    :cond_0
    iput-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    iput-boolean v2, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->isInitialized:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->isBound:Z

    if-eqz v3, :cond_1

    :try_start_3
    iget-object v3, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->easConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    iput-boolean v2, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->isBound:Z

    iput-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->easService:Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;

    :cond_1
    :try_start_4
    sget-object v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    sget-object v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->initCallback:Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->init(Landroid/content/Context;Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;)V

    :cond_3
    return-void

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public registerMusic(Ljava/lang/String;Lcom/ecarx/eas/sdk/mediacenter/MusicClient;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    const/4 v1, 0x0

    const-string v2, "EasMediaCenterAPIImpl"

    if-nez v0, :cond_0

    const-string p1, "registerMusic: mediaCenterSvc is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "svc: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->musicClient:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    new-instance v3, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;

    invoke-direct {v3, p2}, Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;-><init>(Lcom/ecarx/eas/sdk/mediacenter/MusicClient;)V

    iput-object v3, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->musicClientWrapper:Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;

    invoke-interface {v0, p1, v3}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->registerInMusic(Ljava/lang/String;Lecarx/xsf/mediacenter/IMusicClient;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "token: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->musicClientWrapper:Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;

    invoke-interface {v0, v3}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->registerMusic(Lecarx/xsf/mediacenter/IMusicClient;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "registerMusic fallback token: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "registerMusic fallback failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    const-string p1, "Registration failed \u2014 no token"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const-string v0, "registerEx"

    iget-object v3, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->exCallbackWrapper:Lcom/ecarx/eas/sdk/mediacenter/ExCallbackWrapper;

    invoke-virtual {v3}, Lcom/ecarx/eas/xsf/mediacenter/IExCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {p0, v0, p1, v3}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sendStrMsgAndBinderForStr(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "registerEx: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "packageName"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "displayId"

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "registerClientWithRequest"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sendStrMsgAndBinderForStr(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "registerClientWithRequest: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->exCallbackWrapper:Lcom/ecarx/eas/sdk/mediacenter/ExCallbackWrapper;

    const-string v0, "MusicClient"

    iget-object v3, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->musicClientWrapper:Lcom/ecarx/eas/sdk/mediacenter/MusicClientWrapper;

    invoke-virtual {p1, v0, v3}, Lcom/ecarx/eas/sdk/mediacenter/ExCallbackWrapper;->setListener(Ljava/lang/String;Lcom/ecarx/eas/sdk/mediacenter/ExCallbackWrapper$Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "registerMusic failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public requestPlay(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    invoke-interface {v0, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->requestPlay(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestPlay failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lk1/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public unregister(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    invoke-interface {v0, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->unregister(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregister failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lk1/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateCurrentLyric(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    invoke-interface {v0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateCurrentLyric(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "updateCurrentLyric failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "EasMediaCenterAPIImpl"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateCurrentProgress(Ljava/lang/Object;J)V
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    invoke-interface {v0, p1, p2, p3}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateCurrentProgress(Lecarx/xsf/mediacenter/IMediaCenterClientToken;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "updateCurrentProgress failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "EasMediaCenterAPIImpl"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateCurrentSourceType(Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    invoke-interface {v0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateCurrentSourceType(Lecarx/xsf/mediacenter/IMediaCenterClientToken;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "updateCurrentSourceType failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lk1/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateDisplayId(Ljava/lang/Object;I)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->easService:Lcom/ecarx/eas/framework/sdk/IEASFrameworkService;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "updateDisplayId"

    invoke-direct {p0, v0, p2, p1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sendStrMsgAndBinderForStr(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public updateErrorMsg(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    invoke-interface {v0, p1, p2, p3}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateErrorMsg(Lecarx/xsf/mediacenter/IMediaCenterClientToken;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "updateErrorMsg failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "EasMediaCenterAPIImpl"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateMediaSourceTypeList(Ljava/lang/Object;[I)Z
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    invoke-interface {v0, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateMediaSourceTypeList(Lecarx/xsf/mediacenter/IMediaCenterClientToken;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "updateMediaSourceTypeList failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lk1/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateMusicPlaybackState(Ljava/lang/Object;Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mediaCenterSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    const-string v2, "EasMediaCenterAPIImpl"

    if-nez v1, :cond_1

    const-string p1, "updateMusicPlaybackState: unbind media center service"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->musicClient:Lcom/ecarx/eas/sdk/mediacenter/MusicClient;

    invoke-static {v3}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->createPlaybackInfoBinder(Lcom/ecarx/eas/sdk/mediacenter/MusicClient;)Lecarx/xsf/mediacenter/IMusicPlaybackInfo$Stub;

    move-result-object v3

    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    invoke-interface {v1, p1, v3}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updateMusicPlaybackState(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Lecarx/xsf/mediacenter/IMusicPlaybackInfo;)Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "updateMusicPlaybackState: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] status="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->getPlaybackStatus()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "updateMusicPlaybackState failed: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v0
.end method

.method public updatePlayState(Ljava/lang/String;II)V
    .locals 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "displayId"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playState"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "mediacenter"

    const-string v3, "MediaCenterAPI"

    const-string v4, "updatePlayState"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->mAttachParam:[B

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    invoke-direct {p0, v1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->sendMsg(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "updatePlayState failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "EasMediaCenterAPIImpl"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
