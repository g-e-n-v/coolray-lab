.class public final synthetic La1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/geely/hvacstepperv2/TempStepperService;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V
    .locals 0

    iput p2, p0, La1/m;->a:I

    iput-object p1, p0, La1/m;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, La1/m;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, La1/m;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    packed-switch p1, :pswitch_data_0

    iget-boolean p1, v2, Lcom/geely/hvacstepperv2/TempStepperService;->S:Z

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/geely/hvacstepperv2/TempStepperService;->b()V

    goto :goto_1

    :cond_0
    iget-object p1, v2, Lcom/geely/hvacstepperv2/TempStepperService;->Q:Landroid/view/View;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/geely/hvacstepperv2/TempStepperService;->j()V

    move p1, v0

    move v3, p1

    :goto_0
    const/4 v4, 0x3

    if-ge p1, v4, :cond_3

    invoke-static {v2, p1}, La1/b;->G(Lcom/geely/hvacstepperv2/TempStepperService;I)La1/a;

    move-result-object v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    const-string p1, "Guarde modos de ventoinha na app principal"

    invoke-static {v2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    iput-boolean v1, v2, Lcom/geely/hvacstepperv2/TempStepperService;->S:Z

    iget-object p1, v2, Lcom/geely/hvacstepperv2/TempStepperService;->Q:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v2, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    iget-object v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->T:La1/f;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, v2, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    if-eqz p1, :cond_6

    iget-object v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    iget-object v1, v2, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_1
    return-void

    :pswitch_0
    sget-object p1, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    new-instance p1, La1/f;

    invoke-direct {p1, v2, v1}, La1/f;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v2, p1}, Lcom/geely/hvacstepperv2/TempStepperService;->e(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    sget-object p1, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    new-instance p1, La1/f;

    invoke-direct {p1, v2, v0}, La1/f;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v2, p1}, Lcom/geely/hvacstepperv2/TempStepperService;->e(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    sget-object p1, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    new-instance p1, La1/f;

    const/4 v0, 0x2

    invoke-direct {p1, v2, v0}, La1/f;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v2, p1}, Lcom/geely/hvacstepperv2/TempStepperService;->e(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
