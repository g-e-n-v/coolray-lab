.class public final synthetic Lw0/n8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/LyricsFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/LyricsFloaterService;I)V
    .locals 0

    iput p2, p0, Lw0/n8;->a:I

    iput-object p1, p0, Lw0/n8;->b:Lcom/ex/auto/LyricsFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lw0/n8;->a:I

    const/high16 v1, -0x80000000

    iget-object v2, p0, Lw0/n8;->b:Lcom/ex/auto/LyricsFloaterService;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    sget-object v0, Lw0/m8;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v2, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v3, v2, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    invoke-static {v0, v3}, Lw0/m8;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/ex/auto/LyricsFloaterService;->h:Ljava/util/List;

    iput v1, v2, Lcom/ex/auto/LyricsFloaterService;->i:I

    invoke-virtual {v2}, Lcom/ex/auto/LyricsFloaterService;->g()V

    return-void

    :pswitch_0
    iput v1, v2, Lcom/ex/auto/LyricsFloaterService;->i:I

    invoke-virtual {v2}, Lcom/ex/auto/LyricsFloaterService;->q()V

    return-void

    :pswitch_1
    iput v1, v2, Lcom/ex/auto/LyricsFloaterService;->i:I

    invoke-virtual {v2}, Lcom/ex/auto/LyricsFloaterService;->q()V

    return-void

    :pswitch_2
    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    sget-object v0, Lw0/m8;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v2, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v1, v2, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lw0/m8;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/ex/auto/LyricsFloaterService;->h:Ljava/util/List;

    invoke-virtual {v2}, Lcom/ex/auto/LyricsFloaterService;->g()V

    return-void

    :pswitch_3
    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/ex/auto/LyricsFloaterService;->l()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
