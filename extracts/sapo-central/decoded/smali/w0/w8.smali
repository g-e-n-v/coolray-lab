.class public final synthetic Lw0/w8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;I)V
    .locals 0

    iput p2, p0, Lw0/w8;->a:I

    iput-object p1, p0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lw0/w8;->a:I

    const v2, 0x7f0f0032

    const v3, 0x7f0f02d8

    const v4, 0x7f0f00a7

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "getString(...)"

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {v1}, Lk1/a;->M(Landroid/content/Context;)V

    return-void

    :pswitch_0
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const/4 v2, 0x7

    const v3, 0x7f090173

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->m2(II)V

    return-void

    :pswitch_1
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f090177

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->L1(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->r2(I)V

    return-void

    :pswitch_2
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f090175

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->L1(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->r2(I)V

    return-void

    :pswitch_3
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f090174

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->L1(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->r2(I)V

    return-void

    :pswitch_4
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f090176

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->L1(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->r2(I)V

    return-void

    :pswitch_5
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f09017a

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->L1(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->r2(I)V

    return-void

    :pswitch_6
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f090178

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->L1(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->r2(I)V

    return-void

    :pswitch_7
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1, v6}, Lcom/ex/auto/MainActivity;->X1(I)V

    return-void

    :pswitch_8
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1, v5}, Lcom/ex/auto/MainActivity;->X1(I)V

    return-void

    :pswitch_9
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1, v8}, Lcom/ex/auto/MainActivity;->X1(I)V

    return-void

    :pswitch_a
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1, v6}, Lcom/ex/auto/MainActivity;->T1(I)V

    return-void

    :pswitch_b
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1, v5}, Lcom/ex/auto/MainActivity;->T1(I)V

    return-void

    :pswitch_c
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1, v8}, Lcom/ex/auto/MainActivity;->T1(I)V

    return-void

    :pswitch_d
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f090146

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->B1(I)V

    return-void

    :pswitch_e
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f09010d

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->B1(I)V

    return-void

    :pswitch_f
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->O()Z

    move-result v2

    const-string v3, "ambos"

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->L0()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->O()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lw0/u;->a:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "<get-prefs>(...)"

    invoke-static {v2, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lw0/u;->b(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "aa"

    :cond_1
    invoke-virtual {v1, v3}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_10
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f090179

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->L1(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->r2(I)V

    return-void

    :pswitch_11
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f05a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f05a1

    invoke-static {v2, v9, v1, v3, v9}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_12
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v2, v1, Lcom/ex/auto/MainActivity;->h1:Z

    if-eqz v2, :cond_2

    invoke-static {v4, v7, v1, v9}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/ex/auto/MainActivity;->f1:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v5}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "gestures_enabled"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v8, v1, Lcom/ex/auto/MainActivity;->h1:Z

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/ex/auto/MainActivity;->f1:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->l1()V

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v7}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lw0/x8;

    const/16 v4, 0xd

    invoke-direct {v3, v1, v4}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    iput-boolean v8, v1, Lcom/ex/auto/MainActivity;->h1:Z

    invoke-static {v4, v7, v1, v9}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lw0/x8;

    const/16 v4, 0xe

    invoke-direct {v3, v1, v4}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :pswitch_13
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f04c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f05f9

    invoke-static {v2, v9, v1, v3, v9}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_14
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f0460

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f045f

    invoke-static {v2, v9, v1, v3, v9}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_15
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f044a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0449

    invoke-static {v2, v9, v1, v3, v9}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_16
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f0462

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0461

    invoke-static {v2, v9, v1, v3, v9}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_17
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v2, v1, Lcom/ex/auto/MainActivity;->d1:Z

    if-eqz v2, :cond_4

    invoke-static {v4, v7, v1, v9}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iput-boolean v8, v1, Lcom/ex/auto/MainActivity;->d1:Z

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->c1:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v6}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v6, v2, 0x1

    if-nez v2, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v3, v7, v1, v9}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lw0/f9;

    invoke-direct {v3, v6, v1, v5}, Lw0/f9;-><init>(ZLcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :pswitch_18
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f0456

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0455

    invoke-static {v2, v9, v1, v3, v9}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_19
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f045e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f045d

    invoke-static {v2, v9, v1, v3, v9}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1a
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v2, v1, Lcom/ex/auto/MainActivity;->S:Z

    if-eqz v2, :cond_6

    invoke-virtual {v1, v7}, Lcom/ex/auto/MainActivity;->V1(Z)V

    goto :goto_3

    :cond_6
    iget v2, v1, Lcom/ex/auto/MainActivity;->T:I

    iget v3, v1, Lcom/ex/auto/MainActivity;->U:I

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->o2(II)V

    :goto_3
    return-void

    :pswitch_1b
    iget-object v1, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v3, v1, Lcom/ex/auto/MainActivity;->Z0:Z

    if-eqz v3, :cond_7

    goto/16 :goto_4

    :cond_7
    iget-object v3, v1, Lcom/ex/auto/MainActivity;->X0:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "rvc_black_bg"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v8, v1, Lcom/ex/auto/MainActivity;->Z0:Z

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/ex/auto/MainActivity;->X0:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->v1()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->P0()V

    const v2, 0x7f0f02e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v7}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lw0/x8;

    const/16 v4, 0xb

    invoke-direct {v3, v1, v4}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_8
    new-instance v3, Le/h;

    invoke-direct {v3, v1}, Le/h;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f02e9

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Le/h;->b:Ljava/lang/Object;

    check-cast v5, Le/d;

    iput-object v4, v5, Le/d;->d:Ljava/lang/CharSequence;

    const v4, 0x7f0f02e8

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Le/d;->f:Ljava/lang/CharSequence;

    iput-boolean v7, v5, Le/d;->m:Z

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lw0/z8;

    const/16 v5, 0x8

    invoke-direct {v4, v1, v5}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v2, v4}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v2, 0x7f0f0030

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lw0/z8;

    const/16 v5, 0x9

    invoke-direct {v4, v1, v5}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v2, v4}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Le/h;->h()Le/i;

    :goto_4
    return-void

    :pswitch_1c
    move v1, v6

    iget-object v6, v0, Lw0/w8;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v3, v6, Lcom/ex/auto/MainActivity;->p0:Z

    if-eqz v3, :cond_9

    invoke-static {v4, v7, v6, v9}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v6}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "keyserver_bind_enabled"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    iput-boolean v8, v6, Lcom/ex/auto/MainActivity;->p0:Z

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v6, Lcom/ex/auto/MainActivity;->q0:Ljava/lang/Boolean;

    invoke-virtual {v6}, Lcom/ex/auto/MainActivity;->v1()V

    iget-object v1, v6, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/x8;

    const/16 v3, 0x16

    invoke-direct {v2, v6, v3}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v1, 0x7f0f0202

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lw0/e9;

    const/4 v1, 0x4

    invoke-direct {v14, v6, v1}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v15, Lw0/e9;

    const/4 v1, 0x5

    invoke-direct {v15, v6, v1}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v1, Lw0/h9;

    const/4 v2, 0x6

    invoke-direct {v1, v6, v2}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    const/16 v19, 0x600

    const/4 v7, 0x0

    const-wide/16 v9, 0xfa0

    const/16 v11, 0x4e20

    const-string v12, ""

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v1

    invoke-static/range {v6 .. v19}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    goto :goto_5

    :cond_a
    const-string v3, "KeyServerAtivador"

    const-string v4, "bindKeyServer(): bot\u00e3o Ativar clicado"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "keyserver_first_activate_warned"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_b

    new-instance v3, Le/h;

    invoke-direct {v3, v6}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v4, v3, Le/h;->b:Ljava/lang/Object;

    check-cast v4, Le/d;

    const v5, 0x7f0f0207

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Le/d;->d:Ljava/lang/CharSequence;

    const v5, 0x7f0f0206

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Le/d;->f:Ljava/lang/CharSequence;

    const v4, 0x7f0f0038

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lw0/z8;

    invoke-direct {v5, v6, v1}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v4, v5}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Le/h;->h()Le/i;

    goto :goto_5

    :cond_b
    invoke-virtual {v6}, Lcom/ex/auto/MainActivity;->I1()V

    :goto_5
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
