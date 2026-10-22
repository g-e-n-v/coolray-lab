.class public final Lcom/ex/auto/QuickAccessFloaterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final A0:I

.field public static final B0:I

.field public static final C0:I

.field public static final D0:I

.field public static final E0:I

.field public static final F0:I

.field public static final G0:I

.field public static final H0:I

.field public static final I0:I

.field public static final t0:I

.field public static final u0:I

.field public static final v0:Ljava/util/List;

.field public static final w0:Ljava/util/Set;

.field public static volatile x0:Lcom/ex/auto/QuickAccessFloaterService;

.field public static volatile y0:Z

.field public static volatile z0:Z


# instance fields
.field public A:Z

.field public final B:Lx1/c;

.field public final C:Lx1/c;

.field public final D:Lx1/c;

.field public final E:Lx1/c;

.field public F:F

.field public G:I

.field public H:Z

.field public final I:Lw0/ve;

.field public volatile J:Landroid/car/Car;

.field public volatile K:Landroid/car/hardware/property/CarPropertyManager;

.field public volatile L:Landroid/car/media/CarAudioManager;

.field public volatile M:Z

.field public volatile N:Z

.field public final O:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final P:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile Q:Z

.field public R:I

.field public S:I

.field public T:I

.field public U:J

.field public V:Lg0/a;

.field public W:Lw0/pf;

.field public X:Landroid/widget/LinearLayout;

.field public Y:Landroid/widget/TextView;

.field public final Z:Landroidx/activity/d;

.field public final a:Landroid/os/Handler;

.field public final a0:Lw0/ze;

.field public b:Landroid/view/WindowManager;

.field public final b0:Lw0/pf;

.field public c:Landroid/view/WindowManager$LayoutParams;

.field public final c0:Lw0/pf;

.field public d:Lw0/eh;

.field public final d0:Lw0/pf;

.field public e:Landroid/widget/LinearLayout;

.field public final e0:Lw0/pf;

.field public f:Landroid/widget/TextView;

.field public final f0:Lw0/pf;

.field public g:Landroid/widget/LinearLayout;

.field public final g0:Lw0/pf;

.field public h:Landroid/widget/LinearLayout;

.field public final h0:Lw0/pf;

.field public i:Landroid/widget/LinearLayout;

.field public final i0:Lw0/pf;

.field public j:Landroid/widget/TextView;

.field public final j0:Lw0/pf;

.field public k:Landroid/widget/TextView;

.field public volatile k0:Landroid/widget/Toast;

.field public l:Landroid/widget/TextView;

.field public l0:Ljava/lang/Integer;

.field public m:Landroid/widget/TextView;

