.class public final Lw0/jd;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/ex/auto/MediaBrowserHostActivity;

.field public final synthetic b:Lw0/hd;


# direct methods
.method public constructor <init>(Lcom/ex/auto/MediaBrowserHostActivity;Lw0/hd;)V
    .locals 0

    iput-object p1, p0, Lw0/jd;->a:Lcom/ex/auto/MediaBrowserHostActivity;

    iput-object p2, p0, Lw0/jd;->b:Lw0/hd;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 6

    iget-object v0, p0, Lw0/jd;->a:Lcom/ex/auto/MediaBrowserHostActivity;

    iget-object v1, v0, Lcom/ex/auto/MediaBrowserHostActivity;->b:Landroid/media/browse/MediaBrowser;

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iget-object v3, v0, Lcom/ex/auto/MediaBrowserHostActivity;->r:Lw0/t8;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/ex/auto/MediaBrowserHostActivity;->b(Lcom/ex/auto/MediaBrowserHostActivity;Landroid/media/session/PlaybackState;Landroid/media/MediaMetadata;)V

    iput-object v2, v0, Lcom/ex/auto/MediaBrowserHostActivity;->c:Landroid/media/session/MediaController;

    iget-object v2, v0, Lcom/ex/auto/MediaBrowserHostActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/ex/auto/MediaBrowserHostActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lw0/jd;->b:Lw0/hd;

    iget-object v4, v4, Lw0/hd;->c:Ljava/lang/String;

    new-instance v5, Lx1/a;

    invoke-direct {v5, v3, v4}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getRoot(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/MediaBrowserHostActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onConnectionFailed()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "conex\u00e3o recusada por "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lw0/jd;->b:Lw0/hd;

    iget-object v1, v1, Lw0/hd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBrowserHost"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0f0226

    iget-object v1, p0, Lw0/jd;->a:Lcom/ex/auto/MediaBrowserHostActivity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ex/auto/MediaBrowserHostActivity;->g(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onConnectionSuspended()V
    .locals 3

    sget v0, Lcom/ex/auto/MediaBrowserHostActivity;->s:I

    const/4 v0, 0x0

    iget-object v1, p0, Lw0/jd;->a:Lcom/ex/auto/MediaBrowserHostActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ex/auto/MediaBrowserHostActivity;->g(Ljava/lang/String;Z)V

    return-void
.end method
