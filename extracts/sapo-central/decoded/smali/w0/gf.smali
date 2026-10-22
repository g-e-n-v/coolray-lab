.class public final synthetic Lw0/gf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;I)V
    .locals 0

    iput p2, p0, Lw0/gf;->a:I

    iput-object p1, p0, Lw0/gf;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lw0/gf;->a:I

    const-string v1, "..."

    iget-object v2, p0, Lw0/gf;->b:Landroid/widget/TextView;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
