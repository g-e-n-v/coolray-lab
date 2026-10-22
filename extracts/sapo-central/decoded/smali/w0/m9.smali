.class public final synthetic Lw0/m9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lw0/m9;->a:I

    iput-object p1, p0, Lw0/m9;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/m9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    iget p1, p0, Lw0/m9;->a:I

    iget-object p2, p0, Lw0/m9;->b:Lcom/ex/auto/MainActivity;

    const-string v1, "getString(...)"

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lw0/m9;->c:Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    const-string p1, "temp"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "hvac_digital_ext_temp"

    const-string v4, "hvac_digital_temp"

    const-string v5, "hvac_digital_batt"

    if-eqz p1, :cond_0

    move-object v11, v4

    goto :goto_0

    :cond_0
    const-string p1, "batt"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v11, v5

    goto :goto_0

    :cond_1
    move-object v11, p2

    :goto_0
    const-string p1, "exttemp"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v7, p0, Lw0/m9;->b:Lcom/ex/auto/MainActivity;

    if-eqz p1, :cond_2

    invoke-virtual {v7}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    move v12, v3

    goto :goto_1

    :cond_2
    move v12, v2

    :goto_1
    invoke-virtual {v7}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v11, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz v12, :cond_3

    invoke-interface {p1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v7}, Lcom/ex/auto/MainActivity;->v1()V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p1, v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const p1, 0x7f0f00a7

    invoke-virtual {v7, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, p1, v2}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-virtual {v7}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v7}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sget-object p1, Lw0/d8;->a:Lw0/d8;

    invoke-virtual {p1}, Lw0/d8;->e()Lw0/fg;

    move-result-object p1

    sget-object p2, Lw0/fg;->c:Lw0/fg;

    if-ne p1, p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    const v0, 0x1010078

    invoke-direct {p1, v7, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    const/16 p2, 0x14

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    iput-object p1, v7, Lcom/ex/auto/MainActivity;->a1:Landroid/widget/ProgressBar;

    new-instance p2, Le/h;

    invoke-direct {p2, v7}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v0, p2, Le/h;->b:Ljava/lang/Object;

    check-cast v0, Le/d;

    const v1, 0x7f0f01b3

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le/d;->d:Ljava/lang/CharSequence;

    const v1, 0x7f0f01b2

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le/d;->f:Ljava/lang/CharSequence;

    iput-object p1, v0, Le/d;->s:Landroid/view/View;

    iput-boolean v2, v0, Le/d;->m:Z

    invoke-virtual {p2}, Le/h;->h()Le/i;

    move-result-object p1

    iput-object p1, v7, Lcom/ex/auto/MainActivity;->b1:Le/i;

    :goto_2
    iget-object p1, v7, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Lw0/ob;

    invoke-direct/range {v6 .. v12}, Lw0/ob;-><init>(Lcom/ex/auto/MainActivity;ZZZLjava/lang/String;Z)V

    invoke-virtual {p1, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    const-string p1, "\n\nFalha ao aplicar o fundo preto na r\u00e9\n\n"

    const-string v4, "Falha ao aplicar o fundo preto na r\u00e9"

    sget v5, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v5, Lw0/k5;->a:Lw0/k5;

    invoke-virtual {p2}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "<get-prefs>(...)"

    invoke-static {v5, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "DR"

    const-string v7, "error_report_queue"

    const-string v8, "[CentralEXAuto] Erro \u2014 "

    const-string v9, "details"

    invoke-static {v0, v9}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lw0/k5;->h(Landroid/content/Context;)V

    :try_start_0
    new-instance v9, Lorg/json/JSONArray;

    const-string v10, "[]"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2, v5}, Lw0/k5;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "s"

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "b"

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v9, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_5

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_5
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "erro enfileirado ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " na fila)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "queueErrorReport: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v6}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p2}, Lcom/ex/auto/MainActivity;->q0()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f0f02fd

    invoke-static {p1, v2, p2, v1}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lw0/nb;

    invoke-direct {v0, p2, v3}, Lw0/nb;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_6
    const p1, 0x7f0f017e

    invoke-static {p1, v3, p2, v1}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    :goto_6
    return-void

    :pswitch_1
    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {p2, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;)V

    return-void

    :pswitch_2
    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    const p1, 0x7f0f02d8

    invoke-static {p1, v2, p2, v1}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    const p1, 0x7f090116

    filled-new-array {p1}, [I

    move-result-object p1

    const-wide/32 v1, 0x88b8

    invoke-virtual {p2, v1, v2, p1}, Lcom/ex/auto/MainActivity;->u2(J[I)Lw0/h0;

    move-result-object p1

    new-instance v1, Lw0/y2;

    const/16 v2, 0x8

    invoke-direct {v1, p1, v2, p2}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p2, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, La1/g;

    const/16 v3, 0x12

    invoke-direct {v2, p2, v0, v1, v3}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
