.class public final synthetic Lw0/tb;
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

    iput p2, p0, Lw0/tb;->a:I

    iput-object p1, p0, Lw0/tb;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lw0/tb;->a:I

    const-string v0, "getString(...)"

    iget-object v1, p0, Lw0/tb;->b:Lcom/ex/auto/MainActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    const p1, 0x7f0f0458

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f0f0457

    invoke-static {p1, v0, v1, v2, v0}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    const p1, 0x7f0f0448

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f0f0447

    invoke-static {p1, v0, v1, v2, v0}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    const p1, 0x7f0f0450

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f0f044f

    invoke-static {p1, v0, v1, v2, v0}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
