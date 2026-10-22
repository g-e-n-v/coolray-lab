.class public final synthetic La1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, La1/i;->a:I

    iput-object p1, p0, La1/i;->b:Ljava/lang/Object;

    iput-object p3, p0, La1/i;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, La1/i;->a:I

    const-string v1, "HvacStepperV2"

    const/4 v2, 0x3

    const-string v3, ""

    const/4 v4, 0x2

    const-string v5, "getString(...)"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lh2/a;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-interface {v0}, Lh2/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/vd;

    new-instance v2, Lw0/ab;

    invoke-direct {v2, v1, v0}, Lw0/ab;-><init>(Lcom/ex/auto/MainActivity;Lw0/vd;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, v0, Lcom/ex/auto/MainActivity;->a0:Lx1/c;

    invoke-virtual {v2}, Lx1/c;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw0/xb;

    iget-object v4, v3, Lw0/xb;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lw0/xb;->d:Ljava/lang/String;

    if-nez v4, :cond_1

    const v4, 0x7f0f0273

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const v5, 0x7f0f01dd

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Lw0/xb;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lw0/xb;->a()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o1()V

    :cond_3
    :goto_2
    return-void

    :pswitch_1
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lw0/ya;

    invoke-direct {v2, v8}, Lw0/ya;-><init>(I)V

    const/16 v3, 0x1e

    const-string v5, "\n\n"

    invoke-static {v1, v5, v2, v3}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le/h;

    invoke-direct {v3, v0}, Le/h;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f015f

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Le/h;->b:Ljava/lang/Object;

    check-cast v6, Le/d;

    iput-object v5, v6, Le/d;->d:Ljava/lang/CharSequence;

    const v5, 0x7f0f015d

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Le/d;->f:Ljava/lang/CharSequence;

    const v2, 0x7f0f015c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lw0/da;

    invoke-direct {v5, v0, v1, v7}, Lw0/da;-><init>(Lcom/ex/auto/MainActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v2, v5}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v2, 0x7f0f0037

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lw0/da;

    invoke-direct {v5, v0, v1, v4}, Lw0/da;-><init>(Lcom/ex/auto/MainActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v2, v5}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Le/h;->h()Le/i;

    :cond_4
    return-void

    :pswitch_2
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Lw0/o4;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lcom/ex/auto/MainActivity;->O0:Lw0/o4;

    if-eq v1, v2, :cond_6

    iput-object v1, v0, Lcom/ex/auto/MainActivity;->O0:Lw0/o4;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->X0()V

    :cond_6
    :goto_3
    return-void

    :pswitch_3
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->D:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    const v1, 0x7f0f0271

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk1/a;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_5

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-static {v3, v4}, Lo2/k;->z0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    move-object v1, v2

    :goto_5
    iput-object v1, v0, Lcom/ex/auto/MainActivity;->b0:Ljava/util/List;

    iget v2, v0, Lcom/ex/auto/MainActivity;->c0:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v8, v1}, Lk1/a;->k(III)I

    move-result v1

    iput v1, v0, Lcom/ex/auto/MainActivity;->c0:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->q1()V

    return-void

    :pswitch_4
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0, v8}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "adb_gpio_enabled"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    const v0, 0x7f0f03ef

    goto :goto_6

    :cond_9
    const v0, 0x7f0f03ee

    :goto_6
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/ex/auto/MainActivity;->Q0:Landroid/widget/Toast;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    :cond_a
    invoke-virtual {v1, v0, v8}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, v1, Lcom/ex/auto/MainActivity;->Q0:Landroid/widget/Toast;

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "ADB"

    const-string v4, "GPIO alternado pelo atalho de 2s no t\u00edtulo Wi-Fi"

    invoke-static {v0, v4, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    if-nez v0, :cond_b

    const-string v0, "1"

    goto :goto_7

    :cond_b
    const-string v0, "0"

    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "echo \"out 151 "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\" > /sys/devices/platform/1000b000.pinctrl/mt_gpio; echo gpio_151="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lw0/k5;->a:Lw0/k5;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v8, "<get-prefs>(...)"

    invoke-static {v5, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "recovery_name"

    invoke-interface {v5, v9, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-static {v3}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_c
    const-string v3, "IBANES"

    invoke-static {v6, v3}, Lo2/t;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v1, v4}, Lcom/ex/auto/MainActivity;->b0(Z)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->d1()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lw0/ya;

    invoke-direct {v2, v7}, Lw0/ya;-><init>(I)V

    invoke-static {v1, v0, v2}, Lw0/k5;->e(Landroid/content/Context;Landroid/content/SharedPreferences;Lh2/l;)V

    goto :goto_8

    :cond_d
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lw0/za;

    invoke-direct {v3, v1, v4, v0}, Lw0/za;-><init>(Lcom/ex/auto/MainActivity;ZLjava/lang/String;)V

    invoke-static {v1, v2, v3}, Lw0/k5;->e(Landroid/content/Context;Landroid/content/SharedPreferences;Lh2/l;)V

    :goto_8
    return-void

    :pswitch_5
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Lw0/z4;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_9

    :cond_e
    sget-object v2, Lw0/z4;->a:Lw0/z4;

    if-eq v1, v2, :cond_f

    sget-object v2, Lw0/z4;->d:Lw0/z4;

    if-ne v1, v2, :cond_10

    :cond_f
    move v8, v7

    :cond_10
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/MainActivity;->c1:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->c1:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "pip_overlay_enabled"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->S0:[Z

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_11

    const v1, 0x7f0901e9

    invoke-virtual {v0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ex/auto/MasterToggleView;

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->c1:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    :cond_11
    :goto_9
    return-void

    :pswitch_6
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Li2/j;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/ex/auto/LyricsFloaterService;

    sget-object v2, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    iput-boolean v7, v0, Li2/j;->a:Z

    invoke-virtual {v1}, Lcom/ex/auto/LyricsFloaterService;->l()V

    return-void

    :pswitch_7
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/LyricsFloaterService;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v0, v0, Lcom/ex/auto/LyricsFloaterService;->p:Landroid/widget/ScrollView;

    if-eqz v0, :cond_13

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/lit16 v2, v2, -0x104

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    if-gez v1, :cond_12

    move v1, v8

    :cond_12
    invoke-virtual {v0, v8, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_13
    return-void

    :pswitch_8
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/InstallerActivity;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    sget v2, Lcom/ex/auto/InstallerActivity;->v:I

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    const v1, 0x7f0f01f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v0, v1, v8}, Lcom/ex/auto/InstallerActivity;->w(Ljava/lang/String;Z)V

    return-void

    :pswitch_9
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/InstallerActivity;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    iget-object v2, v0, Lcom/ex/auto/InstallerActivity;->t:Landroid/widget/TextView;

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f0f01eb

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_15
    const-string v0, "tvStatus"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_a
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/InstallerActivity;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    sget v2, Lcom/ex/auto/InstallerActivity;->v:I

    new-instance v2, Lw0/i8;

    invoke-direct {v2, v0, v8}, Lw0/i8;-><init>(Lcom/ex/auto/InstallerActivity;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/ex/auto/InstallerActivity;->u:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/ex/auto/InstallerActivity;->v(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v4, "file"

    invoke-static {v1, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    move-object v6, v3

    :cond_16
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    const v4, 0x7f0f01ec

    if-eqz v1, :cond_1a

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v1, v9, v11

    if-lez v1, :cond_1a

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/ex/auto/InstallerActivity;->s(Ljava/io/File;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v1, Lw0/i8;

    invoke-direct {v1, v0, v7}, Lw0/i8;-><init>(Lcom/ex/auto/InstallerActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_17

    :goto_a
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_17
    sget-object v0, Lw0/zd;->a:Landroidx/emoji2/text/m;

    invoke-static {v2}, Lw0/zd;->a(Ljava/lang/String;)V

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_d

    :catch_0
    move-exception v1

    goto :goto_b

    :cond_18
    :try_start_2
    new-instance v1, La1/i;

    const/16 v4, 0x13

    invoke-direct {v1, v0, v4, v3}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {v3}, Lcom/ex/auto/InstallerActivity;->t(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Success"

    invoke-static {v1, v3, v7}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    new-instance v4, Lw0/c0;

    invoke-direct {v4, v0, v3, v1, v7}, Lw0/c0;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz v6, :cond_17

    goto :goto_a

    :cond_19
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1a
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_b
    :try_start_3
    new-instance v3, La1/i;

    const/16 v4, 0x14

    invoke-direct {v3, v0, v4, v1}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_17

    goto :goto_a

    :goto_c
    return-void

    :goto_d
    if-eqz v6, :cond_1b

    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :cond_1b
    sget-object v1, Lw0/zd;->a:Landroidx/emoji2/text/m;

    invoke-static {v2}, Lw0/zd;->a(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/HomeWidgetsPollService;->E:I

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->p(Ljava/lang/String;)V

    return-void

    :pswitch_c
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Lh2/a;

    iget-boolean v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->d:Z

    if-nez v0, :cond_1c

    invoke-interface {v1}, Lh2/a;->a()Ljava/lang/Object;

    :cond_1c
    return-void

    :pswitch_d
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Lh2/l;

    sget-object v2, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const-wide/16 v2, 0xbb8

    :try_start_5
    iget-boolean v4, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->d:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_1d

    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->k:J

    iget-object v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_f

    :cond_1d
    :try_start_6
    iget-object v4, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v4, :cond_1e

    goto :goto_e

    :cond_1e
    invoke-interface {v1, v4}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_e

    :goto_f
    return-void

    :catchall_3
    move-exception v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->k:J

    iget-object v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v1

    :pswitch_e
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lw0/a6;

    invoke-direct {v2, v1, v8}, Lw0/a6;-><init>(Ljava/util/concurrent/CountDownLatch;I)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_f
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_10
    if-ge v8, v2, :cond_21

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li2/g;->b(Ljava/lang/Object;)V

    const-string v4, "com.ex.auto."

    invoke-static {v3, v4}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "com.geely.driveregenfloater."

    invoke-static {v3, v4}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    :try_start_7
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    :cond_20
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_21
    return-void

    :pswitch_10
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/j5;

    invoke-direct {v3, v0, v1}, Lw0/j5;-><init>(Lcom/ex/auto/MainActivity;Landroid/content/SharedPreferences;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_11
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lh2/l;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Li2/j;

    iget-boolean v1, v1, Li2/j;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_12
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lh2/a;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lw0/n3;->b:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    :try_start_8
    invoke-interface {v0}, Lh2/a;->a()Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    return-void

    :catchall_5
    move-exception v0

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    throw v0

    :pswitch_13
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/property/CarPropertyManager;

    :try_start_9
    invoke-static {v1}, Lw0/v7;->i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->z:Ljava/lang/Boolean;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    iput-boolean v8, v0, Lcom/ex/auto/CentralWatchdogService;->A:Z

    return-void

    :pswitch_14
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Lh2/l;

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_22

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v5, Lw0/v2;

    invoke-direct {v5, v0, v4}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    sget v3, Lw0/pg;->a:I

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_23

    goto :goto_11

    :cond_23
    const v4, 0x11400204

    invoke-static {v3, v4}, Lw0/pg;->k(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Float;

    move-result-object v6

    if-nez v6, :cond_24

    const v4, 0x11600204

    invoke-static {v3, v4}, Lw0/pg;->k(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Float;

    move-result-object v6

    :cond_24
    :goto_11
    if-eqz v6, :cond_25

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "trip_start_odometer_km"

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v4, Lw0/v2;

    invoke-direct {v4, v0, v2}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_25
    if-eqz v1, :cond_27

    if-eqz v6, :cond_26

    goto :goto_12

    :cond_26
    move v7, v8

    :goto_12
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    return-void

    :pswitch_15
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v2, "CentralWatchdog"

    const-string v3, "recircGuard("

    const-wide/16 v4, 0x2bc

    :try_start_a
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {v0, v7}, Lw0/v7;->v(Landroid/car/hardware/property/CarPropertyManager;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): recirc estava ligada \u2014 reaplicada"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_13

    :catchall_7
    move-exception v0

    const-string v4, ") falhou: "

    invoke-static {v3, v1, v4}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_13
    return-void

    :pswitch_16
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lw0/p1;->d:Ljava/util/concurrent/ConcurrentHashMap;

    :try_start_b
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :catchall_8
    move-exception v3

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v3

    :pswitch_17
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Lw0/q1;

    const-string v2, "BanChecker"

    :try_start_c
    sget-object v4, Lw0/k5;->a:Lw0/k5;

    invoke-static {}, Lw0/k5;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_28

    :goto_14
    goto/16 :goto_17

    :cond_28
    invoke-static {}, Lw0/n0;->c()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_29

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "entries"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    goto :goto_15

    :catch_1
    move-exception v3

    goto :goto_16

    :cond_29
    :goto_15
    if-eqz v5, :cond_2e

    if-nez v6, :cond_2a

    goto :goto_17

    :cond_2a
    invoke-static {v4}, Lw0/n0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-static {v8, v5}, Lk1/a;->T(II)Ll2/c;

    move-result-object v5

    instance-of v9, v5, Ljava/util/Collection;

    if-eqz v9, :cond_2c

    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2c

    :cond_2b
    move v3, v8

    goto :goto_18

    :cond_2c
    invoke-virtual {v5}, Ll2/a;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2d
    move-object v9, v5

    check-cast v9, Ll2/b;

    iget-boolean v9, v9, Ll2/b;->c:Z

    if-eqz v9, :cond_2b

    move-object v9, v5

    check-cast v9, Ll2/b;

    invoke-virtual {v9}, Ll2/b;->nextInt()I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "hash"

    invoke-virtual {v9, v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v9}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2d

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    if-eqz v9, :cond_2d

    goto :goto_14

    :goto_16
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "recheckWhileBlocked: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_17
    move v3, v7

    :goto_18
    if-nez v3, :cond_2f

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "device_banned"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "recheckWhileBlocked: XDSN n\u00e3o est\u00e1 mais na banlist.json \u2014 desbloqueado"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    sget-object v0, Lw0/n0;->b:Landroid/os/Handler;

    new-instance v2, Lw0/d0;

    invoke-direct {v2, v1, v3, v7}, Lw0/d0;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_18
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/AppPipFloaterService;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Lw0/mg;

    iget-object v2, v0, Lcom/ex/auto/AppPipFloaterService;->i:Lw0/mg;

    if-eqz v2, :cond_30

    iget v2, v2, Lw0/mg;->b:I

    iget v1, v1, Lw0/mg;->b:I

    if-ne v2, v1, :cond_30

    const v1, 0x7f0f028f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/AppPipFloaterService;->k(Ljava/lang/String;)Z

    iput-object v6, v0, Lcom/ex/auto/AppPipFloaterService;->i:Lw0/mg;

    iput-object v6, v0, Lcom/ex/auto/AppPipFloaterService;->k:Lw0/lg;

    invoke-virtual {v0}, Lcom/ex/auto/AppPipFloaterService;->l()V

    iget-object v1, v0, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    iget-object v0, v0, Lcom/ex/auto/AppPipFloaterService;->v:Lw0/g0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_30
    return-void

    :pswitch_19
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lu/b;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lu/b;->e(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_1a
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Le/e0;

    iget-object v1, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_d
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    invoke-virtual {v0}, Le/e0;->a()V

    return-void

    :catchall_9
    move-exception v1

    invoke-virtual {v0}, Le/e0;->a()V

    throw v1

    :pswitch_1b
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/geely/hvacstepperv2/TempStepperService;

    iget-object v2, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v2, Landroid/car/Car;

    sget-object v3, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    const-string v3, "Limpeza CarService: "

    :try_start_e
    iput-boolean v8, v0, Lcom/geely/hvacstepperv2/TempStepperService;->F:Z

    iget-object v4, v0, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    iget-object v5, v0, Lcom/geely/hvacstepperv2/TempStepperService;->G:La1/q;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v4, "Polling parado"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/geely/hvacstepperv2/TempStepperService;->n()V

    invoke-virtual {v0}, Lcom/geely/hvacstepperv2/TempStepperService;->a()V

    invoke-virtual {v0}, Lcom/geely/hvacstepperv2/TempStepperService;->o()V

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Landroid/car/Car;->disconnect()V

    goto :goto_19

    :catchall_a
    move-exception v1

    goto :goto_1d

    :catch_2
    move-exception v2

    goto :goto_1b

    :cond_31
    :goto_19
    iput-object v6, v0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    :goto_1a
    iget-object v0, v0, Lcom/geely/hvacstepperv2/TempStepperService;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_1c

    :goto_1b
    :try_start_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    goto :goto_1a

    :goto_1c
    return-void

    :goto_1d
    iget-object v0, v0, Lcom/geely/hvacstepperv2/TempStepperService;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    throw v1

    :pswitch_1c
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/geely/hvacstepperv2/TempStepperService;

    iget-object v3, p0, La1/i;->c:Ljava/lang/Object;

    check-cast v3, La1/a;

    iget v4, v3, La1/a;->b:I

    iget v5, v3, La1/a;->a:I

    iget-object v6, v0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v6, :cond_32

    const-string v1, "CarService indispon\u00edvel"

    invoke-virtual {v0, v8, v1}, Lcom/geely/hvacstepperv2/TempStepperService;->m(ILjava/lang/String;)V

    goto/16 :goto_1e

    :cond_32
    mul-int/lit8 v6, v5, 0x3c

    add-int/2addr v6, v4

    const/16 v9, 0xa

    if-lt v6, v9, :cond_36

    invoke-virtual {v0}, Lcom/geely/hvacstepperv2/TempStepperService;->n()V

    invoke-virtual {v0}, Lcom/geely/hvacstepperv2/TempStepperService;->p()V

    invoke-virtual {v0}, Lcom/geely/hvacstepperv2/TempStepperService;->a()V

    invoke-virtual {v0}, Lcom/geely/hvacstepperv2/TempStepperService;->k()I

    move-result v6

    iget v9, v3, La1/a;->c:I

    const/16 v10, 0x8

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v11, v0, Lcom/geely/hvacstepperv2/TempStepperService;->x:I

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v11, v3, La1/a;->d:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, v0, Lcom/geely/hvacstepperv2/TempStepperService;->x:I

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v0}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v11

    if-nez v11, :cond_33

    goto/16 :goto_1e

    :cond_33
    iget-object v11, v0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const v12, 0x15400500

    invoke-static {v11, v12, v6, v9}, Lw0/p1;->k(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v11

    if-nez v11, :cond_34

    const-string v2, "Ventoinha inicial: escrita falhou"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "N\u00e3o foi poss\u00edvel definir ventoinha"

    invoke-virtual {v0, v8, v1}, Lcom/geely/hvacstepperv2/TempStepperService;->m(ILjava/lang/String;)V

    goto :goto_1e

    :cond_34
    iput-boolean v7, v0, Lcom/geely/hvacstepperv2/TempStepperService;->U:Z

    iput v9, v0, Lcom/geely/hvacstepperv2/TempStepperService;->V:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x2ee

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/geely/hvacstepperv2/TempStepperService;->W:J

    new-instance v7, La1/k;

    invoke-direct {v7, v0, v6, v10, v8}, La1/k;-><init>(Landroid/app/Service;III)V

    iput-object v7, v0, Lcom/geely/hvacstepperv2/TempStepperService;->X:La1/k;

    invoke-virtual {v0}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v6, v0, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    iget-object v7, v0, Lcom/geely/hvacstepperv2/TempStepperService;->X:La1/k;

    mul-int/lit8 v9, v5, 0x3c

    add-int/2addr v9, v4

    int-to-long v11, v9

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_35
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Programa ventoinha: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, La1/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u2192 ap\u00f3s "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "s n\u00edvel "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "fan_pr"

    invoke-virtual {v0, v1}, Lcom/geely/hvacstepperv2/TempStepperService;->q(Ljava/lang/String;)V

    new-instance v1, La1/f;

    invoke-direct {v1, v0, v2}, La1/f;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v0, v1}, Lcom/geely/hvacstepperv2/TempStepperService;->f(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, La1/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/geely/hvacstepperv2/TempStepperService;->m(ILjava/lang/String;)V

    goto :goto_1e

    :cond_36
    const-string v1, "Programa inv\u00e1lido ou tempo demasiado curto"

    invoke-virtual {v0, v8, v1}, Lcom/geely/hvacstepperv2/TempStepperService;->m(ILjava/lang/String;)V

    :goto_1e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
