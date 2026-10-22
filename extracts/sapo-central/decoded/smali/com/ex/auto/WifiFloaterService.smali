.class public final Lcom/ex/auto/WifiFloaterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic n:I


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/net/wifi/WifiManager;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/view/WindowManager$LayoutParams;

.field public final e:Landroid/os/Handler;

.field public f:I

.field public g:I

.field public h:F

.field public i:F

.field public j:Z

.field public final k:Lw0/kh;

.field public final l:Lw0/f2;

.field public final m:La1/s;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/WifiFloaterService;->e:Landroid/os/Handler;

    new-instance v0, Lw0/kh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lw0/kh;-><init>(Lcom/ex/auto/WifiFloaterService;I)V

    iput-object v0, p0, Lcom/ex/auto/WifiFloaterService;->k:Lw0/kh;

    new-instance v0, Lw0/f2;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lw0/f2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/ex/auto/WifiFloaterService;->l:Lw0/f2;

    new-instance v0, La1/s;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, La1/s;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/ex/auto/WifiFloaterService;->m:La1/s;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/WifiFloaterService;->b:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/ex/auto/WifiFloaterService;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    const-string v3, "\ud83d\udcf6"

    goto :goto_2

    :cond_2
    const-string v3, "\ud83d\udcf4"

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, p0, Lcom/ex/auto/WifiFloaterService;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    instance-of v3, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_5

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    :cond_5
    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    const-string v0, "#0F1722"

    goto :goto_4

    :cond_6
    const-string v0, "#0B1521"

    :goto_4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_7
    return-void

    :cond_8
    const-string v0, "wifiManager"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
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

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 8

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ex/auto/WifiFloaterService;->a:Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v0, v1}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/ex/auto/WifiFloaterService;->b:Landroid/net/wifi/WifiManager;

    const v0, 0x7f0f03c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "getString(...)"

    invoke-static {v3, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x30

    const-string v2, "wifi_floater"

    const v5, 0x1080042

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lw0/t1;->E(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42500000    # 52.0f

    mul-float/2addr v0, v2

    float-to-int v3, v0

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\ud83d\udcf6"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-string v5, "#0B131E"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setClipToOutline(Z)V

    sget-object v2, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x108

    const/4 v7, -0x3

    const/16 v5, 0x7f6

    move v4, v3

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v2, v1, Lcom/ex/auto/WifiFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x50

    const/16 v3, 0x1a4

    const-string v4, "wifi_floater"

    const v5, 0x800033

    invoke-static {p0, v4, v5, v2, v3}, Lw0/e8;->G(Landroid/content/Context;Ljava/lang/String;III)Lw0/yd;

    move-result-object v2

    iget-object v3, v1, Lcom/ex/auto/WifiFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget v5, v2, Lw0/yd;->a:I

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v5, v2, Lw0/yd;->b:I

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Lw0/yd;->c:I

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iput-object v0, v1, Lcom/ex/auto/WifiFloaterService;->c:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/ex/auto/WifiFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, La1/o;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, La1/o;-><init>(Landroid/content/ContextWrapper;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/ex/auto/WifiFloaterService;->a()V

    const-string v0, "tela_preta_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "wifi_floater_alpha"

    const/16 v3, 0x64

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, v1, Lcom/ex/auto/WifiFloaterService;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    sget-object v0, Lw0/lh;->a:Lw0/lh;

    iget-object v2, v1, Lcom/ex/auto/WifiFloaterService;->l:Lw0/f2;

    invoke-virtual {v0, p0, v2}, Lw0/lh;->a(Landroid/app/Service;Lh2/a;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "UPDATE_WIFI_FLOATER_ALPHA"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ex/auto/WifiFloaterService;->m:La1/s;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    const-string v0, "windowManager"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v4

    :cond_2
    const-string v0, "lp"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v4
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/WifiFloaterService;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lw0/lh;->a:Lw0/lh;

    iget-object v2, p0, Lcom/ex/auto/WifiFloaterService;->l:Lw0/f2;

    invoke-virtual {v0, p0, v2}, Lw0/lh;->b(Landroid/app/Service;Lh2/a;)V

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/WifiFloaterService;->m:La1/s;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/ex/auto/WifiFloaterService;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/ex/auto/WifiFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "windowManager"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