.field public final m0:[I

.field public n:Landroid/widget/TextView;

.field public volatile n0:Ljava/lang/Integer;

.field public o:Landroid/widget/TextView;

.field public final o0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public p:Landroid/widget/TextView;

.field public final p0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public q:Landroid/widget/TextView;

.field public volatile q0:Ljava/lang/Float;

.field public r:Lw0/sf;

.field public final r0:Ljava/util/Set;

.field public s:Lw0/sf;

.field public final s0:Ljava/util/Set;

.field public t:Lw0/sf;

.field public volatile u:Ljava/lang/Boolean;

.field public v:Lw0/sf;

.field public w:Lw0/sf;

.field public x:Lw0/sf;

.field public y:Lw0/sf;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    sget v0, Lw0/u;->a:I

    sput v0, Lcom/ex/auto/QuickAccessFloaterService;->u0:I

    const-string v17, "cronometro"

    const-string v18, "regressiva"

    const-string v1, "wifi"

    const-string v2, "drive_regen"

    const-string v3, "aa_activate"

    const-string v4, "aa_reset"

    const-string v5, "avas"

    const-string v6, "screen_off"

    const-string v7, "aeb"

    const-string v8, "telemetry"

    const-string v9, "split_screen"

    const-string v10, "app_pip"

    const-string v11, "power_off"

    const-string v12, "close_apps"

    const-string v13, "screen_rest"

    const-string v14, "recirc_guard"

    const-string v15, "karaoke"

    const-string v16, "fullscreen"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ex/auto/QuickAccessFloaterService;->v0:Ljava/util/List;

    const-string v0, "telemetry"

    const-string v1, "power_off"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk1/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/ex/auto/QuickAccessFloaterService;->w0:Ljava/util/Set;

    const-string v0, "#F20B131E"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ex/auto/QuickAccessFloaterService;->A0:I

    const-string v0, "#0F1722"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ex/auto/QuickAccessFloaterService;->B0:I

    const-string v0, "#0B1521"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ex/auto/QuickAccessFloaterService;->C0:I

    const-string v0, "#1C68EF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ex/auto/QuickAccessFloaterService;->D0:I

    const-string v0, "#2E7DFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ex/auto/QuickAccessFloaterService;->E0:I

    const-string v0, "#1FBF75"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ex/auto/QuickAccessFloaterService;->F0:I

    const-string v0, "#E85D5D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ex/auto/QuickAccessFloaterService;->G0:I

    const-string v0, "#EAF2F8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    const-string v0, "#7E8CA0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ex/auto/QuickAccessFloaterService;->I0:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v0, Lw0/ze;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lw0/ze;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    new-instance v1, Lx1/c;

    invoke-direct {v1, v0}, Lx1/c;-><init>(Lh2/a;)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->B:Lx1/c;

    new-instance v0, Lw0/ze;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lw0/ze;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    new-instance v1, Lx1/c;

    invoke-direct {v1, v0}, Lx1/c;-><init>(Lh2/a;)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->C:Lx1/c;

    new-instance v0, Lw0/ze;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lw0/ze;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    new-instance v1, Lx1/c;

    invoke-direct {v1, v0}, Lx1/c;-><init>(Lh2/a;)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->D:Lx1/c;

    new-instance v0, Lw0/ze;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lw0/ze;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    new-instance v1, Lx1/c;

    invoke-direct {v1, v0}, Lx1/c;-><init>(Lh2/a;)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->E:Lx1/c;

    new-instance v0, Lw0/ve;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->I:Lw0/ve;

    new-instance v0, Lw0/l1;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lw0/l1;-><init>(I)V

    const-string v1, "quick-access-car"

    invoke-static {v1, v0}, Lw0/t1;->a(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->O:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0xa6

    iput v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->R:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->S:I

    iput v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->T:I

    new-instance v1, Landroidx/activity/d;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0}, Landroidx/activity/d;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->Z:Landroidx/activity/d;

    new-instance v1, Lw0/ze;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, Lw0/ze;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->a0:Lw0/ze;

    new-instance v1, Lw0/pf;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lw0/pf;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->b0:Lw0/pf;

    new-instance v1, Lw0/pf;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Lw0/pf;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->c0:Lw0/pf;

    new-instance v1, Lw0/pf;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lw0/pf;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->d0:Lw0/pf;

    new-instance v1, Lw0/pf;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lw0/pf;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->e0:Lw0/pf;

    new-instance v1, Lw0/pf;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lw0/pf;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->f0:Lw0/pf;

    new-instance v1, Lw0/pf;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lw0/pf;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->g0:Lw0/pf;

    new-instance v1, Lw0/pf;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lw0/pf;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->h0:Lw0/pf;

    new-instance v1, Lw0/pf;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lw0/pf;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->i0:Lw0/pf;

    new-instance v1, Lw0/pf;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Lw0/pf;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Lw0/pf;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/16 v3, 0x31

    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->m0:[I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->o0:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->p0:Ljava/util/concurrent/atomic/AtomicInteger;

    const v0, 0x22010101

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x22010102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x22010103

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lk1/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->r0:Ljava/util/Set;

    const v0, 0x20020501

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x20020502

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x20020503

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lk1/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->s0:Ljava/util/Set;

    return-void
.end method

.method public static I(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lkotlinx/coroutines/scheduling/h;

    const/16 v1, 0x15b3

    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    invoke-virtual {v0, p0, p1}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ADB_FAIL: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/app/AlertDialog;)V
    .locals 2

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/ex/auto/QuickAccessFloaterService;->D0:I

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final A(I[ILjava/util/Set;)Ljava/lang/Integer;
    .locals 6

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p2, v3

    :try_start_0
    invoke-static {v0, p1, v4}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_1

    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v1
.end method

.method public final B(Ljava/lang/String;)Lw0/sf;
    .locals 5

    new-instance v0, Lw0/sf;

    invoke-direct {v0, p0}, Lw0/sf;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->x()F

    move-result v1

    invoke-virtual {v0, p1}, Lw0/sf;->setIconId(Ljava/lang/String;)V

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lw0/sf;->setIconColor(Ljava/lang/Integer;)V

    const/16 v2, 0xd

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v2

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v2, 0x10

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    move v1, v2

    :cond_1
    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->B0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    sget v4, Lcom/ex/auto/QuickAccessFloaterService;->C0:I

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->M(IILjava/lang/Integer;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lw0/y6;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, v0, v2}, Lw0/y6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public final C(ILjava/lang/String;)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "toUpperCase(...)"

    invoke-static {p2, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->x()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-object v0
.end method

.method public final D(Ljava/lang/String;ILh2/a;)Landroid/widget/TextView;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->x()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget p1, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0xc

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->x()F

    move-result v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_0

    move p1, v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p2, p1, v1, v2}, Lcom/ex/auto/QuickAccessFloaterService;->M(IILjava/lang/Integer;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lw0/a0;

    const/16 p2, 0x8

    invoke-direct {p1, p3, p2, p0}, Lw0/a0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public final E(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 16

    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    :try_start_0
    new-instance v0, Li2/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static/range {p2 .. p2}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v7, 0xc

    const/4 v8, 0x1

    if-ge v5, v3, :cond_3

    move-object/from16 v9, p2

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v5, v5, 0x1

    check-cast v10, Lx1/d;

    iget-object v11, v10, Lx1/d;->a:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v10, Lx1/d;->b:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v10, v10, Lx1/d;->c:Ljava/lang/Object;

    check-cast v10, Lh2/a;

    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v13, v8}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v13, v8}, Landroid/view/View;->setFocusable(Z)V

    const v15, 0x7f070074

    invoke-virtual {v13, v15}, Landroid/view/View;->setBackgroundResource(I)V

    const v15, 0x7f05003e

    invoke-virtual {v1, v15}, Landroid/content/Context;->getColor(I)I

    move-result v15

    invoke-static {v15}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v14}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v15

    invoke-virtual {v1, v7}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    invoke-virtual {v1, v14}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v14

    invoke-virtual {v1, v7}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v6

    invoke-virtual {v13, v15, v4, v14, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Lw0/y6;

    const/16 v6, 0x9

    invoke-direct {v4, v0, v1, v10, v6}, Lw0/y6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v13, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_1

    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    const v6, 0x1080093

    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x38

    invoke-virtual {v1, v12}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v14

    invoke-virtual {v1, v12}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v12

    invoke-direct {v6, v14, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v13, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41980000    # 19.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    sget v6, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x2

    const/4 v10, 0x0

    invoke-direct {v6, v10, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v10

    goto/16 :goto_0

    :cond_3
    move v10, v4

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x14

    invoke-virtual {v1, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v5

    invoke-virtual {v1, v7}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v6

    invoke-virtual {v1, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    invoke-virtual {v1, v7}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v7

    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v10

    :goto_3
    if-ge v5, v4, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x1cc

    invoke-virtual {v1, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v8

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p1}, Lcom/ex/auto/QuickAccessFloaterService;->o(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f0032

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v0, Li2/m;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "dlg"

    if-eqz v2, :cond_e

    :try_start_1
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_5

    const/16 v5, 0x7f6

    invoke-virtual {v2, v5}, Landroid/view/Window;->setType(I)V

    :cond_5
    iget-object v2, v0, Li2/m;->a:Ljava/lang/Object;

    if-eqz v2, :cond_d

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_6

    const v5, 0x7f070059

    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_6
    iget-object v2, v0, Li2/m;->a:Ljava/lang/Object;

    if-eqz v2, :cond_c

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v6, v1, Lcom/ex/auto/QuickAccessFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_7

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    :cond_7
    move v6, v10

    :goto_4
    :try_start_3
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    div-int/lit8 v5, v5, 0x2

    const/16 v8, 0x50

    if-ge v6, v5, :cond_8

    const/16 v5, 0x30

    goto :goto_5

    :cond_8
    move v5, v8

    :goto_5
    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v1, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v5

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_9
    iget-object v2, v0, Li2/m;->a:Ljava/lang/Object;

    if-eqz v2, :cond_b

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    iget-object v0, v0, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_a

    check-cast v0, Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/ex/auto/QuickAccessFloaterService;->n(Landroid/app/AlertDialog;)V

    goto :goto_7

    :cond_a
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v4

    :cond_b
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v4

    :cond_c
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v4

    :cond_e
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "menu de atalhos: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickAccessFloater"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0f00aa

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(...)"

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method public final F()Landroid/widget/LinearLayout$LayoutParams;
    .locals 5

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->x()F

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x4c

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v2

    const/16 v3, 0x2e

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    invoke-virtual {p0, v0}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    invoke-virtual {p0, v0}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v3

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object v1
.end method

.method public final G(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v1, Lw0/ab;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2, p1}, Lw0/ab;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->k0:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iput-object p1, p0, Lcom/ex/auto/QuickAccessFloaterService;->k0:Landroid/widget/Toast;

    return-void
.end method

.method public final H(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x8

    const-string v6, "getSharedPreferences(...)"

    const-string v7, "tela_preta_prefs"

    const-string v8, ""

    const-string v9, "getString(...)"

    const v10, 0x7f0f00ef

    const-wide/16 v11, 0x258

    const-wide/16 v13, 0x320

    move-object/from16 v16, v6

    const-wide/16 v5, 0xbb8

    const/16 v17, 0x1

    const/4 v15, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_e

    :sswitch_0
    const-string v1, "regressiva"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_e

    :cond_0
    invoke-virtual {v0, v11, v12}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->a(Ljava/lang/String;)V

    return-void

    :sswitch_1
    const-string v1, "power_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_e

    :cond_1
    invoke-virtual {v0, v13, v14}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->z()V

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v1, Lw0/kf;

    invoke-direct {v1, v15, v0}, Lw0/kf;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->O(Lh2/l;)V

    return-void

    :sswitch_2
    const-string v1, "telemetry"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_e

    :cond_3
    invoke-virtual {v0, v5, v6}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "telemetry_on"

    invoke-interface {v1, v2, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v0, v1}, Lcom/ex/auto/VhalProviderService;->c(Landroid/content/Context;Z)V

    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->v:Lw0/sf;

    if-eqz v1, :cond_34

    invoke-virtual {v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->Z(Lw0/sf;)V

    return-void

    :sswitch_3
    const-string v1, "drive_regen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_e

    :cond_4
    iget-boolean v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->A:Z

    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->A:Z

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->K()V

    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->i:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    return-void

    :cond_6
    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->i:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {v0, v5, v6}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    return-void

    :sswitch_4
    const-string v3, "aa_reset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_e

    :cond_8
    invoke-virtual {v0, v5, v6}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v4, Lw0/gf;

    move/from16 v5, v17

    invoke-direct {v4, v1, v5}, Lw0/gf;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lw0/hf;

    invoke-direct {v4, v0, v1, v2, v5}, Lw0/hf;-><init>(Lcom/ex/auto/QuickAccessFloaterService;Landroid/widget/TextView;Ljava/lang/String;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void

    :sswitch_5
    const-string v1, "cronometro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_e

    :cond_9
    invoke-virtual {v0, v11, v12}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    const-string v1, "crono"

    invoke-virtual {v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->a(Ljava/lang/String;)V

    return-void

    :sswitch_6
    const-string v1, "fullscreen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_e

    :cond_a
    invoke-virtual {v0, v11, v12}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/ve;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v0}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :sswitch_7
    const-string v1, "wifi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_e

    :cond_b
    invoke-virtual {v0, v13, v14}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->u()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->u()Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    if-nez v1, :cond_34

    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/ve;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v0}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :sswitch_8
    const-string v1, "avas"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_e

    :cond_c
    invoke-virtual {v0, v5, v6}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->z()V

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "avas_muted_saved"

    invoke-interface {v1, v2, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v17, 0x1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->s:Lw0/sf;

    if-eqz v2, :cond_e

    invoke-virtual {v0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->X(Lw0/sf;)V

    :cond_e
    new-instance v2, Lw0/jf;

    invoke-direct {v2, v0, v1, v15}, Lw0/jf;-><init>(Landroid/content/ContextWrapper;ZI)V

    invoke-virtual {v0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->O(Lh2/l;)V

    return-void

    :sswitch_9
    const-string v1, "aeb"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_e

    :cond_f
    invoke-virtual {v0, v5, v6}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->z()V

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->u:Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    :cond_11
    const/16 v17, 0x1

    xor-int/lit8 v1, v15, 0x1

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->t:Lw0/sf;

    if-eqz v2, :cond_12

    const-string v3, "..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "aeb_desired"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v2, Lw0/jf;

    invoke-direct {v2, v1, v0}, Lw0/jf;-><init>(ZLcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->O(Lh2/l;)V

    return-void

    :sswitch_a
    const-string v1, "screen_rest"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_e

    :cond_13
    invoke-virtual {v0, v13, v14}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/ex/auto/QuickAccessFloaterService;->V(Z)V

    return-void

    :sswitch_b
    const-string v1, "split_screen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_e

    :cond_14
    invoke-virtual {v0, v7, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-static {v15, v3}, Lk1/a;->T(II)Ll2/c;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ll2/a;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    move-object v5, v3

    check-cast v5, Ll2/b;

    iget-boolean v6, v5, Ll2/b;->c:Z

    if-eqz v6, :cond_17

    invoke-virtual {v5}, Ll2/b;->nextInt()I

    move-result v5

    new-instance v6, Lw0/k0;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v10, "split_grupo_%d_esq"

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_15

    move-object v7, v8

    :cond_15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    const-string v11, "split_grupo_%d_dir"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_16

    move-object v10, v8

    :cond_16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    const-string v9, "split_grupo_%d_on"

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-direct {v6, v5, v7, v10, v9}, Lw0/k0;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v15

    :cond_18
    :goto_1
    if-ge v5, v3, :cond_19

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    check-cast v7, Lw0/k0;

    iget-boolean v8, v7, Lw0/k0;->d:Z

    if-eqz v8, :cond_18

    iget-object v8, v7, Lw0/k0;->b:Ljava/lang/String;

    invoke-static {v8}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v7, v7, Lw0/k0;->c:Ljava/lang/String;

    invoke-static {v7}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_18

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    sget-object v3, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    if-eqz v3, :cond_1a

    goto :goto_3

    :cond_1a
    invoke-static {v0, v1}, Lw0/e8;->C(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    if-ge v15, v4, :cond_1b

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v15, v15, 0x1

    check-cast v5, Lw0/k0;

    new-instance v6, Lx1/d;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lw0/k0;->b:Ljava/lang/String;

    invoke-static {v0, v8}, Lw0/t1;->Z(Lcom/ex/auto/QuickAccessFloaterService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  |  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lw0/k0;->c:Ljava/lang/String;

    invoke-static {v0, v8}, Lw0/t1;->Z(Lcom/ex/auto/QuickAccessFloaterService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lw0/k0;->b:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/ex/auto/QuickAccessFloaterService;->y(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, v5, Lw0/k0;->c:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/ex/auto/QuickAccessFloaterService;->y(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    filled-new-array {v8, v9}, [Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Lw0/y2;

    const/16 v10, 0xf

    invoke-direct {v9, v0, v10, v5}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v6, v7, v8, v9}, Lx1/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1b
    invoke-virtual {v0, v1, v3}, Lcom/ex/auto/QuickAccessFloaterService;->E(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_1c
    :goto_3
    invoke-virtual {v0, v13, v14}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    sget-object v1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    const-class v2, Lcom/ex/auto/SplitFloaterService;

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    if-nez v1, :cond_1d

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_4

    :cond_1d
    iget-object v2, v1, Lcom/ex/auto/SplitFloaterService;->j:Lw0/mg;

    iget-object v3, v1, Lcom/ex/auto/SplitFloaterService;->k:Lw0/mg;

    if-nez v2, :cond_1e

    if-nez v3, :cond_1e

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    goto :goto_4

    :cond_1e
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/ex/auto/SplitFloaterService;->o:Z

    invoke-virtual {v1}, Lcom/ex/auto/SplitFloaterService;->h()V

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lw0/hg;

    invoke-direct {v5, v3, v1, v2, v15}, Lw0/hg;-><init>(Lw0/mg;Lcom/ex/auto/SplitFloaterService;Lw0/mg;I)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_4

    :cond_1f
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->j()V

    :goto_4
    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->x:Lw0/sf;

    if-eqz v1, :cond_34

    sget-object v2, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    if-eqz v2, :cond_20

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->E0:I

    invoke-virtual {v0, v1, v2}, Lcom/ex/auto/QuickAccessFloaterService;->k(Landroid/widget/TextView;I)V

    goto :goto_5

    :cond_20
    invoke-virtual {v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->l(Landroid/widget/TextView;)V

    :goto_5
    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :sswitch_c
    const-string v1, "screen_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_e

    :cond_21
    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->m()V

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "screen_off_warning_seen"

    invoke-interface {v1, v2, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-wide/16 v2, 0x12c

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v4, Lw0/ve;

    const/4 v5, 0x7

    invoke-direct {v4, v5, v0}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_22
    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v5, Lw0/ve;

    invoke-direct {v5, v4, v0}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :sswitch_d
    const-string v1, "recirc_guard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_e

    :cond_23
    invoke-virtual {v0, v5, v6}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "recirc_guard_enabled"

    invoke-interface {v1, v2, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v5, 0x1

    xor-int/2addr v1, v5

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v1, :cond_24

    iget-object v2, v1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/v2;

    invoke-direct {v3, v1, v5}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_24
    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->w:Lw0/sf;

    if-eqz v1, :cond_34

    invoke-virtual {v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->Y(Lw0/sf;)V

    return-void

    :sswitch_e
    move-object/from16 v3, v16

    const-string v1, "app_pip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto/16 :goto_e

    :cond_25
    invoke-virtual {v0, v7, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-static {v15, v3}, Lk1/a;->T(II)Ll2/c;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ll2/a;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    move-object v5, v3

    check-cast v5, Ll2/b;

    iget-boolean v6, v5, Ll2/b;->c:Z

    if-eqz v6, :cond_27

    invoke-virtual {v5}, Ll2/b;->nextInt()I

    move-result v5

    new-instance v6, Lw0/j0;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v10, "pip_app_%d_pkg"

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_26

    move-object v7, v8

    :cond_26
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    const-string v11, "pip_app_%d_on"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-direct {v6, v5, v7, v10}, Lw0/j0;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v15

    :cond_28
    :goto_7
    if-ge v5, v3, :cond_29

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    check-cast v7, Lw0/j0;

    iget-boolean v9, v7, Lw0/j0;->c:Z

    if-eqz v9, :cond_28

    iget-object v7, v7, Lw0/j0;->b:Ljava/lang/String;

    invoke-static {v7}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_28

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_29
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    sget-object v3, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    if-eqz v3, :cond_2a

    goto :goto_a

    :cond_2a
    invoke-static {v0, v1}, Lw0/e8;->C(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v15

    :goto_8
    if-ge v5, v4, :cond_2c

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lw0/j0;

    new-instance v7, Lx1/d;

    iget-object v9, v6, Lw0/j0;->b:Ljava/lang/String;

    invoke-static {v9}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2b

    move-object v9, v8

    goto :goto_9

    :cond_2b
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v9, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_9
    iget-object v10, v6, Lw0/j0;->b:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/ex/auto/QuickAccessFloaterService;->y(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10}, Lk1/a;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v11, Lw0/y2;

    const/16 v12, 0x10

    invoke-direct {v11, v0, v12, v6}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v7, v9, v10, v11}, Lx1/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_2c
    invoke-virtual {v0, v1, v3}, Lcom/ex/auto/QuickAccessFloaterService;->E(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_2d
    :goto_a
    invoke-virtual {v0, v13, v14}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    const-class v2, Lcom/ex/auto/AppPipFloaterService;

    if-eqz v1, :cond_2f

    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    if-nez v1, :cond_2e

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_b

    :cond_2e
    invoke-virtual {v1}, Lcom/ex/auto/AppPipFloaterService;->d()V

    goto :goto_b

    :cond_2f
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->j()V

    :goto_b
    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->y:Lw0/sf;

    if-eqz v1, :cond_34

    sget-object v2, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    if-eqz v2, :cond_30

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->E0:I

    invoke-virtual {v0, v1, v2}, Lcom/ex/auto/QuickAccessFloaterService;->k(Landroid/widget/TextView;I)V

    goto :goto_c

    :cond_30
    invoke-virtual {v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->l(Landroid/widget/TextView;)V

    :goto_c
    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :sswitch_f
    const-string v1, "karaoke"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_e

    :cond_31
    invoke-virtual {v0, v5, v6}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "lyrics_floater_enabled"

    invoke-interface {v1, v2, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/LyricsFloaterService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez v1, :cond_32

    invoke-virtual {v0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_d

    :cond_32
    invoke-virtual {v0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_d
    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->J()V

    return-void

    :sswitch_10
    const-string v3, "aa_activate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_e

    :cond_33
    invoke-virtual {v0, v5, v6}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v4, Lw0/gf;

    invoke-direct {v4, v1, v15}, Lw0/gf;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lw0/hf;

    invoke-direct {v4, v0, v1, v2, v15}, Lw0/hf;-><init>(Lcom/ex/auto/QuickAccessFloaterService;Landroid/widget/TextView;Ljava/lang/String;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void

    :sswitch_11
    const-string v1, "close_apps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    :cond_34
    :goto_e
    return-void

    :cond_35
    invoke-virtual {v0, v13, v14}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/ve;

    const/16 v3, 0xb

    invoke-direct {v2, v3, v0}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ae95fa7 -> :sswitch_11
        -0x62d361ce -> :sswitch_10
        -0x37caea1c -> :sswitch_f
        -0x2f4d9d87 -> :sswitch_e
        -0x2ce42810 -> :sswitch_d
        -0x18db78e4 -> :sswitch_c
        -0xab92ecf -> :sswitch_b
        -0x2924839 -> :sswitch_a
        0x178be -> :sswitch_9
        0x2ddf27 -> :sswitch_8
        0x37af15 -> :sswitch_7
        0x68f7bbb -> :sswitch_6
        0x809b218 -> :sswitch_5
        0x1020f470 -> :sswitch_4
        0x2b4e1d48 -> :sswitch_3
        0x2e8323b9 -> :sswitch_2
        0x32655b35 -> :sswitch_1
        0x54b7810d -> :sswitch_0
    .end sparse-switch
.end method

.method public final J()V
    .locals 2

    new-instance v0, Lw0/ve;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final K()V
    .locals 14

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->s()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "saved_drive"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->s()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->s()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "saved_regen"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->s()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_1
    const/high16 v2, 0x1000000

    const/4 v5, 0x1

    filled-new-array {v4, v5, v2}, [I

    move-result-object v2

    const v6, 0x22010100

    iget-object v7, p0, Lcom/ex/auto/QuickAccessFloaterService;->r0:Ljava/util/Set;

    invoke-virtual {p0, v6, v2, v7}, Lcom/ex/auto/QuickAccessFloaterService;->A(I[ILjava/util/Set;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2, v7}, Lw0/t1;->B(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Set;)Lw0/n4;

    move-result-object v0

    iget-object v2, v0, Lw0/n4;->a:Ljava/lang/Integer;

    const v6, 0x20020500

    filled-new-array {v4, v5}, [I

    move-result-object v4

    iget-object v5, p0, Lcom/ex/auto/QuickAccessFloaterService;->s0:Ljava/util/Set;

    invoke-virtual {p0, v6, v4, v5}, Lcom/ex/auto/QuickAccessFloaterService;->A(I[ILjava/util/Set;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lw0/t1;->B(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Set;)Lw0/n4;

    move-result-object v3

    iget-object v4, v3, Lw0/n4;->a:Ljava/lang/Integer;

    new-instance v5, La1/g;

    const/16 v6, 0x19

    invoke-direct {v5, p0, v0, v3, v6}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v6, p0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v5, -0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_3
    sget v8, Lcom/ex/auto/QuickAccessFloaterService;->F0:I

    sget v9, Lcom/ex/auto/QuickAccessFloaterService;->E0:I

    sget v10, Lcom/ex/auto/QuickAccessFloaterService;->G0:I

    sget v11, Lcom/ex/auto/QuickAccessFloaterService;->C0:I

    packed-switch v7, :pswitch_data_0

    move v12, v11

    goto :goto_2

    :pswitch_0
    move v12, v10

    goto :goto_2

    :pswitch_1
    move v12, v9

    goto :goto_2

    :pswitch_2
    move v12, v8

    :goto_2
    const-string v13, ""

    packed-switch v7, :pswitch_data_1

    move-object v7, v13

    goto :goto_3

    :pswitch_3
    const v7, 0x7f0f0236

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :pswitch_4
    const v7, 0x7f0f0230

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :pswitch_5
    const v7, 0x7f0f0232

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-static {v7}, Li2/g;->b(Ljava/lang/Object;)V

    packed-switch v5, :pswitch_data_2

    move v8, v11

    goto :goto_4

    :pswitch_6
    move v8, v9

    goto :goto_4

    :pswitch_7
    move v8, v10

    :goto_4
    :pswitch_8
    packed-switch v5, :pswitch_data_3

    goto :goto_5

    :pswitch_9
    const v5, 0x7f0f0238

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :pswitch_a
    const v5, 0x7f0f0234

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :pswitch_b
    const v5, 0x7f0f023a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_5
    invoke-static {v13}, Li2/g;->b(Ljava/lang/Object;)V

    const/high16 v5, 0x66000000

    const v7, 0xffffff

    if-eqz v2, :cond_4

    iget-boolean v0, v0, Lw0/n4;->b:Z

    if-nez v0, :cond_4

    and-int v0, v12, v7

    or-int v12, v0, v5

    :cond_4
    move v2, v12

    if-eqz v4, :cond_5

    iget-boolean v0, v3, Lw0/n4;->b:Z

    if-nez v0, :cond_5

    and-int v0, v8, v7

    or-int v8, v0, v5

    :cond_5
    move v4, v8

    const/16 v0, 0xe

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->x()F

    move-result v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    const/4 v3, 0x4

    if-ge v0, v3, :cond_6

    goto :goto_6

    :cond_6
    move v3, v0

    :goto_6
    new-instance v0, Lw0/ef;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lw0/ef;-><init>(Lcom/ex/auto/QuickAccessFloaterService;IIII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22010101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22010101
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20020501
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20020501
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final L(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;
    .locals 5

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->l0:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v0, v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->m0:[I

    :goto_0
    array-length v0, v2

    :goto_1
    if-ge v1, v0, :cond_2

    aget v3, v2, v1

    const v4, 0x15400500

    :try_start_0
    invoke-static {p1, v4, v3}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/ex/auto/QuickAccessFloaterService;->l0:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final M(IILjava/lang/Integer;I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, p2}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p3, :cond_0

    if-lez p4, :cond_0

    invoke-virtual {p0, p4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result p1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    return-object v0
.end method

.method public final N(IIZZZZ)Landroid/graphics/drawable/GradientDrawable;
    .locals 6

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, p2}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result p1

    int-to-float p1, p1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    if-eqz p3, :cond_1

    move p3, p1

    goto :goto_1

    :cond_1
    move p3, p2

    :goto_1
    if-eqz p4, :cond_2

    move v3, p1

    goto :goto_2

    :cond_2
    move v3, p2

    :goto_2
    if-eqz p4, :cond_3

    move p4, p1

    goto :goto_3

    :cond_3
    move p4, p2

    :goto_3
    if-eqz p5, :cond_4

    move v4, p1

    goto :goto_4

    :cond_4
    move v4, p2

    :goto_4
    if-eqz p5, :cond_5

    move p5, p1

    goto :goto_5

    :cond_5
    move p5, p2

    :goto_5
    if-eqz p6, :cond_6

    move v5, p1

    goto :goto_6

    :cond_6
    move v5, p2

    :goto_6
    if-eqz p6, :cond_7

    goto :goto_7

    :cond_7
    move p1, p2

    :goto_7
    const/16 p2, 0x8

    new-array p2, p2, [F

    aput v2, p2, v1

    const/4 p6, 0x1

    aput p3, p2, p6

    const/4 p3, 0x2

    aput v3, p2, p3

    const/4 p3, 0x3

    aput p4, p2, p3

    const/4 p3, 0x4

    aput v4, p2, p3

    const/4 p3, 0x5

    aput p5, p2, p3

    const/4 p3, 0x6

    aput v5, p2, p3

    const/4 p3, 0x7

    aput p1, p2, p3

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-object v0
.end method

.method public final O(Lh2/l;)V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->M:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->O:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lw0/ab;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2, p1}, Lw0/ab;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final P(J)V
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->I:Lw0/ve;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final Q(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->s()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "saved_drive"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->K()V

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->e()V

    return-void
.end method

.method public final R(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->s()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "saved_regen"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->K()V

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->e()V

    return-void
.end method

.method public final S(Landroid/widget/TextView;Lw0/m4;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->E0:I

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/16 v1, 0xc

    if-eqz p2, :cond_5

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->C0:I

    const/4 v3, 0x1

    if-eq p2, v3, :cond_4

    const/4 v4, 0x2

    if-ne p2, v4, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v2, v1, p2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->M(IILjava/lang/Integer;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget p2, Lcom/ex/auto/QuickAccessFloaterService;->I0:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_3
    new-instance p1, Landroidx/fragment/app/q;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v1, p2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->M(IILjava/lang/Integer;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/ex/auto/QuickAccessFloaterService;->M(IILjava/lang/Integer;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget p2, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final T()F
    .locals 3

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "qa_tab_alpha"

    const/16 v2, 0x5a

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lk1/a;->k(III)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final U()Lx1/a;
    .locals 8

    const/16 v0, 0x26

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->t()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "qa_panel_width_pct"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x32

    const/16 v4, 0xc8

    invoke-static {v1, v2, v4}, Lk1/a;->k(III)I

    move-result v1

    int-to-float v1, v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v1, v5

    mul-float/2addr v1, v0

    float-to-int v0, v1

    const/16 v1, 0x14

    const/16 v6, 0x78

    invoke-static {v0, v1, v6}, Lk1/a;->k(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v0

    const/16 v1, 0x40

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->t()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "qa_panel_height_pct"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3, v2, v4}, Lk1/a;->k(III)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/16 v2, 0x1e

    invoke-static {v1, v2, v4}, Lk1/a;->k(III)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lx1/a;

    invoke-direct {v2, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final V(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->Q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->Q:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lw0/d0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lw0/d0;-><init>(Ljava/lang/Object;ZI)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final W(Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->u:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->F0:I

    invoke-virtual {p0, p1, v0}, Lcom/ex/auto/QuickAccessFloaterService;->k(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->G0:I

    invoke-virtual {p0, p1, v0}, Lcom/ex/auto/QuickAccessFloaterService;->k(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/ex/auto/QuickAccessFloaterService;->l(Landroid/widget/TextView;)V

    :goto_0
    const-string v0, "AEB"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_2
    new-instance p1, Landroidx/fragment/app/q;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public final X(Lw0/sf;)V
    .locals 3

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "avas_muted_saved"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v1, Lcom/ex/auto/QuickAccessFloaterService;->G0:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/ex/auto/QuickAccessFloaterService;->F0:I

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/ex/auto/QuickAccessFloaterService;->k(Landroid/widget/TextView;I)V

    if-eqz v0, :cond_1

    const-string v0, "AVAS\n\u2717"

    goto :goto_1

    :cond_1
    const-string v0, "AVAS\n\u2713"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final Y(Lw0/sf;)V
    .locals 3

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "recirc_guard_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v1, Lcom/ex/auto/QuickAccessFloaterService;->F0:I

    invoke-virtual {p0, p1, v1}, Lcom/ex/auto/QuickAccessFloaterService;->k(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ex/auto/QuickAccessFloaterService;->l(Landroid/widget/TextView;)V

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "\ud83c\udf00\n\u2713"

    goto :goto_1

    :cond_1
    const-string v0, "\ud83c\udf00\n\u2717"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final Z(Lw0/sf;)V
    .locals 3

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "telemetry_on"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v1, Lcom/ex/auto/QuickAccessFloaterService;->F0:I

    invoke-virtual {p0, p1, v1}, Lcom/ex/auto/QuickAccessFloaterService;->k(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ex/auto/QuickAccessFloaterService;->l(Landroid/widget/TextView;)V

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "\ud83d\udce1\n\u2713"

    goto :goto_1

    :cond_1
    const-string v0, "\ud83d\udce1"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/ex/auto/TimerFloaterService;->o:Z

    const-class v1, Lcom/ex/auto/TimerFloaterService;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "modo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "putExtra(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public final a0(Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->u()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ex/auto/QuickAccessFloaterService;->l(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->u()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_2

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->F0:I

    invoke-virtual {p0, p1, v0}, Lcom/ex/auto/QuickAccessFloaterService;->k(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_2
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->E0:I

    invoke-virtual {p0, p1, v0}, Lcom/ex/auto/QuickAccessFloaterService;->k(Landroid/widget/TextView;I)V

    :goto_1
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
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

.method public final b(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lw0/n;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lw0/n;-><init>(Landroid/app/Service;I)V

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b0()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->V:Lg0/a;

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

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->V:Lg0/a;

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->W:Lw0/pf;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->W:Lw0/pf;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ex/auto/QuickAccessFloaterService;->v(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->Q:Z

    sput-boolean v0, Lcom/ex/auto/QuickAccessFloaterService;->z0:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lw0/ve;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final c(I)V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    const-string v1, "getString(...)"

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->z()V

    const p1, 0x7f0f00ef

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->n0:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, p1

    const/4 p1, 0x0

    const/4 v3, 0x7

    invoke-static {v2, p1, v3}, Lk1/a;->k(III)I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->n0:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f0f0199

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ex/auto/QuickAccessFloaterService;->o0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    new-instance v0, Lw0/we;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lw0/we;-><init>(Lcom/ex/auto/QuickAccessFloaterService;II)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/QuickAccessFloaterService;->O(Lh2/l;)V

    return-void

    :cond_2
    new-instance v0, Lw0/we;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lw0/we;-><init>(Lcom/ex/auto/QuickAccessFloaterService;II)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/QuickAccessFloaterService;->O(Lh2/l;)V

    return-void
.end method

.method public final d()V
    .locals 15

    const-string v1, "tela_preta_prefs"

    const/4 v7, 0x0

    invoke-virtual {p0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "quick_access_enabled"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "gestures_enabled"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v3, Lw0/d4;->a:Lw0/d4;

    if-eqz v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    sget-object v1, Lw0/d4;->b:Lw0/d4;

    goto :goto_0

    :cond_1
    sget-object v1, Lw0/d4;->c:Lw0/d4;

    :goto_0
    const/4 v8, 0x0

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->d:Lw0/eh;

    if-nez v1, :cond_5

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v1, v2}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->b:Landroid/view/WindowManager;

    new-instance v1, Lw0/eh;

    invoke-direct {v1, p0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v2, 0x43200000    # 160.0f

    iput v2, v1, Lw0/eh;->b:F

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->d:Lw0/eh;

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u203a"

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v1, Lcom/ex/auto/QuickAccessFloaterService;->D0:I

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget v1, Lcom/ex/auto/QuickAccessFloaterService;->A0:I

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ex/auto/QuickAccessFloaterService;->N(IIZZZZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v9, p0, Lcom/ex/auto/QuickAccessFloaterService;->f:Landroid/widget/TextView;

    new-instance v2, La1/o;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, La1/o;-><init>(Landroid/content/ContextWrapper;I)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->U()Lx1/a;

    move-result-object v2

    iget-object v3, v2, Lx1/a;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v2, v2, Lx1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/ex/auto/QuickAccessFloaterService;->d:Lw0/eh;

    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/ex/auto/QuickAccessFloaterService;->f:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/ex/auto/QuickAccessFloaterService;->N(IIZZZZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    iput-object v9, p0, Lcom/ex/auto/QuickAccessFloaterService;->g:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v5

    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v3

    invoke-virtual {v2, v4, v5, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    iput-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->i()V

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->g:Landroid/widget/LinearLayout;

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->g()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->g:Landroid/widget/LinearLayout;

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->d:Lw0/eh;

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->g:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const/16 v13, 0x108

    const/4 v14, -0x3

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x7f6

    invoke-direct/range {v9 .. v14}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v1, 0x800013

    iput v1, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v7, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->t()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "qa_y_pos"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iput-object v9, p0, Lcom/ex/auto/QuickAccessFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->b:Landroid/view/WindowManager;

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->d:Lw0/eh;

    iget-object v3, p0, Lcom/ex/auto/QuickAccessFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->T()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->g:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->d:Lw0/eh;

    if-eqz v1, :cond_4

    move-object v8, v1

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr v1, v2

    invoke-virtual {v8, v1}, Lw0/eh;->setStepPx(F)V

    new-instance v1, Le0/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Le0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v8, v1}, Lw0/eh;->setOnTwoFingerHorizontalSwipeListener(Lw0/dh;)V

    :cond_5
    return-void

    :cond_6
    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->d:Lw0/eh;

    if-eqz v1, :cond_7

    :try_start_0
    iget-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->b:Landroid/view/WindowManager;

    if-eqz v2, :cond_7

    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    iput-object v8, p0, Lcom/ex/auto/QuickAccessFloaterService;->d:Lw0/eh;

    iput-object v8, p0, Lcom/ex/auto/QuickAccessFloaterService;->g:Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/ex/auto/QuickAccessFloaterService;->f:Landroid/widget/TextView;

    return-void
.end method

.method public final e()V
    .locals 5

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v0, "quick_access"

    invoke-static {v0}, Lw0/t1;->Y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->s()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "saved_drive"

    const v2, 0x22010102

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->s()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "saved_regen"

    const v3, 0x20020502

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "UPDATE_DRIVE_REGEN_MODES"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->z()V

    return-void

    :cond_1
    new-instance v2, Lw0/b7;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lw0/b7;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->O(Lh2/l;)V

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->O:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lw0/ue;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v1, v3}, Lw0/ue;-><init>(Lcom/ex/auto/QuickAccessFloaterService;II)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1c2

    invoke-virtual {v0, v2, v3, v4, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 4

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->U()Lx1/a;

    move-result-object v0

    iget-object v1, v0, Lx1/a;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, Lx1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final g()Landroid/widget/LinearLayout;
    .locals 15

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->x()F

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v4, 0xe

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    move v4, v5

    :cond_0
    sget v6, Lcom/ex/auto/QuickAccessFloaterService;->B0:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/ex/auto/QuickAccessFloaterService;->C0:I

    invoke-virtual {p0, v8, v4, v7, v2}, Lcom/ex/auto/QuickAccessFloaterService;->M(IILjava/lang/Integer;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    int-to-float v4, v3

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {p0, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v7

    invoke-virtual {p0, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v8

    invoke-virtual {p0, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    const/16 v9, 0xa

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v0, v9

    invoke-virtual {p0, v0}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v0

    invoke-virtual {v1, v7, v8, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v5}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v9

    invoke-virtual {v0, v7, v4, v4, v9}, Landroid/view/View;->setPadding(IIII)V

    const v7, 0x7f0f02ad

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "getString(...)"

    invoke-static {v7, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v10, Lcom/ex/auto/QuickAccessFloaterService;->E0:I

    invoke-virtual {p0, v10, v7}, Lcom/ex/auto/QuickAccessFloaterService;->C(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v7, 0x7f0f0231

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lw0/ze;

    const/4 v12, 0x0

    invoke-direct {v11, v12, p0}, Lw0/ze;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    sget v12, Lcom/ex/auto/QuickAccessFloaterService;->F0:I

    invoke-virtual {p0, v7, v12, v11}, Lcom/ex/auto/QuickAccessFloaterService;->D(Ljava/lang/String;ILh2/a;)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, p0, Lcom/ex/auto/QuickAccessFloaterService;->j:Landroid/widget/TextView;

    const v7, 0x7f0f022f

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lw0/ze;

    const/4 v13, 0x1

    invoke-direct {v11, v13, p0}, Lw0/ze;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {p0, v7, v10, v11}, Lcom/ex/auto/QuickAccessFloaterService;->D(Ljava/lang/String;ILh2/a;)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, p0, Lcom/ex/auto/QuickAccessFloaterService;->k:Landroid/widget/TextView;

    const v7, 0x7f0f0235

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lw0/ze;

    const/4 v13, 0x2

    invoke-direct {v11, v13, p0}, Lw0/ze;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    sget v13, Lcom/ex/auto/QuickAccessFloaterService;->G0:I

    invoke-virtual {p0, v7, v13, v11}, Lcom/ex/auto/QuickAccessFloaterService;->D(Ljava/lang/String;ILh2/a;)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, p0, Lcom/ex/auto/QuickAccessFloaterService;->l:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ex/auto/QuickAccessFloaterService;->j:Landroid/widget/TextView;

    invoke-static {v7}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v11, p0, Lcom/ex/auto/QuickAccessFloaterService;->k:Landroid/widget/TextView;

    invoke-static {v11}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v14, p0, Lcom/ex/auto/QuickAccessFloaterService;->l:Landroid/widget/TextView;

    invoke-static {v14}, Li2/g;->b(Ljava/lang/Object;)V

    filled-new-array {v7, v11, v14}, [Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v7}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->F()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v5}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v5

    invoke-virtual {p0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v3

    invoke-virtual {p0, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v8

    invoke-virtual {v6, v5, v3, v4, v8}, Landroid/view/View;->setPadding(IIII)V

    const v3, 0x7f0f02b6

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcom/ex/auto/QuickAccessFloaterService;->D0:I

    invoke-virtual {p0, v5, v3}, Lcom/ex/auto/QuickAccessFloaterService;->C(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v5, 0x7f0f0239

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lw0/ze;

    const/4 v11, 0x3

    invoke-direct {v8, v11, p0}, Lw0/ze;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {p0, v5, v13, v8}, Lcom/ex/auto/QuickAccessFloaterService;->D(Ljava/lang/String;ILh2/a;)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/ex/auto/QuickAccessFloaterService;->m:Landroid/widget/TextView;

    const v5, 0x7f0f0233

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lw0/ze;

    const/4 v11, 0x4

    invoke-direct {v8, v11, p0}, Lw0/ze;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {p0, v5, v10, v8}, Lcom/ex/auto/QuickAccessFloaterService;->D(Ljava/lang/String;ILh2/a;)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/ex/auto/QuickAccessFloaterService;->n:Landroid/widget/TextView;

    const v5, 0x7f0f0237

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lw0/ze;

    const/4 v9, 0x5

    invoke-direct {v8, v9, p0}, Lw0/ze;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {p0, v5, v12, v8}, Lcom/ex/auto/QuickAccessFloaterService;->D(Ljava/lang/String;ILh2/a;)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/ex/auto/QuickAccessFloaterService;->o:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ex/auto/QuickAccessFloaterService;->m:Landroid/widget/TextView;

    invoke-static {v5}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/ex/auto/QuickAccessFloaterService;->n:Landroid/widget/TextView;

    invoke-static {v8}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/ex/auto/QuickAccessFloaterService;->o:Landroid/widget/TextView;

    invoke-static {v9}, Li2/g;->b(Ljava/lang/Object;)V

    filled-new-array {v5, v8, v9}, [Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v5}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->F()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-virtual {p0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v2

    invoke-direct {v0, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v2

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public final h(Ljava/util/ArrayList;)Landroid/widget/LinearLayout;
    .locals 10

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, 0x3

    invoke-static {v2, v2}, Lk1/a;->h(II)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/lit8 v4, v3, 0x3

    rem-int/lit8 v5, v3, 0x3

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move v1, v6

    :cond_0
    add-int/2addr v4, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v6

    :goto_0
    if-ltz v4, :cond_3

    if-ge v4, v3, :cond_3

    sub-int v5, v3, v4

    if-le v2, v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v6

    :goto_2
    if-ge v8, v5, :cond_2

    add-int v9, v8, v4

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v6

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v1, :cond_4

    move v1, v6

    goto :goto_4

    :cond_4
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v1

    :goto_4
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v1, v2

    goto :goto_3

    :cond_6
    return-object v0
.end method

.method public final i()V
    .locals 11

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->r:Lw0/sf;

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->s:Lw0/sf;

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->p:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->q:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->t:Lw0/sf;

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->v:Lw0/sf;

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->x:Lw0/sf;

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->y:Lw0/sf;

    sget-object v1, Lcom/ex/auto/QuickAccessFloaterService;->v0:Ljava/util/List;

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->t()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "qa_icon_order"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v3, ","

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v0, v3, v2, v4}, Lo2/k;->v0(Ljava/lang/String;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :cond_3
    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {v0, v3}, Ly1/g;->g0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/ex/auto/QuickAccessFloaterService;->w0:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->t()Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "qa_visible_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    const-string v3, "power_off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_7

    :cond_9
    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->B(Ljava/lang/String;)Lw0/sf;

    move-result-object v1

    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->G0:I

    invoke-virtual {p0, v1, v3}, Lcom/ex/auto/QuickAccessFloaterService;->k(Landroid/widget/TextView;I)V

    goto/16 :goto_8

    :sswitch_1
    const-string v3, "telemetry"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_7

    :cond_a
    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->B(Ljava/lang/String;)Lw0/sf;

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->v:Lw0/sf;

    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->Z(Lw0/sf;)V

    goto/16 :goto_8

    :sswitch_2
    const-string v3, "drive_regen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_7

    :cond_b
    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->x()F

    move-result v1

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Lw0/df;

    const/4 v7, 0x0

    invoke-direct {v6, v7, p0}, Lw0/df;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ex/auto/QuickAccessFloaterService;->p:Landroid/widget/TextView;

    iput-object v7, p0, Lcom/ex/auto/QuickAccessFloaterService;->q:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lw0/sf;

    invoke-direct {v4, p0}, Lw0/sf;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v4, v3}, Lw0/sf;->setIconId(Ljava/lang/String;)V

    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lw0/sf;->setIconColor(Ljava/lang/Integer;)V

    const/16 v3, 0xd

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    const/4 v3, 0x5

    if-ge v1, v3, :cond_c

    move v1, v3

    :cond_c
    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v1

    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v5

    goto/16 :goto_8

    :sswitch_3
    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_7

    :cond_d
    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->B(Ljava/lang/String;)Lw0/sf;

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->r:Lw0/sf;

    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->a0(Landroid/widget/TextView;)V

    new-instance v3, Lw0/cf;

    invoke-direct {v3, p0}, Lw0/cf;-><init>(Lcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_8

    :sswitch_4
    const-string v3, "avas"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_7

    :cond_e
    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->B(Ljava/lang/String;)Lw0/sf;

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->s:Lw0/sf;

    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->X(Lw0/sf;)V

    goto/16 :goto_8

    :sswitch_5
    const-string v3, "aeb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_7

    :cond_f
    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->B(Ljava/lang/String;)Lw0/sf;

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->t:Lw0/sf;

    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->W(Landroid/widget/TextView;)V

    iget-object v3, p0, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_10

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->z()V

    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->W(Landroid/widget/TextView;)V

    goto/16 :goto_8

    :cond_10
    new-instance v3, Lw0/i9;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4, v1}, Lw0/i9;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->O(Lh2/l;)V

    goto/16 :goto_8

    :sswitch_6
    const-string v3, "split_screen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_7

    :cond_11
    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->B(Ljava/lang/String;)Lw0/sf;

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->x:Lw0/sf;

    sget-object v3, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    if-eqz v3, :cond_12

    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->E0:I

    invoke-virtual {p0, v1, v3}, Lcom/ex/auto/QuickAccessFloaterService;->k(Landroid/widget/TextView;I)V

    goto :goto_5

    :cond_12
    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->l(Landroid/widget/TextView;)V

    :goto_5
    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :sswitch_7
    const-string v3, "recirc_guard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_7

    :cond_13
    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->B(Ljava/lang/String;)Lw0/sf;

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->w:Lw0/sf;

    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->Y(Lw0/sf;)V

    goto :goto_8

    :sswitch_8
    const-string v3, "app_pip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_7

    :cond_14
    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->B(Ljava/lang/String;)Lw0/sf;

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->y:Lw0/sf;

    sget-object v3, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    if-eqz v3, :cond_15

    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->E0:I

    invoke-virtual {p0, v1, v3}, Lcom/ex/auto/QuickAccessFloaterService;->k(Landroid/widget/TextView;I)V

    goto :goto_6

    :cond_15
    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->l(Landroid/widget/TextView;)V

    :goto_6
    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->H0:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :sswitch_9
    const-string v3, "karaoke"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    :goto_7
    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->B(Ljava/lang/String;)Lw0/sf;

    move-result-object v1

    goto :goto_8

    :cond_16
    invoke-virtual {p0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->B(Ljava/lang/String;)Lw0/sf;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "lyrics_floater_enabled"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_17

    const v3, -0xe246ac

    invoke-virtual {p0, v1, v3}, Lcom/ex/auto/QuickAccessFloaterService;->k(Landroid/widget/TextView;I)V

    :cond_17
    :goto_8
    const/16 v3, 0x4c

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->x()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {p0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v3

    iget-object v4, p0, Lcom/ex/auto/QuickAccessFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_8

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v6

    invoke-virtual {p0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v3

    invoke-virtual {v5, v6, v2, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_18
    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->K()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37caea1c -> :sswitch_9
        -0x2f4d9d87 -> :sswitch_8
        -0x2ce42810 -> :sswitch_7
        -0xab92ecf -> :sswitch_6
        0x178be -> :sswitch_5
        0x2ddf27 -> :sswitch_4
        0x37af15 -> :sswitch_3
        0x2b4e1d48 -> :sswitch_2
        0x2e8323b9 -> :sswitch_1
        0x32655b35 -> :sswitch_0
    .end sparse-switch
.end method

.method public final j()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lw0/ve;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final k(Landroid/widget/TextView;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {p0, p2, v2, v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->M(IILjava/lang/Integer;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final l(Landroid/widget/TextView;)V
    .locals 4

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->B0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->C0:I

    const/16 v3, 0xe

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->M(IILjava/lang/Integer;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final m()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->z:Z

    iput-boolean v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->A:Z

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const-string v1, "\u203a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->T()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->I:Lw0/ve;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f050041

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41b00000    # 22.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 p1, 0x16

    invoke-virtual {p0, p1}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result p1

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 8

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ex/auto/QuickAccessFloaterService;->y0:Z

    sput-object p0, Lcom/ex/auto/QuickAccessFloaterService;->x0:Lcom/ex/auto/QuickAccessFloaterService;

    const v0, 0x7f0f0546

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(...)"

    invoke-static {v3, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0f02a9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0f02b1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    const-string v2, "quick_access_floater"

    const v5, 0x1080039

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lw0/t1;->E(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    const/16 v2, 0x58

    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->d()V

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->z()V

    sget-object v0, Lw0/lh;->a:Lw0/lh;

    iget-object v2, v1, Lcom/ex/auto/QuickAccessFloaterService;->a0:Lw0/ze;

    invoke-virtual {v0, p0, v2}, Lw0/lh;->a(Landroid/app/Service;Lh2/a;)V

    iget-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->b0:Lw0/pf;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ex.auto.ACTION_HVAC_FAN_SWIPE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->c0:Lw0/pf;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ex.auto.ACTION_HVAC_TEMP_SWIPE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->f0:Lw0/pf;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ex.auto.ACTION_OPEN_REAR_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->g0:Lw0/pf;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ex.auto.ACTION_GO_TO_LAST_APP"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->h0:Lw0/pf;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ex.auto.ACTION_OPEN_FAVORITES"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->i0:Lw0/pf;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ex.auto.ACTION_THREE_FINGER_H_SWIPE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Lw0/pf;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ex.auto.ACTION_THREE_FINGER_V_SWIPE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->d0:Lw0/pf;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "UPDATE_DRIVE_REGEN_MODES"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->e0:Lw0/pf;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ex.auto.ACTION_SCREEN_OFF_COMMAND"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ex/auto/QuickAccessFloaterService;->y0:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/ex/auto/QuickAccessFloaterService;->x0:Lcom/ex/auto/QuickAccessFloaterService;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->M:Z

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    sget-object v1, Lw0/lh;->a:Lw0/lh;

    iget-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->a0:Lw0/ze;

    invoke-virtual {v1, p0, v2}, Lw0/lh;->b(Landroid/app/Service;Lh2/a;)V

    :try_start_0
    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->b0:Lw0/pf;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->c0:Lw0/pf;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->f0:Lw0/pf;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->g0:Lw0/pf;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->h0:Lw0/pf;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->i0:Lw0/pf;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Lw0/pf;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->d0:Lw0/pf;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->e0:Lw0/pf;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    iget-boolean v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->Q:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->b0()V

    :cond_0
    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->V:Lg0/a;

    if-eqz v1, :cond_1

    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :cond_1
    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->V:Lg0/a;

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->W:Lw0/pf;

    if-eqz v1, :cond_2

    :try_start_a
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :cond_2
    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->W:Lw0/pf;

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->O:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :try_start_b
    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->J:Landroid/car/Car;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/car/Car;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :cond_3
    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->J:Landroid/car/Car;

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->L:Landroid/car/media/CarAudioManager;

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->d:Lw0/eh;

    if-eqz v1, :cond_4

    :try_start_c
    iget-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->b:Landroid/view/WindowManager;

    if-eqz v2, :cond_4

    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :cond_4
    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    :try_start_d
    iget-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->b:Landroid/view/WindowManager;

    if-eqz v2, :cond_5

    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :cond_5
    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->e:Landroid/widget/LinearLayout;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final p(I)I
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

.method public final q()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->z:Z

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v1, "\u2039"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->T()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->K()V

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->s:Lw0/sf;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/ex/auto/QuickAccessFloaterService;->X(Lw0/sf;)V

    :cond_4
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    return-void
.end method

.method public final r()Landroid/content/SharedPreferences;
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->D:Lx1/c;

    invoke-virtual {v0}, Lx1/c;->a()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final s()Landroid/content/SharedPreferences;
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->C:Lx1/c;

    invoke-virtual {v0}, Lx1/c;->a()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final t()Landroid/content/SharedPreferences;
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->B:Lx1/c;

    invoke-virtual {v0}, Lx1/c;->a()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final u()Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->E:Lx1/c;

    invoke-virtual {v0}, Lx1/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public final v(I)V
    .locals 5

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->Z:Landroidx/activity/d;

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->X:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/ex/auto/QuickAccessFloaterService;->b:Landroid/view/WindowManager;

    if-eqz v3, :cond_1

    invoke-interface {v3, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->X:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->Y:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string v3, "QuickAccessFloater"

    if-lez p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "hideScreenOffClockOverlay: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u2014 retentando ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lw0/ue;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v2}, Lw0/ue;-><init>(Lcom/ex/auto/QuickAccessFloaterService;II)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    const-string p1, "hideScreenOffClockOverlay: desisti ap\u00f3s retentativas \u2014 view pode ter ficado presa"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->X:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/ex/auto/QuickAccessFloaterService;->Y:Landroid/widget/TextView;

    :goto_2
    return-void
.end method

.method public final w(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lw0/xe;Lh2/a;)Landroid/view/ViewGroup;
    .locals 7

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    const v3, 0x7f070074

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    const v3, 0x7f05003e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v5

    invoke-virtual {p0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v3

    const/16 v6, 0xe

    invoke-virtual {p0, v6}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v6

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const p1, 0x1080093

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x48

    invoke-virtual {p0, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    invoke-direct {p1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f050041

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {p2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v5

    iput v5, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lw0/w;

    const/4 p2, 0x5

    invoke-direct {p1, p4, p2}, Lw0/w;-><init>(Lh2/a;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p2, 0x96

    invoke-virtual {p0, p2}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result p2

    invoke-direct {p1, p2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xc

    invoke-virtual {p0, p2}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    if-nez p3, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_1
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p4, "\u2715"

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p4, 0x41600000    # 14.0f

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {p1, p4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p4, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v0, 0x7f050035

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p4, Lw0/w;

    const/4 v0, 0x6

    invoke-direct {p4, p3, v0}, Lw0/w;-><init>(Lh2/a;I)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p4, 0x1c

    invoke-virtual {p0, p4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v0

    invoke-virtual {p0, p4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result p4

    const v1, 0x800035

    invoke-direct {p3, v0, p4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 p4, 0x4

    invoke-virtual {p0, p4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v0

    iput v0, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, p4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public final x()F
    .locals 3

    invoke-virtual {p0}, Lcom/ex/auto/QuickAccessFloaterService;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "qa_icon_size_pct"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x32

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Lk1/a;->k(III)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final y(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final z()V
    .locals 5

    iget-boolean v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->M:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->N:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->N:Z

    iget-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/ue;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lw0/ue;-><init>(Lcom/ex/auto/QuickAccessFloaterService;II)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_0
    new-instance v1, Lw0/z0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lw0/z0;-><init>(Ljava/lang/Object;II)V

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/QuickAccessFloaterService;->J:Landroid/car/Car;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ex/auto/QuickAccessFloaterService;->N:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initDriveRegenCar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "QuickAccessFloater"

    invoke-static {v0, v1, v2}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
