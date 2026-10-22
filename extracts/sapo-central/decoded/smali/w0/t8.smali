.class public final Lw0/t8;
.super Landroid/media/session/MediaController$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lw0/t8;->a:I

    iput-object p2, p0, Lw0/t8;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 3

    iget v0, p0, Lw0/t8;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lw0/t8;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    sget-object p1, Lw0/od;->a:Lw0/od;

    check-cast v2, Landroid/media/session/MediaController;

    invoke-static {v2}, Lw0/od;->k(Landroid/media/session/MediaController;)V

    return-void

    :pswitch_0
    check-cast v2, Lcom/ex/auto/MediaBrowserHostActivity;

    iget-object v0, v2, Lcom/ex/auto/MediaBrowserHostActivity;->c:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    :cond_0
    invoke-static {v2, v1, p1}, Lcom/ex/auto/MediaBrowserHostActivity;->b(Lcom/ex/auto/MediaBrowserHostActivity;Landroid/media/session/PlaybackState;Landroid/media/MediaMetadata;)V

    return-void

    :pswitch_1
    check-cast v2, Lcom/ex/auto/MediaBarFloaterService;

    sget-object p1, Lcom/ex/auto/MediaBarFloaterService;->v:Ljava/util/Set;

    invoke-virtual {v2, v1}, Lcom/ex/auto/MediaBarFloaterService;->f(Ljava/util/ArrayList;)V

    return-void

    :pswitch_2
    check-cast v2, Lcom/ex/auto/LyricsFloaterService;

    sget-object p1, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/ex/auto/LyricsFloaterService;->i()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 7

    iget v0, p0, Lw0/t8;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lw0/od;->a:Lw0/od;

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    if-ne v4, v3, :cond_0

    move v0, v2

    :cond_0
    const-string v4, "MediaCenterBridge"

    if-eqz v0, :cond_5

    sget-boolean v0, Lw0/od;->z:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lw0/od;->d:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v5, Lw0/od;->e:Ljava/lang/Object;

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    sget-boolean v6, Lw0/od;->C:Z

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x6

    :try_start_0
    invoke-virtual {v0, v5, v6}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->updateCurrentSourceType(Ljava/lang/Object;I)V

    sput-boolean v2, Lw0/od;->C:Z

    const-string v0, "fonte corrente declarada (m\u00eddia nossa tocando)"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "updateCurrentSourceType falhou: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v4}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    if-ne p1, v3, :cond_6

    goto :goto_2

    :cond_6
    sget-object p1, Lw0/od;->l:Landroid/media/session/MediaController;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    goto :goto_1

    :cond_7
    move-object p1, v1

    :goto_1
    iget-object v0, p0, Lw0/t8;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-static {p1, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lw0/od;->a()V

    sget-object p1, Lw0/od;->l:Landroid/media/session/MediaController;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    :cond_8
    iget-object p1, p0, Lw0/t8;->b:Ljava/lang/Object;

    check-cast p1, Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    invoke-static {v1, p1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    sget-object p1, Lw0/od;->a:Lw0/od;

    iget-object p1, p0, Lw0/t8;->b:Ljava/lang/Object;

    check-cast p1, Landroid/media/session/MediaController;

    invoke-static {p1}, Lw0/od;->k(Landroid/media/session/MediaController;)V

    :goto_3
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/t8;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MediaBrowserHostActivity;

    iget-object v2, v0, Lcom/ex/auto/MediaBrowserHostActivity;->c:Landroid/media/session/MediaController;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    :cond_a
    invoke-static {v0, p1, v1}, Lcom/ex/auto/MediaBrowserHostActivity;->b(Lcom/ex/auto/MediaBrowserHostActivity;Landroid/media/session/PlaybackState;Landroid/media/MediaMetadata;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lw0/t8;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/MediaBarFloaterService;

    sget-object v0, Lcom/ex/auto/MediaBarFloaterService;->v:Ljava/util/Set;

    invoke-virtual {p1, v1}, Lcom/ex/auto/MediaBarFloaterService;->f(Ljava/util/ArrayList;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lw0/t8;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/LyricsFloaterService;

    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/ex/auto/LyricsFloaterService;->i()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSessionDestroyed()V
    .locals 4

    iget v0, p0, Lw0/t8;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lw0/od;->l:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lw0/t8;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-static {v1, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lw0/od;->a:Lw0/od;

    invoke-static {}, Lw0/od;->d()V

    invoke-static {}, Lw0/od;->a()V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/t8;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MediaBrowserHostActivity;

    iget-object v2, v0, Lcom/ex/auto/MediaBrowserHostActivity;->m:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    const v3, 0x7f0f0223

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ex/auto/MediaBrowserHostActivity;->n:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/ex/auto/MediaBrowserHostActivity;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    const-string v0, "btnEntrar"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "subAgora"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "tituloAgora"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    iget-object v0, p0, Lw0/t8;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MediaBarFloaterService;

    sget-object v1, Lcom/ex/auto/MediaBarFloaterService;->v:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/ex/auto/MediaBarFloaterService;->d()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/t8;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/LyricsFloaterService;

    sget-object v1, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->h()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
