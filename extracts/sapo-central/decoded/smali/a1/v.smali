.class public final synthetic La1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:La1/u;

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(La1/u;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/v;->a:La1/u;

    iput-wide p2, p0, La1/v;->b:J

    iput p4, p0, La1/v;->c:I

    iput p5, p0, La1/v;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, La1/v;->a:La1/u;

    iget-object v0, v0, La1/u;->c:Lcom/geely/hvacstepperv2/TempStepperService;

    iget-boolean v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->U:Z

    if-eqz v1, :cond_5

    iget-wide v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->W:J

    iget-wide v4, p0, La1/v;->b:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    goto :goto_2

    :cond_0
    iget v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->w:I

    if-ltz v2, :cond_1

    iget v3, p0, La1/v;->c:I

    if-eq v3, v2, :cond_1

    goto :goto_2

    :cond_1
    iget v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->V:I

    iget v3, p0, La1/v;->d:I

    if-eq v3, v2, :cond_5

    iget-object v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->X:La1/k;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v2, :cond_4

    iget-object v4, v0, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->X:La1/k;

    :cond_4
    iput-boolean v3, v0, Lcom/geely/hvacstepperv2/TempStepperService;->U:Z

    const/4 v2, -0x1

    iput v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->V:I

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/geely/hvacstepperv2/TempStepperService;->W:J

    if-eqz v1, :cond_5

    const-string v1, "Programa ventoinha: "

    const-string v2, "Altera\u00e7\u00e3o manual \u2014 temporizador desligado"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "HvacStepperV2"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v2}, Lcom/geely/hvacstepperv2/TempStepperService;->m(ILjava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
