.class public final synthetic Lw0/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:Landroid/content/pm/PackageManager;

.field public final synthetic b:Lw0/rf;

.field public final synthetic c:Lcom/ex/auto/QuickAccessFloaterService;

.field public final synthetic d:Li2/m;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageManager;Lw0/rf;Lcom/ex/auto/QuickAccessFloaterService;Li2/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/bf;->a:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lw0/bf;->b:Lw0/rf;

    iput-object p3, p0, Lw0/bf;->c:Lcom/ex/auto/QuickAccessFloaterService;

    iput-object p4, p0, Lw0/bf;->d:Li2/m;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lw0/bf;->a:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lw0/bf;->b:Lw0/rf;

    iget-object v2, p0, Lw0/bf;->c:Lcom/ex/auto/QuickAccessFloaterService;

    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v3, "QuickAccessFloater"

    const-string v4, "Gesto 5 dedos: abrindo "

    :try_start_0
    iget-object v5, v1, Lw0/rf;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lw0/rf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showFavoriteAppsPicker: launch falhou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/bf;->d:Li2/m;

    iget-object v0, v0, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :cond_1
    const-string v0, "dlg"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
