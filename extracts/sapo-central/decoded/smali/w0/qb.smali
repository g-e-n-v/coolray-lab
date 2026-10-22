.class public final synthetic Lw0/qb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Lw0/ec;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Lw0/ec;Landroid/widget/TextView;I)V
    .locals 0

    iput p4, p0, Lw0/qb;->a:I

    iput-object p1, p0, Lw0/qb;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/qb;->c:Lw0/ec;

    iput-object p3, p0, Lw0/qb;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget p1, p0, Lw0/qb;->a:I

    const/4 v0, 0x1

    iget-object v1, p0, Lw0/qb;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lw0/qb;->c:Lw0/ec;

    iget-object v3, p0, Lw0/qb;->b:Lcom/ex/auto/MainActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v4, "widget_apps_rows"

    const/4 v5, 0x2

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v6, 0x6

    invoke-static {p1, v0, v6}, Lk1/a;->k(III)I

    move-result p1

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "widget_apps_cols"

    const/4 v9, 0x3

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7, v0, v6}, Lk1/a;->k(III)I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_0

    add-int/lit8 v5, v6, 0x1

    :cond_0
    if-ge v6, v7, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    if-ge p1, v9, :cond_2

    add-int/lit8 v0, p1, 0x1

    :cond_2
    :goto_0
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v1, v3}, Lcom/ex/auto/MainActivity;->d2(Landroid/widget/TextView;Lcom/ex/auto/MainActivity;)V

    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {v3}, Lw0/t1;->z(Landroid/content/Context;)V

    iget-object p1, v2, Lw0/ec;->f:Ljava/lang/String;

    invoke-static {p1}, Lw0/t1;->U(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v4, v2, Lw0/ec;->c:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    xor-int/2addr v0, v5

    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v1, v3, v2}, Lcom/ex/auto/MainActivity;->e2(Landroid/widget/TextView;Lcom/ex/auto/MainActivity;Lw0/ec;)V

    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {v3}, Lw0/t1;->z(Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
