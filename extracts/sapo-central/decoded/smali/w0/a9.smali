.class public final synthetic Lw0/a9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;I)V
    .locals 0

    .line 1
    iput p3, p0, Lw0/a9;->a:I

    iput p1, p0, Lw0/a9;->c:I

    iput-object p2, p0, Lw0/a9;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;II)V
    .locals 0

    .line 2
    iput p3, p0, Lw0/a9;->a:I

    iput-object p1, p0, Lw0/a9;->b:Lcom/ex/auto/MainActivity;

    iput p2, p0, Lw0/a9;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lw0/a9;->a:I

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/a9;->b:Lcom/ex/auto/MainActivity;

    iget v1, p0, Lw0/a9;->c:I

    invoke-static {v0, v1, v5}, Lw0/m;->f(Landroid/content/Context;IZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/a9;->b:Lcom/ex/auto/MainActivity;

    iget v1, p0, Lw0/a9;->c:I

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    const v1, 0x7f0f0181

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0f0180

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v4}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :goto_1
    return-void

    :pswitch_1
    iget v0, p0, Lw0/a9;->c:I

    iget-object v1, p0, Lw0/a9;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v5}, Lcom/ex/auto/MainActivity;->x2(Z)V

    :cond_3
    :goto_2
    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/a9;->b:Lcom/ex/auto/MainActivity;

    iget v1, p0, Lw0/a9;->c:I

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->G([Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "avas_muted_saved"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-lez v2, :cond_4

    move v7, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "avas_mode_ativo"

    const/4 v9, -0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "avas_sound_type_saved"

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-gt v4, v7, :cond_5

    if-ge v7, v3, :cond_5

    goto :goto_3

    :cond_5
    if-gt v4, v8, :cond_6

    if-ge v8, v3, :cond_6

    move v7, v8

    goto :goto_3

    :cond_6
    move v7, v4

    :goto_3
    if-gez v2, :cond_7

    iget-boolean v3, v0, Lcom/ex/auto/MainActivity;->r0:Z

    goto :goto_4

    :cond_7
    if-eqz v6, :cond_8

    move v3, v4

    goto :goto_4

    :cond_8
    move v3, v5

    :goto_4
    if-ltz v2, :cond_a

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    move v4, v5

    :goto_5
    if-eq v3, v4, :cond_a

    :try_start_0
    iget-object v4, v0, Lcom/ex/auto/MainActivity;->z:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lw0/xa;

    invoke-direct {v5, v1, v0, v3, v7}, Lw0/xa;-><init>(ILcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    iget-object v3, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, Lw0/na;

    invoke-direct {v4, v1, v0, v7, v2}, Lw0/na;-><init>(ILcom/ex/auto/MainActivity;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_3
    iget v0, p0, Lw0/a9;->c:I

    iget-object v1, p0, Lw0/a9;->b:Lcom/ex/auto/MainActivity;

    iget v3, v1, Lcom/ex/auto/MainActivity;->H:I

    iget-object v5, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    if-ne v0, v3, :cond_b

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->A0()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lw0/ua;

    invoke-direct {v2, v1, v0, v4}, Lw0/ua;-><init>(Lcom/ex/auto/MainActivity;Ljava/util/List;I)V

    invoke-virtual {v5, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_b
    :try_start_1
    iget v3, v1, Lcom/ex/auto/MainActivity;->G:I

    if-ne v0, v3, :cond_c

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->C0()Ljava/util/List;

    move-result-object v0

    goto :goto_6

    :cond_c
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->z0()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Ly1/g;->g0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    sget-object v0, Ly1/p;->a:Ly1/p;

    :goto_6
    new-instance v3, Lw0/ua;

    invoke-direct {v3, v1, v0, v2}, Lw0/ua;-><init>(Lcom/ex/auto/MainActivity;Ljava/util/List;I)V

    invoke-virtual {v5, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_7
    return-void

    :pswitch_4
    iget-object v0, p0, Lw0/a9;->b:Lcom/ex/auto/MainActivity;

    iget v1, p0, Lw0/a9;->c:I

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->a1:Landroid/widget/ProgressBar;

    if-nez v0, :cond_d

    goto :goto_8

    :cond_d
    if-gez v1, :cond_e

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_8

    :cond_e
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_8
    return-void

    :pswitch_5
    iget-object v0, p0, Lw0/a9;->b:Lcom/ex/auto/MainActivity;

    iget v1, p0, Lw0/a9;->c:I

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->u1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v1, v2, :cond_f

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->z1()V

    :cond_f
    return-void

    :pswitch_6
    iget-object v0, p0, Lw0/a9;->b:Lcom/ex/auto/MainActivity;

    iget v2, p0, Lw0/a9;->c:I

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n                mkdir -p /data/local/tmp/avas_preview\n                DIR=/system/etc/avas/sound_type_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n                F=$(ls \"$DIR\"/*.wav 2>/dev/null | head -1)\n                if [ -z \"$F\" ]; then echo \"SEM_ARQUIVO\"; exit 0; fi\n                cp -f \"$F\" /data/local/tmp/avas_preview/preview.wav 2>&1\n                chmod 644 /data/local/tmp/avas_preview/preview.wav 2>/dev/null || true\n                echo \"OK\"\n            "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v0, v3, v2}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, Lw0/c9;

    invoke-direct {v4, v2, v0, v1}, Lw0/c9;-><init>(Ljava/lang/String;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_7
    iget-object v0, p0, Lw0/a9;->b:Lcom/ex/auto/MainActivity;

    iget v4, p0, Lw0/a9;->c:I

    sget v5, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_9

    :cond_10
    if-eq v4, v2, :cond_15

    const/4 v2, 0x3

    if-eq v4, v2, :cond_14

    if-eq v4, v3, :cond_13

    const/4 v2, 0x5

    if-eq v4, v2, :cond_12

    if-eq v4, v1, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->r1()V

    goto :goto_9

    :cond_12
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->u1()V

    goto :goto_9

    :cond_13
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o1()V

    goto :goto_9

    :cond_14
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->q1()V

    goto :goto_9

    :cond_15
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->s1()V

    :cond_16
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
