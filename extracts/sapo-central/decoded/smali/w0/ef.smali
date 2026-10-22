.class public final synthetic Lw0/ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;IIII)V
    .locals 0

    iput p5, p0, Lw0/ef;->a:I

    iput-object p1, p0, Lw0/ef;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iput p2, p0, Lw0/ef;->c:I

    iput p3, p0, Lw0/ef;->d:I

    iput p4, p0, Lw0/ef;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lw0/ef;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/ef;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v1, p0, Lw0/ef;->c:I

    iget v2, p0, Lw0/ef;->d:I

    iget v3, p0, Lw0/ef;->e:I

    iget-boolean v4, v0, Lcom/ex/auto/QuickAccessFloaterService;->M:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Gesto 2 dedos: ventoinha "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (area=0x"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-static {v1}, Lk1/a;->f(I)V

    invoke-static {v3, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "toString(...)"

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "QuickAccessFloater"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f0f0199

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lw0/ef;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v4, p0, Lw0/ef;->c:I

    iget v5, p0, Lw0/ef;->d:I

    iget v0, p0, Lw0/ef;->e:I

    iget-object v1, v3, Lcom/ex/auto/QuickAccessFloaterService;->p:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/ex/auto/QuickAccessFloaterService;->N(IIZZZZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, v3, Lcom/ex/auto/QuickAccessFloaterService;->p:Landroid/widget/TextView;

    const-string v2, ""

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, v3, Lcom/ex/auto/QuickAccessFloaterService;->q:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, v0

    invoke-virtual/range {v3 .. v9}, Lcom/ex/auto/QuickAccessFloaterService;->N(IIZZZZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, v3, Lcom/ex/auto/QuickAccessFloaterService;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
