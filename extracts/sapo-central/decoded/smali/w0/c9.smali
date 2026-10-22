.class public final synthetic Lw0/c9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lw0/c9;->a:I

    iput-object p1, p0, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/c9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/ex/auto/MainActivity;I)V
    .locals 0

    .line 2
    iput p3, p0, Lw0/c9;->a:I

    iput-object p1, p0, Lw0/c9;->b:Ljava/lang/String;

    iput-object p2, p0, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v1, p0

    iget v0, v1, Lw0/c9;->a:I

    const-string v2, "Update"

    const-string v3, "MONITOR_BIND_OK"

    const-string v4, "MONITOR_JA_MONTADO"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "getString(...)"

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/c9;->b:Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2, v9}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/c9;->b:Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->Z1(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    iget-object v0, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/c9;->b:Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->S1(Ljava/lang/String;)V

    return-void

    :pswitch_2
    sget-object v0, Lw0/i4;->a:Lw0/i4;

    iget-object v2, v1, Lw0/c9;->b:Ljava/lang/String;

    iget-object v10, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    if-eqz v2, :cond_5

    iput-boolean v9, v10, Lcom/ex/auto/MainActivity;->l0:Z

    const-string v3, ""

    invoke-virtual {v10, v3, v9}, Lcom/ex/auto/MainActivity;->D0(Ljava/lang/String;Z)V

    invoke-virtual {v10, v8}, Lcom/ex/auto/MainActivity;->O1(Z)V

    const-string v3, "bloqueado: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ativar ConnAdaptor"

    invoke-virtual {v10, v4, v3}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0f012e

    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "aa"

    invoke-virtual {v10, v3}, Lcom/ex/auto/MainActivity;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/ex/auto/MainActivity;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f0f010d

    invoke-virtual {v10, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "carplay"

    invoke-virtual {v10, v3}, Lcom/ex/auto/MainActivity;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/ex/auto/MainActivity;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "ambos"

    invoke-virtual {v10, v3}, Lcom/ex/auto/MainActivity;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/ex/auto/MainActivity;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v3, "1111"

    invoke-virtual {v10, v3}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->R()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f0f010c

    invoke-virtual {v10, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "1114"

    invoke-virtual {v10, v3}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v3, Lw0/i4;->b:Lw0/i4;

    :goto_1
    if-ne v3, v0, :cond_4

    new-instance v0, Le/h;

    invoke-direct {v0, v10}, Le/h;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0133

    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Le/h;->b:Ljava/lang/Object;

    check-cast v4, Le/d;

    iput-object v3, v4, Le/d;->d:Ljava/lang/CharSequence;

    iput-object v2, v4, Le/d;->f:Ljava/lang/CharSequence;

    const v2, 0x7f0f0164

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw0/z8;

    const/16 v4, 0x1a

    invoke-direct {v3, v10, v4}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2, v3}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v2, 0x7f0f0032

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Le/h;->h()Le/i;

    goto :goto_2

    :cond_4
    invoke-virtual {v10, v2, v8}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_2

    :cond_5
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->E()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lx1/a;

    const-string v3, "caApk"

    invoke-direct {v2, v3, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw0/t1;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lx1/a;

    const-string v4, "caMd5"

    invoke-direct {v3, v4, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3}, [Lx1/a;

    move-result-object v0

    invoke-static {v0}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v0

    iput-boolean v8, v10, Lcom/ex/auto/MainActivity;->l0:Z

    invoke-virtual {v10, v9}, Lcom/ex/auto/MainActivity;->O1(Z)V

    const v2, 0x7f0f0083

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0f0080

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v2, Lw0/i9;

    invoke-direct {v2, v0, v9, v10}, Lw0/i9;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v3, Lw0/e9;

    invoke-direct {v3, v10, v5}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v4, Lw0/y2;

    const/4 v5, 0x5

    invoke-direct {v4, v10, v5, v0}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/16 v23, 0x400

    const/4 v11, 0x0

    const-wide/16 v13, 0x3a98

    const v15, 0x1d4c0

    const-string v16, ""

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v22, v4

    invoke-static/range {v10 .. v23}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    :goto_2
    return-void

    :pswitch_3
    iget-object v0, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/c9;->b:Ljava/lang/String;

    sget v7, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {v2, v4, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    const-string v7, "CarplayMonitor"

    if-nez v4, :cond_f

    invoke-static {v2, v3, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "MONITOR_JA_PATCHADO_EM_EXECUCAO"

    invoke-static {v2, v3, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_4

    :cond_6
    const-string v3, "SEM_MONITOR"

    invoke-static {v2, v3, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    const v2, 0x7f0f025d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_7
    const-string v3, "MONITOR_MD5_INESPERADO"

    invoke-static {v2, v3, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    const v2, 0x7f0f025a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_8
    const-string v3, "PATCH_MD5_ERRADO"

    invoke-static {v2, v3, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    const v2, 0x7f0f025b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    const-string v3, "CHCON_FALHOU"

    invoke-static {v2, v3, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    const v2, 0x7f0f025c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_a
    const-string v3, "MONITOR_BIND_FALHOU"

    invoke-static {v2, v3, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    const v2, 0x7f0f0259

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_b
    invoke-static {v2}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const v2, 0x7f0f025e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_c
    invoke-static {v2}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object v3

    new-instance v4, Lw0/ya;

    const/4 v10, 0x6

    invoke-direct {v4, v10}, Lw0/ya;-><init>(I)V

    new-instance v10, Ln2/c;

    invoke-direct {v10, v3, v4, v5}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance v3, Lw0/ya;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lw0/ya;-><init>(I)V

    new-instance v4, Ln2/d;

    invoke-direct {v4, v10, v8, v3}, Ln2/d;-><init>(Ln2/f;ZLh2/l;)V

    const-string v3, " | "

    invoke-static {v4, v3}, Ln2/g;->V(Ln2/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v2}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-static {v3, v2}, Lo2/k;->D0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_d
    move-object v2, v3

    :goto_3
    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V

    sget-object v3, Lw0/ae;->a:Lw0/ae;

    const-string v3, "Reiniciar: bind FALHOU \u2014 "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v9}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_e
    new-instance v3, Le/h;

    invoke-direct {v3, v0}, Le/h;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0258

    invoke-virtual {v3, v4}, Le/h;->g(I)V

    const v4, 0x7f0f0257

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Le/h;->b:Ljava/lang/Object;

    check-cast v4, Le/d;

    iput-object v2, v4, Le/d;->f:Ljava/lang/CharSequence;

    const v2, 0x104000a

    invoke-virtual {v3, v2, v6}, Le/h;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Le/h;->h()Le/i;

    goto :goto_5

    :cond_f
    :goto_4
    sget-object v2, Lw0/ae;->a:Lw0/ae;

    const-string v2, "Reiniciar: bind OK"

    invoke-static {v7, v2, v9}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_10
    :goto_5
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->e1()V

    :cond_11
    return-void

    :pswitch_4
    iget-object v0, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iget-object v3, v1, Lw0/c9;->b:Ljava/lang/String;

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x3e80

    invoke-static {v4, v3}, Lcom/ex/auto/MainActivity;->v2(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/ex/auto/MainActivity;->Z1(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v8}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void

    :pswitch_5
    iget-object v0, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/c9;->b:Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0, v2, v9}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void

    :pswitch_6
    iget-object v0, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/c9;->b:Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    const-string v3, "runKeyServerApply: post na UI, userInitiated=true"

    const-string v4, "KeyServerAtivador"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, v0, Lcom/ex/auto/MainActivity;->q0:Ljava/lang/Boolean;

    iput-boolean v9, v0, Lcom/ex/auto/MainActivity;->p0:Z

    invoke-virtual {v0, v2, v8}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    const-string v2, "runKeyServerApply: Toast.show() chamado"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lw0/ma;

    const/16 v4, 0xf

    invoke-direct {v3, v0, v4}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    return-void

    :pswitch_7
    iget-object v0, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/c9;->b:Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    const-string v3, "[ -f \'/data/local/hvac-digital/sysui.apk\' ] && echo HV_YES || echo HV_NO"

    const/16 v4, 0x1f40

    invoke-virtual {v0, v4, v3}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HV_YES"

    invoke-static {v3, v4, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    invoke-static {v3}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "Falha no ADB local"

    invoke-static {v3, v5, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_6

    :cond_12
    move v8, v9

    :cond_13
    :goto_6
    iget-object v3, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, Lw0/sa;

    invoke-direct {v5, v0, v2, v4, v8}, Lw0/sa;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_8
    iget-object v0, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/c9;->b:Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->E()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_14

    goto :goto_7

    :cond_14
    move v8, v9

    :goto_7
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->q0()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v8, :cond_15

    sget-object v3, Lw0/h5;->a:Lw0/h5;

    goto :goto_8

    :cond_15
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    sget-object v3, Lw0/h5;->c:Lw0/h5;

    goto :goto_8

    :cond_16
    sget-object v3, Lw0/h5;->b:Lw0/h5;

    :goto_8
    iget-object v4, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, La1/g;

    const/16 v6, 0x11

    invoke-direct {v5, v0, v3, v2, v6}, La1/g;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_9
    iget-object v0, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/c9;->b:Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->S1(Ljava/lang/String;)V

    :cond_17
    return-void

    :pswitch_a
    iget-object v0, v1, Lw0/c9;->b:Ljava/lang/String;

    iget-object v2, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    const-string v3, "OK"

    invoke-static {v0, v3, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "/data/local/tmp/avas_preview/preview.wav"

    invoke-virtual {v2, v0}, Lcom/ex/auto/MainActivity;->Z0(Ljava/lang/String;)V

    goto :goto_9

    :cond_18
    const v0, 0x7f0f02a4

    invoke-static {v0, v9, v2, v7}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    :goto_9
    return-void

    :pswitch_b
    iget-object v0, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iget-object v3, v1, Lw0/c9;->b:Ljava/lang/String;

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    const v4, 0x7f0f00b4

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/ex/auto/MainActivity;->Z1(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v8}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-virtual {v0, v2, v3}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_c
    iget-object v0, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/c9;->b:Ljava/lang/String;

    sget v5, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_c

    :cond_19
    invoke-static {v2, v3, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-static {v2, v4, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_a

    :cond_1a
    const v2, 0x7f0f00e2

    goto :goto_b

    :cond_1b
    :goto_a
    const v2, 0x7f0f00e3

    :goto_b
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v8}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->e1()V

    :cond_1c
    :goto_c
    return-void

    :pswitch_d
    iget-object v2, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iget-object v0, v1, Lw0/c9;->b:Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    const-string v3, "CarPlay connect"

    :try_start_0
    invoke-static {v2, v0}, Lw0/t1;->r(Landroid/content/Context;Ljava/lang/String;)Lw0/s1;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "resultado="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (preferido="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1d

    const-string v0, "qualquer"

    :cond_1d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/ex/auto/MainActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catchall_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "erro: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/ex/auto/MainActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :pswitch_e
    iget-object v0, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/c9;->b:Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {}, Lw0/og;->d()Z

    move-result v3

    iget-object v4, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, Lw0/c0;

    const/4 v6, 0x3

    invoke-direct {v5, v3, v0, v2, v6}, Lw0/c0;-><init>(ZLandroid/content/ContextWrapper;Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_f
    iget-object v0, v1, Lw0/c9;->b:Ljava/lang/String;

    iget-object v2, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->R()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lw0/u;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, Lw0/f9;

    const/16 v5, 0xc

    invoke-direct {v4, v2, v0, v5}, Lw0/f9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_10
    iget-object v0, v1, Lw0/c9;->c:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/c9;->b:Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pastas centrais (arranque)\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xfa0

    invoke-static {v4, v2}, Lcom/ex/auto/MainActivity;->v2(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ADB"

    invoke-virtual {v0, v3, v2}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

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
