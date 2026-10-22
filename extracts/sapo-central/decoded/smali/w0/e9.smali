.class public final synthetic Lw0/e9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;I)V
    .locals 0

    iput p2, p0, Lw0/e9;->a:I

    iput-object p1, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lw0/e9;->a:I

    const v1, 0x7f0f0175

    const/16 v2, 0xb

    const/16 v3, 0xf

    const-string v4, "txt"

    const/4 v5, 0x3

    const-string v6, ""

    const-string v7, "getString(...)"

    const/4 v8, 0x0

    const-string v9, "result"

    const-string v10, "it"

    const/4 v11, 0x1

    const/4 v12, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "widget_bg_opacity_pct"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v12, v2, :cond_0

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v12, v12, 0x1

    check-cast v3, Lw0/bd;

    invoke-virtual {v3, p1}, Lw0/bd;->setGlobalBackgroundPercent(I)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/ex/auto/HomeWidgetsPollService;->E:I

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/ex/auto/HomeWidgetsPollService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ex.auto.widget.REFRESH_OPACITY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const-string v1, "stage"

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "download:"

    invoke-static {p1, v1}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v1}, Lo2/k;->r0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :cond_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f0f05a8

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    const-string v1, "verify"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const p1, 0x7f0f05ac

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    const-string v1, "copy"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const p1, 0x7f0f05aa

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_4
    const-string v1, "mount"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f0f05a7

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_5
    :goto_1
    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v1, Lw0/c9;

    const/16 v2, 0x11

    invoke-direct {v1, v0, v8, v2}, Lw0/c9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/c9;

    invoke-direct {v2, v0, p1, v3}, Lw0/c9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const-string v1, "progressText"

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/c9;

    const/16 v3, 0x10

    invoke-direct {v2, v0, p1, v3}, Lw0/c9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const-string v1, "progress"

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/ma;

    invoke-direct {v2, v0, p1}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :pswitch_4
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const-string v1, "saida"

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v12, v0, Lcom/ex/auto/MainActivity;->l0:Z

    invoke-virtual {v0, v6, v12}, Lcom/ex/auto/MainActivity;->D0(Ljava/lang/String;Z)V

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restart dos servi\u00e7os terminou \u2014 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x50

    invoke-static {v2, p1}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "\n"

    const-string v3, " "

    invoke-static {p1, v2, v3}, Lo2/t;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Reiniciar"

    invoke-static {v1, p1, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    sget p1, Lw0/u;->a:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw0/u;->j(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "modo sem CarPlay \u2014 n\u00e3o mexo no CarplayMonitor"

    invoke-static {v1, p1, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_7
    iget-object p1, v0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lw0/ma;

    const/16 v2, 0x1a

    invoke-direct {v1, v0, v2}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_4
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->e1()V

    new-array p1, v5, [J

    fill-array-data p1, :array_0

    :goto_5
    if-ge v12, v5, :cond_8

    aget-wide v1, p1, v12

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, Lw0/ma;

    const/16 v6, 0x1b

    invoke-direct {v4, v0, v6}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_5
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v9}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restart_enviado"

    invoke-static {p1, v1, v12}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f0f02dd

    :goto_6
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    const p1, 0x7f0f0182

    goto :goto_6

    :goto_7
    return-object p1

    :pswitch_6
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/c9;

    invoke-direct {v3, v0, p1, v2}, Lw0/c9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :pswitch_7
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v9}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ex/auto/MainActivity;->G1(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    iput-boolean v11, v0, Lcom/ex/auto/MainActivity;->x0:Z

    iget-object p1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v1, Lw0/ma;

    const/16 v2, 0x12

    invoke-direct {v1, v0, v2}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_8
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v9}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "FWMARK_MATCH=MISMATCH"

    invoke-static {p1, v1, v11}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    const p1, 0x7f0f02e3

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    invoke-static {p1}, Lcom/ex/auto/MainActivity;->G1(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const p1, 0x7f0f02e1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    const p1, 0x7f0f02e2

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_8
    return-object p1

    :pswitch_9
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v9}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_b

    :cond_d
    const-string v1, "REMOVIDO_OK"

    invoke-static {p1, v1, v12}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_e

    const v1, 0x7f0f00b1

    :goto_9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_e
    const v1, 0x7f0f00b0

    goto :goto_9

    :goto_a
    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    xor-int/2addr p1, v11

    invoke-virtual {v0, v1, p1}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->h1(Lcom/ex/auto/MainActivity;)V

    :goto_b
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_a
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v10}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->h1(Lcom/ex/auto/MainActivity;)V

    goto/16 :goto_3

    :pswitch_b
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v10}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->n1()V

    goto/16 :goto_3

    :pswitch_c
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v10}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v12, v0, Lcom/ex/auto/MainActivity;->l0:Z

    invoke-virtual {v0, v6, v12}, Lcom/ex/auto/MainActivity;->D0(Ljava/lang/String;Z)V

    iget-object p1, v0, Lcom/ex/auto/MainActivity;->K:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object p1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v1, Lw0/ma;

    invoke-direct {v1, v0, v2}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->e1()V

    goto/16 :goto_3

    :cond_f
    const-string p1, "wifiManager"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    throw v8

    :pswitch_d
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v9}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x190

    invoke-static {v2, p1}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Desinstalar ConnAdaptor"

    invoke-virtual {v0, v3, v2}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    iget-boolean v2, v0, Lcom/ex/auto/MainActivity;->n0:Z

    if-eqz v2, :cond_10

    const-string p1, "ConnAdaptor revertido pro de f\u00e1brica"

    goto :goto_c

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FALHOU: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x78

    invoke-static {v3, p1}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_c
    const-string v2, "Desativar"

    invoke-static {v2, p1, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean p1, v0, Lcom/ex/auto/MainActivity;->n0:Z

    if-eqz p1, :cond_11

    const p1, 0x7f0f0099

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    :cond_11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d
    return-object p1

    :pswitch_e
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v10}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->n1()V

    goto/16 :goto_3

    :pswitch_f
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v10}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, v0, Lcom/ex/auto/MainActivity;->o0:Z

    if-eqz p1, :cond_12

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "keyserver_bind_enabled"

    invoke-interface {p1, v1, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, v0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lw0/x8;

    const/16 v2, 0x1c

    invoke-direct {v1, v0, v2}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_12
    iput-object v8, v0, Lcom/ex/auto/MainActivity;->q0:Ljava/lang/Boolean;

    iput-boolean v12, v0, Lcom/ex/auto/MainActivity;->p0:Z

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz p1, :cond_13

    iget-object v1, p1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/v2;

    const/16 v4, 0xa

    invoke-direct {v2, p1, v4}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    iget-object p1, v0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lw0/ma;

    invoke-direct {v1, v0, v3}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    goto/16 :goto_3

    :pswitch_10
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v10}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, v0, Lcom/ex/auto/MainActivity;->o0:Z

    if-eqz p1, :cond_14

    const p1, 0x7f0f0201

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e

    :cond_14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_e
    return-object p1

    :pswitch_11
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v9}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "routes_removed"

    invoke-static {p1, v1, v12}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_15

    iput-boolean v12, v0, Lcom/ex/auto/MainActivity;->x0:Z

    iget-object p1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v1, Lw0/ma;

    const/4 v2, 0x7

    invoke-direct {v1, v0, v2}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_12
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const-string v1, "<unused var>"

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v12, v0, Lcom/ex/auto/MainActivity;->l0:Z

    invoke-virtual {v0, v6, v12}, Lcom/ex/auto/MainActivity;->D0(Ljava/lang/String;Z)V

    sget-object p1, Lw0/ae;->a:Lw0/ae;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ativa\u00e7\u00e3o terminou \u2014 ok="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/ex/auto/MainActivity;->m0:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Ativar"

    invoke-static {v1, p1, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean p1, v0, Lcom/ex/auto/MainActivity;->m0:Z

    if-eqz p1, :cond_19

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "connadaptor_ja_ativado"

    invoke-interface {p1, v2, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_17

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_17

    new-instance p1, Le/h;

    invoke-direct {p1, v0}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Le/h;->b:Ljava/lang/Object;

    check-cast v2, Le/d;

    const v3, 0x7f0f00af

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Le/d;->d:Ljava/lang/CharSequence;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0f00ad

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->U()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lw0/u;->a:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "<get-prefs>(...)"

    invoke-static {v5, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lw0/u;->b(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-nez v5, :cond_16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f0f00ac

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_16
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Le/d;->f:Ljava/lang/CharSequence;

    const v2, 0x104000a

    invoke-virtual {p1, v2, v8}, Le/h;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Le/h;->h()Le/i;

    :cond_17
    sget p1, Lw0/u;->a:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw0/u;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, v0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lw0/x8;

    const/16 v2, 0x18

    invoke-direct {v1, v0, v2}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_f

    :cond_18
    const-string p1, "modo Android Auto \u2014 patch do CarplayMonitor n\u00e3o se aplica"

    invoke-static {v1, p1, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_f
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw0/u;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v1, Lw0/x8;

    const/16 v2, 0x15

    invoke-direct {v1, v0, v2}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const-wide/16 v2, 0x2ee0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->e1()V

    goto/16 :goto_3

    :pswitch_13
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/Runnable;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v10}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :pswitch_14
    iget-object v0, p0, Lw0/e9;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/a9;

    invoke-direct {v2, v0, p1, v5}, Lw0/a9;-><init>(Lcom/ex/auto/MainActivity;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

    :array_0
    .array-data 8
        0x3a98
        0x9c40
        0xfde8
    .end array-data
.end method
