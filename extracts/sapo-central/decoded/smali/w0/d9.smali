.class public final synthetic Lw0/d9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lh2/a;

.field public final synthetic c:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lh2/a;Lcom/ex/auto/MainActivity;I)V
    .locals 0

    iput p3, p0, Lw0/d9;->a:I

    iput-object p1, p0, Lw0/d9;->b:Lh2/a;

    iput-object p2, p0, Lw0/d9;->c:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lw0/d9;->a:I

    const-wide/16 v0, 0xb4

    iget-object v2, p0, Lw0/d9;->c:Lcom/ex/auto/MainActivity;

    iget-object v3, p0, Lw0/d9;->b:Lh2/a;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-interface {v3}, Lh2/a;->a()Ljava/lang/Object;

    iget-object p1, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v0, Lw0/x8;

    const/16 v1, 0x8

    invoke-direct {v0, v2, v1}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const-wide/16 v1, 0xdc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-interface {v3}, Lh2/a;->a()Ljava/lang/Object;

    iget-object p1, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/x8;

    const/16 v4, 0xf

    invoke-direct {v3, v2, v4}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_1
    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-interface {v3}, Lh2/a;->a()Ljava/lang/Object;

    iget-object p1, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/x8;

    const/16 v4, 0x10

    invoke-direct {v3, v2, v4}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_2
    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-interface {v3}, Lh2/a;->a()Ljava/lang/Object;

    iget-object p1, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/x8;

    const/16 v4, 0xa

    invoke-direct {v3, v2, v4}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
