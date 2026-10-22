.class public final synthetic Lw0/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;

.field public final synthetic c:Li2/m;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;Li2/m;I)V
    .locals 0

    iput p3, p0, Lw0/af;->a:I

    iput-object p1, p0, Lw0/af;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iput-object p2, p0, Lw0/af;->c:Li2/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget p1, p0, Lw0/af;->a:I

    const/4 v0, 0x0

    const-string v1, "dlg"

    const-string v2, "QuickAccessFloater"

    const/high16 v3, 0x10000000

    iget-object v4, p0, Lw0/af;->c:Li2/m;

    iget-object v5, p0, Lw0/af;->b:Lcom/ex/auto/QuickAccessFloaterService;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-class v6, Lcom/ex/auto/CloseAppsWhitelistActivity;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "confirmCloseUserApps: abrir CloseAppsWhitelistActivity falhou: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v2}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-object p1, v4, Li2/m;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    invoke-static {v1}, Li2/g;->h(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget p1, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-class v6, Lcom/ex/auto/FavoriteAppsActivity;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "showFavoriteAppsPicker: abrir FavoriteAppsActivity falhou: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v2}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    iget-object p1, v4, Li2/m;->a:Ljava/lang/Object;

    if-eqz p1, :cond_1

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_1
    invoke-static {v1}, Li2/g;->h(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
