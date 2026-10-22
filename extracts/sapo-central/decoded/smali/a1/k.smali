.class public final synthetic La1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/app/Service;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Service;III)V
    .locals 0

    iput p4, p0, La1/k;->a:I

    iput-object p1, p0, La1/k;->d:Landroid/app/Service;

    iput p2, p0, La1/k;->b:I

    iput p3, p0, La1/k;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, La1/k;->a:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, La1/k;->d:Landroid/app/Service;

    check-cast v1, Lcom/ex/auto/CentralWatchdogService;

    iget v3, v0, La1/k;->b:I

    iget v4, v0, La1/k;->c:I

    sget-boolean v5, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/ex/auto/CentralWatchdogService;->E0:Z

    iput v3, v1, Lcom/ex/auto/CentralWatchdogService;->F0:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "applyStatusBrightnessFromSlider: pct="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " nextState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " registrarVolume="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gt v4, v5, :cond_1

    move v2, v5

    :cond_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CentralWatchdog"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v4, v5, :cond_3

    iget-object v2, v1, Lcom/ex/auto/CentralWatchdogService;->H0:Lw0/f3;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v18, "wifi_scan_always_enabled"

    const-string v19, "airplane_mode_on"

    const-string v6, "global_http_proxy_host"

    const-string v7, "global_http_proxy_port"

    const-string v8, "global_http_proxy_exclusion_list"

    const-string v9, "http_proxy"

    const-string v10, "captive_portal_mode"

    const-string v11, "policy_control"

    const-string v12, "development_settings_enabled"

    const-string v13, "enable_freeform_support"

    const-string v14, "force_resizable_activities"

    const-string v15, "heads_up_notifications_enabled"

    const-string v16, "wifi_on"

    const-string v17, "bluetooth_on"

    filled-new-array/range {v6 .. v19}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v4, Lw0/f3;

    invoke-direct {v4, v1, v2, v3}, Lw0/f3;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/util/List;Landroid/os/Handler;)V

    iput-object v4, v1, Lcom/ex/auto/CentralWatchdogService;->H0:Lw0/f3;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v2, Lw0/c3;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Lw0/c3;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    iput-object v2, v1, Lcom/ex/auto/CentralWatchdogService;->I0:Lw0/c3;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/ex/auto/CentralWatchdogService;->U0()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, v0, La1/k;->d:Landroid/app/Service;

    check-cast v1, Lcom/geely/hvacstepperv2/TempStepperService;

    iget v3, v0, La1/k;->b:I

    iget v4, v0, La1/k;->c:I

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/geely/hvacstepperv2/TempStepperService;->X:La1/k;

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, v1, Lcom/geely/hvacstepperv2/TempStepperService;->U:Z

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, v1, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v5, :cond_5

    sget-object v6, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const v6, 0x15400500

    invoke-static {v5, v6, v3, v4}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "HvacStepperV2"

    const-string v4, "Ventoinha final: escrita falhou"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-boolean v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->U:Z

    const/4 v2, -0x1

    iput v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->V:I

    const-string v2, "fan_end"

    invoke-virtual {v1, v2}, Lcom/geely/hvacstepperv2/TempStepperService;->q(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
