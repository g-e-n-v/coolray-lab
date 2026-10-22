.class public final synthetic Lw0/xe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:Landroid/app/ActivityManager;

.field public final synthetic b:Lw0/qf;

.field public final synthetic c:Li2/m;

.field public final synthetic d:Li2/l;

.field public final synthetic e:Li2/m;

.field public final synthetic f:Lcom/ex/auto/QuickAccessFloaterService;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager;Lw0/qf;Li2/m;Li2/l;Li2/m;Lcom/ex/auto/QuickAccessFloaterService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/xe;->a:Landroid/app/ActivityManager;

    iput-object p2, p0, Lw0/xe;->b:Lw0/qf;

    iput-object p3, p0, Lw0/xe;->c:Li2/m;

    iput-object p4, p0, Lw0/xe;->d:Li2/l;

    iput-object p5, p0, Lw0/xe;->e:Li2/m;

    iput-object p6, p0, Lw0/xe;->f:Lcom/ex/auto/QuickAccessFloaterService;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    iget-object v0, p0, Lw0/xe;->b:Lw0/qf;

    iget v1, v0, Lw0/qf;->a:I

    iget-object v0, v0, Lw0/qf;->b:Ljava/lang/String;

    iget-object v2, p0, Lw0/xe;->a:Landroid/app/ActivityManager;

    invoke-static {v2, v1}, Lw0/e8;->J(Landroid/app/ActivityManager;I)Z

    move-result v2

    const/16 v3, 0x29

    const-string v4, " (taskId="

    const-string v5, "QuickAccessFloater"

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Gesto 3 dedos: task removida "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lw0/xe;->c:Li2/m;

    iget-object v0, v0, Li2/m;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lw0/xe;->d:Li2/l;

    iget v2, v0, Li2/l;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Li2/l;->a:I

    if-gtz v2, :cond_3

    iget-object v0, p0, Lw0/xe;->e:Li2/m;

    iget-object v0, v0, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string v0, "dlg"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "tileView"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Gesto 3 dedos: nao consegui remover "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0f02c7

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lw0/xe;->f:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    :cond_3
    :goto_0
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0
.end method
