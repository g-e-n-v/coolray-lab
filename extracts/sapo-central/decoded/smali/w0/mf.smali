.class public final synthetic Lw0/mf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lw0/mf;->a:I

    iput-object p1, p0, Lw0/mf;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lw0/mf;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lw0/mf;->a:I

    iget-object v1, p0, Lw0/mf;->c:Ljava/lang/String;

    iget-object v2, p0, Lw0/mf;->b:Landroid/widget/TextView;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
