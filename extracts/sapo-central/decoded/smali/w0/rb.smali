.class public final synthetic Lw0/rb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Lw0/ec;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Lw0/ec;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 0

    iput p5, p0, Lw0/rb;->a:I

    iput-object p1, p0, Lw0/rb;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/rb;->c:Lw0/ec;

    iput-object p3, p0, Lw0/rb;->d:Landroid/widget/TextView;

    iput-object p4, p0, Lw0/rb;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget p1, p0, Lw0/rb;->a:I

    const/4 v0, 0x0

    iget-object v1, p0, Lw0/rb;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lw0/rb;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lw0/rb;->c:Lw0/ec;

    iget-object v4, p0, Lw0/rb;->b:Lcom/ex/auto/MainActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "widget_volume_signs"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v4, v2, v1}, Lcom/ex/auto/MainActivity;->f2(Lcom/ex/auto/MainActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    iget-object p1, v3, Lw0/ec;->f:Ljava/lang/String;

    invoke-static {p1}, Lw0/t1;->U(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "widget_volume_vertical"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v4, v2, v1}, Lcom/ex/auto/MainActivity;->f2(Lcom/ex/auto/MainActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    iget-object p1, v3, Lw0/ec;->f:Ljava/lang/String;

    invoke-static {p1}, Lw0/t1;->U(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
