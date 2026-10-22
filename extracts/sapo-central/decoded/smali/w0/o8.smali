.class public final synthetic Lw0/o8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/LyricsFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/LyricsFloaterService;I)V
    .locals 0

    iput p2, p0, Lw0/o8;->a:I

    iput-object p1, p0, Lw0/o8;->b:Lcom/ex/auto/LyricsFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lw0/o8;->a:I

    iget-object v1, p0, Lw0/o8;->b:Lcom/ex/auto/LyricsFloaterService;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    new-instance v2, Lw0/n8;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Lw0/n8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    iget-wide v2, v1, Lcom/ex/auto/LyricsFloaterService;->u:J

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/LyricsFloaterService;->a(J)V

    goto :goto_0

    :pswitch_1
    iget-object v0, v1, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lw0/m8;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v1, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v2, v1, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    const-string v3, "title"

    invoke-static {v0, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "artist"

    invoke-static {v2, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "lyrics_sync_offsets"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {v0, v2}, Lw0/k8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/ex/auto/LyricsFloaterService;->i:I

    iget-object v0, v1, Lcom/ex/auto/LyricsFloaterService;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v2, "\u23f1 0 ms"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, v1, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    new-instance v2, Lw0/n8;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Lw0/n8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_2
    iget-wide v2, v1, Lcom/ex/auto/LyricsFloaterService;->u:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/LyricsFloaterService;->a(J)V

    goto :goto_0

    :pswitch_3
    iget-object v0, v1, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    new-instance v2, Lw0/n8;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lw0/n8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
