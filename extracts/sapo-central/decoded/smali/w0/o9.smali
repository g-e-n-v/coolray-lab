.class public final synthetic Lw0/o9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;ZZ)V
    .locals 0

    iput p1, p0, Lw0/o9;->a:I

    iput-object p2, p0, Lw0/o9;->b:Lcom/ex/auto/MainActivity;

    iput-boolean p3, p0, Lw0/o9;->c:Z

    iput-boolean p4, p0, Lw0/o9;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lw0/o9;->a:I

    const/4 v1, 0x1

    const v2, 0x7f0f033b

    const/4 v3, 0x0

    const-string v4, "getString(...)"

    iget-boolean v5, p0, Lw0/o9;->d:Z

    iget-boolean v6, p0, Lw0/o9;->c:Z

    iget-object v7, p0, Lw0/o9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz v6, :cond_1

    const p1, 0x7f0f00bd

    goto :goto_0

    :cond_1
    const p1, 0x7f0f00bc

    :goto_0
    invoke-static {p1, v3, v7, v4}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "silence_avm_log"

    invoke-interface {p1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const p1, 0x7f09015c

    invoke-virtual {v7, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {p1, v5}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, p1, v1}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_3
    :goto_1
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v7}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_6

    if-eqz v6, :cond_5

    const p1, 0x7f0f033d

    goto :goto_2

    :cond_5
    const p1, 0x7f0f033c

    :goto_2
    invoke-static {p1, v3, v7, v4}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "silence_tbox_log"

    invoke-interface {p1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const p1, 0x7f09015e

    invoke-virtual {v7, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {p1, v5}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, p1, v1}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_7
    :goto_3
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
