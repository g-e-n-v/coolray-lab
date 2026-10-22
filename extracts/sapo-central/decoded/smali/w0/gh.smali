.class public final synthetic Lw0/gh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/VhalProviderService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/VhalProviderService;I)V
    .locals 0

    iput p2, p0, Lw0/gh;->a:I

    iput-object p1, p0, Lw0/gh;->b:Lcom/ex/auto/VhalProviderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lw0/gh;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/gh;->b:Lcom/ex/auto/VhalProviderService;

    :goto_0
    iget-boolean v2, v0, Lcom/ex/auto/VhalProviderService;->d:Z

    if-eqz v2, :cond_5

    :try_start_0
    iget-object v2, v0, Lcom/ex/auto/VhalProviderService;->b:Lw0/xg;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lw0/xg;->b()Lw0/wg;

    move-result-object v2

    iput-object v2, v0, Lcom/ex/auto/VhalProviderService;->i:Lw0/wg;

    new-instance v3, Lq0/c;

    invoke-direct {v3, v2}, Lq0/c;-><init>(Lw0/wg;)V

    sput-object v3, Lcom/ex/auto/VhalProviderService;->n:Lq0/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v2, :cond_0

    iget-object v5, v2, Lw0/wg;->b:Ljava/lang/Integer;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    iget-object v5, v2, Lw0/wg;->a:Ljava/lang/Float;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, v0, Lcom/ex/auto/VhalProviderService;->j:Z

    iget-object v5, v0, Lcom/ex/auto/VhalProviderService;->f:Lw0/ch;

    invoke-virtual {v5, v2, v3, v4}, Lw0/ch;->b(Lw0/wg;J)V

    iget-object v5, v0, Lcom/ex/auto/VhalProviderService;->h:Lw0/l3;

    invoke-virtual {v5, v2, v3, v4}, Lw0/l3;->c(Lw0/wg;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    iget-boolean v2, v0, Lcom/ex/auto/VhalProviderService;->j:Z

    if-eqz v2, :cond_3

    sget-wide v2, Lcom/ex/auto/VhalProviderService;->o:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    sget-wide v2, Lcom/ex/auto/VhalProviderService;->o:J

    goto :goto_2

    :cond_2
    iget-wide v2, v0, Lcom/ex/auto/VhalProviderService;->k:J

    goto :goto_2

    :cond_3
    sget v2, Lcom/ex/auto/VhalProviderService;->m:I

    if-lez v2, :cond_4

    const-wide/16 v2, 0x5dc

    goto :goto_2

    :cond_4
    const-wide/16 v2, 0x1770

    :goto_2
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_5
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/gh;->b:Lcom/ex/auto/VhalProviderService;

    sget-boolean v2, Lcom/ex/auto/VhalProviderService;->l:Z

    :try_start_2
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2}, Ljava/net/ServerSocket;-><init>()V

    iput-object v2, v0, Lcom/ex/auto/VhalProviderService;->c:Ljava/net/ServerSocket;

    invoke-virtual {v2, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    iget-object v1, v0, Lcom/ex/auto/VhalProviderService;->c:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    const v3, 0xbab8

    invoke-direct {v2, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    invoke-virtual {v0}, Lcom/ex/auto/VhalProviderService;->e()V

    :goto_3
    iget-boolean v1, v0, Lcom/ex/auto/VhalProviderService;->d:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/ex/auto/VhalProviderService;->c:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/ab;

    const/16 v4, 0xc

    invoke-direct {v3, v0, v4, v1}, Lw0/ab;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-string v1, "vhal-client"

    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serve end: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "VhalProvider"

    invoke-static {v0, v1, v2}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
