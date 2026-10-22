.class public final synthetic Lw0/la;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/xb;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/ex/auto/MainActivity;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Lw0/xb;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lw0/la;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/la;->d:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/la;->c:Ljava/lang/String;

    iput-object p3, p0, Lw0/la;->b:Lw0/xb;

    iput-object p4, p0, Lw0/la;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lw0/xb;Ljava/lang/String;Lcom/ex/auto/MainActivity;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lw0/la;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/la;->b:Lw0/xb;

    iput-object p2, p0, Lw0/la;->c:Ljava/lang/String;

    iput-object p3, p0, Lw0/la;->d:Lcom/ex/auto/MainActivity;

    iput-object p4, p0, Lw0/la;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lw0/la;->a:I

    iget-object v1, p0, Lw0/la;->c:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    iget-object v0, p0, Lw0/la;->b:Lw0/xb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lw0/xb;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lw0/xb;->a()V

    iget-object v2, p0, Lw0/la;->d:Lcom/ex/auto/MainActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    const-string v1, "Apps"

    iget-object v4, p0, Lw0/la;->e:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, v0, Lw0/xb;->f:Z

    iput-boolean v3, v0, Lw0/xb;->g:Z

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lw0/x8;

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v7, p0, Lw0/la;->d:Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v7, v1}, Lcom/ex/auto/MainActivity;->c0(Ljava/lang/String;)Lw0/wb;

    move-result-object v0

    new-instance v1, Lx1/a;

    invoke-direct {v1, v0, v2}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v6, v1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lx1/a;

    invoke-direct {v1, v2, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    iget-object v0, v7, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, Lw0/z;

    const/4 v9, 0x6

    iget-object v5, p0, Lw0/la;->b:Lw0/xb;

    iget-object v8, p0, Lw0/la;->e:Ljava/lang/String;

    invoke-direct/range {v4 .. v9}, Lw0/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
