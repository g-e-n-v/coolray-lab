.class public final synthetic Lw0/ta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ContextWrapper;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;ZZ)V
    .locals 0

    .line 1
    iput p1, p0, Lw0/ta;->a:I

    iput-boolean p3, p0, Lw0/ta;->c:Z

    iput-boolean p4, p0, Lw0/ta;->d:Z

    iput-object p2, p0, Lw0/ta;->b:Landroid/content/ContextWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/ContextWrapper;ZZI)V
    .locals 0

    .line 2
    iput p4, p0, Lw0/ta;->a:I

    iput-object p1, p0, Lw0/ta;->b:Landroid/content/ContextWrapper;

    iput-boolean p2, p0, Lw0/ta;->c:Z

    iput-boolean p3, p0, Lw0/ta;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lw0/ta;->a:I

    const-string v1, "getString(...)"

    const v2, 0x7f0f0038

    const v3, 0x7f0f0032

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/ta;->b:Landroid/content/ContextWrapper;

    move-object v1, v0

    check-cast v1, Lcom/ex/auto/QuickAccessFloaterService;

    iget-boolean v0, p0, Lw0/ta;->c:Z

    iget-boolean v2, p0, Lw0/ta;->d:Z

    iget-boolean v3, v1, Lcom/ex/auto/QuickAccessFloaterService;->Q:Z

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v0, :cond_3

    sput-boolean v5, Lcom/ex/auto/QuickAccessFloaterService;->z0:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/ex/auto/QuickAccessFloaterService;->U:J

    iget-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v3, Lg0/a;

    const/4 v7, 0x2

    invoke-direct {v3, v1, v0, v7}, Lg0/a;-><init>(Landroid/app/Service;Landroid/os/Handler;I)V

    iput-object v3, v1, Lcom/ex/auto/QuickAccessFloaterService;->V:Lg0/a;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v7, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v7, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Lw0/pf;

    const/4 v3, 0x5

    invoke-direct {v0, v3, v1}, Lw0/pf;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    iput-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->W:Lw0/pf;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v7, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz v2, :cond_4

    iget-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->X:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    new-instance v3, Lw0/df;

    invoke-direct {v3, v5, v1}, Lw0/df;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "HH:mm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x42b00000    # 88.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const-string v5, "#5A5A5A"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    iput-object v3, v1, Lcom/ex/auto/QuickAccessFloaterService;->Y:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->X:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x100

    const/4 v11, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0x7f6

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    :try_start_0
    iget-object v2, v1, Lcom/ex/auto/QuickAccessFloaterService;->b:Landroid/view/WindowManager;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0, v6}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    iget-object v2, v1, Lcom/ex/auto/QuickAccessFloaterService;->Z:Landroidx/activity/d;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showScreenOffClockOverlay: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u2014 desfazendo turnOffScreen"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickAccessFloater"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, v1, Lcom/ex/auto/QuickAccessFloaterService;->X:Landroid/widget/LinearLayout;

    iput-object v4, v1, Lcom/ex/auto/QuickAccessFloaterService;->Y:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ex/auto/QuickAccessFloaterService;->b0()V

    goto :goto_2

    :cond_3
    iput-boolean v6, v1, Lcom/ex/auto/QuickAccessFloaterService;->Q:Z

    :cond_4
    :goto_2
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lw0/ta;->c:Z

    iget-boolean v1, p0, Lw0/ta;->d:Z

    iget-object v5, p0, Lw0/ta;->b:Landroid/content/ContextWrapper;

    check-cast v5, Lcom/ex/auto/MainActivity;

    sget v7, Lcom/ex/auto/MainActivity;->z1:I

    if-nez v0, :cond_8

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    iput-boolean v6, v5, Lcom/ex/auto/MainActivity;->l0:Z

    const-string v0, ""

    invoke-virtual {v5, v0, v6}, Lcom/ex/auto/MainActivity;->D0(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Lcom/ex/auto/MainActivity;->q0()Z

    move-result v0

    new-instance v1, Le/h;

    invoke-direct {v1, v5}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v6, v1, Le/h;->b:Ljava/lang/Object;

    check-cast v6, Le/d;

    const v7, 0x7f0f022e

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Le/d;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    const v7, 0x7f0f022d

    goto :goto_3

    :cond_6
    const v7, 0x7f0f022c

    :goto_3
    invoke-virtual {v5}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/ex/auto/MainActivity;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Le/d;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    const v0, 0x7f0f0164

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lw0/z8;

    const/16 v6, 0x17

    invoke-direct {v2, v5, v6}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v1, v0, v2}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_4
    invoke-virtual {v1}, Le/h;->h()Le/i;

    goto :goto_6

    :cond_8
    :goto_5
    iget-object v0, v5, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lw0/ma;

    const/16 v2, 0x1d

    invoke-direct {v1, v5, v2}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_6
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/ta;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, Lw0/ta;->c:Z

    iget-boolean v2, p0, Lw0/ta;->d:Z

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_9

    :cond_9
    if-eqz v1, :cond_b

    if-eqz v2, :cond_a

    const v1, 0x7f0f0312

    goto :goto_7

    :cond_a
    const v1, 0x7f0f0311

    :goto_7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_b
    const v1, 0x7f0f0310

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v6}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/ma;

    const/16 v3, 0x18

    invoke-direct {v2, v0, v3}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_9
    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/ta;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-boolean v2, p0, Lw0/ta;->c:Z

    iget-boolean v3, p0, Lw0/ta;->d:Z

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_b

    :cond_d
    if-eq v2, v3, :cond_f

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "gestures_ac_swipe_single_step"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->c1()V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    if-eqz v3, :cond_e

    const v2, 0x7f0f0172

    goto :goto_a

    :cond_e
    const v2, 0x7f0f0175

    :goto_a
    invoke-static {v2, v5, v0, v1}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    :cond_f
    :goto_b
    return-void

    :pswitch_3
    iget-object v0, p0, Lw0/ta;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-boolean v2, p0, Lw0/ta;->c:Z

    iget-boolean v3, p0, Lw0/ta;->d:Z

    iput-boolean v6, v0, Lcom/ex/auto/MainActivity;->L0:Z

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_e

    :cond_10
    if-eqz v2, :cond_11

    :goto_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_d

    :cond_11
    xor-int/2addr v3, v5

    goto :goto_c

    :goto_d
    iput-object v3, v0, Lcom/ex/auto/MainActivity;->K0:Ljava/lang/Boolean;

    if-nez v2, :cond_12

    const v2, 0x7f0f0350

    invoke-static {v2, v5, v0, v1}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->r1()V

    :cond_13
    :goto_e
    return-void

    :pswitch_4
    iget-boolean v0, p0, Lw0/ta;->c:Z

    iget-boolean v1, p0, Lw0/ta;->d:Z

    iget-object v4, p0, Lw0/ta;->b:Landroid/content/ContextWrapper;

    check-cast v4, Lcom/ex/auto/MainActivity;

    sget v7, Lcom/ex/auto/MainActivity;->z1:I

    if-nez v0, :cond_14

    if-nez v1, :cond_14

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->q0()Z

    move-result v7

    if-nez v7, :cond_14

    new-instance v0, Le/h;

    invoke-direct {v0, v4}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Le/h;->b:Ljava/lang/Object;

    check-cast v1, Le/d;

    const v3, 0x7f0f026c

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Le/d;->d:Ljava/lang/CharSequence;

    const v3, 0x7f0f026a

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Le/d;->f:Ljava/lang/CharSequence;

    iput-boolean v6, v1, Le/d;->m:Z

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw0/z8;

    const/16 v6, 0x14

    invoke-direct {v3, v4, v6}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2, v3}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lw0/aa;

    invoke-direct {v2, v5, v4}, Lw0/aa;-><init>(ILjava/lang/Object;)V

    iput-object v2, v1, Le/d;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0}, Le/h;->h()Le/i;

    goto :goto_10

    :cond_14
    if-nez v0, :cond_15

    if-nez v1, :cond_15

    const v0, 0x7f0f059f

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_15
    const v0, 0x7f0f0141

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v1, Le/h;

    invoke-direct {v1, v4}, Le/h;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f05a3

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Le/h;->b:Ljava/lang/Object;

    check-cast v5, Le/d;

    iput-object v2, v5, Le/d;->d:Ljava/lang/CharSequence;

    iput-object v0, v5, Le/d;->f:Ljava/lang/CharSequence;

    iput-boolean v6, v5, Le/d;->m:Z

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lw0/z8;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v3}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v1, v0, v2}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f0f0033

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lw0/z8;

    const/16 v3, 0x16

    invoke-direct {v2, v4, v3}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v1, v0, v2}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Le/h;->h()Le/i;

    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
