.class public final synthetic Lw0/lb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Lw0/hc;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Lw0/hc;I)V
    .locals 0

    iput p3, p0, Lw0/lb;->a:I

    iput-object p1, p0, Lw0/lb;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/lb;->c:Lw0/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lw0/lb;->a:I

    const-string v1, "getString(...)"

    iget-object v2, p0, Lw0/lb;->c:Lw0/hc;

    iget-object v3, p0, Lw0/lb;->b:Lcom/ex/auto/MainActivity;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    iget-object v0, v2, Lw0/hc;->b:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f0f01f4

    invoke-virtual {v3, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/ex/auto/MainActivity;->Z1(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    const-string v0, "install:"

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    const-string v4, "manual"

    :try_start_0
    new-instance v5, Lw0/e9;

    const/16 v6, 0x12

    invoke-direct {v5, v3, v6}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v2, v5}, Lcom/ex/auto/MainActivity;->W(Lw0/hc;Lw0/e9;)V

    iget-object v5, v2, Lw0/hc;->b:Ljava/lang/String;

    sget-object v6, Lw0/i0;->a:Landroidx/emoji2/text/m;

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lw0/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v6, Lw0/lb;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v2, v7}, Lw0/lb;-><init>(Lcom/ex/auto/MainActivity;Lw0/hc;I)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "self-update:manual"

    sget-object v6, Lw0/zd;->a:Landroidx/emoji2/text/m;

    invoke-static {v0}, Lw0/zd;->b(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->t0()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0}, Lw0/zd;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v6, "/data/local/tmp/CentralEXAuto-update.apk"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "SHA-256"

    invoke-static {v0, v6}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v7, v6}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    const-string v6, "?"

    :goto_0
    iget-wide v7, v2, Lw0/hc;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v5, v2, v6, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f0370

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    sget-object v1, Lw0/i0;->a:Landroidx/emoji2/text/m;

    invoke-virtual {v1, v4}, Landroidx/emoji2/text/m;->r(Ljava/lang/String;)Z

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_3
    sget-object v2, Lw0/zd;->a:Landroidx/emoji2/text/m;

    invoke-static {v0}, Lw0/zd;->a(Ljava/lang/String;)V

    throw v1

    :cond_1
    const v0, 0x7f0f01e0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {v3, v0}, Lcom/ex/auto/MainActivity;->Z(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :goto_3
    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v1, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/c9;

    const/16 v4, 0xc

    invoke-direct {v2, v3, v0, v4}, Lw0/c9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_4
    sget-object v1, Lw0/i0;->a:Landroidx/emoji2/text/m;

    invoke-virtual {v1, v4}, Landroidx/emoji2/text/m;->r(Ljava/lang/String;)Z

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
