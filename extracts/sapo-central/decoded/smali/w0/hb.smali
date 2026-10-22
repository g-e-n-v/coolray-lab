.class public final synthetic Lw0/hb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Lcom/ex/auto/MasterToggleView;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Lcom/ex/auto/MasterToggleView;Landroid/widget/TextView;I)V
    .locals 0

    iput p4, p0, Lw0/hb;->a:I

    iput-object p1, p0, Lw0/hb;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/hb;->c:Lcom/ex/auto/MasterToggleView;

    iput-object p3, p0, Lw0/hb;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lw0/hb;->a:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    const-string v0, "getprop dalvik.vm.usejit"

    const/16 v1, 0x1f40

    iget-object v3, p0, Lw0/hb;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v3, v1, v0}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lw0/r5;->a:Lo2/h;

    const-string v1, "saidaDoGetprop"

    invoke-static {v0, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/maps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lo2/a;->a:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v1, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {v1}, La1/b;->F(Ljava/io/BufferedReader;)Ln2/f;

    move-result-object v0

    new-instance v2, Lw0/ya;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Lw0/ya;-><init>(I)V

    new-instance v4, Ln2/d;

    const/4 v6, 0x1

    invoke-direct {v4, v0, v6, v2}, Ln2/d;-><init>(Ln2/f;ZLh2/l;)V

    const-string v0, "\n"

    invoke-static {v4, v0}, Ln2/g;->V(Ln2/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw0/r5;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    move-object v7, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v1, v2}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/x7;

    iget-object v4, p0, Lw0/hb;->c:Lcom/ex/auto/MasterToggleView;

    iget-object v6, p0, Lw0/hb;->d:Landroid/widget/TextView;

    invoke-direct/range {v2 .. v7}, Lw0/x7;-><init>(Lcom/ex/auto/MainActivity;Lcom/ex/auto/MasterToggleView;ZLandroid/widget/TextView;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {}, Lw0/ih;->f()Z

    move-result v0

    iget-object v1, p0, Lw0/hb;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/lf;

    iget-object v4, p0, Lw0/hb;->c:Lcom/ex/auto/MasterToggleView;

    iget-object v5, p0, Lw0/hb;->d:Landroid/widget/TextView;

    invoke-direct {v3, v1, v4, v0, v5}, Lw0/lf;-><init>(Lcom/ex/auto/MainActivity;Lcom/ex/auto/MasterToggleView;ZLandroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
