.class public final synthetic Lw0/ye;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;

.field public final synthetic c:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;Landroid/widget/TextView;I)V
    .locals 0

    iput p3, p0, Lw0/ye;->a:I

    iput-object p1, p0, Lw0/ye;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iput-object p2, p0, Lw0/ye;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lw0/ye;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/ye;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v1, p0, Lw0/ye;->c:Landroid/widget/TextView;

    iget-boolean v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->M:Z

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->W(Landroid/widget/TextView;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/ye;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v1, p0, Lw0/ye;->c:Landroid/widget/TextView;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->a0(Landroid/widget/TextView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
