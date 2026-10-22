.class public final synthetic La1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;II)V
    .locals 0

    iput p3, p0, La1/n;->a:I

    iput-object p1, p0, La1/n;->c:Landroid/content/ContextWrapper;

    iput p2, p0, La1/n;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, La1/n;->a:I

    iget v0, p0, La1/n;->b:I

    iget-object v1, p0, La1/n;->c:Landroid/content/ContextWrapper;

    packed-switch p1, :pswitch_data_0

    check-cast v1, Lcom/ex/auto/MainActivity;

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1, v0}, Lcom/ex/auto/MainActivity;->Y1(I)V

    iget-object p1, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v0, Lw0/x8;

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    check-cast v1, Lcom/ex/auto/DpadFloaterService;

    iget-boolean p1, v1, Lcom/ex/auto/DpadFloaterService;->h:Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lw0/o0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lw0/o0;-><init>(II)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :pswitch_1
    check-cast v1, Lcom/ex/auto/AcProgramListActivity;

    sget p1, Lcom/ex/auto/AcProgramListActivity;->u:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/AcProgramEditActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "slot"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_2
    check-cast v1, Lcom/ex/auto/AcProgramEditActivity;

    iget-object p1, v1, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/ex/auto/AcProgramEditActivity;->t()V

    return-void

    :pswitch_3
    check-cast v1, Lcom/geely/hvacstepperv2/TempStepperService;

    sget-object p1, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    invoke-static {v1, v0}, La1/b;->G(Lcom/geely/hvacstepperv2/TempStepperService;I)La1/a;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, La1/i;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->e(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
