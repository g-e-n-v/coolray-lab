.class public final Lcom/ex/auto/MediaBarFloaterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final v:Ljava/util/Set;


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/media/session/MediaSessionManager;

.field public final c:Landroid/os/Handler;

.field public d:Landroid/widget/FrameLayout;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/media/session/MediaController;

.field public volatile l:Landroid/media/session/PlaybackState$CustomAction;

.field public m:Ljava/lang/String;

.field public n:Landroid/graphics/Bitmap;

.field public volatile o:Ljava/lang/Boolean;

.field public final p:Ljava/util/HashMap;

.field public final q:Lw0/r8;

.field public final r:Ljava/util/HashMap;

.field public final s:Lw0/t8;

.field public volatile t:Z

.field public final u:Landroidx/activity/d;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v10, "com.njda.aauto"

    const-string v11, "com.google.android.projection.gearhead"

    const-string v0, "com.spotify.music"

    const-string v1, "ru.yandex.music"

    const-string v2, "deezer.android.app"

    const-string v3, "com.google.android.apps.youtube.music"

    const-string v4, "app.rvx.android.apps.youtube.music"

    const-string v5, "app.revanced.android.apps.youtube.music"

    const-string v6, "com.vanced.android.apps.youtube.music"

    const-string v7, "com.google.android.youtube"

    const-string v8, "app.rvx.android.youtube"

    const-string v9, "app.revanced.android.youtube"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk1/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/ex/auto/MediaBarFloaterService;->v:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->p:Ljava/util/HashMap;

    new-instance v0, Lw0/r8;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lw0/r8;-><init>(Landroid/app/Service;I)V

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->q:Lw0/r8;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->r:Ljava/util/HashMap;

    new-instance v0, Lw0/t8;

    invoke-direct {v0, v1, p0}, Lw0/t8;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->s:Lw0/t8;

    new-instance v0, Landroidx/activity/d;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, Landroidx/activity/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->u:Landroidx/activity/d;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-virtual {p0}, Lcom/ex/auto/MediaBarFloaterService;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const v0, -0xede9e4

    return v0
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "base"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lw0/e8;->p(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->d:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->e:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->f:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->g:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->h:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->i:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->j:Landroid/widget/ImageView;

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPackageName(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "launchAndroidAuto("

    const-string v3, "com.njda.aauto"

    invoke-static {v1, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "MediaBarFloater"

    if-nez v3, :cond_3

    const-string v3, "com.google.android.projection.gearhead"

    invoke-static {v1, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launchApp falhou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.bd.systemui.aa.foreground"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): broadcast com.bd.systemui.aa.foreground enviado"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v3, "): "

    invoke-static {v2, v1, v3}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final d()V
    .locals 17

    move-object/from16 v1, p0

    sget-object v2, Ly1/p;->a:Ly1/p;

    const-string v3, "MediaBarFloater"

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->b:Landroid/media/session/MediaSessionManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "msm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getActiveSessions falhou: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/media/session/MediaController;

    sget-object v8, Lcom/ex/auto/MediaBarFloaterService;->v:Ljava/util/Set;

    invoke-virtual {v7}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v5}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_3

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Landroid/media/session/MediaController;

    invoke-virtual {v9}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-static {v0}, Ly1/g;->p0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-object v6, v1, Lcom/ex/auto/MediaBarFloaterService;->p:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    iget-object v10, v1, Lcom/ex/auto/MediaBarFloaterService;->s:Lw0/t8;

    const-string v11, "next(...)"

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    :try_start_1
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/session/MediaController;

    invoke-virtual {v9, v10}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v8, 0x0

    :catch_2
    :cond_6
    :goto_5
    if-ge v8, v0, :cond_7

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    invoke-static {v9, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/media/session/MediaController;

    invoke-virtual {v9}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    :try_start_2
    iget-object v12, v1, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    invoke-virtual {v9, v10, v12}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    invoke-virtual {v9}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v12

    invoke-virtual {v6, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v0, :cond_13

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    invoke-static {v8, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/media/session/MediaController;

    :try_start_3
    invoke-virtual {v8}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catchall_0
    move-object v9, v4

    :goto_7
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/media/MediaMetadata;->keySet()Ljava/util/Set;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-static {v10}, Ly1/g;->h0(Ljava/util/Set;)Ljava/util/List;

    move-result-object v10

    goto :goto_8

    :cond_8
    move-object v10, v4

    :goto_8
    if-nez v10, :cond_9

    move-object v10, v2

    :cond_9
    if-eqz v9, :cond_c

    const-string v12, "android.media.metadata.ART"

    const-string v13, "android.media.metadata.DISPLAY_ICON"

    const-string v14, "android.media.metadata.ALBUM_ART"

    filled-new-array {v14, v12, v13}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_9

    :cond_a
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :catchall_1
    :cond_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    :try_start_4
    invoke-virtual {v9, v13}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v13, :cond_b

    const/4 v12, 0x1

    goto :goto_a

    :cond_c
    :goto_9
    const/4 v12, 0x0

    :goto_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v15, ","

    const/16 v7, 0x3e

    move/from16 v16, v0

    invoke-static {v10, v15, v4, v7}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/ex/auto/MediaBarFloaterService;->r:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    invoke-virtual {v8}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_d

    :try_start_5
    const-string v0, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v9, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_d
    if-eqz v9, :cond_e

    const-string v0, "android.media.metadata.ART_URI"

    invoke-virtual {v9, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_e
    move-object v0, v4

    :goto_b
    if-nez v0, :cond_10

    if-eqz v9, :cond_f

    const-string v0, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v9, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_c

    :catchall_2
    :cond_f
    move-object v0, v4

    :cond_10
    :goto_c
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "metadados de "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " chaves, capaEmbutida="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", uriCapa="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_11

    const-string v0, "(nenhuma)"

    :cond_11
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u2014 "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v15, v4, v7}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move/from16 v0, v16

    goto/16 :goto_6

    :cond_13
    invoke-virtual {v1, v5}, Lcom/ex/auto/MediaBarFloaterService;->f(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final e()V
    .locals 33

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->o:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->o:Ljava/lang/Boolean;

    :cond_0
    iget-boolean v0, v1, Lcom/ex/auto/MediaBarFloaterService;->t:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->b()V

    return-void

    :cond_1
    iget-object v6, v1, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    if-nez v6, :cond_2

    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->b()V

    return-void

    :cond_2
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    move v9, v0

    goto :goto_0

    :cond_3
    move v9, v8

    :goto_0
    if-eqz v2, :cond_2f

    const/4 v0, 0x6

    const/4 v10, 0x3

    const/4 v3, 0x2

    if-eq v9, v10, :cond_4

    if-eq v9, v3, :cond_4

    if-ne v9, v0, :cond_2f

    :cond_4
    iget-object v4, v1, Lcom/ex/auto/MediaBarFloaterService;->d:Landroid/widget/FrameLayout;

    const/high16 v11, 0x40800000    # 4.0f

    const-string v12, "MediaBarFloater"

    const/4 v13, 0x1

    if-eqz v4, :cond_5

    move-object/from16 v22, v6

    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_5
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->g()Z

    move-result v16

    if-eqz v16, :cond_6

    const v16, -0xe8e4e2

    :goto_1
    move/from16 v15, v16

    const/16 v17, 0x0

    goto :goto_2

    :cond_6
    const v16, -0xd0b09

    goto :goto_1

    :goto_2
    invoke-virtual {v4, v15}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v14, 0x1a

    const/16 v5, 0x12

    invoke-virtual {v15, v14, v8, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v5, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v14, v13}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v14, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->g()Z

    move-result v18

    if-eqz v18, :cond_7

    const v18, -0x19000001

    :goto_3
    move/from16 v13, v18

    goto :goto_4

    :cond_7
    const v18, -0x19ede9e4

    goto :goto_3

    :goto_4
    invoke-virtual {v14, v10, v13}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x2c

    invoke-direct {v13, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Lw0/cd;

    const/4 v14, 0x4

    invoke-direct {v13, v1, v14}, Lw0/cd;-><init>(Lcom/ex/auto/MediaBarFloaterService;I)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->g()Z

    move-result v13

    if-eqz v13, :cond_8

    const v13, 0x33ffffff

    goto :goto_5

    :cond_8
    const/high16 v13, 0x1f000000

    :goto_5
    invoke-virtual {v5, v13}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x28

    invoke-direct {v13, v3, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v15, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x40

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v14, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v14, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v10, -0x5d4e3b

    invoke-virtual {v14, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/view/View;->setClipToOutline(Z)V

    new-instance v10, Lw0/fd;

    const/4 v14, 0x0

    invoke-direct {v10, v14}, Lw0/fd;-><init>(I)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lw0/cd;

    const/4 v13, 0x5

    invoke-direct {v10, v1, v13}, Lw0/cd;-><init>(Lcom/ex/auto/MediaBarFloaterService;I)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v14, 0x20

    invoke-direct {v13, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v14, 0x800055

    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v10, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v13, v8, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/4 v0, 0x6

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v3, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lw0/cd;

    const/4 v11, 0x6

    invoke-direct {v0, v1, v11}, Lw0/cd;-><init>(Lcom/ex/auto/MediaBarFloaterService;I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->a()I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v11, 0x41700000    # 15.0f

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->g()Z

    move-result v14

    if-eqz v14, :cond_9

    const v14, -0x756d68

    goto :goto_6

    :cond_9
    const v14, -0xada59a

    :goto_6
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v14, 0x41400000    # 12.0f

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0700ac

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->a()I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setColorFilter(I)V

    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v14, 0xa

    invoke-virtual {v3, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x38

    invoke-direct {v8, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lw0/cd;

    const/4 v14, 0x0

    invoke-direct {v8, v1, v14}, Lw0/cd;-><init>(Lcom/ex/auto/MediaBarFloaterService;I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0700ab

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->a()I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v14, 0xa

    invoke-virtual {v3, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x38

    invoke-direct {v14, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x6

    invoke-virtual {v14, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lw0/cd;

    const/4 v14, 0x1

    invoke-direct {v8, v1, v14}, Lw0/cd;-><init>(Lcom/ex/auto/MediaBarFloaterService;I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0700a9

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->a()I

    move-result v14

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v14, 0xa

    invoke-virtual {v8, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v22, v6

    const/16 v6, 0x38

    invoke-direct {v14, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x6

    invoke-virtual {v14, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v8, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lw0/cd;

    const/4 v14, 0x2

    invoke-direct {v6, v1, v14}, Lw0/cd;-><init>(Lcom/ex/auto/MediaBarFloaterService;I)V

    invoke-virtual {v8, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0700a7

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->a()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v14, 0xa

    invoke-virtual {v6, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x30

    invoke-direct {v8, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v11, 0x6

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v8, Lw0/cd;

    const/4 v11, 0x3

    invoke-direct {v8, v1, v11}, Lw0/cd;-><init>(Lcom/ex/auto/MediaBarFloaterService;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v5, v1, Lcom/ex/auto/MediaBarFloaterService;->e:Landroid/widget/ImageView;

    iput-object v10, v1, Lcom/ex/auto/MediaBarFloaterService;->f:Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->g:Landroid/widget/TextView;

    iput-object v13, v1, Lcom/ex/auto/MediaBarFloaterService;->h:Landroid/widget/TextView;

    iput-object v3, v1, Lcom/ex/auto/MediaBarFloaterService;->i:Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/ex/auto/MediaBarFloaterService;->j:Landroid/widget/ImageView;

    new-instance v23, Landroid/view/WindowManager$LayoutParams;

    const/16 v27, 0x308

    const/16 v28, -0x3

    const/16 v24, 0x264

    const/16 v25, 0x70

    const/16 v26, 0x7e8

    invoke-direct/range {v23 .. v28}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object/from16 v0, v23

    const v3, 0x800053

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, 0x0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    iget-object v3, v1, Lcom/ex/auto/MediaBarFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v3, :cond_a

    invoke-interface {v3, v4, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, v1, Lcom/ex/auto/MediaBarFloaterService;->d:Landroid/widget/FrameLayout;

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_a
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addView floater falhou: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, ""

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_9

    :cond_b
    move-object v4, v0

    goto :goto_a

    :cond_c
    :goto_9
    move-object v4, v3

    :goto_a
    const-string v0, "android.media.metadata.ARTIST"

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_d
    const-string v0, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_e
    move-object v0, v3

    :cond_f
    :goto_b
    iget-object v5, v1, Lcom/ex/auto/MediaBarFloaterService;->g:Landroid/widget/TextView;

    if-eqz v5, :cond_10

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    iget-object v5, v1, Lcom/ex/auto/MediaBarFloaterService;->h:Landroid/widget/TextView;

    if-eqz v5, :cond_11

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    const-string v5, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_12

    const-string v5, "android.media.metadata.ART"

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_12

    const-string v5, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x7c

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_14

    iget-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_13
    :goto_c
    move-object/from16 v13, v17

    goto/16 :goto_11

    :cond_14
    iget-object v5, v1, Lcom/ex/auto/MediaBarFloaterService;->m:Ljava/lang/String;

    invoke-static {v5, v6}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, v1, Lcom/ex/auto/MediaBarFloaterService;->n:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_15

    iget-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_c

    :cond_15
    iget-object v5, v1, Lcom/ex/auto/MediaBarFloaterService;->e:Landroid/widget/ImageView;

    if-eqz v5, :cond_16

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v10, -0x5d4e3b

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_16
    iget-object v5, v1, Lcom/ex/auto/MediaBarFloaterService;->m:Ljava/lang/String;

    invoke-static {v5, v6}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    iput-object v6, v1, Lcom/ex/auto/MediaBarFloaterService;->m:Ljava/lang/String;

    move-object/from16 v5, v17

    iput-object v5, v1, Lcom/ex/auto/MediaBarFloaterService;->n:Landroid/graphics/Bitmap;

    const-string v5, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_17

    const-string v5, "android.media.metadata.ART_URI"

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_17

    const-string v5, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_17
    move-object v8, v5

    const-string v5, "android.media.metadata.ALBUM"

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_18

    goto :goto_d

    :cond_18
    move-object v3, v5

    :cond_19
    :goto_d
    if-nez v8, :cond_1c

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "capa ausente \u2014 chaves do player ("

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/MediaMetadata;->keySet()Ljava/util/Set;

    move-result-object v10

    if-eqz v10, :cond_1a

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    goto :goto_e

    :cond_1a
    const/4 v10, 0x0

    :goto_e
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "): "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/MediaMetadata;->keySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-static {v2}, Ly1/g;->h0(Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    const-string v10, ","

    const/16 v11, 0x3e

    const/4 v13, 0x0

    invoke-static {v2, v10, v13, v11}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_1b
    const/4 v13, 0x0

    const-string v2, "(sem metadata)"

    :goto_f
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_1c
    const/4 v13, 0x0

    :goto_10
    invoke-static {v1}, Lw0/cg;->i(Landroid/content/Context;)V

    invoke-static {v0, v3, v4}, Lw0/m;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lw0/cg;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1d

    iput-object v2, v1, Lcom/ex/auto/MediaBarFloaterService;->n:Landroid/graphics/Bitmap;

    iget-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_11

    :cond_1d
    new-instance v5, Lw0/dd;

    invoke-direct {v5, v1, v6, v4, v0}, Lw0/dd;-><init>(Lcom/ex/auto/MediaBarFloaterService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    new-instance v0, Lw0/ed;

    invoke-direct/range {v0 .. v5}, Lw0/ed;-><init>(Lcom/ex/auto/MediaBarFloaterService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw0/dd;)V

    if-eqz v8, :cond_1e

    new-instance v2, Lw0/i9;

    const/4 v3, 0x3

    invoke-direct {v2, v5, v3, v0}, Lw0/i9;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v1, v8, v2}, Lw0/cg;->e(Landroid/content/Context;Ljava/lang/String;Lh2/l;)V

    goto :goto_11

    :cond_1e
    invoke-virtual {v0}, Lw0/ed;->a()Ljava/lang/Object;

    :cond_1f
    :goto_11
    iget-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    invoke-virtual/range {v22 .. v22}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPackageName(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_12

    :catch_0
    move-object v5, v13

    :goto_12
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_20
    const/4 v2, 0x3

    if-ne v9, v2, :cond_21

    const/16 v19, 0x1

    goto :goto_13

    :cond_21
    const/16 v19, 0x0

    :goto_13
    iget-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_23

    if-eqz v19, :cond_22

    const v15, 0x7f0700aa

    goto :goto_14

    :cond_22
    const v15, 0x7f0700ab

    :goto_14
    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_23
    const-string v0, "toLowerCase(...)"

    if-eqz v7, :cond_29

    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/media/session/PlaybackState$CustomAction;

    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x20

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "n\u00e3o gost"

    const/4 v10, 0x0

    invoke-static {v4, v5, v10}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_24

    const-string v5, "nao gost"

    invoke-static {v4, v5, v10}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_24

    const-string v5, "dislike"

    invoke-static {v4, v5, v10}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_15

    :cond_25
    const-string v31, "saved"

    const-string v32, "heart"

    const-string v20, "cole\u00e7"

    const-string v21, "colecao"

    const-string v22, "collection"

    const-string v23, "biblioteca"

    const-string v24, "library"

    const-string v25, "favorit"

    const-string v26, "curtir"

    const-string v27, "like"

    const-string v28, "gostei"

    const-string v29, "gosto"

    const-string v30, "salvar"

    filled-new-array/range {v20 .. v32}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_26

    goto :goto_15

    :cond_26
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v4, v6, v10}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-eqz v6, :cond_27

    move-object v15, v3

    goto :goto_16

    :cond_28
    move-object v15, v13

    :goto_16
    check-cast v15, Landroid/media/session/PlaybackState$CustomAction;

    goto :goto_17

    :cond_29
    move-object v15, v13

    :goto_17
    if-eqz v15, :cond_2a

    iput-object v15, v1, Lcom/ex/auto/MediaBarFloaterService;->l:Landroid/media/session/PlaybackState$CustomAction;

    :cond_2a
    iget-object v2, v1, Lcom/ex/auto/MediaBarFloaterService;->j:Landroid/widget/ImageView;

    if-eqz v2, :cond_2e

    iget-object v3, v1, Lcom/ex/auto/MediaBarFloaterService;->l:Landroid/media/session/PlaybackState$CustomAction;

    if-nez v3, :cond_2b

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19

    :cond_2b
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remov"

    invoke-static {v3, v0, v10}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "remove"

    invoke-static {v3, v0, v10}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "saved"

    invoke-static {v3, v0, v10}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "salvo"

    invoke-static {v3, v0, v10}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "unsave"

    invoke-static {v3, v0, v10}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "marcado"

    invoke-static {v3, v0, v10}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_18

    :cond_2c
    const v8, 0x7f0700a7

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_19

    :cond_2d
    :goto_18
    const v0, 0x7f0700a8

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_2e
    :goto_19
    return-void

    :cond_2f
    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->b()V

    return-void
.end method

.method public final f(Ljava/util/ArrayList;)V
    .locals 6

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ex/auto/MediaBarFloaterService;->p:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "<get-values>(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ly1/g;->m0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    check-cast v1, Landroid/media/session/MediaController;

    if-nez v1, :cond_8

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    iget-object v5, p0, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, v2

    :goto_1
    invoke-static {v4, v5}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_5
    move-object v1, v2

    :goto_2
    check-cast v1, Landroid/media/session/MediaController;

    if-nez v1, :cond_8

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_7
    move-object v1, v2

    :goto_3
    check-cast v1, Landroid/media/session/MediaController;

    if-nez v1, :cond_8

    invoke-static {p1}, Ly1/g;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/media/session/MediaController;

    :cond_8
    if-nez v1, :cond_9

    iput-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    iput-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->l:Landroid/media/session/PlaybackState$CustomAction;

    iput-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->n:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/ex/auto/MediaBarFloaterService;->b()V

    return-void

    :cond_9
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    iget-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    goto :goto_4

    :cond_a
    move-object v0, v2

    :goto_4
    invoke-static {p1, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    iput-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->l:Landroid/media/session/PlaybackState$CustomAction;

    iput-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->n:Landroid/graphics/Bitmap;

    :cond_b
    invoke-virtual {p0}, Lcom/ex/auto/MediaBarFloaterService;->e()V

    return-void
.end method

.method public final g()Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->o:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->o:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tema mudou (escuro="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") \u2014 redesenhando o floater"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaBarFloater"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    new-instance v0, La1/r;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, La1/r;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate()V
    .locals 8

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->u:Landroidx/activity/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->a:Landroid/view/WindowManager;

    const-string v0, "media_session"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.session.MediaSessionManager"

    invoke-static {v0, v1}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->b:Landroid/media/session/MediaSessionManager;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const-string v2, "media_bar_floater"

    const-string v3, "M\u00eddia na barra"

    const-string v4, "Spotify/YT Music na barra"

    const v5, 0x1080024

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lw0/t1;->E(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    const/16 v2, 0x3ae0

    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :try_start_0
    iget-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->b:Landroid/media/session/MediaSessionManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v1, Lcom/ex/auto/MediaBarFloaterService;->q:Lw0/r8;

    invoke-virtual {v0, v3, v2}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "msm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addOnActiveSessionsChangedListener falhou: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaBarFloater"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Lcom/ex/auto/MediaBarFloaterService;->d()V

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->u:Landroidx/activity/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->b:Landroid/media/session/MediaSessionManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->q:Lw0/r8;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    goto :goto_0

    :cond_0
    const-string v1, "msm"

    invoke-static {v1}, Li2/g;->h(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    iget-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->p:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/ex/auto/MediaBarFloaterService;->s:Lw0/t8;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->p:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->l:Landroid/media/session/PlaybackState$CustomAction;

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->n:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/ex/auto/MediaBarFloaterService;->b()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-virtual {p0}, Lcom/ex/auto/MediaBarFloaterService;->d()V

    const/4 p1, 0x1

    return p1
.end method
