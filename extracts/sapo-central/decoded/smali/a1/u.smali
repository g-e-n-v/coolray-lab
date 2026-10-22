.class public final La1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Lcom/geely/hvacstepperv2/TempStepperService;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvacstepperv2/TempStepperService;JI)V
    .locals 0

    iput p4, p0, La1/u;->a:I

    iput-object p1, p0, La1/u;->c:Lcom/geely/hvacstepperv2/TempStepperService;

    iput-wide p2, p0, La1/u;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(II)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 13

    iget v0, p0, La1/u;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x15400500

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    :cond_0
    move-object v2, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object p1, p0, La1/u;->c:Lcom/geely/hvacstepperv2/TempStepperService;

    iget-object v0, p1, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    iget-object v8, p1, Lcom/geely/hvacstepperv2/TempStepperService;->q:La1/d;

    new-instance v1, La1/v;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, La1/v;-><init>(La1/u;JII)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, La1/c;

    const/4 v12, 0x0

    iget-wide v9, v2, La1/u;->b:J

    move-object v11, v1

    invoke-direct/range {v7 .. v12}, La1/c;-><init>(Ljava/lang/Object;JLjava/lang/Runnable;I)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :pswitch_0
    move-object v2, p0

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x15600503

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Float;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result p1

    iget-object v1, v2, La1/u;->c:Lcom/geely/hvacstepperv2/TempStepperService;

    iget-object v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    iget-object v5, v1, Lcom/geely/hvacstepperv2/TempStepperService;->q:La1/d;

    new-instance v8, La1/t;

    invoke-direct {v8, p0, p1, v0}, La1/t;-><init>(La1/u;IF)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, La1/c;

    const/4 v9, 0x0

    iget-wide v6, v2, La1/u;->b:J

    invoke-direct/range {v4 .. v9}, La1/c;-><init>(Ljava/lang/Object;JLjava/lang/Runnable;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onErrorEvent(II)V
    .locals 1

    iget v0, p0, La1/u;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Erro CarProperty propId=0x%x area=0x%x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "HvacStepperV2"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
