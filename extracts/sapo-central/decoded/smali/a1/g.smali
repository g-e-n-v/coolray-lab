.class public final synthetic La1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/ex/auto/MediaBrowserHostActivity;)V
    .locals 0

    .line 1
    const/16 p4, 0x15

    iput p4, p0, La1/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/g;->b:Ljava/lang/Object;

    iput-object p2, p0, La1/g;->c:Ljava/lang/Object;

    iput-object p3, p0, La1/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    .line 2
    iput p4, p0, La1/g;->a:I

    iput-object p1, p0, La1/g;->b:Ljava/lang/Object;

    iput-object p2, p0, La1/g;->d:Ljava/lang/Object;

    iput-object p3, p0, La1/g;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, La1/g;->a:I

    iput-object p1, p0, La1/g;->b:Ljava/lang/Object;

    iput-object p2, p0, La1/g;->c:Ljava/lang/Object;

    iput-object p3, p0, La1/g;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/LyricsFloaterService;)V
    .locals 1

    .line 4
    const/16 v0, 0xa

    iput v0, p0, La1/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/g;->c:Ljava/lang/Object;

    iput-object p2, p0, La1/g;->d:Ljava/lang/Object;

    iput-object p3, p0, La1/g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v1, p0

    iget v0, v1, La1/g;->a:I

    const/16 v4, 0x8

    const/16 v5, 0xb

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Landroid/car/hardware/property/CarPropertyManager;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Landroid/car/Car;

    sget-boolean v4, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v0, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->L:Lw0/e1;

    invoke-virtual {v2, v0}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Landroid/car/Car;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void

    :pswitch_0
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Lw0/n4;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Lw0/n4;

    iget-object v4, v0, Lcom/ex/auto/QuickAccessFloaterService;->j:Landroid/widget/TextView;

    const v5, 0x22010101

    invoke-static {v5, v2}, Lw0/t1;->A(ILw0/n4;)Lw0/m4;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/ex/auto/QuickAccessFloaterService;->S(Landroid/widget/TextView;Lw0/m4;)V

    iget-object v4, v0, Lcom/ex/auto/QuickAccessFloaterService;->k:Landroid/widget/TextView;

    const v5, 0x22010102

    invoke-static {v5, v2}, Lw0/t1;->A(ILw0/n4;)Lw0/m4;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/ex/auto/QuickAccessFloaterService;->S(Landroid/widget/TextView;Lw0/m4;)V

    iget-object v4, v0, Lcom/ex/auto/QuickAccessFloaterService;->l:Landroid/widget/TextView;

    const v5, 0x22010103

    invoke-static {v5, v2}, Lw0/t1;->A(ILw0/n4;)Lw0/m4;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/ex/auto/QuickAccessFloaterService;->S(Landroid/widget/TextView;Lw0/m4;)V

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->m:Landroid/widget/TextView;

    const v4, 0x20020501

    invoke-static {v4, v3}, Lw0/t1;->A(ILw0/n4;)Lw0/m4;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/ex/auto/QuickAccessFloaterService;->S(Landroid/widget/TextView;Lw0/m4;)V

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->n:Landroid/widget/TextView;

    const v4, 0x20020502

    invoke-static {v4, v3}, Lw0/t1;->A(ILw0/n4;)Lw0/m4;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/ex/auto/QuickAccessFloaterService;->S(Landroid/widget/TextView;Lw0/m4;)V

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->o:Landroid/widget/TextView;

    const v4, 0x20020503

    invoke-static {v4, v3}, Lw0/t1;->A(ILw0/n4;)Lw0/m4;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->S(Landroid/widget/TextView;Lw0/m4;)V

    return-void

    :pswitch_1
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/ex/auto/PhoneSyncService;

    iget-object v0, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v0, Lh2/a;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    sget-boolean v4, Lcom/ex/auto/PhoneSyncService;->z:Z

    :try_start_2
    iget-boolean v4, v2, Lcom/ex/auto/PhoneSyncService;->a:Z

    if-eqz v4, :cond_2

    invoke-interface {v0}, Lh2/a;->a()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, v2, Lcom/ex/auto/PhoneSyncService;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    :try_start_3
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-void

    :goto_1
    iget-object v2, v2, Lcom/ex/auto/PhoneSyncService;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    :try_start_4
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    throw v0

    :pswitch_2
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/PhoneSyncService;

    sget-boolean v4, Lcom/ex/auto/PhoneSyncService;->z:Z

    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lw0/eg;->b(Landroid/content/Context;)Z

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lw0/eg;->e(Landroid/content/Context;)Z

    :goto_2
    return-void

    :pswitch_3
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/PhoneSyncService;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    sget-boolean v5, Lcom/ex/auto/PhoneSyncService;->z:Z

    const-string v5, "PhoneSyncService"

    const-string v6, "a\u00e7\u00e3o \'"

    const-string v7, "sem playbook para \'"

    :try_start_5
    sget-object v8, Lw0/qe;->a:Lw0/qe;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v8, "getApplicationContext(...)"

    invoke-static {v0, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, v3, v4}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' \u2014 a\u00e7\u00e3o n\u00e3o executada"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' pedida sem playbook em disco \u2014 conecte a central \u00e0 internet uma vez para sincronizar"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v10}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    const-string v3, "\' falhou: "

    invoke-static {v6, v2, v3}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-void

    :pswitch_4
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    sget v4, Lcom/ex/auto/MediaBrowserHostActivity;->s:I

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    return-void

    :pswitch_5
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/ex/auto/MainActivity;

    iget-object v0, v1, La1/g;->d:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lw0/zb;

    iget-object v0, v1, La1/g;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    const-string v0, "getString(...)"

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v7, :cond_8

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    const v2, 0x7f0f016a

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/ex/auto/MainActivity;->S1(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v3, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lw0/s9;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lw0/s9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw0/zb;Z)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz v7, :cond_9

    const v2, 0x7f0f026b

    invoke-static {v2, v9, v3, v0}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Lw0/i9;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Li2/j;

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, v3, Li2/j;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lw0/i9;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void

    :pswitch_7
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/ex/auto/MainActivity;

    iget-object v0, v1, La1/g;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, v1, La1/g;->d:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lh2/a;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pm uninstall "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7530

    invoke-virtual {v4, v2, v0}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/z;

    const/4 v7, 0x7

    invoke-direct/range {v2 .. v7}, Lw0/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_8
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v2, Lw0/h5;

    iget-object v3, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    const-string v4, "getString(...)"

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_e

    if-eq v2, v9, :cond_d

    if-ne v2, v8, :cond_c

    const v2, 0x7f0f013d

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->S1(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    new-instance v0, Landroidx/fragment/app/q;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_d
    const v2, 0x7f0f0136

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->S1(Ljava/lang/String;)V

    invoke-static {v0, v8}, Lcom/ex/auto/MainActivity;->K(Lcom/ex/auto/MainActivity;I)V

    :cond_e
    :goto_6
    return-void

    :pswitch_9
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/ex/auto/MainActivity;

    iget-object v0, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Lw0/cc;

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    :try_start_6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    new-instance v4, Lx1/b;

    invoke-direct {v4, v0}, Lx1/b;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    :goto_7
    nop

    instance-of v4, v0, Lx1/b;

    if-eqz v4, :cond_f

    const/4 v6, 0x0

    goto :goto_8

    :cond_f
    move-object v6, v0

    :goto_8
    check-cast v6, Landroid/graphics/drawable/Drawable;

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, La1/g;

    invoke-direct {v4, v3, v6, v2, v5}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_a
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Lw0/hc;

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_9

    :cond_10
    new-instance v4, Le/h;

    invoke-direct {v4, v0}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v5, v4, Le/h;->b:Ljava/lang/Object;

    check-cast v5, Le/d;

    const v6, 0x7f0f053c

    invoke-virtual {v4, v6}, Le/h;->g(I)V

    iget-object v6, v3, Lw0/hc;->b:Ljava/lang/String;

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    const v6, 0x7f0f053b

    invoke-virtual {v0, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Le/d;->f:Ljava/lang/CharSequence;

    new-instance v2, Lw0/g;

    invoke-direct {v2, v3, v8, v0}, Lw0/g;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const v3, 0x7f0f0540

    invoke-virtual {v4, v3, v2}, Le/h;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lw0/z8;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v3}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v0, 0x7f0f053e

    invoke-virtual {v4, v0, v2}, Le/h;->b(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lw0/cb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v5, Le/d;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v4}, Le/h;->h()Le/i;

    :goto_9
    return-void

    :pswitch_b
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v5, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v11, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v11, Ljava/util/LinkedHashMap;

    iput-boolean v10, v0, Lcom/ex/auto/MainActivity;->n1:Z

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v12

    if-nez v12, :cond_1e

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v12

    if-eqz v12, :cond_11

    goto/16 :goto_13

    :cond_11
    const-string v12, "getString(...)"

    const v13, 0x7f090120

    invoke-virtual {v0, v13}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    if-nez v13, :cond_12

    goto/16 :goto_13

    :cond_12
    const v14, 0x7f090124

    invoke-virtual {v0, v14}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ScrollView;

    if-eqz v14, :cond_13

    invoke-virtual {v14}, Landroid/view/View;->getScrollY()I

    move-result v15

    goto :goto_a

    :cond_13
    move v15, v10

    :goto_a
    invoke-virtual {v13}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_14

    const v2, 0x7f0f0498

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v13, v2}, Lcom/ex/auto/MainActivity;->U0(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_14
    invoke-virtual {v0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->F1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v8, v8

    const/16 v6, 0xc

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-virtual {v7, v8, v6, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    const v10, 0x7f070065

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :try_start_7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_c

    :catch_5
    const/4 v9, 0x0

    :goto_c
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v17, v4

    const/16 v4, 0x2e

    int-to-float v4, v4

    mul-float v4, v4, v17

    float-to-int v4, v4

    invoke-direct {v9, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41980000    # 19.0f

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const v8, 0x7f050087

    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v8, 0x3

    int-to-float v10, v8

    mul-float v10, v10, v17

    float-to-int v8, v10

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v8, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v11, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw0/o5;

    const v10, 0x7f0f04b1

    if-nez v8, :cond_15

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f050089

    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v19, v5

    goto/16 :goto_10

    :cond_15
    const v18, 0x7f050089

    invoke-static {v8}, Lw0/r5;->c(Lw0/o5;)Lw0/q5;

    move-result-object v8

    iget-object v10, v8, Lw0/q5;->a:Lw0/n5;

    move-object/from16 v19, v5

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_17

    move-object/from16 v20, v10

    const/4 v10, 0x1

    if-eq v5, v10, :cond_16

    const v10, 0x7f0f04b1

    goto :goto_d

    :cond_16
    const v10, 0x7f0f04af

    goto :goto_d

    :cond_17
    move-object/from16 v20, v10

    const v10, 0x7f0f04b0

    :goto_d
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v8, Lw0/q5;->b:Lw0/m5;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    new-instance v0, Landroidx/fragment/app/q;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_c
    const v8, 0x7f0f0494

    goto :goto_e

    :pswitch_d
    const v8, 0x7f0f0496

    goto :goto_e

    :pswitch_e
    const v8, 0x7f0f0490

    goto :goto_e

    :pswitch_f
    const v8, 0x7f0f0491

    goto :goto_e

    :pswitch_10
    const v8, 0x7f0f0492

    goto :goto_e

    :pswitch_11
    const v8, 0x7f0f0495

    goto :goto_e

    :pswitch_12
    const v8, 0x7f0f0493

    :goto_e
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u2014 "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_19

    const/4 v10, 0x1

    if-eq v5, v10, :cond_18

    move/from16 v10, v18

    goto :goto_f

    :cond_18
    const v10, 0x7f050043

    goto :goto_f

    :cond_19
    const v10, 0x7f05007e

    :goto_f
    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_10
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v5, v10, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw0/o5;

    if-eqz v5, :cond_1a

    invoke-static {v5}, Lw0/r5;->a(Lw0/o5;)Lw0/l5;

    move-result-object v5

    goto :goto_11

    :cond_1a
    sget-object v5, Lw0/l5;->b:Lw0/l5;

    :goto_11
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0f04a9

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v8, 0x11

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setGravity(I)V

    const v6, 0x7f05007e

    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f07005f

    invoke-virtual {v9, v6}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v9, v6}, Landroid/view/View;->setFocusable(Z)V

    const v6, 0x1080062

    invoke-virtual {v0, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    sget-object v8, Lw0/l5;->d:Lw0/l5;

    if-ne v5, v8, :cond_1b

    const v8, 0x3f0ccccd    # 0.55f

    goto :goto_12

    :cond_1b
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_12
    invoke-virtual {v9, v8}, Landroid/view/View;->setAlpha(F)V

    new-instance v5, Lw0/o3;

    invoke-direct {v5, v0, v2, v3, v11}, Lw0/o3;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    invoke-virtual {v9, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x82

    int-to-float v8, v8

    mul-float v8, v8, v17

    float-to-int v8, v8

    invoke-direct {v5, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0f041a

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v8, 0x11

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    const v8, 0x7f050036

    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v8, 0x7f070067

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Lw0/y6;

    const/4 v8, 0x4

    invoke-direct {v6, v0, v2, v3, v8}, Lw0/y6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x74

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v7, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1c
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x8

    int-to-float v5, v4

    mul-float v5, v5, v17

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v13, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v4, v17

    move-object/from16 v5, v19

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_1d
    if-lez v15, :cond_1e

    if-eqz v14, :cond_1e

    new-instance v0, La1/e;

    const/4 v8, 0x3

    invoke-direct {v0, v14, v15, v8}, La1/e;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v14, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    :goto_13
    return-void

    :pswitch_13
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/ex/auto/MainActivity;

    iget-object v0, v1, La1/g;->c:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    iget-object v0, v1, La1/g;->d:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/view/View;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v0, Lw0/k5;->a:Lw0/k5;

    invoke-static {}, Lw0/k5;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lo2/k;->D0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xd

    if-ge v3, v4, :cond_1f

    :goto_14
    move-object v9, v2

    goto :goto_15

    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "substring(...)"

    invoke-static {v0, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "toUpperCase(...)"

    invoke-static {v0, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :goto_15
    invoke-static {v9}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_16

    :cond_20
    iput-object v9, v7, Lcom/ex/auto/MainActivity;->T0:Ljava/lang/String;

    iget-object v0, v7, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v6, Lw0/z;

    const/4 v11, 0x5

    invoke-direct/range {v6 .. v11}, Lw0/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_16
    return-void

    :pswitch_14
    const/4 v3, -0x1

    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Le/i;

    iget-object v4, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v4, Lw0/p5;

    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/ex/auto/MainActivity;->n1:Z

    :try_start_8
    invoke-virtual {v2}, Le/i;->dismiss()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    if-nez v4, :cond_21

    move v2, v3

    :goto_17
    const/4 v10, 0x1

    goto :goto_18

    :cond_21
    sget-object v2, Lw0/ic;->b:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    goto :goto_17

    :goto_18
    if-eq v2, v10, :cond_23

    const/4 v8, 0x2

    if-ne v2, v8, :cond_22

    const v2, 0x7f0f04ab

    goto :goto_19

    :cond_22
    new-instance v0, Landroidx/fragment/app/q;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    const v2, 0x7f0f04ac

    :goto_19
    const-string v3, "getString(...)"

    invoke-static {v2, v10, v0, v3}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_15
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Lw0/cc;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/MainActivity;

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    const/4 v10, 0x0

    iput-boolean v10, v0, Lw0/cc;->h:Z

    if-eqz v2, :cond_24

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v3, v3, Lcom/ex/auto/MainActivity;->Z:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, v0, Lw0/cc;->b:Lw0/xb;

    iget-object v3, v3, Lw0/xb;->d:Ljava/lang/String;

    if-eqz v3, :cond_24

    iget-object v0, v0, Lw0/cc;->d:Lw0/wc;

    invoke-virtual {v0, v2}, Lw0/wc;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_24
    return-void

    :pswitch_16
    iget-object v0, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/LyricsFloaterService;

    sget-object v4, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    sget-object v4, Lw0/k8;->a:Lo2/h;

    iget-object v4, v3, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v5, v3, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    const-string v6, "tituloAtual"

    invoke-static {v4, v6}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "artistaAtual"

    invoke-static {v5, v6}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lw0/k8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Lw0/k8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-static {v0, v2}, Lw0/m8;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v3, Lcom/ex/auto/LyricsFloaterService;->h:Ljava/util/List;

    const/high16 v0, -0x80000000

    iput v0, v3, Lcom/ex/auto/LyricsFloaterService;->i:I

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->g()V

    :cond_25
    return-void

    :pswitch_17
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->M:Landroid/widget/TextView;

    if-eqz v4, :cond_27

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "\ud83c\udf21 "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "\u00b0C"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    goto :goto_1a

    :cond_26
    const-string v2, "\ud83c\udf21 --\u00b0C"

    :goto_1a
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_27
    iget-object v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->N:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CPU "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    goto :goto_1b

    :cond_28
    const-string v2, "CPU --%"

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_29
    return-void

    :pswitch_18
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Lw0/o7;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Lw0/t7;

    iget-boolean v4, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->d:Z

    if-eqz v4, :cond_2a

    goto :goto_1e

    :cond_2a
    iget-boolean v4, v2, Lw0/o7;->a:Z

    iget-boolean v5, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Z

    if-ne v4, v5, :cond_2c

    iget-boolean v5, v2, Lw0/o7;->b:Z

    iget-boolean v6, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->m:Z

    if-eq v5, v6, :cond_2b

    goto :goto_1c

    :cond_2b
    const/4 v10, 0x0

    goto :goto_1d

    :cond_2c
    :goto_1c
    const/4 v10, 0x1

    :goto_1d
    iput-boolean v4, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Z

    iget-boolean v2, v2, Lw0/o7;->b:Z

    iput-boolean v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->m:Z

    iget-boolean v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->n:Z

    if-eqz v2, :cond_2d

    if-eqz v10, :cond_2e

    :cond_2d
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->n:Z

    invoke-static {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->a(Lcom/ex/auto/HomeFloatingWidgetsService;)V

    :cond_2e
    iget-object v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1e
    return-void

    :pswitch_19
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Lh2/l;

    const-string v4, "DR"

    const-string v6, "adbClickReport: "

    new-instance v7, Li2/j;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    :try_start_9
    sget-object v8, Lw0/k5;->a:Lw0/k5;

    invoke-static {}, Lw0/k5;->i()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2f

    const-string v9, "DESCONHECIDO"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v9, "recovery_name"

    invoke-interface {v0, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1f

    :catchall_3
    move-exception v0

    goto :goto_20

    :cond_2f
    :goto_1f
    invoke-static {v8}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "IBANES"

    invoke-static {v0, v9}, Lo2/t;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v10, 0x1

    iput-boolean v10, v7, Li2/j;->a:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-static {}, Lw0/k5;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lw0/k5;->l()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v0, v9}, Lw0/k5;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_21

    :catchall_4
    move-exception v0

    :try_start_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_21

    :goto_20
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "gateAdbClick: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    :goto_21
    new-instance v0, La1/i;

    invoke-direct {v0, v3, v5, v7}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1a
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/ex/auto/CloseAppsWhitelistActivity;

    iget-object v0, v1, La1/g;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v0, v1, La1/g;->d:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/Set;

    sget v0, Lcom/ex/auto/CloseAppsWhitelistActivity;->c:I

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "getPackageManager(...)"

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "getPackageName(...)"

    invoke-static {v2, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    :try_start_c
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    const-string v7, "getInstalledApplications(...)"

    invoke-static {v5, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lf2/f;

    const/4 v8, 0x3

    invoke-direct {v7, v8, v5}, Lf2/f;-><init>(ILjava/lang/Object;)V

    new-instance v5, Lw0/r;

    const/4 v10, 0x1

    invoke-direct {v5, v10, v2}, Lw0/r;-><init>(ILjava/lang/String;)V

    new-instance v2, Ln2/d;

    invoke-direct {v2, v7, v10, v5}, Ln2/d;-><init>(Ln2/f;ZLh2/l;)V

    new-instance v5, Lw0/h8;

    const/4 v10, 0x0

    invoke-direct {v5, v0, v10}, Lw0/h8;-><init>(Landroid/content/pm/PackageManager;I)V

    new-instance v0, Ln2/c;

    const/4 v8, 0x2

    invoke-direct {v0, v2, v5, v8}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance v2, Lw0/b6;

    invoke-direct {v2, v8}, Lw0/b6;-><init>(I)V

    new-instance v5, Ln2/c;

    const/4 v10, 0x1

    invoke-direct {v5, v0, v2, v10}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    invoke-static {v5}, Ln2/g;->W(Ln2/f;)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :goto_22
    move-object v5, v0

    goto :goto_23

    :catch_6
    sget-object v0, Ly1/p;->a:Ly1/p;

    goto :goto_22

    :goto_23
    iget-object v0, v3, Lcom/ex/auto/CloseAppsWhitelistActivity;->b:Landroid/os/Handler;

    new-instance v2, Lw0/z;

    const/4 v7, 0x3

    invoke-direct/range {v2 .. v7}, Lw0/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1b
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Lh2/l;

    sget-object v4, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->w(Ljava/lang/String;)Z

    move-result v2

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v4, Lw0/d0;

    const/4 v8, 0x2

    invoke-direct {v4, v3, v2, v8}, Lw0/d0;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1c
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/ex/auto/BackgroundKeepAliveActivity;

    iget-object v0, v1, La1/g;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v0, v1, La1/g;->d:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/Set;

    sget v0, Lcom/ex/auto/BackgroundKeepAliveActivity;->v:I

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "getPackageManager(...)"

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "getPackageName(...)"

    invoke-static {v2, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    :try_start_d
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    const-string v7, "getInstalledApplications(...)"

    invoke-static {v5, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lf2/f;

    const/4 v8, 0x3

    invoke-direct {v7, v8, v5}, Lf2/f;-><init>(ILjava/lang/Object;)V

    new-instance v5, Lw0/r;

    const/4 v10, 0x1

    invoke-direct {v5, v10, v2}, Lw0/r;-><init>(ILjava/lang/String;)V

    new-instance v2, Ln2/d;

    invoke-direct {v2, v7, v10, v5}, Ln2/d;-><init>(Ln2/f;ZLh2/l;)V

    new-instance v5, Lw0/h8;

    const/4 v10, 0x0

    invoke-direct {v5, v0, v10}, Lw0/h8;-><init>(Landroid/content/pm/PackageManager;I)V

    new-instance v0, Ln2/c;

    const/4 v8, 0x2

    invoke-direct {v0, v2, v5, v8}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance v2, Lw0/b6;

    invoke-direct {v2, v8}, Lw0/b6;-><init>(I)V

    new-instance v5, Ln2/c;

    const/4 v10, 0x1

    invoke-direct {v5, v0, v2, v10}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    invoke-static {v5}, Ln2/g;->W(Ln2/f;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :goto_24
    move-object v5, v0

    goto :goto_25

    :catch_7
    sget-object v0, Ly1/p;->a:Ly1/p;

    goto :goto_24

    :goto_25
    iget-object v0, v3, Lcom/ex/auto/BackgroundKeepAliveActivity;->u:Landroid/os/Handler;

    new-instance v2, Lw0/z;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lw0/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1d
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/AppPipFloaterService;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Lw0/mg;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Lw0/g0;

    iget-object v4, v0, Lcom/ex/auto/AppPipFloaterService;->i:Lw0/mg;

    if-eqz v4, :cond_31

    iget v4, v4, Lw0/mg;->b:I

    iget v2, v2, Lw0/mg;->b:I

    if-ne v4, v2, :cond_31

    iget-object v0, v0, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_31
    return-void

    :pswitch_1e
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Lw0/mg;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Lw0/lg;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/AppPipFloaterService;

    sget-object v4, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-static {v0, v2}, Lw0/og;->l(Lw0/mg;Lw0/lg;)Z

    move-result v4

    iget v0, v0, Lw0/mg;->b:I

    const-string v5, "am stack list"

    const/16 v6, 0x1770

    invoke-static {v6, v5}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "taskId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":.*?bounds=\\[(\\d+),(\\d+)]\\[(\\d+),(\\d+)]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "pattern"

    invoke-static {v0, v6}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v6, "compile(...)"

    invoke-static {v0, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v6, "matcher(...)"

    invoke-static {v0, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-static {v0, v10, v5}, Lk1/a;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo2/e;

    move-result-object v0

    if-nez v0, :cond_32

    const/4 v6, 0x0

    goto :goto_26

    :cond_32
    new-instance v6, Lw0/lg;

    invoke-virtual {v0}, Lo2/e;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, Lo2/d;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Lo2/e;->a()Ljava/util/List;

    move-result-object v7

    check-cast v7, Lo2/d;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0}, Lo2/e;->a()Ljava/util/List;

    move-result-object v8

    check-cast v8, Lo2/d;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0}, Lo2/e;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lo2/d;

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v6, v5, v7, v8, v0}, Lw0/lg;-><init>(IIII)V

    :goto_26
    if-nez v6, :cond_34

    if-eqz v4, :cond_33

    goto :goto_27

    :cond_33
    iget-object v2, v3, Lcom/ex/auto/AppPipFloaterService;->k:Lw0/lg;

    goto :goto_27

    :cond_34
    move-object v2, v6

    :goto_27
    iput-object v2, v3, Lcom/ex/auto/AppPipFloaterService;->k:Lw0/lg;

    const/4 v10, 0x0

    iput-boolean v10, v3, Lcom/ex/auto/AppPipFloaterService;->n:Z

    iget-object v0, v3, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v2, Lw0/c0;

    invoke-direct {v2, v3, v4, v6, v10}, Lw0/c0;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1f
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/m;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, La1/b;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_e
    iget-object v0, v0, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, La1/b;->s(Landroid/content/Context;)Landroidx/emoji2/text/r;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v4, v0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/emoji2/text/j;

    check-cast v4, Landroidx/emoji2/text/q;

    iget-object v5, v4, Landroidx/emoji2/text/q;->d:Ljava/lang/Object;

    monitor-enter v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    iput-object v3, v4, Landroidx/emoji2/text/q;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    iget-object v0, v0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/j;

    new-instance v4, Landroidx/emoji2/text/l;

    invoke-direct {v4, v2, v3}, Landroidx/emoji2/text/l;-><init>(La1/b;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v4}, Landroidx/emoji2/text/j;->e(La1/b;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_29

    :catchall_5
    move-exception v0

    goto :goto_28

    :catchall_6
    move-exception v0

    :try_start_11
    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw v0

    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :goto_28
    invoke-virtual {v2, v0}, La1/b;->K(Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_29
    return-void

    :pswitch_20
    iget-object v0, v1, La1/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/geely/hvacstepperv2/TempStepperService;

    iget-object v2, v1, La1/g;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, La1/g;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/geely/hvacstepperv2/TempStepperService;->e:Landroid/widget/TextView;

    if-eqz v4, :cond_36

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_36
    iget-object v0, v0, Lcom/geely/hvacstepperv2/TempStepperService;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_37
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
