.class public Lcom/ex/auto/VhalProviderService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static volatile l:Z = false

.field public static volatile m:I = 0x0

.field public static volatile n:Lq0/c; = null

.field public static volatile o:J = -0x1L

.field public static final p:Ljava/lang/Object;

.field public static final q:Ljava/util/ArrayDeque;

.field public static r:J


# instance fields
.field public a:Landroid/car/Car;

.field public b:Lw0/xg;

.field public c:Ljava/net/ServerSocket;

.field public volatile d:Z

.field public e:Lw0/m3;

.field public f:Lw0/ch;

.field public g:Lw0/m3;

.field public h:Lw0/l3;

.field public volatile i:Lw0/wg;

.field public volatile j:Z

.field public volatile k:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ex/auto/VhalProviderService;->p:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/ex/auto/VhalProviderService;->q:Ljava/util/ArrayDeque;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ex/auto/VhalProviderService;->r:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ex/auto/VhalProviderService;->j:Z

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/ex/auto/VhalProviderService;->k:J

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float p3, v0, p3

    if-ltz p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpl-float p3, p3, p4

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double p2, p2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(J)Lw0/wg;
    .locals 5

    sget-object v0, Lcom/ex/auto/VhalProviderService;->n:Lq0/c;

    sget-boolean v1, Lcom/ex/auto/VhalProviderService;->l:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lq0/c;->b:J

    sub-long/2addr v1, v3

    cmp-long p0, v1, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lq0/c;->c:Ljava/lang/Object;

    check-cast p0, Lw0/wg;

    invoke-virtual {p0}, Lw0/wg;->a()Lw0/wg;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ex/auto/VhalProviderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 9

    const-string v0, "soc"

    iget-object v1, p0, Lcom/ex/auto/VhalProviderService;->i:Lw0/wg;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "speed"

    iget-object v4, v1, Lw0/wg;->a:Ljava/lang/Float;

    const/high16 v5, 0x43a00000    # 320.0f

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6, v5}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    iget-object v3, v1, Lw0/wg;->b:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    const-string v4, "gear"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    float-to-int v3, v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-object v3, v1, Lw0/wg;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v4, "gearLabel"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v3, v1, Lw0/wg;->d:Ljava/lang/Float;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v2, v0, v3, v6, v4}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v3, "power"

    iget-object v5, v1, Lw0/wg;->g:Ljava/lang/Float;

    const/high16 v7, -0x3c380000    # -400.0f

    const/high16 v8, 0x43c80000    # 400.0f

    invoke-static {v2, v3, v5, v7, v8}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v3, "powerSrc"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lw0/wg;->y:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const-string v3, "dischgPwrRaw"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, v1, Lw0/wg;->z:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const-string v3, "dischgCurrRaw"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    iget-object v0, v1, Lw0/wg;->A:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const-string v3, "dischgVoltRaw"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    const-string v0, "range"

    iget-object v3, v1, Lw0/wg;->e:Ljava/lang/Float;

    const/high16 v5, 0x44fa0000    # 2000.0f

    invoke-static {v2, v0, v3, v6, v5}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v0, "odo"

    iget-object v3, v1, Lw0/wg;->f:Ljava/lang/Float;

    const/high16 v5, 0x3f800000    # 1.0f

    const v7, 0x49f42400    # 2000000.0f

    invoke-static {v2, v0, v3, v5, v7}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v0, "driveFlow"

    iget-object v3, v1, Lw0/wg;->k:Ljava/lang/Float;

    const/high16 v5, -0x3d380000    # -100.0f

    invoke-static {v2, v0, v3, v5, v4}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v0, "battFlow"

    iget-object v3, v1, Lw0/wg;->l:Ljava/lang/Float;

    invoke-static {v2, v0, v3, v5, v4}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v0, "outTemp"

    iget-object v3, v1, Lw0/wg;->p:Ljava/lang/Float;

    const/high16 v4, -0x3d900000    # -60.0f

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-static {v2, v0, v3, v4, v5}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v0, "setTemp"

    iget-object v3, v1, Lw0/wg;->o:Ljava/lang/Float;

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x420c0000    # 35.0f

    invoke-static {v2, v0, v3, v4, v5}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v0, "aux12v"

    iget-object v3, v1, Lw0/wg;->q:Ljava/lang/Float;

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v2, v0, v3, v4, v5}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v0, "chargeKw"

    iget-object v3, v1, Lw0/wg;->G:Ljava/lang/Float;

    invoke-static {v2, v0, v3, v6, v8}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    iget-object v0, v1, Lw0/wg;->E:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const-string v3, "charging"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_6
    iget-object v0, v1, Lw0/wg;->F:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    const-string v3, "dcfc"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_7
    iget-object v0, v1, Lw0/wg;->r:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    const-string v3, "ign"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_8
    iget-object v0, v1, Lw0/wg;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    const-string v3, "consumoMedio100Raw"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_9
    iget-object v0, v1, Lw0/wg;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    const-string v3, "potMediaIpkRaw"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_a
    iget-object v0, v1, Lw0/wg;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    const-string v3, "odoEvdtRaw"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_b
    const-string v0, "tripAKm"

    iget-object v3, v1, Lw0/wg;->s:Ljava/lang/Float;

    const v4, 0x49742400    # 1000000.0f

    invoke-static {v2, v0, v3, v6, v4}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v0, "tripBKm"

    iget-object v3, v1, Lw0/wg;->t:Ljava/lang/Float;

    invoke-static {v2, v0, v3, v6, v4}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    iget-object v0, v1, Lw0/wg;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const-string v3, "tripATimeRaw"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_c
    iget-object v0, v1, Lw0/wg;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    const-string v3, "tripBTimeRaw"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_d
    const-string v0, "tripAAvgKmh"

    iget-object v3, v1, Lw0/wg;->w:Ljava/lang/Float;

    invoke-static {v2, v0, v3, v6, v8}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v0, "tripBAvgKmh"

    iget-object v3, v1, Lw0/wg;->x:Ljava/lang/Float;

    invoke-static {v2, v0, v3, v6, v8}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    iget-object v0, v1, Lw0/wg;->H:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    const-string v3, "vhalLive"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_e
    iget-object v0, v1, Lw0/wg;->I:Ljava/lang/String;

    if-eqz v0, :cond_f

    const-string v3, "unknown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "carId"

    iget-object v1, v1, Lw0/wg;->I:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 4

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "porta 47800 \u2022 clientes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ex/auto/VhalProviderService;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    const-string v3, "vhal_provider"

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "VHAL Provider (p/ celular)"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x1080052

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "VHAL Provider"

    const/4 v2, 0x2

    const-string v3, "vhal_provider"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Lw0/m3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lw0/m3;-><init>(Landroid/app/Service;I)V

    iput-object v0, p0, Lcom/ex/auto/VhalProviderService;->e:Lw0/m3;

    new-instance v1, Lw0/ch;

    invoke-direct {v1, v0}, Lw0/ch;-><init>(Lw0/m3;)V

    iput-object v1, p0, Lcom/ex/auto/VhalProviderService;->f:Lw0/ch;

    new-instance v0, Lw0/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw0/ch;->Q:Lw0/m;

    new-instance v0, Lw0/m3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lw0/m3;-><init>(Landroid/app/Service;I)V

    iput-object v0, p0, Lcom/ex/auto/VhalProviderService;->g:Lw0/m3;

    new-instance v1, Lw0/l3;

    invoke-direct {v1, v0}, Lw0/l3;-><init>(Lw0/m3;)V

    iput-object v1, p0, Lcom/ex/auto/VhalProviderService;->h:Lw0/l3;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ex/auto/VhalProviderService;->d:Z

    sput-boolean v0, Lcom/ex/auto/VhalProviderService;->l:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/ex/auto/VhalProviderService;->n:Lq0/c;

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/VhalProviderService;->c:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/ex/auto/VhalProviderService;->a:Landroid/car/Car;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    new-instance p1, Landroid/app/Notification$Builder;

    const-string p2, "vhal_provider"

    invoke-direct {p1, p0, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "VHAL Provider (p/ celular)"

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string p2, "iniciando\u2026"

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const p2, 0x1080052

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/16 p3, 0x33

    invoke-virtual {p0, p3, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    sget-boolean p1, Lcom/ex/auto/VhalProviderService;->l:Z

    if-eqz p1, :cond_0

    return p2

    :cond_0
    sput-boolean p2, Lcom/ex/auto/VhalProviderService;->l:Z

    iput-boolean p2, p0, Lcom/ex/auto/VhalProviderService;->d:Z

    :try_start_0
    new-instance p1, La1/p;

    const/4 p3, 0x5

    invoke-direct {p1, p0, p3}, La1/p;-><init>(Landroid/content/ContextWrapper;I)V

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-static {p0, p3, v0, v1, p1}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/VhalProviderService;->a:Landroid/car/Car;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "VhalProvider"

    const-string v0, "car"

    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lw0/gh;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lw0/gh;-><init>(Lcom/ex/auto/VhalProviderService;I)V

    const-string v0, "vhal-server"

    invoke-direct {p1, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lw0/gh;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lw0/gh;-><init>(Lcom/ex/auto/VhalProviderService;I)V

    const-string v0, "vhal-poll"

    invoke-direct {p1, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return p2
.end method
