.class public final Lw0/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lw0/e1;->a:I

    iput-object p2, p0, Lw0/e1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(II)V
    .locals 0

    return-void
.end method

.method private final b(II)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3

    iget v0, p0, Lw0/e1;->a:I

    iget-object v1, p0, Lw0/e1;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v2, 0x11400400

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    new-instance v0, La1/e;

    const/4 v2, 0x4

    invoke-direct {v0, p0, p1, v2}, La1/e;-><init>(Ljava/lang/Object;II)V

    sget-boolean p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    invoke-virtual {v1, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->j(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "value"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result p1

    if-nez p1, :cond_4

    check-cast v1, Lw0/f1;

    iget-object p1, v1, Lw0/f1;->c:Landroid/os/Handler;

    new-instance v0, Lw0/b1;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lw0/b1;-><init>(Lw0/f1;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onErrorEvent(II)V
    .locals 0

    iget p1, p0, Lw0/e1;->a:I

    return-void
.end method
