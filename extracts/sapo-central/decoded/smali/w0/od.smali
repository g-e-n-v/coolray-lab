.class public final Lw0/od;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Lw0/nd;

.field public static volatile B:Ljava/lang/String;

.field public static volatile C:Z

.field public static final D:Lw0/kd;

.field public static volatile E:Ljava/lang/String;

.field public static final F:Lw0/nd;

.field public static G:Ljava/lang/String;

.field public static final a:Lw0/od;

.field public static final b:Ljava/util/Set;

.field public static c:Landroid/content/Context;

.field public static d:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

.field public static e:Ljava/lang/Object;

.field public static volatile f:Z

.field public static volatile g:Z

.field public static h:Landroid/media/session/MediaSessionManager;

.field public static i:Lw0/md;

.field public static j:Landroid/os/HandlerThread;

.field public static k:Landroid/os/Handler;

.field public static volatile l:Landroid/media/session/MediaController;

.field public static m:Lw0/t8;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:I

.field public static q:J

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static volatile t:Landroid/media/session/PlaybackState$CustomAction;

.field public static u:Ljava/lang/String;

.field public static volatile v:Z

.field public static final w:Ljava/util/List;

.field public static final x:Ljava/util/List;

.field public static volatile y:Z

.field public static volatile z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lw0/od;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw0/od;->a:Lw0/od;

    const-string v0, "com.android.bluetooth"

    const-string v1, "com.android.server.telecom"

    const-string v2, "ecarx.xsf.mediacenter"

    const-string v3, "com.ecarx.mediacenter"

    const-string v4, "com.ecarx.multimedia"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk1/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lw0/od;->b:Ljava/util/Set;

    const/4 v0, -0x1

    sput v0, Lw0/od;->p:I

    const-string v0, "com.njda.carplay"

    const-string v1, "com.njda.adapter/.view.CarplayMainActivity"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lw0/od;->w:Ljava/util/List;

    const-string v0, "com.njda."

    invoke-static {v0}, Lk1/a;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lw0/od;->x:Ljava/util/List;

    new-instance v0, Lw0/nd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw0/nd;-><init>(I)V

    sput-object v0, Lw0/od;->A:Lw0/nd;

    const-string v0, "nenhuma"

    sput-object v0, Lw0/od;->B:Ljava/lang/String;

    new-instance v0, Lw0/kd;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw0/od;->D:Lw0/kd;

    new-instance v0, Lw0/nd;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lw0/nd;-><init>(I)V

    sput-object v0, Lw0/od;->F:Lw0/nd;

    return-void
.end method

