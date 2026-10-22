.class public final synthetic Lw0/v9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/ViewFlipper;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Landroid/widget/ViewFlipper;II)V
    .locals 0

    iput p4, p0, Lw0/v9;->a:I

    iput-object p2, p0, Lw0/v9;->b:Landroid/widget/ViewFlipper;

    iput p3, p0, Lw0/v9;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lw0/v9;->a:I

    iget v1, p0, Lw0/v9;->c:I

    iget-object v2, p0, Lw0/v9;->b:Landroid/widget/ViewFlipper;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->D1(Landroid/view/View;)V

    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->D1(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
