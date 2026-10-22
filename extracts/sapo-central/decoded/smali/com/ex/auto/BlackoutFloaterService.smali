.class public final Lcom/ex/auto/BlackoutFloaterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static volatile p:Z

.field public static volatile q:Z


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/widget/ImageView;

.field public c:Z

.field public d:Z

.field public e:I

.field public f:Z

.field public g:Z

.field public final h:Landroid/os/Handler;

.field public i:Lg0/a;

.field public j:La1/s;

.field public k:F

.field public l:F

.field public m:I

.field public n:I

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0xa6

    iput v0, p0, Lcom/ex/auto/BlackoutFloaterService;->e:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/BlackoutFloaterService;->h:Landroid/os/Handler;

    return-void
.end method

.method public static a()Z
    .locals 5

    const-string v0, "BlackoutFloater"

    const-string v1, "0"

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/fs/selinux/enforce"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lf2/d;->h0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v2, "SELinux enforcing \u2014 executando setenforce 0"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lkotlinx/coroutines/scheduling/h;

    const/16 v3, 0x15b3

    invoke-direct {v2, v3}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    const-string v3, "setenforce 0 2>/dev/null; cat /sys/fs/selinux/enforce"

    const/16 v4, 0x1388

    invoke-virtual {v2, v4, v3}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "runShell(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ensureSelinuxPermissive falhou: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static e(I)Z
    .locals 7

    const-string v0, "/sys/class/leds/lcd-backlight/brightness"

    const-string v1, "BlackoutFloater"

    const-string v2, "Backlight escrito "

    const-string v3, "Backlight \u2192 "

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lf2/d;->i0(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lf2/d;->h0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-eqz v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " mas lido "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Falha ao escrever backlight: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v4
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "base"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lw0/e8;->p(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/ex/auto/BlackoutFloaterService;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    iget-boolean v0, p0, Lcom/ex/auto/BlackoutFloaterService;->g:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/geely/hvacstepperv2/TempStepperService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ex/auto/BlackoutFloaterService;->f:Z

    iput-boolean v0, p0, Lcom/ex/auto/BlackoutFloaterService;->g:Z

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/BlackoutFloaterService;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/ex/auto/BlackoutFloaterService;->c:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    const-string v2, "#40FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2
    const v1, 0x3e3851ec    # 0.18f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const v1, 0x7f0f0023

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    if-eqz v1, :cond_4

    const-string v2, "#CC111111"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_4
    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const v1, 0x7f0f0022

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/BlackoutFloaterService;->i:Lg0/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ex/auto/BlackoutFloaterService;->i:Lg0/a;

    iget-object v1, p0, Lcom/ex/auto/BlackoutFloaterService;->j:La1/s;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    iput-object v0, p0, Lcom/ex/auto/BlackoutFloaterService;->j:La1/s;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ex/auto/BlackoutFloaterService;->c:Z

    sput-boolean v0, Lcom/ex/auto/BlackoutFloaterService;->q:Z

    invoke-virtual {p0}, Lcom/ex/auto/BlackoutFloaterService;->b()V

    invoke-virtual {p0}, Lcom/ex/auto/BlackoutFloaterService;->c()V

    iget v0, p0, Lcom/ex/auto/BlackoutFloaterService;->e:I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/o0;

    invoke-direct {v2, p0, v0}, Lw0/o0;-><init>(Lcom/ex/auto/BlackoutFloaterService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 9

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    const v1, 0x7f0f001e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "getString(...)"

    invoke-static {v4, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0f001c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0f001f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const-string v3, "blackout_floater"

    const v6, 0x7f0700fd

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lw0/t1;->D(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/Notification;

    move-result-object v1

    const/16 v3, 0x68

    invoke-virtual {p0, v3, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v1, v3}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, v2, Lcom/ex/auto/BlackoutFloaterService;->a:Landroid/view/WindowManager;

    iget-object v1, v2, Lcom/ex/auto/BlackoutFloaterService;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v3, 0x4a

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-string v0, "#70353535"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v3, 0x1080030

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v3, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    const v3, 0x7f0f0022

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v3, 0x9

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Lw0/i;

    const/4 v3, 0x2

    invoke-direct {v1, v3, p0}, Lw0/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x584

    const/16 v3, 0x31a

    const-string v4, "blackout"

    const v5, 0x800033

    invoke-static {p0, v4, v5, v1, v3}, Lw0/e8;->G(Landroid/content/Context;Ljava/lang/String;III)Lw0/yd;

    move-result-object v1

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x108

    const/4 v8, -0x3

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x7f6

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v4, v1, Lw0/yd;->a:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v4, v1, Lw0/yd;->b:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, Lw0/yd;->c:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    new-instance v4, Lw0/q0;

    invoke-direct {v4, p0, v3, v0, v1}, Lw0/q0;-><init>(Lcom/ex/auto/BlackoutFloaterService;Landroid/view/WindowManager$LayoutParams;Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v2, Lcom/ex/auto/BlackoutFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, v2, Lcom/ex/auto/BlackoutFloaterService;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ex/auto/BlackoutFloaterService;->c()V

    return-void

    :cond_1
    const-string v0, "windowManager"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final onDestroy()V
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    iget-object v0, p0, Lcom/ex/auto/BlackoutFloaterService;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ex/auto/BlackoutFloaterService;->i:Lg0/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iput-object v1, p0, Lcom/ex/auto/BlackoutFloaterService;->i:Lg0/a;

    iget-object v0, p0, Lcom/ex/auto/BlackoutFloaterService;->j:La1/s;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    iput-object v1, p0, Lcom/ex/auto/BlackoutFloaterService;->j:La1/s;

    iget-boolean v0, p0, Lcom/ex/auto/BlackoutFloaterService;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ex/auto/BlackoutFloaterService;->d()V

    :cond_2
    iget-object v0, p0, Lcom/ex/auto/BlackoutFloaterService;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ex/auto/BlackoutFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_3

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const-string v0, "windowManager"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    iput-object v1, p0, Lcom/ex/auto/BlackoutFloaterService;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
