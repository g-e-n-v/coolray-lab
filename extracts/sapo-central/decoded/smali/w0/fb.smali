.class public final synthetic Lw0/fb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/xb;

.field public final synthetic c:Lcom/ex/auto/MainActivity;

.field public final synthetic d:Lw0/wb;


# direct methods
.method public synthetic constructor <init>(Lw0/xb;Lcom/ex/auto/MainActivity;Lw0/wb;I)V
    .locals 0

    iput p4, p0, Lw0/fb;->a:I

    iput-object p1, p0, Lw0/fb;->b:Lw0/xb;

    iput-object p2, p0, Lw0/fb;->c:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, Lw0/fb;->d:Lw0/wb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lw0/fb;->a:I

    const v1, 0x7f0f00fa

    iget-object v2, p0, Lw0/fb;->d:Lw0/wb;

    iget-object v3, p0, Lw0/fb;->c:Lcom/ex/auto/MainActivity;

    iget-object v4, p0, Lw0/fb;->b:Lw0/xb;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    iget-object v0, v2, Lw0/wb;->b:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f01f5

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lw0/xb;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lw0/xb;->a()V

    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    iget-object v0, v2, Lw0/wb;->b:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lw0/xb;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lw0/xb;->a()V

    return-void

    :pswitch_1
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    iget-object v0, v2, Lw0/wb;->b:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lw0/xb;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lw0/xb;->a()V

    return-void

    :pswitch_2
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    const v0, 0x7f0f009e

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lw0/xb;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lw0/xb;->a()V

    iget-object v0, v2, Lw0/wb;->e:Ljava/lang/String;

    new-instance v1, Lz1/c;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lz1/c;-><init>(I)V

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-static {v0, v2}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v5, "android.intent.action.VIEW"

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "?id="

    invoke-static {v0, v6, v0}, Lo2/k;->y0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "market://details?id="

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lz1/c;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lz1/c;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lz1/c;->f()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lz1/c;->c:Z

    iget v5, v1, Lz1/c;->b:I

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lz1/c;->d:Lz1/c;

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lz1/c;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :catchall_0
    move-object v5, v1

    check-cast v5, Lz1/a;

    invoke-virtual {v5}, Lz1/a;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lz1/a;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    const/high16 v6, 0x10000000

    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    const v1, 0x7f0f00a4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    iput-object v0, v4, Lw0/xb;->e:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Lw0/xb;->a()V

    :goto_1
    iput-boolean v2, v4, Lw0/xb;->f:Z

    iput-boolean v2, v4, Lw0/xb;->g:Z

    invoke-virtual {v4}, Lw0/xb;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
