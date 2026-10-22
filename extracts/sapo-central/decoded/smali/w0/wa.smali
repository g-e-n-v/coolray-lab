.class public final synthetic Lw0/wa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Landroid/content/ContextWrapper;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;ZI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lw0/wa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/wa;->c:Landroid/content/ContextWrapper;

    iput-boolean p2, p0, Lw0/wa;->b:Z

    iput p3, p0, Lw0/wa;->d:I

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/content/ContextWrapper;II)V
    .locals 0

    .line 2
    iput p4, p0, Lw0/wa;->a:I

    iput-boolean p1, p0, Lw0/wa;->b:Z

    iput-object p2, p0, Lw0/wa;->c:Landroid/content/ContextWrapper;

    iput p3, p0, Lw0/wa;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lw0/wa;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lw0/wa;->b:Z

    iget-object v1, p0, Lw0/wa;->c:Landroid/content/ContextWrapper;

    check-cast v1, Lcom/ex/auto/CentralWatchdogService;

    iget v3, p0, Lw0/wa;->d:I

    sget-object v4, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v4, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "Descanso de Tela: "

    const-string v5, "CentralWatchdog"

    if-eqz v0, :cond_1

    iput-boolean v2, v1, Lcom/ex/auto/CentralWatchdogService;->B0:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "s sem toque f\u00edsico na tela principal \u2014 acionando overlay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->x0:Lcom/ex/auto/QuickAccessFloaterService;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->V(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "s sem toque, mas fora da tela principal \u2014 n\u00e3o aciona"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lw0/wa;->b:Z

    iget-object v3, p0, Lw0/wa;->c:Landroid/content/ContextWrapper;

    check-cast v3, Lcom/ex/auto/MainActivity;

    iget v4, p0, Lw0/wa;->d:I

    const-string v5, "avas_mode_ativo"

    const-string v6, "setAVASMode"

    const-string v7, "avas_sound_type_saved"

    if-eqz v0, :cond_7

    iget-object v2, v3, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v8, Lw0/u;->c:[I

    array-length v9, v8

    move v10, v1

    :goto_1
    if-ge v10, v9, :cond_5

    aget v11, v8, v10

    sget-object v12, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v12, Lw0/u;->b:I

    invoke-static {v2, v12, v11}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lcom/ex/auto/MainActivity;->G([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lw0/t1;->R(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Lcom/ex/auto/MainActivity;->w0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_7
    sget v8, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v8

    const/4 v9, -0x1

    invoke-interface {v8, v5, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v10, 0x4

    if-gt v2, v5, :cond_8

    if-ge v5, v10, :cond_8

    move v2, v5

    goto :goto_3

    :cond_8
    if-gt v2, v8, :cond_9

    if-ge v8, v10, :cond_9

    move v2, v8

    :cond_9
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Lcom/ex/auto/MainActivity;->w0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gtz v2, :cond_a

    goto :goto_5

    :cond_a
    iget-object v5, v3, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v5, :cond_b

    goto :goto_5

    :cond_b
    sget-object v6, Lw0/u;->c:[I

    array-length v7, v6

    move v8, v1

    :goto_4
    if-ge v8, v7, :cond_d

    aget v9, v6, v8

    sget v10, Lw0/u;->b:I

    invoke-static {v5, v10, v9, v2}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_5

    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "restoreSavedAvasSoundType area="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " falhou"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MainActivity"

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    invoke-virtual {v3, v4, v1, v0}, Lcom/ex/auto/MainActivity;->N(IIZ)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/wa;->c:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-boolean v2, p0, Lw0/wa;->b:Z

    iget v3, p0, Lw0/wa;->d:I

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    if-eqz v2, :cond_e

    const v2, 0x7f0f03ed

    goto :goto_6

    :cond_e
    const v2, 0x7f0f03ec

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->Q0:Landroid/widget/Toast;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    :cond_f
    invoke-virtual {v0, v2, v1}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/MainActivity;->Q0:Landroid/widget/Toast;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
