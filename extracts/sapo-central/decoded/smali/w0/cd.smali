.class public final synthetic Lw0/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MediaBarFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MediaBarFloaterService;I)V
    .locals 0

    iput p2, p0, Lw0/cd;->a:I

    iput-object p1, p0, Lw0/cd;->b:Lcom/ex/auto/MediaBarFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lw0/cd;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lw0/cd;->b:Lcom/ex/auto/MediaBarFloaterService;

    sget-object v0, Lcom/ex/auto/MediaBarFloaterService;->v:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/ex/auto/MediaBarFloaterService;->c()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lw0/cd;->b:Lcom/ex/auto/MediaBarFloaterService;

    sget-object v0, Lcom/ex/auto/MediaBarFloaterService;->v:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/ex/auto/MediaBarFloaterService;->c()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lw0/cd;->b:Lcom/ex/auto/MediaBarFloaterService;

    sget-object v0, Lcom/ex/auto/MediaBarFloaterService;->v:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "goHome falhou: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaBarFloater"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_2
    iget-object p1, p0, Lw0/cd;->b:Lcom/ex/auto/MediaBarFloaterService;

    iget-object v0, p1, Lcom/ex/auto/MediaBarFloaterService;->l:Landroid/media/session/PlaybackState$CustomAction;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object p1, p1, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Landroid/media/session/PlaybackState$CustomAction;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :goto_1
    return-void

    :pswitch_3
    iget-object p1, p0, Lw0/cd;->b:Lcom/ex/auto/MediaBarFloaterService;

    iget-object p1, p1, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    :cond_2
    return-void

    :pswitch_4
    iget-object p1, p0, Lw0/cd;->b:Lcom/ex/auto/MediaBarFloaterService;

    iget-object v0, p1, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    :cond_5
    :goto_2
    return-void

    :pswitch_5
    iget-object p1, p0, Lw0/cd;->b:Lcom/ex/auto/MediaBarFloaterService;

    iget-object p1, p1, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
