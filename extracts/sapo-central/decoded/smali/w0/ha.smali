.class public final synthetic Lw0/ha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/h0;

.field public final synthetic c:Lcom/ex/auto/MainActivity;

.field public final synthetic d:Li2/j;


# direct methods
.method public synthetic constructor <init>(Lw0/h0;Lcom/ex/auto/MainActivity;Li2/j;I)V
    .locals 0

    iput p4, p0, Lw0/ha;->a:I

    iput-object p1, p0, Lw0/ha;->b:Lw0/h0;

    iput-object p2, p0, Lw0/ha;->c:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, Lw0/ha;->d:Li2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lw0/ha;->a:I

    const v2, 0x7f0f0038

    const/16 v3, 0x12c

    const v4, 0x7f0f00c5

    const v5, 0x7f0f030d

    const v6, 0x7f0f030c

    const-string v7, "getString(...)"

    const v8, 0x7f0f0272

    const v9, 0x7f0f0109

    const-string v10, "result"

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, v0, Lw0/ha;->d:Li2/j;

    iget-object v14, v0, Lw0/ha;->c:Lcom/ex/auto/MainActivity;

    iget-object v15, v0, Lw0/ha;->b:Lw0/h0;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v16, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {v1, v10}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Lw0/h0;->a()Ljava/lang/Object;

    invoke-virtual {v14}, Landroid/app/Activity;->isFinishing()Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v10, v13, Li2/j;->a:Z

    if-eqz v10, :cond_1

    move v8, v9

    :cond_1
    invoke-virtual {v14, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v8, v11}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    new-instance v7, Le/h;

    invoke-direct {v7, v14}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v8, v7, Le/h;->b:Ljava/lang/Object;

    check-cast v8, Le/d;

    if-eqz v10, :cond_2

    invoke-virtual {v14, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual {v14, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    iput-object v5, v8, Le/d;->d:Ljava/lang/CharSequence;

    if-eqz v10, :cond_3

    const v1, 0x7f0f030b

    invoke-virtual {v14, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {v3, v1}, Lo2/k;->D0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v14, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v8, Le/d;->f:Ljava/lang/CharSequence;

    invoke-virtual {v14, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v12}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v7}, Le/h;->h()Le/i;

    if-eqz v10, :cond_4

    invoke-static {v14}, Lcom/ex/auto/MainActivity;->h1(Lcom/ex/auto/MainActivity;)V

    :cond_4
    :goto_2
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v16, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {v1, v10}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Lw0/h0;->a()Ljava/lang/Object;

    invoke-virtual {v14}, Landroid/app/Activity;->isFinishing()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean v10, v13, Li2/j;->a:Z

    if-eqz v10, :cond_6

    move v8, v9

    :cond_6
    invoke-virtual {v14, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v8, v11}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    new-instance v7, Le/h;

    invoke-direct {v7, v14}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v8, v7, Le/h;->b:Ljava/lang/Object;

    check-cast v8, Le/d;

    if-eqz v10, :cond_7

    invoke-virtual {v14, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    invoke-virtual {v14, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    iput-object v5, v8, Le/d;->d:Ljava/lang/CharSequence;

    if-eqz v10, :cond_8

    const v1, 0x7f0f030a

    invoke-virtual {v14, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    invoke-static {v3, v1}, Lo2/k;->D0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v14, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, v8, Le/d;->f:Ljava/lang/CharSequence;

    invoke-virtual {v14, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v12}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v7}, Le/h;->h()Le/i;

    if-eqz v10, :cond_9

    invoke-static {v14}, Lcom/ex/auto/MainActivity;->h1(Lcom/ex/auto/MainActivity;)V

    :cond_9
    :goto_5
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
