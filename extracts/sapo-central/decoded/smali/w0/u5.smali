.class public final synthetic Lw0/u5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/DpadFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/DpadFloaterService;I)V
    .locals 0

    iput p2, p0, Lw0/u5;->a:I

    iput-object p1, p0, Lw0/u5;->b:Lcom/ex/auto/DpadFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lw0/u5;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lw0/u5;->b:Lcom/ex/auto/DpadFloaterService;

    iget-boolean p1, p1, Lcom/ex/auto/DpadFloaterService;->h:Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lw0/o0;

    const/4 v1, 0x1

    const/16 v2, 0x17

    invoke-direct {v0, v2, v1}, Lw0/o0;-><init>(II)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lw0/u5;->b:Lcom/ex/auto/DpadFloaterService;

    iget-boolean v0, p1, Lcom/ex/auto/DpadFloaterService;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
