.class public final synthetic Lw0/p8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/LyricsFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/LyricsFloaterService;I)V
    .locals 0

    iput p2, p0, Lw0/p8;->a:I

    iput-object p1, p0, Lw0/p8;->b:Lcom/ex/auto/LyricsFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lw0/p8;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lw0/p8;->b:Lcom/ex/auto/LyricsFloaterService;

    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/ex/auto/LyricsFloaterService;->b()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lw0/p8;->b:Lcom/ex/auto/LyricsFloaterService;

    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/ex/auto/LyricsFloaterService;->b()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lw0/p8;->b:Lcom/ex/auto/LyricsFloaterService;

    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/ex/auto/LyricsFloaterService;->l()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lw0/p8;->b:Lcom/ex/auto/LyricsFloaterService;

    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/ex/auto/LyricsFloaterService;->c()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lw0/p8;->b:Lcom/ex/auto/LyricsFloaterService;

    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "lyrics_floater_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :try_start_0
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->x0:Lcom/ex/auto/QuickAccessFloaterService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->J()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
