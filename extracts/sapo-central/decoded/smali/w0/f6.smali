.class public final Lw0/f6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lw0/f6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget p2, p0, Lw0/f6;->a:I

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const-string p2, "holder"

    invoke-static {p1, p2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget v0, p0, Lw0/f6;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "holder"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const-string v0, "getSurface(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/m;->i:Lw0/m6;

    if-eqz v0, :cond_1

    iput-object p1, v0, Lw0/m6;->e:Landroid/view/Surface;

    iget-object v1, v0, Lw0/m6;->i:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOutputSurface: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ExSapoCast"

    invoke-static {p1, v0, v1}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lw0/m6;->h()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "holder"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const-string v0, "getSurface(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/m;->i:Lw0/m6;

    if-eqz v0, :cond_3

    iput-object p1, v0, Lw0/m6;->e:Landroid/view/Surface;

    iget-object v1, v0, Lw0/m6;->i:Landroid/media/MediaCodec;

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOutputSurface: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ExSapoCast"

    invoke-static {p1, v0, v1}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lw0/m6;->h()V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget v0, p0, Lw0/f6;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "holder"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lw0/m;->i:Lw0/m6;

    if-eqz p1, :cond_0

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p1, Lw0/m6;->e:Landroid/view/Surface;

    invoke-virtual {p1}, Lw0/m6;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "holder"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lw0/m;->i:Lw0/m6;

    if-eqz p1, :cond_1

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p1, Lw0/m6;->e:Landroid/view/Surface;

    invoke-virtual {p1}, Lw0/m6;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
