.class public final synthetic Lw0/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/QuickAccessFloaterService;)V
    .locals 0

    iput p1, p0, Lw0/ve;->a:I

    iput-object p2, p0, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Lw0/ve;->a:I

    const/16 v2, 0xc

    const/4 v3, 0x2

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "QuickAccessFloater"

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    :try_start_0
    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :pswitch_0
    iget-object v0, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget-boolean v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->M:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->t:Lw0/sf;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->W(Landroid/widget/TextView;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f019f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f01a7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f0038

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0x7f6

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showFreeformSetupDialog: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v7}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget-boolean v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->M:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->t:Lw0/sf;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->W(Landroid/widget/TextView;)V

    :cond_2
    return-void

    :pswitch_3
    iget-object v0, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const v2, 0x7f0f02af

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_4
    iget-object v0, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget-boolean v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->z:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->m()V

    :cond_3
    return-void

    :pswitch_5
    iget-object v9, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    sget-object v10, Ly1/p;->a:Ly1/p;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_2
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    const-string v12, "getInstalledApplications(...)"

    invoke-static {v11, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Landroid/content/pm/ApplicationInfo;

    iget v15, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v16, v15, 0x1

    if-nez v16, :cond_4

    and-int/lit16 v15, v15, 0x80

    if-nez v15, :cond_4

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    goto/16 :goto_7

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v8

    :goto_2
    if-ge v11, v10, :cond_7

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v11, v11, 0x1

    check-cast v13, Landroid/content/pm/ApplicationInfo;

    const-string v14, "pidof \'"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\' >/dev/null 2>&1 && echo RUNNING:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "toString(...)"

    invoke-static {v7, v10}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x2710

    invoke-virtual {v9, v10, v7}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object v7

    new-instance v10, Lw0/ya;

    const/16 v11, 0x19

    invoke-direct {v10, v11}, Lw0/ya;-><init>(I)V

    new-instance v11, Ln2/c;

    invoke-direct {v11, v7, v10, v3}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance v7, Lw0/ya;

    const/16 v10, 0x1a

    invoke-direct {v7, v10}, Lw0/ya;-><init>(I)V

    new-instance v10, Ln2/d;

    invoke-direct {v10, v11, v6, v7}, Ln2/d;-><init>(Ln2/f;ZLh2/l;)V

    new-instance v6, Lw0/ya;

    const/16 v7, 0x1b

    invoke-direct {v6, v7}, Lw0/ya;-><init>(I)V

    new-instance v7, Ln2/c;

    invoke-direct {v7, v10, v6, v3}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    invoke-static {v7}, Ln2/g;->X(Ln2/f;)Ljava/util/Set;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v10, v8

    :cond_8
    :goto_3
    if-ge v10, v7, :cond_9

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    move-object v13, v11

    check-cast v13, Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v6}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_4
    if-ge v8, v7, :cond_a

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget-object v11, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    :try_start_3
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-object v10, v5

    :goto_5
    new-instance v13, Lx1/d;

    invoke-direct {v13, v11, v12, v10}, Lx1/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    new-instance v0, Lw0/b6;

    invoke-direct {v0, v2}, Lw0/b6;-><init>(I)V

    invoke-static {v3, v0}, Ly1/g;->i0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v10

    goto :goto_7

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "runningUserApps: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v7}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_7
    iget-object v0, v9, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/ab;

    invoke-direct {v2, v10, v4, v9}, Lw0/ab;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_6
    iget-object v0, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-static {}, Lw0/og;->d()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/ve;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v0}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    return-void

    :pswitch_7
    iget-object v0, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x1388

    const-string v3, "settings get global policy_control"

    invoke-static {v2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->I(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ADB_FAIL"

    invoke-static {v3, v4}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/ve;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v0}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    :cond_c
    const-string v0, "immersive.full"

    invoke-static {v3, v0, v8}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v3, "settings delete global policy_control"

    goto :goto_8

    :cond_d
    const-string v3, "settings put global policy_control immersive.full=*"

    :goto_8
    invoke-static {v2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->I(ILjava/lang/String;)Ljava/lang/String;

    const-string v3, "am force-stop com.android.systemui"

    invoke-static {v2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->I(ILjava/lang/String;)Ljava/lang/String;

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    if-eqz v0, :cond_e

    const-string v0, "desligada"

    goto :goto_9

    :cond_e
    const-string v0, "ligada"

    :goto_9
    const-string v2, "tela cheia: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickAccess"

    invoke-static {v2, v0, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_a
    return-void

    :pswitch_8
    iget-object v9, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v0, v9, Lcom/ex/auto/QuickAccessFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_f

    goto/16 :goto_b

    :cond_f
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x11

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v11, "#B0000000"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v12, Lcom/ex/auto/QuickAccessFloaterService;->A0:I

    sget v13, Lcom/ex/auto/QuickAccessFloaterService;->C0:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0x12

    invoke-virtual {v9, v12, v14, v13, v6}, Lcom/ex/auto/QuickAccessFloaterService;->M(IILjava/lang/Integer;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v12, 0x14

    invoke-virtual {v9, v12}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v13

    invoke-virtual {v9, v14}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v15

    invoke-virtual {v9, v12}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v12

    invoke-virtual {v9, v14}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v14

    invoke-virtual {v11, v13, v15, v12, v14}, Landroid/view/View;->setPadding(IIII)V

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v13, 0x7f0f02ef

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v13, 0x41900000    # 18.0f

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v12}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    sget v13, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0f02ee

    invoke-virtual {v9, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v14, 0x41700000    # 15.0f

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextSize(F)V

    sget v15, Lcom/ex/auto/QuickAccessFloaterService;->I0:I

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v9, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    const/16 v15, 0x10

    invoke-virtual {v9, v15}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v15

    invoke-virtual {v12, v8, v4, v8, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x104

    invoke-virtual {v9, v15}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v15

    const/4 v3, -0x2

    invoke-direct {v4, v15, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0f01aa

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v4, v12, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    sget v6, Lcom/ex/auto/QuickAccessFloaterService;->D0:I

    invoke-virtual {v9, v6, v2, v5, v8}, Lcom/ex/auto/QuickAccessFloaterService;->M(IILjava/lang/Integer;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v2}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v6

    invoke-virtual {v9, v2}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v2

    invoke-virtual {v4, v8, v6, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v2, Lw0/df;

    const/4 v6, 0x2

    invoke-direct {v2, v6, v9}, Lw0/df;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v0, v9, Lcom/ex/auto/QuickAccessFloaterService;->e:Landroid/widget/LinearLayout;

    new-instance v12, Landroid/view/WindowManager$LayoutParams;

    const/16 v16, 0x100

    const/16 v17, -0x3

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/16 v15, 0x7f6

    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    :try_start_4
    iget-object v2, v9, Lcom/ex/auto/QuickAccessFloaterService;->b:Landroid/view/WindowManager;

    if-eqz v2, :cond_10

    invoke-interface {v2, v0, v12}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showScreenOffWarning: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v7}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iput-object v5, v9, Lcom/ex/auto/QuickAccessFloaterService;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Lcom/ex/auto/QuickAccessFloaterService;->V(Z)V

    :cond_10
    :goto_b
    return-void

    :pswitch_9
    iget-object v0, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0, v8}, Lcom/ex/auto/QuickAccessFloaterService;->V(Z)V

    return-void

    :pswitch_a
    iget-object v0, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->u()Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->u()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    return-void

    :pswitch_b
    iget-object v0, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->i()V

    return-void

    :pswitch_c
    iget-object v0, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget-boolean v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->M:Z

    if-nez v2, :cond_12

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->t:Lw0/sf;

    if-eqz v2, :cond_12

    iget-object v3, v0, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_11

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->z()V

    invoke-virtual {v0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->W(Landroid/widget/TextView;)V

    goto :goto_c

    :cond_11
    new-instance v3, Lw0/i9;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v4, v2}, Lw0/i9;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->O(Lh2/l;)V

    :cond_12
    :goto_c
    return-void

    :pswitch_d
    iget-object v0, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->f()V

    return-void

    :pswitch_e
    iget-object v0, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->f()V

    return-void

    :pswitch_f
    iget-object v0, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget-boolean v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->z:Z

    if-nez v2, :cond_13

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->q()V

    :cond_13
    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->i()V

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->i:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_14

    goto :goto_d

    :cond_14
    move v6, v8

    :goto_d
    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->i:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_15

    iget-object v3, v0, Lcom/ex/auto/QuickAccessFloaterService;->g:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_15

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_15
    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->g()Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v6, :cond_16

    goto :goto_e

    :cond_16
    const/16 v8, 0x8

    :goto_e
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iput-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->i:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/ex/auto/QuickAccessFloaterService;->g:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_17

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_17
    if-eqz v6, :cond_18

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->K()V

    :cond_18
    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    return-void

    :pswitch_10
    iget-object v2, v1, Lw0/ve;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v3, "settings put global audio_speed_volume_enable "

    const-string v4, "settings put global heads_up_notifications_enabled "

    :try_start_5
    new-instance v0, Ljava/io/File;

    const-string v5, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/ex/auto/QuickAccessFloaterService;->R:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lf2/d;->i0(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wakeScreen: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v7}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_f
    const/16 v0, 0xbb8

    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/ex/auto/QuickAccessFloaterService;->S:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Lcom/ex/auto/QuickAccessFloaterService;->T:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
