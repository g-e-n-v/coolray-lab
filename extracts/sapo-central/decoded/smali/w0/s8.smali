.class public final synthetic Lw0/s8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/LyricsFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/LyricsFloaterService;I)V
    .locals 0

    iput p2, p0, Lw0/s8;->a:I

    iput-object p1, p0, Lw0/s8;->b:Lcom/ex/auto/LyricsFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lw0/s8;->a:I

    const/4 v1, 0x0

    const-string v2, "lyrics_style_config"

    iget-object v3, p0, Lw0/s8;->b:Lcom/ex/auto/LyricsFloaterService;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->j()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->k()V

    :goto_0
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_0
    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "font"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->j()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->k()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    const/16 v0, 0xff

    rsub-int p1, p1, 0xff

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "alpha"

    invoke-static {p1, v1, v0}, Lk1/a;->k(III)I

    move-result p1

    invoke-interface {v2, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->j()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->k()V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const v0, 0x3f19999a    # 0.6f

    add-float/2addr p1, v0

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v0, v2}, Lk1/a;->j(FFF)F

    move-result p1

    const-string v0, "scale"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->j()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->k()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
