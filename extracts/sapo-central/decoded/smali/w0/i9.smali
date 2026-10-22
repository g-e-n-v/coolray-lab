.class public final synthetic Lw0/i9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Lw0/xb;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lw0/i9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/i9;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw0/i9;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p2, p0, Lw0/i9;->a:I

    iput-object p1, p0, Lw0/i9;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw0/i9;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lw0/i9;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/i9;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v3, p0, Lw0/i9;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget v4, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v4, "ctx"

    invoke-static {v0, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "pkg"

    invoke-static {v3, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lw0/t1;->P(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ly1/g;->n0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const-string p1, "close_apps_whitelist_prefs"

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {v4}, Ly1/g;->Z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    const-string v2, ","

    const/16 v3, 0x3e

    invoke-static {v0, v2, v1, v3}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "packages"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lw0/i9;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v3, p0, Lw0/i9;->b:Ljava/lang/Object;

    check-cast v3, Landroid/widget/TextView;

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget v4, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v4, "manager"

    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    :try_start_0
    sget-object v5, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v5, Lcom/ex/auto/QuickAccessFloaterService;->u0:I

    invoke-static {p1, v5, v2}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    move v2, v4

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    iput-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->u:Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/ex/auto/QuickAccessFloaterService;->u:Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "aeb_state_saved"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AEB read: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "QuickAccessFloater"

    invoke-static {p1, v1, v2}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    :goto_4
    iget-object p1, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v1, Lw0/ye;

    invoke-direct {v1, v0, v3, v4}, Lw0/ye;-><init>(Lcom/ex/auto/QuickAccessFloaterService;Landroid/widget/TextView;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lw0/i9;->c:Ljava/lang/Object;

    check-cast v0, Lw0/dd;

    iget-object v1, p0, Lw0/i9;->b:Ljava/lang/Object;

    check-cast v1, Lw0/ed;

    check-cast p1, Landroid/graphics/Bitmap;

    sget-object v2, Lcom/ex/auto/MediaBarFloaterService;->v:Ljava/util/Set;

    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Lw0/dd;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lw0/ed;->a()Ljava/lang/Object;

    :goto_5
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lw0/i9;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v1, p0, Lw0/i9;->c:Ljava/lang/Object;

    check-cast v1, Lw0/xb;

    check-cast p1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const-string v2, "txt"

    invoke-static {p1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/ab;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3, p1}, Lw0/ab;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lw0/i9;->c:Ljava/lang/Object;

    check-cast v0, Lw0/h0;

    iget-object v1, p0, Lw0/i9;->b:Ljava/lang/Object;

    check-cast v1, Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lw0/h0;->a()Ljava/lang/Object;

    if-eqz p1, :cond_6

    const p1, 0x7f0f00ba

    :goto_6
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_6
    const p1, 0x7f0f00bb

    goto :goto_6

    :goto_7
    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lw0/i9;->c:Ljava/lang/Object;

    iget-object v1, p0, Lw0/i9;->b:Ljava/lang/Object;

    check-cast v1, Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const-string v2, "result"

    invoke-static {p1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "caMd5"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "src="

    const-string v3, " resultado="

    invoke-static {v2, v0, v3}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-static {v3, p1}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Instalar ConnAdaptor"

    invoke-virtual {v1, v2, p1}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, v1, Lcom/ex/auto/MainActivity;->m0:Z

    const-string v2, "getString(...)"

    if-eqz p1, :cond_8

    if-eqz v0, :cond_7

    const/16 p1, 0x8

    invoke-static {p1, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const-string p1, ""

    :goto_8
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f0f007d

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const p1, 0x7f0f0172

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_9
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
