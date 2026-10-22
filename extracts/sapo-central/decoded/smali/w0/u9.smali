.class public final synthetic Lw0/u9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/kc;

.field public final synthetic c:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lw0/kc;Lcom/ex/auto/MainActivity;I)V
    .locals 0

    iput p3, p0, Lw0/u9;->a:I

    iput-object p1, p0, Lw0/u9;->b:Lw0/kc;

    iput-object p2, p0, Lw0/u9;->c:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget p1, p0, Lw0/u9;->a:I

    const v0, 0x7f0f0349

    const/4 v1, 0x0

    const-string v2, "getString(...)"

    iget-object v3, p0, Lw0/u9;->c:Lcom/ex/auto/MainActivity;

    iget-object v4, p0, Lw0/u9;->b:Lw0/kc;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v4}, Lw0/kc;->a()Lw0/xb;

    move-result-object p1

    iget-object p1, p1, Lw0/xb;->d:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lw0/kc;->a()Lw0/xb;

    move-result-object p1

    iget-boolean p1, p1, Lw0/xb;->g:Z

    if-nez p1, :cond_1

    invoke-static {v0, v1, v3, v2}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lw0/kc;->a()Lw0/xb;

    move-result-object p1

    iput-boolean v1, p1, Lw0/xb;->g:Z

    invoke-virtual {v4}, Lw0/kc;->a()Lw0/xb;

    move-result-object p1

    iput-boolean v1, p1, Lw0/xb;->f:Z

    invoke-virtual {v4}, Lw0/kc;->a()Lw0/xb;

    move-result-object p1

    const v0, 0x7f0f02d8

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lw0/xb;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1, v1}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    iget-object p1, v4, Lw0/kc;->c:Ljava/lang/String;

    new-instance v0, Lw0/y2;

    const/4 v1, 0x7

    invoke-direct {v0, v4, v1, v3}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v1, v3, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, La1/g;

    const/16 v4, 0x12

    invoke-direct {v2, v3, p1, v0, v4}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->n0()Lw0/p3;

    move-result-object p1

    invoke-virtual {p1}, Lw0/p3;->a()V

    :goto_0
    return-void

    :pswitch_0
    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v4}, Lw0/kc;->a()Lw0/xb;

    move-result-object p1

    iget-boolean p1, p1, Lw0/xb;->f:Z

    if-nez p1, :cond_2

    invoke-static {v0, v1, v3, v2}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Lw0/kc;->a()Lw0/xb;

    move-result-object p1

    iget-object p1, p1, Lw0/xb;->d:Ljava/lang/String;

    const v0, 0x7f0f00f9

    if-nez p1, :cond_3

    iget-object p1, v4, Lw0/kc;->a:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v2, 0x7f0f01f3

    invoke-virtual {v3, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v1}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-virtual {v4}, Lw0/kc;->a()Lw0/xb;

    move-result-object p1

    iget-boolean v2, p1, Lw0/xb;->f:Z

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p1, Lw0/xb;->d:Ljava/lang/String;

    if-nez v2, :cond_5

    invoke-virtual {v3, p1}, Lcom/ex/auto/MainActivity;->s0(Lw0/xb;)V

    goto :goto_2

    :cond_5
    iget-object v4, p1, Lw0/xb;->b:Ljava/lang/String;

    iput-boolean v1, p1, Lw0/xb;->f:Z

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lw0/xb;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lw0/xb;->a()V

    iget-object v0, v3, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lw0/la;

    invoke-direct {v1, v3, v4, p1, v2}, Lw0/la;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Lw0/xb;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->n0()Lw0/p3;

    move-result-object p1

    invoke-virtual {p1}, Lw0/p3;->a()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
