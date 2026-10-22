.class public final synthetic Lw0/k6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/m6;


# direct methods
.method public synthetic constructor <init>(Lw0/m6;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lw0/k6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/k6;->b:Lw0/m6;

    return-void
.end method

.method public synthetic constructor <init>(Lw0/m6;I)V
    .locals 0

    .line 2
    const/4 p2, 0x1

    iput p2, p0, Lw0/k6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/k6;->b:Lw0/m6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lw0/k6;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/k6;->b:Lw0/m6;

    sget-object v1, Lw0/m;->c:Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    iget v2, v0, Lw0/m6;->g:I

    iget v0, v0, Lw0/m6;->h:I

    invoke-interface {v1, v2, v0}, Lw0/j6;->a(II)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/k6;->b:Lw0/m6;

    const-string v1, "stream-end"

    :goto_0
    :try_start_0
    iget-boolean v2, v0, Lw0/m6;->d:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lw0/m6;->b:Ljava/io/DataInputStream;

    invoke-static {v2}, Lw0/m;->u(Ljava/io/DataInputStream;)Le/h;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget v3, v2, Le/h;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lw0/m6;->c:Ljava/io/BufferedOutputStream;

    iget-object v2, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v2, [B

    const/16 v4, 0x22

    invoke-static {v3, v4, v2}, Lw0/m;->E(Ljava/io/BufferedOutputStream;I[B)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_3
    iget-object v2, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v0, v2}, Lw0/m6;->b([B)V

    goto :goto_0

    :cond_4
    iget-object v2, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v0, v2}, Lw0/m6;->a([B)V

    goto :goto_0

    :cond_5
    iget-object v2, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v0, v2}, Lw0/m6;->c([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    invoke-virtual {v0, v1}, Lw0/m6;->g(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    :try_start_1
    iget-boolean v3, v0, Lw0/m6;->d:Z

    if-eqz v3, :cond_6

    const-string v3, "ExSapoCast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readLoop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    invoke-virtual {v0, v1}, Lw0/m6;->g(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
