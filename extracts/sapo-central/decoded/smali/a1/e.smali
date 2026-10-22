.class public final synthetic La1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, La1/e;->a:I

    iput-object p1, p0, La1/e;->c:Ljava/lang/Object;

    iput p2, p0, La1/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, La1/e;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, La1/e;->c:Ljava/lang/Object;

    check-cast v0, Lw0/e1;

    iget v1, p0, La1/e;->b:I

    iget-object v0, v0, Lw0/e1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iget v2, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->A:I

    if-eq v1, v2, :cond_0

    iput v1, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->A:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "troca de marcha GEAR_SELECTION="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u2014 reaplicar"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DriveRegenFloater"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v1, :cond_0

    const-string v1, "gear_change"

    invoke-virtual {v0, v1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->c(Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, La1/e;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ScrollView;

    iget v2, p0, La1/e;->b:I

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void

    :pswitch_1
    iget-object v0, p0, La1/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/BlackoutFloaterService;

    iget v2, p0, La1/e;->b:I

    iput-boolean v1, v0, Lcom/ex/auto/BlackoutFloaterService;->d:Z

    sget-boolean v1, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iput v2, v0, Lcom/ex/auto/BlackoutFloaterService;->e:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ex/auto/BlackoutFloaterService;->c:Z

    sput-boolean v1, Lcom/ex/auto/BlackoutFloaterService;->q:Z

    invoke-virtual {v0}, Lcom/ex/auto/BlackoutFloaterService;->c()V

    iget-object v2, v0, Lcom/ex/auto/BlackoutFloaterService;->h:Landroid/os/Handler;

    new-instance v3, Lg0/a;

    invoke-direct {v3, v0, v2, v1}, Lg0/a;-><init>(Landroid/app/Service;Landroid/os/Handler;I)V

    iput-object v3, v0, Lcom/ex/auto/BlackoutFloaterService;->i:Lg0/a;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, La1/s;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, La1/s;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/ex/auto/BlackoutFloaterService;->j:La1/s;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, La1/e;->c:Ljava/lang/Object;

    check-cast v0, Lu/b;

    iget v1, p0, La1/e;->b:I

    invoke-virtual {v0, v1}, Lu/b;->d(I)V

    return-void

    :pswitch_3
    iget-object v0, p0, La1/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/geely/hvacstepperv2/TempStepperService;

    iget v2, p0, La1/e;->b:I

    sget-object v3, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    invoke-static {v0, v2}, La1/b;->G(Lcom/geely/hvacstepperv2/TempStepperService;I)La1/a;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, La1/i;

    invoke-direct {v3, v0, v1, v2}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/geely/hvacstepperv2/TempStepperService;->e(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
