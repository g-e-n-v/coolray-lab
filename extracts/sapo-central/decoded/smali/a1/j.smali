.class public final synthetic La1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/geely/hvacstepperv2/TempStepperService;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvacstepperv2/TempStepperService;Ljava/lang/String;II)V
    .locals 0

    iput p4, p0, La1/j;->a:I

    iput-object p1, p0, La1/j;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    iput-object p2, p0, La1/j;->c:Ljava/lang/String;

    iput p3, p0, La1/j;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, La1/j;->a:I

    iget v1, p0, La1/j;->d:I

    iget-object v2, p0, La1/j;->c:Ljava/lang/String;

    iget-object v3, p0, La1/j;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    invoke-static {v3, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    iget-object v0, v3, Lcom/geely/hvacstepperv2/TempStepperService;->g:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/geely/hvacstepperv2/TempStepperService;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