.method public static final a()V
    .locals 2

    :try_start_0
    sget-object v0, Lw0/od;->h:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lw0/od;->h(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    sget-object v0, Lw0/od;->G:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lw0/od;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android.resource://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/mipmap/ic_launcher"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw0/od;->G:Ljava/lang/String;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d()V
    .locals 2

    sget-object v0, Lw0/od;->l:Landroid/media/session/MediaController;

    sget-object v1, Lw0/od;->m:Lw0/t8;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lw0/od;->l:Landroid/media/session/MediaController;

    sput-object v0, Lw0/od;->m:Lw0/t8;

    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Lo2/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "getBytes(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const-string v1, "digest(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lw0/ya;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lw0/ya;-><init>(I)V

    invoke-static {v0, v1}, Ly1/f;->b0([BLh2/l;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f()V
    .locals 4

    sget-boolean v0, Lw0/od;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lw0/od;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->get(Landroid/content/Context;)Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    move-result-object v1

    sput-object v1, Lw0/od;->d:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    new-instance v2, Lw0/n;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lw0/n;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->init(Landroid/content/Context;Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSdk falhou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "MediaCenterBridge"

    invoke-static {v0, v1, v2}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object v0, Lw0/od;->k:Landroid/os/Handler;

    if-eqz v0, :cond_2

    new-instance v1, Lw0/r0;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lw0/r0;-><init>(I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static g(Landroid/media/session/PlaybackState;)J
    .locals 6

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    return-wide v0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result p0

    mul-float/2addr p0, v2

    float-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static h(Ljava/util/List;)V
    .locals 11

    sget-boolean v0, Lw0/od;->g:Z

    if-eqz v0, :cond_0

    goto/16 :goto_c

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Ly1/p;->a:Ly1/p;

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/media/session/MediaController;

    sget-object v4, Lw0/od;->b:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lw0/od;->c:Landroid/content/Context;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {v3, v2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v0}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_8

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/media/session/MediaController;

    new-instance v6, Lw0/z5;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const-string v7, ""

    :cond_5
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getState()I

    move-result v8

    const/4 v10, 0x3

    if-ne v8, v10, :cond_6

    move v8, v9

    goto :goto_2

    :cond_6
    move v8, v3

    :goto_2
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    move v9, v3

    :goto_3
    invoke-direct {v6, v7, v8, v9}, Lw0/z5;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    sget-object v1, Lw0/od;->l:Landroid/media/session/MediaController;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    move-object v1, v2

    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :cond_a
    :goto_5
    if-ge v6, v5, :cond_b

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    move-object v8, v7

    check-cast v8, Lw0/z5;

    iget-boolean v8, v8, Lw0/z5;->c:Z

    if-eqz v8, :cond_a

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    move v5, v3

    :cond_c
    if-ge v5, p0, :cond_d

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    check-cast v7, Lw0/z5;

    iget-boolean v7, v7, Lw0/z5;->b:Z

    if-eqz v7, :cond_c

    goto :goto_6

    :cond_d
    move-object v6, v2

    :goto_6
    check-cast v6, Lw0/z5;

    if-eqz v6, :cond_e

    iget-object v1, v6, Lw0/z5;->a:Ljava/lang/String;

    goto :goto_8

    :cond_e
    if-eqz v1, :cond_11

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    move v5, v3

    :cond_10
    if-ge v5, p0, :cond_11

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lw0/z5;

    iget-object v6, v6, Lw0/z5;->a:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_8

    :cond_11
    :goto_7
    invoke-static {v4}, Ly1/g;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw0/z5;

    if-eqz p0, :cond_12

    iget-object v1, p0, Lw0/z5;->a:Ljava/lang/String;

    goto :goto_8

    :cond_12
    move-object v1, v2

    :goto_8
    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :cond_13
    if-ge v3, p0, :cond_14

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    check-cast v5, Landroid/media/session/MediaController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_9

    :cond_14
    move-object v4, v2

    :goto_9
    check-cast v4, Landroid/media/session/MediaController;

    goto :goto_a

    :cond_15
    move-object v4, v2

    :goto_a
    if-nez v4, :cond_16

    goto :goto_c

    :cond_16
    sget-object p0, Lw0/od;->l:Landroid/media/session/MediaController;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    goto :goto_b

    :cond_17
    move-object p0, v2

    :goto_b
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-static {p0, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    :goto_c
    return-void

    :cond_18
    invoke-static {}, Lw0/od;->d()V

    const-string p0, "MediaCenterBridge"

    sput-object v4, Lw0/od;->l:Landroid/media/session/MediaController;

    new-instance v0, Lw0/t8;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v4}, Lw0/t8;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lw0/od;->m:Lw0/t8;

    :try_start_0
    sget-object v1, Lw0/od;->k:Landroid/os/Handler;

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "espelhando "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lw0/od;->k(Landroid/media/session/MediaController;)V

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "registerCallback controller: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u2014 n\u00e3o espelho "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v2, Lw0/od;->l:Landroid/media/session/MediaController;

    sput-object v2, Lw0/od;->m:Lw0/t8;

    return-void
.end method

.method public static j(Ljava/lang/String;)Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;
    .locals 3

    new-instance v0, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    invoke-direct {v0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;-><init>()V

    const-string v1, "\u2014"

    invoke-virtual {v0, v1}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setArtist(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setAlbum(Ljava/lang/String;)V

    const-string v2, "EX Sapo"

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setPackageName(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setPlaybackStatus(I)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setSourceType(I)V

    const-string v2, "music"

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setMediaType(Ljava/lang/String;)V

    invoke-static {}, Lw0/od;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setAppIcon(Ljava/lang/String;)V

    const-string v2, "-play-list-common"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setPlayingMediaListId(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {v1, v1, p0}, Lw0/od;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setUuid(Ljava/lang/String;)V

    return-object v0
.end method

.method public static k(Landroid/media/session/MediaController;)V
    .locals 35

    sget-boolean v0, Lw0/od;->f:Z

    if-eqz v0, :cond_40

    sget-boolean v0, Lw0/od;->g:Z

    if-eqz v0, :cond_0

    goto/16 :goto_21

    :cond_0
    sget-object v0, Lw0/od;->d:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    if-nez v0, :cond_1

    goto/16 :goto_21

    :cond_1
    sget-object v1, Lw0/od;->e:Ljava/lang/Object;

    if-nez v1, :cond_2

    goto/16 :goto_21

    :cond_2
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->isServiceAlive()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lw0/od;->l()V

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    goto :goto_0

    :cond_4
    move v5, v4

    :goto_0
    const/4 v6, 0x3

    const/4 v7, 0x6

    if-eq v5, v6, :cond_6

    if-eq v5, v7, :cond_6

    const/4 v6, 0x4

    if-eq v5, v6, :cond_6

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    goto :goto_1

    :cond_5
    move v5, v4

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v5, 0x1

    :goto_2
    const-string v6, ""

    if-eqz v2, :cond_7

    const-string v9, "android.media.metadata.TITLE"

    invoke-virtual {v2, v9}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8

    :cond_7
    move-object v9, v6

    :cond_8
    if-eqz v2, :cond_9

    const-string v11, "android.media.metadata.ARTIST"

    invoke-virtual {v2, v11}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    if-nez v11, :cond_c

    :cond_9
    if-eqz v2, :cond_a

    const-string v11, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v2, v11}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_3

    :cond_a
    const/4 v11, 0x0

    :goto_3
    if-nez v11, :cond_c

    if-eqz v2, :cond_b

    const-string v11, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {v2, v11}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_4

    :cond_b
    const/4 v11, 0x0

    :cond_c
    :goto_4
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    goto :goto_5

    :cond_d
    move-object v11, v6

    :goto_5
    if-eqz v2, :cond_e

    const-string v12, "android.media.metadata.ALBUM"

    invoke-virtual {v2, v12}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_f

    :cond_e
    move-object v12, v6

    :cond_f
    if-eqz v2, :cond_10

    const-string v15, "android.media.metadata.DURATION"

    invoke-virtual {v2, v15}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide v13, v15

    :goto_6
    const-wide/16 v15, 0x0

    goto :goto_7

    :cond_10
    const-wide/16 v13, 0x0

    goto :goto_6

    :goto_7
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v17

    move-wide/from16 v7, v17

    :goto_8
    const/16 v19, 0x0

    goto :goto_9

    :cond_11
    move-wide v7, v15

    goto :goto_8

    :goto_9
    sget-object v10, Lw0/od;->n:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    sget-object v10, Lw0/od;->o:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    sget v10, Lw0/od;->p:I

    if-eq v5, v10, :cond_12

    goto :goto_b

    :cond_12
    sget-boolean v10, Lw0/od;->v:Z

    if-nez v10, :cond_17

    sget-object v10, Lw0/od;->n:Ljava/lang/String;

    if-eqz v10, :cond_17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sget-wide v17, Lw0/od;->q:J

    sub-long v17, v12, v17

    const-wide/16 v19, 0x3e8

    cmp-long v2, v17, v19

    if-ltz v2, :cond_40

    sput-wide v12, Lw0/od;->q:J

    cmp-long v2, v7, v15

    if-lez v2, :cond_13

    :try_start_0
    invoke-virtual {v0, v1, v7, v8}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->updateCurrentProgress(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_13
    invoke-static {v3}, Lw0/od;->g(Landroid/media/session/PlaybackState;)J

    move-result-wide v2

    sget-object v4, Lw0/m8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9, v11}, Lw0/k8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_14

    goto :goto_a

    :cond_14
    invoke-static {v4, v2, v3}, Lw0/m8;->f(Ljava/util/List;J)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    goto :goto_a

    :cond_15
    sget-object v3, Lw0/od;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_a

    :cond_16
    sput-object v2, Lw0/od;->u:Ljava/lang/String;

    :try_start_1
    invoke-virtual {v0, v1, v2}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->updateCurrentLyric(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_a
    if-eqz v5, :cond_40

    invoke-static {v0, v1}, Lw0/od;->m(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;Ljava/lang/Object;)V

    goto/16 :goto_21

    :cond_17
    :goto_b
    sput-boolean v4, Lw0/od;->v:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x7c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lw0/od;->r:Ljava/lang/String;

    invoke-static {v7, v8}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    sget-object v8, Lw0/od;->s:Ljava/lang/String;

    if-eqz v8, :cond_18

    goto/16 :goto_10

    :cond_18
    if-eqz v2, :cond_19

    const-string v8, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v2, v8}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_1c

    :cond_19
    if-eqz v2, :cond_1a

    const-string v8, "android.media.metadata.ART"

    invoke-virtual {v2, v8}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_c

    :cond_1a
    move-object/from16 v8, v19

    :goto_c
    if-nez v8, :cond_1c

    if-eqz v2, :cond_1b

    const-string v8, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v2, v8}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_d

    :cond_1b
    move-object/from16 v8, v19

    :cond_1c
    :goto_d
    if-eqz v8, :cond_1d

    invoke-static {v8, v7}, Lw0/od;->n(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1d

    goto :goto_10

    :cond_1d
    if-eqz v2, :cond_1e

    const-string v8, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v2, v8}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_21

    :cond_1e
    if-eqz v2, :cond_1f

    const-string v8, "android.media.metadata.ART_URI"

    invoke-virtual {v2, v8}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :cond_1f
    move-object/from16 v8, v19

    :goto_e
    if-nez v8, :cond_21

    if-eqz v2, :cond_20

    const-string v8, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v2, v8}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    :cond_20
    move-object/from16 v8, v19

    :cond_21
    :goto_f
    sget-object v2, Lw0/od;->c:Landroid/content/Context;

    if-eqz v8, :cond_22

    if-eqz v2, :cond_22

    invoke-static {v2}, Lw0/cg;->i(Landroid/content/Context;)V

    new-instance v10, Lw0/r;

    const/4 v15, 0x2

    invoke-direct {v10, v15, v7}, Lw0/r;-><init>(ILjava/lang/String;)V

    invoke-static {v2, v8, v10}, Lw0/cg;->e(Landroid/content/Context;Ljava/lang/String;Lh2/l;)V

    :cond_22
    move-object/from16 v8, v19

    :goto_10
    const-string v2, "toLowerCase(...)"

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_28

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Landroid/media/session/PlaybackState$CustomAction;

    invoke-static {v15}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    invoke-virtual {v15}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "n\u00e3o gost"

    const/4 v15, 0x0

    invoke-static {v3, v4, v15}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_26

    const-string v4, "nao gost"

    invoke-static {v3, v4, v15}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_26

    const-string v4, "dislike"

    invoke-static {v3, v4, v15}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_13

    :cond_23
    const-string v33, "saved"

    const-string v34, "heart"

    const-string v22, "cole\u00e7"

    const-string v23, "colecao"

    const-string v24, "collection"

    const-string v25, "biblioteca"

    const-string v26, "library"

    const-string v27, "favorit"

    const-string v28, "curtir"

    const-string v29, "like"

    const-string v30, "gostei"

    const-string v31, "gosto"

    const-string v32, "salvar"

    filled-new-array/range {v22 .. v34}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_24

    goto :goto_13

    :cond_24
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v22, v4

    const/4 v4, 0x0

    invoke-static {v3, v15, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v15

    if-eqz v15, :cond_25

    goto :goto_14

    :cond_25
    move-object/from16 v4, v22

    goto :goto_12

    :cond_26
    :goto_13
    move-object/from16 v3, v21

    const/4 v4, 0x0

    goto/16 :goto_11

    :cond_27
    move-object/from16 v21, v3

    move-object/from16 v10, v19

    :goto_14
    check-cast v10, Landroid/media/session/PlaybackState$CustomAction;

    goto :goto_15

    :cond_28
    move-object/from16 v21, v3

    move-object/from16 v10, v19

    :goto_15
    sput-object v10, Lw0/od;->t:Landroid/media/session/PlaybackState$CustomAction;

    if-eqz v10, :cond_2a

    invoke-virtual {v10}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "remov"

    const/4 v15, 0x0

    invoke-static {v3, v2, v15}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "remove"

    invoke-static {v3, v2, v15}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "saved"

    invoke-static {v3, v2, v15}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "salvo"

    invoke-static {v3, v2, v15}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "unsave"

    invoke-static {v3, v2, v15}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "marcado"

    invoke-static {v3, v2, v15}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_29
    const/4 v2, 0x1

    goto :goto_16

    :cond_2a
    const/4 v2, 0x0

    :goto_16
    sget-object v3, Lw0/m8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9, v11}, Lw0/k8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2b

    new-instance v4, Lw0/w5;

    const/16 v7, 0x9

    invoke-direct {v4, v7}, Lw0/w5;-><init>(I)V

    invoke-static {v9, v11, v13, v14, v4}, Lw0/m8;->d(Ljava/lang/String;Ljava/lang/String;JLh2/a;)V

    :cond_2b
    sget-object v4, Lw0/od;->c:Landroid/content/Context;

    if-nez v4, :cond_2c

    goto/16 :goto_21

    :cond_2c
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    invoke-direct {v7}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    const-string v22, "\u2014"

    if-nez v15, :cond_2d

    move-object/from16 v15, v22

    goto :goto_17

    :cond_2d
    move-object v15, v9

    :goto_17
    invoke-virtual {v7, v15}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2e

    move-object/from16 v15, v22

    goto :goto_18

    :cond_2e
    move-object v15, v11

    :goto_18
    invoke-virtual {v7, v15}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setArtist(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setAlbum(Ljava/lang/String;)V

    if-eqz v8, :cond_2f

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setArtwork(Landroid/net/Uri;)V

    :cond_2f
    invoke-virtual {v7, v13, v14}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setDuration(J)V

    invoke-virtual {v7, v5}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setPlaybackStatus(I)V

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setSourceType(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_30

    const-string v8, "EX Sapo"

    goto :goto_19

    :cond_30
    :try_start_2
    sget-object v13, Lw0/od;->c:Landroid/content/Context;

    invoke-static {v13}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v13, v8, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :goto_19
    invoke-virtual {v7, v8}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setPackageName(Ljava/lang/String;)V

    invoke-static {}, Lw0/od;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setAppIcon(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setSupportLoopModeSwitch(Z)V

    invoke-virtual {v7, v8}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setSupportVrCtrlPlayStatus(Z)V

    const-string v8, "music"

    invoke-virtual {v7, v8}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setMediaType(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "-play-list-common"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setPlayingMediaListId(Ljava/lang/String;)V

    invoke-static {v9, v11, v12}, Lw0/od;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setUuid(Ljava/lang/String;)V

    if-eqz v10, :cond_31

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setSupportCollect(Z)V

    invoke-virtual {v7, v2}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setCollected(Z)V

    :cond_31
    if-eqz v3, :cond_34

    sget-object v2, Lw0/m8;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9, v11}, Lw0/k8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_32

    move-object v2, v6

    :cond_32
    invoke-virtual {v7, v2}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setLyricContent(Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Lw0/od;->g(Landroid/media/session/PlaybackState;)J

    move-result-wide v12

    invoke-static {v3, v12, v13}, Lw0/m8;->f(Ljava/util/List;J)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_33

    goto :goto_1a

    :cond_33
    move-object v6, v2

    :goto_1a
    invoke-virtual {v7, v6}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setCurrentLyricSentence(Ljava/lang/String;)V

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v7, v2}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setLyric(Landroid/net/Uri;)V

    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_35

    goto :goto_1e

    :cond_35
    sget-object v2, Lw0/od;->c:Landroid/content/Context;

    if-nez v2, :cond_36

    :catchall_3
    :goto_1b
    move-object/from16 v2, v19

    goto :goto_1e

    :cond_36
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_37

    goto :goto_1b

    :cond_37
    const-string v6, "com.njda.aauto"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/high16 v8, 0xc000000

    const v10, 0xffff

    if-nez v6, :cond_38

    const-string v6, "com.google.android.projection.gearhead"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    :catchall_4
    move-object/from16 v6, v19

    goto :goto_1c

    :cond_38
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    and-int/2addr v6, v10

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.bd.systemui.aa.foreground"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v6, v12, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :goto_1c
    if-eqz v6, :cond_39

    move-object v2, v6

    goto :goto_1e

    :cond_39
    :try_start_4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto :goto_1d

    :catchall_5
    move-object/from16 v6, v19

    :goto_1d
    if-nez v6, :cond_3a

    goto :goto_1b

    :cond_3a
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    and-int/2addr v3, v10

    invoke-static {v2, v3, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_1e
    if-eqz v2, :cond_3b

    invoke-virtual {v7, v2}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setLaunchIntent(Landroid/app/PendingIntent;)V

    invoke-virtual {v7, v2}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setPlayerIntent(Landroid/app/PendingIntent;)V

    :cond_3b
    const-string v2, "MediaCenterBridge"

    if-eqz v5, :cond_3c

    :try_start_6
    invoke-static {v0, v1}, Lw0/od;->m(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;Ljava/lang/Object;)V

    goto :goto_1f

    :catchall_6
    move-exception v0

    goto :goto_20

    :cond_3c
    :goto_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "publish "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " status="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x5d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lw0/od;->i:Lw0/md;

    if-eqz v3, :cond_3d

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setPlayingItemPositionInQueue(I)V

    iput-object v7, v3, Lw0/md;->a:Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    :cond_3d
    invoke-virtual {v0, v1, v7}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->updateMusicPlaybackState(Ljava/lang/Object;Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;)Z

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->updateCurrentProgress(Ljava/lang/Object;J)V

    const/4 v15, 0x0

    invoke-virtual {v0, v4, v5, v15}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->updatePlayState(Ljava/lang/String;II)V

    sget-object v0, Lw0/od;->n:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Lw0/od;->o:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    :cond_3e
    sput-object v19, Lw0/od;->u:Ljava/lang/String;

    :cond_3f
    sput-object v9, Lw0/od;->n:Ljava/lang/String;

    sput-object v11, Lw0/od;->o:Ljava/lang/String;

    sput v5, Lw0/od;->p:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lw0/od;->q:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_21

    :goto_20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "publish IPC falhou: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lw0/od;->l()V

    :cond_40
    :goto_21
    return-void
.end method

.method public static l()V
    .locals 4

    sget-boolean v0, Lw0/od;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MediaCenterBridge"

    const-string v1, "sess\u00e3o obsoleta \u2014 re-registrando"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lw0/od;->f:Z

    const/4 v0, 0x0

    sput-object v0, Lw0/od;->e:Ljava/lang/Object;

    sput-object v0, Lw0/od;->n:Ljava/lang/String;

    sput-object v0, Lw0/od;->o:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lw0/od;->p:I

    sget-object v0, Lw0/od;->d:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    if-eqz v0, :cond_1

    sget-object v1, Lw0/od;->k:Landroid/os/Handler;

    if-eqz v1, :cond_2

    new-instance v2, La1/r;

    const/16 v3, 0xc

    invoke-direct {v2, v3, v0}, La1/r;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    sget-object v0, Lw0/od;->k:Landroid/os/Handler;

    if-eqz v0, :cond_2

    new-instance v1, Lw0/r0;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lw0/r0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static m(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->queryCurrentFocusClient(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lw0/od;->c:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    const-string v2, "android.uid.system"

    invoke-static {v0, v2}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v1, :cond_2

    invoke-static {v0, v1}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    sget-boolean v1, Lw0/od;->y:Z

    if-nez v1, :cond_6

    sget-object v1, Lw0/od;->x:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->requestPlay(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->updateCurrentSourceType(Ljava/lang/Object;I)V

    return-void

    :cond_6
    :goto_2
    sget-object p0, Lw0/od;->E:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    sput-object v0, Lw0/od;->E:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "foco com "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (proje\u00e7\u00e3o) \u2014 n\u00e3o reivindico"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaCenterBridge"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catchall_0
    :cond_7
    :goto_3
    return-void
.end method

.method public static n(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "art_"

    sget-object v1, Lw0/od;->c:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    sget v3, Lcom/ex/auto/MediaCenterArtworkProvider;->a:I

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v4, "mediabridge_artwork"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lw0/od;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v1, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    array-length v1, p0

    const/16 v3, 0xa

    if-gt v1, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lw0/b6;

    const/16 v4, 0x9

    invoke-direct {v1, v4}, Lw0/b6;-><init>(I)V

    invoke-static {p0, v1}, Ly1/f;->e0([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    array-length p0, p0

    sub-int/2addr p0, v3

    invoke-static {v1, p0}, Ly1/g;->j0(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-static {v4, p0}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :catchall_3
    :cond_5
    :goto_1
    sget p0, Lcom/ex/auto/MediaCenterArtworkProvider;->a:I

    const-string p0, "fileName"

    invoke-static {v0, p0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "content://com.ex.auto.mediabridge.artwork/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "parse(...)"

    invoke-static {p0, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lw0/od;->r:Ljava/lang/String;

    sput-object p0, Lw0/od;->s:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, p0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "saveArtBitmap falhou: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MediaCenterBridge"

    invoke-static {p0, p1, v0}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    return-object v2
.end method

.method public static o(Z)V
    .locals 3

    sget-boolean v0, Lw0/od;->y:Z

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    sput-boolean p0, Lw0/od;->y:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarPlay conectado="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lw0/od;->k:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lw0/y1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lw0/y1;-><init>(IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static r()V
    .locals 3

    sget-object v0, Lw0/od;->t:Landroid/media/session/PlaybackState$CustomAction;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Lw0/od;->l:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Landroid/media/session/PlaybackState$CustomAction;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    sget-object p1, Lo2/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "getBytes(...)"

    invoke-static {p1, p2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 7

    sget-boolean v0, Lw0/od;->g:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-boolean v0, Lw0/od;->y:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_a

    sget-object v0, Lw0/od;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    sget-boolean v0, Lw0/od;->z:Z

    goto/16 :goto_3

    :cond_1
    :try_start_0
    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v0, v4}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const-string v4, "getRunningTasks(...)"

    invoke-static {v0, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ly1/g;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/lifecycle/y;->b(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "flattenToShortString(...)"

    invoke-static {v0, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "tasks"

    sput-object v4, Lw0/od;->B:Ljava/lang/String;

    sget-object v4, Lw0/od;->w:Ljava/util/List;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    :goto_1
    move v0, v3

    goto :goto_3

    :cond_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v5, v3}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_5

    :goto_2
    move v0, v1

    goto :goto_3

    :catchall_0
    :cond_6
    :try_start_1
    new-instance v0, Lkotlinx/coroutines/scheduling/h;

    const/16 v4, 0x15b3

    invoke-direct {v0, v4}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    const-string v4, "dumpsys activity activities 2>/dev/null | grep mResumedActivity"

    const/16 v5, 0xbb8

    invoke-virtual {v0, v5, v4}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "adb"

    sput-object v4, Lw0/od;->B:Ljava/lang/String;

    sget-object v4, Lw0/od;->w:Ljava/util/List;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v0, v5, v3}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_8

    goto :goto_2

    :catchall_1
    sget-boolean v0, Lw0/od;->z:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lw0/od;->y:Z

    if-nez v0, :cond_3

    goto :goto_2

    :goto_3
    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    move v1, v3

    :cond_a
    :goto_4
    sget-boolean v0, Lw0/od;->z:Z

    if-ne v1, v0, :cond_b

    goto/16 :goto_6

    :cond_b
    sput-boolean v1, Lw0/od;->z:Z

    const-string v0, "MediaCenterBridge"

    if-eqz v1, :cond_e

    sget-boolean v1, Lw0/od;->y:Z

    const/16 v4, 0x29

    if-eqz v1, :cond_c

    const-string v1, "CarPlay conectado"

    goto :goto_5

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "proje\u00e7\u00e3o em tela cheia (sonda "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lw0/od;->B:Ljava/lang/String;

    invoke-static {v1, v5, v4}, Landroidx/activity/result/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") \u2014 saindo do registro do MediaCenter"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lw0/ae;->a:Lw0/ae;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "ponte MediaCenter suspensa ("

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Lw0/od;->d:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    sget-object v0, Lw0/od;->e:Ljava/lang/Object;

    if-eqz p1, :cond_d

    if-eqz v0, :cond_d

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->unregister(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_d
    sput-object v2, Lw0/od;->e:Ljava/lang/Object;

    sput-boolean v3, Lw0/od;->f:Z

    sput-boolean v3, Lw0/od;->C:Z

    goto :goto_6

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sem proje\u00e7\u00e3o ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") \u2014 voltando a registrar no MediaCenter"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lw0/ae;->a:Lw0/ae;

    const-string p1, "ponte MediaCenter religada (sem proje\u00e7\u00e3o)"

    invoke-static {v0, p1, v3}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lw0/od;->i()V

    :goto_6
    return-void
.end method

.method public final i()V
    .locals 10

    const-string v0, "MediaCenterBridge"

    const-string v1, "registrado no MediaCenter (token="

    sget-boolean v2, Lw0/od;->z:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-boolean v2, Lw0/od;->f:Z

    if-nez v2, :cond_9

    sget-boolean v2, Lw0/od;->g:Z

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object v2, Lw0/od;->d:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    sget-object v3, Lw0/od;->c:Landroid/content/Context;

    if-nez v3, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    const/4 v6, 0x0

    :try_start_0
    sget-object v7, Lw0/od;->i:Lw0/md;

    invoke-virtual {v2, v3, v7}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->registerMusic(Ljava/lang/String;Lcom/ecarx/eas/sdk/mediacenter/MusicClient;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v1, "registerMusic devolveu null \u2014 reagenda"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lw0/od;->k:Landroid/os/Handler;

    if-eqz v1, :cond_9

    new-instance v2, La1/r;

    const/16 v3, 0xb

    invoke-direct {v2, v3, p0}, La1/r;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_1

    :cond_4
    sput-object v7, Lw0/od;->e:Ljava/lang/Object;

    const/4 v8, 0x1

    sput-boolean v8, Lw0/od;->f:Z

    const/4 v8, 0x6

    filled-new-array {v8}, [I

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->updateMediaSourceTypeList(Ljava/lang/Object;[I)Z

    const/4 v8, 0x2

    const/4 v9, 0x3

    filled-new-array {v6, v8, v9}, [I

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->declareMediaCenterCapability(Ljava/lang/Object;[I)V

    const/4 v8, 0x4

    filled-new-array {v6, v9, v8}, [I

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->declareSupportCollectTypes(Ljava/lang/Object;[I)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lw0/od;->k:Landroid/os/Handler;

    if-eqz v1, :cond_5

    sget-object v2, Lw0/od;->A:Lw0/nd;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    sget-object v1, Lw0/od;->k:Landroid/os/Handler;

    if-eqz v1, :cond_6

    sget-object v2, Lw0/od;->A:Lw0/nd;

    const-wide/16 v7, 0x1388

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    sget-object v1, Lw0/od;->i:Lw0/md;

    if-eqz v1, :cond_7

    invoke-static {v3}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v3}, Lw0/od;->j(Ljava/lang/String;)Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;->setPlayingItemPositionInQueue(I)V

    iput-object v2, v1, Lw0/md;->a:Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    :cond_7
    sget-object v1, Lw0/od;->h:Landroid/media/session/MediaSessionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    :try_start_1
    sget-object v2, Lw0/od;->D:Lw0/kd;

    sget-object v3, Lw0/od;->k:Landroid/os/Handler;

    invoke-static {v3}, Li2/g;->b(Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    invoke-virtual {v1, v7}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lw0/od;->h(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_2
    const-string v2, "MediaCenterBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "addOnActiveSessionsChangedListener falhou: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lw0/od;->k:Landroid/os/Handler;

    if-eqz v1, :cond_9

    sget-object v2, Lw0/od;->F:Lw0/nd;

    const-wide/16 v7, 0x2710

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "performRegistration falhou: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sput-boolean v6, Lw0/od;->f:Z

    const/4 v0, 0x0

    sput-object v0, Lw0/od;->e:Ljava/lang/Object;

    sget-object v0, Lw0/od;->k:Landroid/os/Handler;

    if-eqz v0, :cond_9

    new-instance v1, Lw0/r0;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lw0/r0;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_2
    return-void
.end method

.method public final declared-synchronized p(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/od;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string p1, "MediaCenterBridge"

    const-string v0, "start: j\u00e1 ativo"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lw0/od;->g:Z

    sget-boolean v0, Lw0/od;->y:Z

    sput-boolean v0, Lw0/od;->z:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lw0/od;->c:Landroid/content/Context;

    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaCenterBridge"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sput-object v0, Lw0/od;->j:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lw0/od;->j:Landroid/os/HandlerThread;

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lw0/od;->k:Landroid/os/Handler;

    const-string v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/media/session/MediaSessionManager;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sput-object p1, Lw0/od;->h:Landroid/media/session/MediaSessionManager;

    new-instance p1, Lw0/md;

    invoke-direct {p1}, Lcom/ecarx/eas/sdk/mediacenter/MusicClient;-><init>()V

    sput-object p1, Lw0/od;->i:Lw0/md;

    const-string p1, "MediaCenterBridge"

    const-string v0, "start: inicializando SDK MediaCenter"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lw0/od;->k:Landroid/os/Handler;

    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v0, Lw0/r0;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lw0/r0;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized q()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lw0/od;->c:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "MediaCenterBridge"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lw0/od;->g:Z

    sget-object v0, Lw0/od;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    invoke-static {}, Lw0/od;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :try_start_3
    sget-object v0, Lw0/od;->h:Landroid/media/session/MediaSessionManager;

    if-eqz v0, :cond_2

    sget-object v2, Lw0/od;->D:Lw0/kd;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_2
    :try_start_4
    sget-object v0, Lw0/od;->d:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    sget-object v2, Lw0/od;->e:Ljava/lang/Object;

    sget-object v3, Lw0/od;->k:Landroid/os/Handler;

    if-eqz v3, :cond_3

    new-instance v4, Lw0/ab;

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5, v2}, Lw0/ab;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    sget-object v0, Lw0/od;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_4
    sput-object v1, Lw0/od;->j:Landroid/os/HandlerThread;

    sput-object v1, Lw0/od;->k:Landroid/os/Handler;

    sput-object v1, Lw0/od;->d:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    sput-object v1, Lw0/od;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lw0/od;->f:Z

    sput-boolean v0, Lw0/od;->C:Z

    sput-object v1, Lw0/od;->l:Landroid/media/session/MediaController;

    sput-object v1, Lw0/od;->m:Lw0/t8;

    sput-object v1, Lw0/od;->h:Landroid/media/session/MediaSessionManager;

    sput-object v1, Lw0/od;->i:Lw0/md;

    sput-object v1, Lw0/od;->c:Landroid/content/Context;

    sput-object v1, Lw0/od;->n:Ljava/lang/String;

    sput-object v1, Lw0/od;->o:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lw0/od;->p:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method
