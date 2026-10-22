.class public final synthetic Lw0/g9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lw0/g9;->a:I

    iput-object p2, p0, Lw0/g9;->b:Ljava/lang/Object;

    iput p1, p0, Lw0/g9;->c:I

    iput-object p3, p0, Lw0/g9;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lw0/g9;->a:I

    iget-object v0, p0, Lw0/g9;->d:Ljava/lang/Object;

    iget v1, p0, Lw0/g9;->c:I

    iget-object v2, p0, Lw0/g9;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast v2, Lh2/l;

    check-cast v0, Lcom/ex/auto/LyricsFloaterService;

    sget-object p1, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->b()V

    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->l()V

    return-void

    :pswitch_0
    check-cast v2, Lcom/ex/auto/MainActivity;

    check-cast v0, [I

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    const/4 p1, 0x3

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    const v0, 0x7f09011b

    invoke-virtual {v2, v0, v1, p1}, Lcom/ex/auto/MainActivity;->M1(II[I)V

    const/4 p1, 0x1

    if-ne v1, p1, :cond_0

    iget-object p1, v2, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lw0/x8;

    const/16 v3, 0x12

    invoke-direct {v0, v2, v3}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x2

    const/16 v0, 0x8

    if-ne v1, p1, :cond_2

    const p1, 0x7f090124

    invoke-virtual {v2, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v1, La1/r;

    invoke-direct {v1, v0, p1}, La1/r;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->S0()V

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->T0()V

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->W0()V

    :cond_2
    iget-object p1, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v1, Lw0/x8;

    invoke-direct {v1, v2, v0}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const-wide/16 v2, 0xb4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_1
    check-cast v2, Lcom/ex/auto/MainActivity;

    check-cast v0, [I

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    array-length p1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    const v0, 0x7f0901a8

    invoke-virtual {v2, v0, v1, p1}, Lcom/ex/auto/MainActivity;->M1(II[I)V

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->u1()V

    return-void

    :pswitch_2
    check-cast v2, Lcom/ex/auto/MainActivity;

    check-cast v0, [I

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    array-length p1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    const v0, 0x7f09018b

    invoke-virtual {v2, v0, v1, p1}, Lcom/ex/auto/MainActivity;->M1(II[I)V

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->s1()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
