.class public final synthetic La1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:La1/u;

.field public final synthetic b:I

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(La1/u;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/t;->a:La1/u;

    iput p2, p0, La1/t;->b:I

    iput p3, p0, La1/t;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, La1/t;->a:La1/u;

    iget-object v0, v0, La1/u;->c:Lcom/geely/hvacstepperv2/TempStepperService;

    iget v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    iget v2, p0, La1/t;->b:I

    if-ne v2, v1, :cond_0

    iget v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    iget v2, p0, La1/t;->c:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_0

    iget v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->b:F

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_0

    iput v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    const-string v1, "cb"

    invoke-virtual {v0, v1}, Lcom/geely/hvacstepperv2/TempStepperService;->q(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
