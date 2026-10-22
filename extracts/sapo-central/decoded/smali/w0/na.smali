.class public final synthetic Lw0/na;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/ex/auto/MainActivity;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;II)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    iput p3, p0, Lw0/na;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw0/na;->b:I

    iput-object p2, p0, Lw0/na;->c:Lcom/ex/auto/MainActivity;

    iput p4, p0, Lw0/na;->d:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;IIB)V
    .locals 0

    .line 2
    iput p4, p0, Lw0/na;->a:I

    iput p1, p0, Lw0/na;->b:I

    iput-object p2, p0, Lw0/na;->c:Lcom/ex/auto/MainActivity;

    iput p3, p0, Lw0/na;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lw0/na;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lw0/na;->b:I

    iget-object v1, p0, Lw0/na;->c:Lcom/ex/auto/MainActivity;

    iget v2, p0, Lw0/na;->d:I

    iget-object v3, v1, Lcom/ex/auto/MainActivity;->s0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v0, v3, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-ltz v2, :cond_2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/ex/auto/MainActivity;->r0:Z

    :cond_2
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->g1()V

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget v0, p0, Lw0/na;->b:I

    iget-object v1, p0, Lw0/na;->c:Lcom/ex/auto/MainActivity;

    iget v2, p0, Lw0/na;->d:I

    iget-object v3, v1, Lcom/ex/auto/MainActivity;->u0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v0, v3, :cond_5

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lk1/a;->k(III)I

    move-result v0

    iput v0, v1, Lcom/ex/auto/MainActivity;->e0:I

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->S0:[Z

    const/4 v4, 0x3

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_5

    const v2, 0x7f090130

    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1, v0, v3}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    :cond_5
    :goto_2
    return-void

    :pswitch_1
    iget v0, p0, Lw0/na;->b:I

    iget-object v1, p0, Lw0/na;->c:Lcom/ex/auto/MainActivity;

    iget v2, p0, Lw0/na;->d:I

    iget-object v3, v1, Lcom/ex/auto/MainActivity;->s0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v0, v3, :cond_a

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v2}, Lw0/t1;->R(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "avas_mode_ativo"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    if-ltz v2, :cond_9

    if-nez v2, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, v1, Lcom/ex/auto/MainActivity;->r0:Z

    :cond_9
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->g1()V

    :cond_a
    :goto_4
    return-void

    :pswitch_2
    iget v0, p0, Lw0/na;->b:I

    iget-object v1, p0, Lw0/na;->c:Lcom/ex/auto/MainActivity;

    iget v2, p0, Lw0/na;->d:I

    iget-object v3, v1, Lcom/ex/auto/MainActivity;->u1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v0, v3, :cond_b

    goto :goto_8

    :cond_b
    iget-object v0, v1, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v3, 0x0

    if-eqz v0, :cond_d

    const/high16 v4, 0x1000000

    const/4 v5, 0x1

    filled-new-array {v3, v5, v4}, [I

    move-result-object v4

    move v6, v3

    :goto_5
    const/4 v7, 0x3

    if-ge v6, v7, :cond_d

    aget v7, v4, v6

    const v8, 0x22010100

    invoke-static {v0, v8, v7, v2}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v7

    if-eqz v7, :cond_c

    move v3, v5

    goto :goto_6

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_d
    :goto_6
    const-string v0, "toque na tela: drive="

    const-string v4, " escrita="

    invoke-static {v0, v2, v4}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v3, :cond_e

    const-string v2, "aceita"

    goto :goto_7

    :cond_e
    const-string v2, "recusada"

    :goto_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Condu\u00e7\u00e3o"

    invoke-virtual {v1, v2, v0}, Lcom/ex/auto/MainActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_f

    iget-object v0, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/ma;

    const/16 v3, 0x16

    invoke-direct {v2, v1, v3}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
