.class public final Lcom/ex/auto/TempBattPillFloaterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static volatile v:Lcom/ex/auto/TempBattPillFloaterService;


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/content/SharedPreferences;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/view/WindowManager$LayoutParams;

.field public final e:Landroid/os/Handler;

.field public f:Landroid/car/Car;

.field public volatile g:Landroid/car/hardware/property/CarPropertyManager;

.field public h:Ljava/lang/Float;

.field public i:Ljava/lang/Float;

.field public final j:[I

.field public volatile k:Ljava/lang/Integer;

.field public l:Lw0/k;

.field public m:I

.field public n:Lw0/j;

.field public final o:Lw0/yg;

.field public p:F

.field public q:F

.field public r:I

.field public s:I

.field public t:Z

.field public final u:Lw0/yg;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x31

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->j:[I

    new-instance v0, Lw0/yg;

    invoke-direct {v0, p0, v1}, Lw0/yg;-><init>(Lcom/ex/auto/TempBattPillFloaterService;I)V

    iput-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->o:Lw0/yg;

    new-instance v0, Lw0/yg;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lw0/yg;-><init>(Lcom/ex/auto/TempBattPillFloaterService;I)V

    iput-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->u:Lw0/yg;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pill_alpha"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lk1/a;->k(III)I

    move-result p1

    mul-int/lit16 p1, p1, 0xff

    div-int/2addr p1, v1

    iget-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    shl-int/lit8 p1, p1, 0x18

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0x32

    invoke-virtual {p0, p1}, Lcom/ex/auto/TempBattPillFloaterService;->d(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "pillPrefs"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "base"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lw0/e8;->p(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final b(I)V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pill_size_pct"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    const/16 v0, 0x12

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    const/16 v1, 0xa

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iget-object v1, p0, Lcom/ex/auto/TempBattPillFloaterService;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/ex/auto/TempBattPillFloaterService;->d(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/ex/auto/TempBattPillFloaterService;->d(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/ex/auto/TempBattPillFloaterService;->d(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/ex/auto/TempBattPillFloaterService;->d(I)I

    move-result p1

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "pillPrefs"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pill_text_white"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->k:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "pillPrefs"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final e()V
    .locals 10

    iget-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/TempBattPillFloaterService;->o:Lw0/yg;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->l:Lw0/k;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/ex/auto/TempBattPillFloaterService;->n:Lw0/j;

    iget-object v4, v0, Lw0/k;->a:Ljava/util/ArrayList;

    iget-boolean v0, v0, Lw0/k;->c:Z

    if-eqz v0, :cond_3

    invoke-static {v4}, Lw0/t1;->o(Ljava/util/ArrayList;)Lw0/j;

    move-result-object v0

    if-eqz v3, :cond_0

    iget-object v4, v3, Lw0/j;->a:Ljava/lang/Float;

    if-eqz v4, :cond_0

    iget-object v5, v0, Lw0/j;->a:Ljava/lang/Float;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v3, :cond_1

    iget-object v5, v3, Lw0/j;->b:Ljava/lang/Integer;

    if-eqz v5, :cond_1

    iget-object v6, v0, Lw0/j;->b:Ljava/lang/Integer;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_1
    if-eqz v3, :cond_2

    iget-object v3, v3, Lw0/j;->c:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    iget-object v0, v0, Lw0/j;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    new-instance v0, Lw0/j;

    invoke-direct {v0, v4, v5, v3}, Lw0/j;-><init>(Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-nez v3, :cond_4

    :goto_3
    move-object v0, v2

    goto :goto_4

    :cond_3
    invoke-static {v4}, Lw0/t1;->o(Ljava/util/ArrayList;)Lw0/j;

    move-result-object v0

    iget-object v3, v0, Lw0/j;->a:Ljava/lang/Float;

    if-nez v3, :cond_4

    iget-object v3, v0, Lw0/j;->b:Ljava/lang/Integer;

    if-nez v3, :cond_4

    iget-object v3, v0, Lw0/j;->c:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz v0, :cond_a

    iget-object v3, v0, Lw0/j;->a:Ljava/lang/Float;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/ex/auto/TempBattPillFloaterService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    :try_start_0
    sget v5, Lw0/u;->d:I

    invoke-virtual {v4, v5, v1, v3}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    sget v5, Lw0/u;->d:I

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6, v3}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_6
    :goto_5
    iget-object v3, v0, Lw0/j;->b:Ljava/lang/Integer;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/ex/auto/TempBattPillFloaterService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v4, :cond_7

    goto :goto_7

    :cond_7
    iget-object v5, p0, Lcom/ex/auto/TempBattPillFloaterService;->j:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_8

    aget v8, v5, v7

    const v9, 0x15400500

    :try_start_2
    invoke-virtual {v4, v9, v8, v3}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catchall_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    iget-object v0, v0, Lw0/j;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/ex/auto/TempBattPillFloaterService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_9

    goto :goto_8

    :cond_9
    :try_start_3
    sget v4, Lw0/u;->e:I

    sget v5, Lw0/u;->f:I

    invoke-virtual {v3, v4, v5, v0}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :cond_a
    :goto_8
    iput-object v2, p0, Lcom/ex/auto/TempBattPillFloaterService;->n:Lw0/j;

    iput-object v2, p0, Lcom/ex/auto/TempBattPillFloaterService;->k:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/ex/auto/TempBattPillFloaterService;->l:Lw0/k;

    iget-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v3, p0, Lcom/ex/auto/TempBattPillFloaterService;->b:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_c

    const-string v2, "pill_text_white"

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, -0x1

    goto :goto_9

    :cond_b
    const/high16 v1, -0x1000000

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_c
    const-string v0, "pillPrefs"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v2

    :cond_d
    return-void
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_8

    const-string v1, "pill_mode"

    const-string v2, "both"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->h:Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u00b0C"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "--\u00b0C"

    :cond_2
    iget-object v1, p0, Lcom/ex/auto/TempBattPillFloaterService;->i:Ljava/lang/Float;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, "--%"

    :cond_4
    iget-object v3, p0, Lcom/ex/auto/TempBattPillFloaterService;->c:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    const-string v4, "temp"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    const-string v4, "batt"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v1

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void

    :cond_8
    const-string v0, "pillPrefs"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 10

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-object p0, Lcom/ex/auto/TempBattPillFloaterService;->v:Lcom/ex/auto/TempBattPillFloaterService;

    const-string v0, "temp_batt_pill_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->b:Landroid/content/SharedPreferences;

    const v0, 0x7f0f028d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "getString(...)"

    invoke-static {v4, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0f028c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x30

    const-string v3, "temp_batt_pill_floater"

    const v6, 0x1080039

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lw0/t1;->E(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    const/16 v3, 0x6d

    invoke-virtual {p0, v3, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v3}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v2, Lcom/ex/auto/TempBattPillFloaterService;->a:Landroid/view/WindowManager;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const-string v3, "\u2026"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, v2, Lcom/ex/auto/TempBattPillFloaterService;->c:Landroid/widget/TextView;

    new-instance v3, La1/o;

    const/4 v5, 0x6

    invoke-direct {v3, p0, v5}, La1/o;-><init>(Landroid/content/ContextWrapper;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v2, Lcom/ex/auto/TempBattPillFloaterService;->b:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    const-string v5, "pillPrefs"

    if-eqz v0, :cond_3

    const-string v6, "pill_alpha"

    const/16 v7, 0x55

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ex/auto/TempBattPillFloaterService;->a(I)V

    iget-object v0, v2, Lcom/ex/auto/TempBattPillFloaterService;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    const-string v6, "pill_size_pct"

    const/16 v7, 0x64

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ex/auto/TempBattPillFloaterService;->b(I)V

    iget-object v0, v2, Lcom/ex/auto/TempBattPillFloaterService;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    const-string v5, "pill_text_white"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ex/auto/TempBattPillFloaterService;->c(Z)V

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/ex/auto/TempBattPillFloaterService;->d(I)I

    move-result v0

    const-string v4, "temp_batt_pill"

    const/16 v5, 0x31

    invoke-static {p0, v4, v5, v1, v0}, Lw0/e8;->G(Landroid/content/Context;Ljava/lang/String;III)Lw0/yd;

    move-result-object v0

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x108

    const/4 v9, -0x3

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x7f6

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Lw0/yd;->a:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Lw0/yd;->b:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Lw0/yd;->c:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iput-object v4, v2, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    :try_start_0
    iget-object v0, v2, Lcom/ex/auto/TempBattPillFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v1, v2, Lcom/ex/auto/TempBattPillFloaterService;->c:Landroid/widget/TextView;

    invoke-interface {v0, v1, v4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, La1/p;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, La1/p;-><init>(Landroid/content/ContextWrapper;I)V

    const-wide/16 v4, 0x0

    invoke-static {p0, v3, v4, v5, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, v2, Lcom/ex/auto/TempBattPillFloaterService;->f:Landroid/car/Car;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iget-object v0, v2, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    iget-object v1, v2, Lcom/ex/auto/TempBattPillFloaterService;->u:Lw0/yg;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_2
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_1
    invoke-static {v5}, Li2/g;->h(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v5}, Li2/g;->h(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-static {v5}, Li2/g;->h(Ljava/lang/String;)V

    throw v3
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/ex/auto/TempBattPillFloaterService;->v:Lcom/ex/auto/TempBattPillFloaterService;

    iput-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->k:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->l:Lw0/k;

    iget-object v1, p0, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/ex/auto/TempBattPillFloaterService;->f:Landroid/car/Car;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/car/Car;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/ex/auto/TempBattPillFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ex/auto/TempBattPillFloaterService;->c:Landroid/widget/TextView;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v1, "wm"

    invoke-static {v1}, Li2/g;->h(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
