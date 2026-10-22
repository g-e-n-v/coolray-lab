.class public Lcom/ex/auto/MainActivity;
.super Le/j;
.source "SourceFile"


# static fields
.field public static final synthetic z1:I


# instance fields
.field public final A:Ljava/util/concurrent/atomic/AtomicInteger;

.field public A0:J

.field public final B:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final B0:Landroidx/activity/d;

.field public final C:Ljava/util/concurrent/ThreadPoolExecutor;

.field public C0:Ljava/lang/String;

.field public final D:Ljava/util/ArrayList;

.field public D0:Ljava/lang/String;

.field public final E:Ljava/util/ArrayList;

.field public E0:Ljava/lang/Integer;

.field public final F:Ljava/util/ArrayList;

.field public F0:J

.field public final G:I

.field public final G0:Lw0/jc;

.field public final H:I

.field public H0:Z

.field public I:I

.field public I0:Ljava/util/List;

.field public final J:Lx1/c;

.field public volatile J0:Z

.field public K:Landroid/net/wifi/WifiManager;

.field public K0:Ljava/lang/Boolean;

.field public volatile L:Landroid/car/Car;

.field public volatile L0:Z

.field public volatile M:Landroid/car/hardware/property/CarPropertyManager;

.field public M0:J

.field public volatile N:Landroid/car/media/CarAudioManager;

.field public N0:Ljava/lang/Boolean;

.field public O:Z

.field public volatile O0:Lw0/o4;

.field public P:Ljava/lang/String;

.field public P0:J

.field public Q:J

.field public Q0:Landroid/widget/Toast;

.field public R:I

.field public final R0:Ljava/util/ArrayList;

.field public S:Z

.field public final S0:[Z

.field public T:I

.field public T0:Ljava/lang/String;

.field public U:I

.field public volatile U0:Ljava/lang/String;

.field public final V:Ljava/util/LinkedHashMap;

.field public volatile V0:Ljava/lang/String;

.field public final W:Ljava/util/LinkedHashMap;

.field public W0:Landroid/media/MediaPlayer;

.field public final X:Ljava/util/LinkedHashMap;

.field public volatile X0:Ljava/lang/Boolean;

.field public final Y:Ljava/util/ArrayList;

.field public Y0:J

.field public final Z:Ljava/util/ArrayList;

.field public volatile Z0:Z

.field public final a0:Lx1/c;

.field public a1:Landroid/widget/ProgressBar;

.field public b0:Ljava/util/List;

.field public b1:Le/i;

.field public c0:I

.field public volatile c1:Ljava/lang/Boolean;

.field public d0:Ljava/lang/Object;

.field public volatile d1:Z

.field public e0:I

.field public e1:J

.field public f0:Ljava/util/List;

.field public volatile f1:Ljava/lang/Boolean;

.field public g0:I

.field public g1:J

.field public h0:Z

.field public volatile h1:Z

.field public i0:Ljava/lang/CharSequence;

.field public final i1:Ljava/lang/String;

.field public j0:Ljava/lang/String;

.field public final j1:I

.field public final k0:Lx1/c;

.field public final k1:Lw0/jc;

.field public l0:Z

.field public final l1:J

.field public m0:Z

.field public m1:Z

.field public n0:Z

.field public volatile n1:Z

.field public o0:Z

.field public o1:Ljava/lang/String;

.field public volatile p0:Z

.field public p1:Ljava/lang/String;

.field public volatile q0:Ljava/lang/Boolean;

.field public final q1:[I

.field public volatile r0:Z

.field public final r1:[I

.field public final s0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final s1:Ljava/util/Set;

.field public t:Landroidx/emoji2/text/m;

.field public volatile t0:Z

.field public final t1:Ljava/util/Set;

.field public final u:Lx1/c;

.field public final u0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final u1:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final v:Landroid/os/Handler;

.field public final v0:Ljava/lang/StringBuilder;

.field public v1:Ljava/lang/Integer;

.field public final w:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final w0:Ljava/lang/Object;

.field public w1:Ljava/lang/Integer;

.field public final x:Ljava/util/concurrent/ThreadPoolExecutor;

.field public x0:Z

.field public final x1:Ljava/util/Set;

.field public volatile y:Z

.field public final y0:Lw0/jc;

.field public final y1:Ljava/util/Set;

.field public final z:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public volatile z0:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Le/j;-><init>()V

    new-instance v0, Lw0/h9;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v1, Lx1/c;

    invoke-direct {v1, v0}, Lx1/c;-><init>(Lh2/a;)V

    iput-object v1, p0, Lcom/ex/auto/MainActivity;->u:Lx1/c;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    const-string v0, "manutencao"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lw0/t1;->C(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lw0/l1;

    const/16 v3, 0xa

    invoke-direct {v0, v3}, Lw0/l1;-><init>(I)V

    const-string v3, "vehicle-panel"

    const/4 v4, 0x2

    invoke-static {v3, v0, v4}, Lw0/t1;->C(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->x:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lw0/l1;

    const/16 v3, 0xb

    invoke-direct {v0, v3}, Lw0/l1;-><init>(I)V

    const-string v3, "car-command"

    invoke-static {v3, v0}, Lw0/t1;->a(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->z:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lw0/l1;

    const/16 v3, 0xc

    invoke-direct {v0, v3}, Lw0/l1;-><init>(I)V

    const-string v3, "state-reader"

    invoke-static {v3, v0, v4}, Lw0/t1;->C(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v0, "lentas"

    invoke-static {v0, v1, v2}, Lw0/t1;->C(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->D:Ljava/util/ArrayList;

    const/16 v0, 0x4e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Corre\u00e7\u00e3o do som de travamento"

    invoke-static {v1}, Lk1/a;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lx1/a;

    invoke-direct {v3, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Ly1/s;->W(Lx1/a;)Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->E:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->F:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/ex/auto/MainActivity;->G:I

    iput v4, p0, Lcom/ex/auto/MainActivity;->H:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/ex/auto/MainActivity;->I:I

    new-instance v3, Lw0/ub;

    const/4 v5, 0x2

    invoke-direct {v3, p0, v5}, Lw0/ub;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v5, Lx1/c;

    invoke-direct {v5, v3}, Lx1/c;-><init>(Lh2/a;)V

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->J:Lx1/c;

    const-string v3, ""

    iput-object v3, p0, Lcom/ex/auto/MainActivity;->P:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ex/auto/MainActivity;->S:Z

    const v5, 0x7f090217

    iput v5, p0, Lcom/ex/auto/MainActivity;->U:I

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->V:Ljava/util/LinkedHashMap;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->W:Ljava/util/LinkedHashMap;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->X:Ljava/util/LinkedHashMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->Y:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->Z:Ljava/util/ArrayList;

    new-instance v5, Lw0/ub;

    const/4 v6, 0x7

    invoke-direct {v5, p0, v6}, Lw0/ub;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v6, Lx1/c;

    invoke-direct {v6, v5}, Lx1/c;-><init>(Lh2/a;)V

    iput-object v6, p0, Lcom/ex/auto/MainActivity;->a0:Lx1/c;

    sget-object v5, Ly1/p;->a:Ly1/p;

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->b0:Ljava/util/List;

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->d0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->f0:Ljava/util/List;

    iput-boolean v0, p0, Lcom/ex/auto/MainActivity;->h0:Z

    iput-object v3, p0, Lcom/ex/auto/MainActivity;->i0:Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/ex/auto/MainActivity;->j0:Ljava/lang/String;

    new-instance v5, Lw0/v8;

    const/4 v6, 0x5

    invoke-direct {v5, p0, v6}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v6, Lx1/c;

    invoke-direct {v6, v5}, Lx1/c;-><init>(Lh2/a;)V

    iput-object v6, p0, Lcom/ex/auto/MainActivity;->k0:Lx1/c;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->s0:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->u0:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x2000

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->v0:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->w0:Ljava/lang/Object;

    new-instance v5, Lw0/jc;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lw0/jc;-><init>(Lcom/ex/auto/MainActivity;I)V

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->y0:Lw0/jc;

    new-instance v5, Landroidx/activity/d;

    const/16 v6, 0x10

    invoke-direct {v5, v6, p0}, Landroidx/activity/d;-><init>(ILjava/lang/Object;)V

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->B0:Landroidx/activity/d;

    new-instance v5, Lw0/jc;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6}, Lw0/jc;-><init>(Lcom/ex/auto/MainActivity;I)V

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->G0:Lw0/jc;

    sget-object v5, Lw0/o4;->e:Lw0/o4;

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->O0:Lw0/o4;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->R0:Ljava/util/ArrayList;

    const/16 v5, 0x8

    new-array v5, v5, [Z

    iput-object v5, p0, Lcom/ex/auto/MainActivity;->S0:[Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v5, v4, v6, v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ly1/h;->V([Ljava/lang/Object;)Ljava/util/List;

    const-string v2, "/sys/devices/platform/1000b000.pinctrl/mt_gpio"

    iput-object v2, p0, Lcom/ex/auto/MainActivity;->i1:Ljava/lang/String;

    const/16 v2, 0x97

    iput v2, p0, Lcom/ex/auto/MainActivity;->j1:I

    new-instance v2, Lw0/jc;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lw0/jc;-><init>(Lcom/ex/auto/MainActivity;I)V

    iput-object v2, p0, Lcom/ex/auto/MainActivity;->k1:Lw0/jc;

    const-wide/16 v4, 0x1e

    iput-wide v4, p0, Lcom/ex/auto/MainActivity;->l1:J

    iput-object v3, p0, Lcom/ex/auto/MainActivity;->o1:Ljava/lang/String;

    iput-object v3, p0, Lcom/ex/auto/MainActivity;->p1:Ljava/lang/String;

    filled-new-array {v1, v0}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/ex/auto/MainActivity;->q1:[I

    const/high16 v2, 0x1000000

    filled-new-array {v1, v0, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->r1:[I

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

    move-result-object v3

    invoke-static {v3}, Lk1/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/ex/auto/MainActivity;->s1:Ljava/util/Set;

    const v3, 0x22010101

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x22010102

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x22010103

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lk1/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    iput-object v6, p0, Lcom/ex/auto/MainActivity;->t1:Ljava/util/Set;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v6, p0, Lcom/ex/auto/MainActivity;->u1:Ljava/util/concurrent/atomic/AtomicInteger;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lk1/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/ex/auto/MainActivity;->x1:Ljava/util/Set;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lk1/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->y1:Ljava/util/Set;

    return-void
.end method

.method public static D1(Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ScrollView;

    invoke-virtual {p0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void

    :cond_0
    instance-of v0, p0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, v1, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    return-void

    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ex/auto/MainActivity;->D1(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static F()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lkotlinx/coroutines/scheduling/h;

    const/16 v2, 0x15b3

    invoke-direct {v1, v2}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    const-string v2, "echo CANAL_OK"

    const/16 v3, 0xbb8

    invoke-virtual {v1, v3, v2}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "runShell(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CANAL_OK"

    invoke-static {v1, v2, v0}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method public static F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V
    .locals 6

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v4, p5

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lw0/w9;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lw0/w9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;ZLh2/l;Lh2/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static G1(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "PHONE"

    invoke-static {p0, v0}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lw0/t1;->K(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "Falha no ADB local"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "exit_code="

    invoke-static {p0, v1, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ERRO:"

    invoke-static {p0, v1, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "REGRAS_NAO_ENCONTRADAS"

    invoke-static {p0, v1, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0, v0}, Lw0/t1;->e(Ljava/lang/String;Ljava/lang/String;)Lw0/c4;

    move-result-object v0

    sget-object v1, Lw0/c4;->c:Lw0/c4;

    if-eq v0, v1, :cond_2

    const-string v0, "Salvo:"

    invoke-static {p0, v0, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static H([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    return-object p0
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connadaptor_publicado_em_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V
    .locals 16

    move-object/from16 v2, p0

    move-object/from16 v13, p1

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x40

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object/from16 v1, p7

    :goto_0
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_1

    move-object v11, v3

    goto :goto_1

    :cond_1
    move-object/from16 v11, p8

    :goto_1
    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_2

    move-object v14, v3

    goto :goto_2

    :cond_2
    move-object/from16 v14, p9

    :goto_2
    and-int/lit16 v4, v0, 0x200

    const/4 v15, 0x1

    if-eqz v4, :cond_3

    move v12, v15

    goto :goto_3

    :cond_3
    move/from16 v12, p10

    :goto_3
    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_4

    move-object v4, v3

    goto :goto_4

    :cond_4
    move-object/from16 v4, p11

    :goto_4
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_5

    move-object v0, v3

    goto :goto_5

    :cond_5
    move-object/from16 v0, p12

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "main:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    move-object v5, v3

    if-eqz v5, :cond_7

    invoke-static {v5}, Lw0/zd;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const v0, 0x7f0f01e0

    const-string v1, "getString(...)"

    invoke-static {v0, v15, v2, v1}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    return-void

    :cond_7
    const/4 v3, 0x0

    if-eqz v13, :cond_8

    invoke-virtual {v13, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v2, v1, v3}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :try_start_0
    iget-object v1, v2, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v3, v1

    move-object v1, v0

    new-instance v0, Lw0/va;

    move-object/from16 v10, p2

    move-wide/from16 v8, p3

    move/from16 v4, p5

    move-object v15, v3

    move-object/from16 v3, p6

    invoke-direct/range {v0 .. v14}, Lw0/va;-><init>(Lh2/a;Lcom/ex/auto/MainActivity;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;Lh2/l;ZLandroid/view/View;Lh2/l;)V

    invoke-virtual {v15, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    if-eqz v5, :cond_a

    sget-object v1, Lw0/zd;->a:Landroidx/emoji2/text/m;

    invoke-static {v5}, Lw0/zd;->a(Ljava/lang/String;)V

    :cond_a
    if-eqz v13, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :cond_c
    const-string v0, "ADB"

    invoke-virtual {v2, v0, v1}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic K(Lcom/ex/auto/MainActivity;I)V
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/MainActivity;->J(ZZ)V

    return-void
.end method

.method public static K0(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-gt v4, v3, :cond_0

    const/16 v4, 0x3a

    if-ge v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x61

    if-gt v4, v3, :cond_1

    const/16 v4, 0x67

    if-ge v3, v4, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static M(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "^[\\s\\p{So}\\p{Sk}\\p{Cn}]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "input"

    invoke-static {p0, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "replaceAll(...)"

    invoke-static {p0, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static N0(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4

    const/16 v0, 0x3f

    invoke-static {p0, v0}, Lo2/k;->f0(Ljava/lang/String;C)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "&"

    goto :goto_0

    :cond_0
    const-string v0, "?"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "nocache="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p0, v0}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const v0, 0x1d4c0

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Cache-Control"

    const-string v1, "no-cache, no-store"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Pragma"

    const-string v1, "no-cache"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static Q0(Lcom/ex/auto/MainActivity;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lw0/w5;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lw0/w5;-><init>(I)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ex/auto/MainActivity;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Le/h;

    invoke-direct {v1, p0}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v2, v1, Le/h;->b:Ljava/lang/Object;

    check-cast v2, Le/d;

    const v3, 0x7f0f0243

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Le/d;->d:Ljava/lang/CharSequence;

    const-string v0, "aa"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f023c

    goto :goto_0

    :cond_1
    const-string v0, "carplay"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0f0242

    goto :goto_0

    :cond_2
    const v0, 0x7f0f023e

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Le/d;->f:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-boolean v0, v2, Le/d;->m:Z

    new-instance v0, Lw0/m9;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v2}, Lw0/m9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    const p0, 0x104000a

    invoke-virtual {v1, p0, v0}, Le/h;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p0, Lw0/jb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0f0032

    invoke-virtual {v1, p1, p0}, Le/h;->b(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Le/h;->h()Le/i;

    return-void
.end method

.method public static X(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh2/a;Lh2/l;I)V
    .locals 27

    move-object/from16 v7, p2

    move/from16 v0, p8

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    :goto_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v2, p5

    :goto_1
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    :goto_2
    move v9, v3

    goto :goto_3

    :cond_2
    const/4 v3, 0x2

    goto :goto_2

    :goto_3
    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_3

    const/4 v10, 0x0

    goto :goto_4

    :cond_3
    move-object/from16 v10, p6

    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    const/4 v11, 0x0

    goto :goto_5

    :cond_4
    move-object/from16 v11, p7

    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "getString(...)"

    const/4 v13, 0x0

    move-object/from16 v14, p1

    move-object v15, v1

    move v1, v13

    const/4 v0, 0x0

    :goto_6
    if-ge v1, v9, :cond_16

    add-int/lit8 v3, v1, 0x1

    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    invoke-static {v14}, Lcom/ex/auto/MainActivity;->N0(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_e

    invoke-virtual/range {v16 .. v16}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    const/high16 v0, 0x10000

    :try_start_3
    new-array v0, v0, [B

    const-wide/16 v17, 0x0

    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    :goto_7
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-lez v13, :cond_6

    move-object/from16 p5, v10

    const/4 v10, 0x0

    :try_start_4
    invoke-virtual {v8, v0, v10, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 p4, v11

    int-to-long v10, v13

    add-long v19, v19, v10

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p4, :cond_5

    sub-long v23, v10, v21

    const-wide/16 v25, 0x190

    cmp-long v13, v23, v25

    if-lez v13, :cond_5

    move-object/from16 p1, v4

    move-wide/from16 p7, v10

    move-object v10, v2

    move v11, v3

    move-wide/from16 v3, v19

    move-object/from16 v2, p3

    move/from16 v19, v1

    move-object/from16 v1, p0

    :try_start_6
    invoke-virtual/range {v1 .. v6}, Lcom/ex/auto/MainActivity;->i0(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v2, p4

    :try_start_7
    invoke-interface {v2, v13}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-wide/from16 v21, p7

    :goto_8
    move/from16 v1, v19

    move-wide/from16 v19, v3

    move v3, v11

    move-object/from16 v4, p1

    move-object v11, v2

    move-object v2, v10

    move-object/from16 v10, p5

    goto :goto_7

    :catchall_0
    move-exception v0

    :goto_9
    move-object v3, v0

    goto/16 :goto_11

    :catchall_1
    move-exception v0

    :goto_a
    move-object/from16 v2, p4

    goto :goto_9

    :cond_5
    move-object v10, v2

    move v11, v3

    move-object/from16 p1, v4

    move-wide/from16 v3, v19

    move-object/from16 v2, p4

    move/from16 v19, v1

    move-object/from16 v1, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move/from16 v19, v1

    move-object v10, v2

    move v11, v3

    move-object/from16 p1, v4

    move-object/from16 v1, p0

    goto :goto_a

    :catchall_3
    move-exception v0

    move/from16 v19, v1

    move-object v10, v2

    move-object/from16 p1, v4

    move-object v2, v11

    move-object/from16 v1, p0

    :goto_b
    move v11, v3

    goto :goto_9

    :cond_6
    move/from16 v19, v1

    move-object/from16 p1, v4

    move-object/from16 p5, v10

    move-object/from16 v1, p0

    move-object v10, v2

    move-object v2, v11

    move v11, v3

    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    invoke-interface/range {p1 .. p1}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    :try_start_b
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v3, v17

    if-lez v0, :cond_d

    cmp-long v0, v5, v17

    if-lez v0, :cond_8

    cmp-long v0, v3, v5

    if-nez v0, :cond_7

    goto :goto_d

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f0f0169

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    :goto_c
    move-object v3, v0

    goto/16 :goto_14

    :cond_8
    :goto_d
    if-eqz v15, :cond_a

    const-string v0, "SHA-256"

    invoke-static {v7, v0}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_e

    :cond_9
    new-instance v3, Lw0/ac;

    const/16 v4, 0xc

    invoke-static {v4, v15}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f0f0300

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    :goto_e
    if-eqz v10, :cond_c

    const-string v0, "MD5"

    invoke-static {v7, v0}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_f

    :cond_b
    new-instance v3, Lw0/ac;

    const/16 v4, 0x8

    invoke-static {v4, v10}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f0f0228

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    :goto_f
    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const v3, 0x7f0f0165

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :catchall_4
    move-exception v0

    goto :goto_13

    :catchall_5
    move-exception v0

    :goto_10
    move-object v3, v0

    goto :goto_12

    :catchall_6
    move-exception v0

    move/from16 v19, v1

    move-object/from16 p1, v4

    move-object/from16 p5, v10

    move-object/from16 v1, p0

    move-object v10, v2

    move-object v2, v11

    goto/16 :goto_b

    :goto_11
    :try_start_c
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_7
    move-exception v0

    :try_start_d
    invoke-static {v8, v3}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_8
    move-exception v0

    move/from16 v19, v1

    move-object/from16 p1, v4

    move-object/from16 p5, v10

    move-object/from16 v1, p0

    move-object v10, v2

    move-object v2, v11

    move v11, v3

    goto :goto_10

    :goto_12
    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :catchall_9
    move-exception v0

    move-object/from16 v4, p1

    :try_start_f
    invoke-static {v4, v3}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_a
    move-exception v0

    move/from16 v19, v1

    move-object/from16 p5, v10

    move-object/from16 v1, p0

    move-object v10, v2

    move-object v2, v11

    move v11, v3

    goto :goto_13

    :cond_e
    move/from16 v19, v1

    move-object/from16 p5, v10

    move-object/from16 v1, p0

    move-object v10, v2

    move-object v2, v11

    move v11, v3

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1, v0}, Lcom/ex/auto/MainActivity;->a0(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :goto_13
    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    :catch_2
    :try_start_11
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    :catch_3
    move-exception v0

    move/from16 v19, v1

    move-object/from16 p5, v10

    move-object/from16 v1, p0

    move-object v10, v2

    move-object v2, v11

    move v11, v3

    goto/16 :goto_c

    :goto_14
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "download tentativa "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MainActivity"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, v3, Lw0/ac;

    if-eqz v0, :cond_11

    if-eqz p5, :cond_11

    :try_start_12
    invoke-interface/range {p5 .. p5}, Lh2/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx1/a;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    goto :goto_15

    :catch_4
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "revalidar manifesto falhou: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v4}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_11

    iget-object v4, v0, Lx1/a;->a:Ljava/lang/Object;

    iget-object v0, v0, Lx1/a;->b:Ljava/lang/Object;

    invoke-static {v4, v14}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    if-nez v15, :cond_10

    if-nez v10, :cond_f

    const-string v5, ""

    goto :goto_16

    :cond_f
    move-object v5, v10

    goto :goto_16

    :cond_10
    move-object v5, v15

    :goto_16
    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_17

    :cond_11
    move-object/from16 v6, p3

    goto :goto_1a

    :cond_12
    :goto_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": o manifesto mudou durante o download \u2014 seguindo o alvo novo ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Ljava/lang/String;

    const/16 v8, 0xc

    invoke-static {v8, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "Update"

    invoke-virtual {v1, v8, v5}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    if-eqz v15, :cond_13

    move-object v15, v0

    goto :goto_18

    :cond_13
    move-object v10, v0

    :goto_18
    move-object v11, v2

    move-object v0, v3

    move-object v2, v10

    move/from16 v1, v19

    const/4 v13, 0x0

    :goto_19
    move-object/from16 v10, p5

    goto/16 :goto_6

    :goto_1a
    if-ge v11, v9, :cond_15

    if-eqz v2, :cond_14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f0f0168

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    int-to-long v4, v11

    const-wide/16 v17, 0xbb8

    mul-long v17, v17, v4

    mul-long v17, v17, v4

    :try_start_13
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_5

    :catch_5
    :cond_15
    move-object v0, v3

    move v1, v11

    const/4 v13, 0x0

    move-object v11, v2

    move-object v2, v10

    goto :goto_19

    :cond_16
    move-object/from16 v1, p0

    if-eqz v0, :cond_17

    goto :goto_1b

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0f0166

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_1b
    throw v0
.end method

.method public static b1(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;
    .locals 6

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget v3, p2, v1

    const-wide/16 v4, 0x320

    invoke-static {p0, p1, v3, v4, v5}, Lw0/p1;->d(Landroid/car/hardware/property/CarPropertyManager;IIJ)Landroid/car/hardware/CarPropertyValue;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    move-object v2, v3

    check-cast v2, Ljava/lang/Integer;

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static final b2(Lcom/ex/auto/MainActivity;IIIILh2/a;ZLh2/l;)V
    .locals 6

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    invoke-virtual {p0, p2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    sub-int/2addr p4, p3

    invoke-virtual {p1, p4}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-interface {p5}, Lh2/a;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    sub-int/2addr p2, p3

    const/4 p4, 0x0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p5

    invoke-static {p2, p4, p5}, Lk1/a;->k(III)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p4, 0x25

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lw0/sc;

    move-object v5, p0

    move v1, p3

    move v4, p6

    move-object v3, p7

    invoke-direct/range {v0 .. v5}, Lw0/sc;-><init>(ILandroid/widget/TextView;Lh2/l;ZLcom/ex/auto/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public static final c2(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const p1, 0x7f050087

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const p0, 0x7f070062

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setClickable(Z)V

    return-object v0
.end method

.method public static final d2(Landroid/widget/TextView;Lcom/ex/auto/MainActivity;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "widget_apps_rows"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lk1/a;->k(III)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u00d7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "widget_apps_cols"

    const/4 v4, 0x3

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1, v2, v3}, Lk1/a;->k(III)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic e0(Lcom/ex/auto/MainActivity;)Lw0/zb;
    .locals 2

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;Ljava/lang/String;)Lw0/zb;

    move-result-object p0

    return-object p0
.end method

.method public static final e2(Landroid/widget/TextView;Lcom/ex/auto/MainActivity;Lw0/ec;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p2, p2, Lw0/ec;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f05007e

    goto :goto_0

    :cond_0
    const p2, 0x7f050089

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static final f2(Lcom/ex/auto/MainActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "widget_volume_vertical"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "widget_volume_signs"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_0

    const v2, 0x7f0f03bb

    goto :goto_0

    :cond_0
    const v2, 0x7f0f03b7

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_1

    const v2, 0x7f0f03b8

    goto :goto_1

    :cond_1
    const v2, 0x7f0f03b9

    :goto_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public static final g2(Lcom/ex/auto/MainActivity;Lw0/ec;Lw0/bd;FLjava/lang/String;Ljava/lang/String;II)Lx1/a;
    .locals 12

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v1, p4

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    const v3, 0x7f050089

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, 0x800005

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v11, Landroid/widget/SeekBar;

    invoke-direct {v11, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    sub-int v0, p7, p6

    invoke-virtual {v11, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v1, 0x64

    move-object/from16 v3, p5

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int v0, v0, p6

    invoke-virtual {v11}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-static {v0, v9, v1}, Lk1/a;->k(III)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f05007e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v11}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    add-int v0, v0, p6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lw0/rc;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move/from16 v1, p6

    invoke-direct/range {v0 .. v6}, Lw0/rc;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Lw0/ec;Lw0/bd;Landroid/widget/TextView;)V

    invoke-virtual {v11, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x2

    invoke-direct {v0, v9, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x2e

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x26

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lx1/a;

    invoke-direct {v0, v7, v11}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x2000

    :try_start_0
    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string p1, "digest(...)"

    invoke-static {p0, p1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lw0/n2;

    const/16 v0, 0x1d

    invoke-direct {p1, v0}, Lw0/n2;-><init>(I)V

    invoke-static {p0, p1}, Ly1/f;->b0([BLh2/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static h1(Lcom/ex/auto/MainActivity;)V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lw0/f9;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lw0/f9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final i2(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2, p0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SeekBar;

    invoke-virtual {p2}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v1, 0x32

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p2, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/ex/auto/MainActivity;->D(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lw0/vc;

    invoke-direct {v0, p2, p3, p1}, Lw0/vc;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public static final j1(Lcom/ex/auto/MainActivity;IILw0/n4;)V
    .locals 1

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p2, p3}, Lw0/t1;->A(ILw0/n4;)Lw0/m4;

    move-result-object p1

    sget-object p2, Lw0/m4;->a:Lw0/m4;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, p3

    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    sget-object p2, Lw0/m4;->b:Lw0/m4;

    if-ne p1, p2, :cond_2

    move p3, v0

    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public static j2(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "s"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\'\\\'\'"

    const/16 v3, 0x27

    invoke-static {p0, v1, v2, v0, v3}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final k1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "=(\\d+)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pattern"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v0, "compile(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "matcher(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lk1/a;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo2/e;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lo2/e;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lo2/d;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-lez p0, :cond_0

    move v0, p1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p2(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "/extracted -maxdepth 2 -name \"*.apk\" | sort > "

    const-string v1, "/all_apks.txt\n            > "

    const-string v2, "\n            DEV_ABI=$(getprop ro.product.cpu.abi)\n            DEV_ABI_TOKEN=$(echo \"$DEV_ABI\" | tr \'-\' \'_\')\n            DENS=$(wm density 2>/dev/null | grep -oE \'[0-9]+\' | head -1)\n            if [ -z \"$DENS\" ]; then DENS=160; fi\n            if [ \"$DENS\" -le 120 ]; then BUCKET=ldpi\n            elif [ \"$DENS\" -le 160 ]; then BUCKET=mdpi\n            elif [ \"$DENS\" -le 213 ]; then BUCKET=tvdpi\n            elif [ \"$DENS\" -le 240 ]; then BUCKET=hdpi\n            elif [ \"$DENS\" -le 320 ]; then BUCKET=xhdpi\n            elif [ \"$DENS\" -le 480 ]; then BUCKET=xxhdpi\n            else BUCKET=xxxhdpi\n            fi\n            echo \"Device: abi=$DEV_ABI density=$DENS bucket=$BUCKET\"\n            find "

    invoke-static {v2, p0, v0, p0, v1}, Landroidx/activity/result/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/filtered_apks.txt\n            ARCH_TOKENS=\"arm64_v8a armeabi_v7a armeabi x86_64 x86 mips64 mips\"\n            DPI_TOKENS=\"ldpi mdpi tvdpi hdpi xhdpi xxhdpi xxxhdpi\"\n            while IFS= read -r f; do\n              keep=1\n              for arch_tok in $ARCH_TOKENS; do\n                case \"$f\" in\n                  *\".$arch_tok.\"*)\n                    if [ \"$arch_tok\" != \"$DEV_ABI_TOKEN\" ]; then keep=0; fi\n                    ;;\n                esac\n              done\n              for dpi_tok in $DPI_TOKENS; do\n                case \"$f\" in\n                  *\".$dpi_tok.\"*)\n                    if [ \"$dpi_tok\" != \"$BUCKET\" ]; then keep=0; fi\n                    ;;\n                esac\n              done\n              if [ \"$keep\" -eq 1 ]; then echo \"$f\" >> "

    const-string v2, "/filtered_apks.txt; fi\n            done < "

    invoke-static {v0, p0, v1, p0, v2}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/all_apks.txt\n            # Fallback POR CATEGORIA (docs/92): o filtro avalia cada split isolado, ent\u00e3o se o pacote\n            # traz UM s\u00f3 split de densidade (norma em XAPK/APKM de APKPure/APKMirror) e ele n\u00e3o bate com\n            # o bucket do device, esse split \u00e9 descartado \u2014 e o base.apk de um App Bundle n\u00e3o guarda os\n            # recursos por densidade \u2192 o app instala mas crasha no 1\u00ba inflate (recurso ausente). Aqui:\n            # se ZERO splits de densidade sobraram mas o pacote tinha algum, recupera todos (o Android\n            # escala densidade diferente; s\u00f3 n\u00e3o sabe inventar recurso n\u00e3o-instalado). Idem p/ ABI.\n            DPI_RE=\'\\.(ldpi|mdpi|tvdpi|hdpi|xhdpi|xxhdpi|xxxhdpi)\\.\'\n            ABI_RE=\'\\.(arm64_v8a|armeabi_v7a|armeabi|x86_64|x86|mips64|mips)\\.\'\n            TOTAL_DPI=$(grep -cE \"$DPI_RE\" "

    const-string v2, "/all_apks.txt)\n            KEPT_DPI=$(grep -cE \"$DPI_RE\" "

    invoke-static {v0, p0, v1, p0, v2}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/filtered_apks.txt)\n            if [ \"$TOTAL_DPI\" -gt 0 ] && [ \"$KEPT_DPI\" -eq 0 ]; then\n              echo \"AVISO: nenhum split de densidade bate com $BUCKET -- mantendo todos (Android escala)\"\n              grep -E \"$DPI_RE\" "

    const-string v2, "/all_apks.txt >> "

    invoke-static {v0, p0, v1, p0, v2}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/filtered_apks.txt\n              sort -u "

    const-string v3, "/filtered_apks.txt > "

    invoke-static {v0, p0, v1, p0, v3}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "/filtered_apks.tmp && mv "

    const-string v5, "/filtered_apks.tmp "

    invoke-static {v0, p0, v4, p0, v5}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "/filtered_apks.txt\n            fi\n            TOTAL_ABI=$(grep -cE \"$ABI_RE\" "

    const-string v7, "/all_apks.txt)\n            KEPT_ABI=$(grep -cE \"$ABI_RE\" "

    invoke-static {v0, p0, v6, p0, v7}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "/filtered_apks.txt)\n            if [ \"$TOTAL_ABI\" -gt 0 ] && [ \"$KEPT_ABI\" -eq 0 ]; then\n              echo \"AVISO: nenhum split de abi bate com $DEV_ABI -- mantendo todos\"\n              grep -E \"$ABI_RE\" "

    invoke-static {v0, p0, v6, p0, v2}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0, v1, p0, v3}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0, v4, p0, v5}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/filtered_apks.txt\n            fi\n            if [ ! -s "

    const-string v2, "/filtered_apks.txt ]; then\n              echo \"AVISO: filtro de arch/densidade nao sobrou nenhum apk -- instalando tudo (fallback)\"\n              cp "

    invoke-static {v0, p0, v1, p0, v2}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/all_apks.txt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/filtered_apks.txt\n            fi\n        "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final t1(Lcom/ex/auto/MainActivity;ZI)V
    .locals 1

    invoke-virtual {p0, p2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f07005f

    goto :goto_0

    :cond_0
    const v0, 0x7f070067

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz p1, :cond_1

    const p1, 0x7f05007e

    goto :goto_1

    :cond_1
    const p1, 0x7f050089

    :goto_1
    invoke-static {p0, p1}, Landroidx/core/content/c;->a(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static u0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n            CREATE_OUT=$(pm install-create -r -g -d 2>&1)\n            echo \"$CREATE_OUT\"\n            SESSION=$(echo \"$CREATE_OUT\" | grep -oE \'[0-9]+\' | head -1)\n            if [ -z \"$SESSION\" ]; then\n              echo \"Failure: nao foi possivel criar sessao de instalacao\"\n            else\n              IDX=0\n              while IFS= read -r apk; do\n                SIZE=$(stat -c%s \"$apk\" 2>/dev/null)\n                pm install-write -S \"$SIZE\" \"$SESSION\" \"split_$IDX\" \"$apk\" 2>&1\n                IDX=$((IDX+1))\n              done < "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/filtered_apks.txt\n              pm install-commit \"$SESSION\" 2>&1\n            fi\n        "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v0()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "list(...)"

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    sget-object v1, Ly1/p;->a:Ly1/p;

    :cond_1
    new-instance v3, Lw0/b6;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lw0/b6;-><init>(I)V

    invoke-static {v1, v3}, Ly1/g;->i0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    const-string v4, "getInetAddresses(...)"

    invoke-static {v3, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_4
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/net/InetAddress;

    instance-of v7, v6, Ljava/net/Inet4Address;

    if-eqz v7, :cond_4

    move-object v7, v6

    check-cast v7, Ljava/net/Inet4Address;

    invoke-virtual {v7}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v6

    check-cast v7, Ljava/net/Inet4Address;

    invoke-virtual {v7}, Ljava/net/Inet4Address;->isSiteLocalAddress()Z

    move-result v7

    if-eqz v7, :cond_4

    check-cast v6, Ljava/net/Inet4Address;

    invoke-virtual {v6}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    return-object v0
.end method

.method public static v2(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lo2/k;->F0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u2026 ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " caracteres omitidos)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"\\s*:\\s*\"([^\"]+)\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pattern"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v0, "compile(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "matcher(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lk1/a;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo2/e;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lo2/e;->a()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ly1/g;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string p1, "\\/"

    const-string v0, "/"

    invoke-static {p0, p1, v0}, Lo2/t;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 4

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw0/k9;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v1, v0}, Lw0/k9;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final A0()Ljava/util/List;
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    const-string v3, "getInstalledApplications(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v6, 0x1

    if-nez v7, :cond_0

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v3}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lx1/a;

    invoke-direct {v7, v6, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Lw0/b6;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lw0/b6;-><init>(I)V

    invoke-static {v2, v0}, Ly1/g;->i0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Ly1/p;->a:Ly1/p;

    return-object v0
.end method

.method public final A1()V
    .locals 9

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->K:Landroid/net/wifi/WifiManager;

    const-string v1, "wifiManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v4, v5}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v7, "."

    invoke-static {v6, v7, v3}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "127.0.0.1"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    check-cast v5, Landroid/net/LinkAddress;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v2

    :goto_2
    if-nez v4, :cond_5

    :cond_4
    invoke-static {}, Lcom/ex/auto/MainActivity;->v0()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->A2()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    invoke-static {}, Lcom/ex/auto/MainActivity;->v0()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->A2()Ljava/lang/String;

    move-result-object v4

    :cond_5
    :goto_3
    const/4 v5, 0x1

    if-eqz v4, :cond_7

    invoke-static {v4}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move v6, v3

    goto :goto_5

    :cond_7
    :goto_4
    move v6, v5

    :goto_5
    const v7, 0x7f09021e

    invoke-virtual {p0, v7}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-nez v6, :cond_8

    goto :goto_6

    :cond_8
    const v4, 0x7f0f0488

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "getString(...)"

    invoke-static {v4, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x3ee66666    # 0.45f

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->q0()Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v8

    goto :goto_7

    :cond_9
    move v6, v4

    :goto_7
    invoke-virtual {v7, v6}, Landroid/view/View;->setAlpha(F)V

    if-eqz v0, :cond_d

    :try_start_1
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->K:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    move v0, v5

    goto :goto_8

    :cond_a
    move v0, v3

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :goto_8
    xor-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    :cond_b
    invoke-static {v1}, Li2/g;->h(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    new-instance v1, Lx1/b;

    invoke-direct {v1, v0}, Lx1/b;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v2, v0, Lx1/b;

    if-eqz v2, :cond_c

    move-object v0, v1

    :cond_c
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    move v3, v5

    :cond_d
    const v0, 0x7f090222

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v3, :cond_e

    move v4, v8

    :cond_e
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_f
    invoke-static {v1}, Li2/g;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final A2()Ljava/lang/String;
    .locals 5

    const v0, 0x7f0f0488

    :try_start_0
    iget-object v1, p0, Lcom/ex/auto/MainActivity;->K:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v3, v1, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "wifiManager"

    invoke-static {v1}, Li2/g;->h(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "aa"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v0, "ambos"

    :cond_0
    move-object v4, v0

    new-instance v5, Ljava/io/File;

    sget p1, Lw0/u;->a:I

    const-string p1, "versao"

    invoke-static {p2, p1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p2}, Lw0/u;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p2}, Lw0/u;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v5, v0}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "outra variante ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") j\u00e1 estava em cache"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Update"

    invoke-virtual {p0, p2, p1}, Lcom/ex/auto/MainActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lw0/z;

    const/16 v6, 0x8

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lw0/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final B0()Ljava/util/List;
    .locals 10

    const-string v0, "/sdcard/Download"

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/storage/emulated/0/Download"

    invoke-static {v2}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\n            "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n            for dir in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; do\n              [ -d \"$dir\" ] || continue\n              for f in \"$dir\"/*.apk \"$dir\"/*.APK \"$dir\"/*.xapk \"$dir\"/*.XAPK \"$dir\"/*.apkm \"$dir\"/*.APKM; do\n                [ -f \"$f\" ] && echo \"$f\"\n              done\n            done\n        "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2ee0

    invoke-virtual {p0, v3, v1}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/k;->o0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/sdcard/"

    const-string v6, "/storage/emulated/0/"

    invoke-static {v4, v5, v6}, Lo2/t;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_1
    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    const-string v8, ".apk"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lo2/t;->Z(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, ".xapk"

    invoke-static {v7, v8, v9}, Lo2/t;->Z(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, ".apkm"

    invoke-static {v7, v8, v9}, Lo2/t;->Z(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_2
    invoke-static {v7, v0}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v7, v2}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v1}, Ly1/g;->Z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final B1(I)V
    .locals 6

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const p1, 0x7f0f04cc

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x3f19999a    # 0.6f

    invoke-virtual {v4, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance p1, Lw0/x8;

    const/16 v0, 0x1b

    invoke-direct {p1, p0, v0}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v0, Lw0/nc;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lw0/nc;-><init>(Lcom/ex/auto/MainActivity;JLandroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object p1, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final C()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ex/auto/MainActivity;->l0:Z

    const v1, 0x7f0f0080

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lcom/ex/auto/MainActivity;->D0(Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    new-instance v0, Lw0/ma;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final C0()Ljava/util/List;
    .locals 9

    const-string v0, "seen=\"\"\nfor root in /storage/* /mnt/media_rw/* /mnt/usb* /mnt/media_rw/usb*; do\n  [ -d \"$root\" ] || continue\n  case \"$root\" in\n    /storage/emulated|/storage/self|/storage/emulated/*|/storage/self/*) continue ;;\n  esac\n  grep -qE \"[[:space:]]${root}[[:space:]]\" /proc/mounts || continue\n  for f in \"$root\"/*.apk \"$root\"/*.xapk \"$root\"/*.apkm \"$root\"/*/*.apk \"$root\"/*/*.xapk \"$root\"/*/*.apkm \"$root\"/*/*/*.apk \"$root\"/*/*/*.xapk \"$root\"/*/*/*.apkm; do\n    [ -f \"$f\" ] || continue\n    bn=$(basename \"$f\" | tr \' \' \'_\')\n    sz=$(stat -c \'%s\' \"$f\" 2>/dev/null)\n    key=\"${bn}_${sz}\"\n    case \" $seen \" in\n      *\" $key \"*) continue ;;\n    esac\n    seen=\"$seen $key\"\n    echo \"$f\"\n  done\ndone"

    const/16 v1, 0x3a98

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->o0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    :goto_1
    if-ge v4, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    const-string v7, "/"

    invoke-static {v6, v7}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, ".apk"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lo2/t;->Z(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, ".xapk"

    invoke-static {v6, v7, v8}, Lo2/t;->Z(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, ".apkm"

    invoke-static {v6, v7, v8}, Lo2/t;->Z(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_4
    :goto_2
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    const-string v6, "/storage/emulated"

    invoke-static {v5, v6}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "/storage/self"

    invoke-static {v5, v6}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v1}, Ly1/g;->Z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final C1()V
    .locals 4

    const v0, 0x7f0901b0

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lf2/d;->h0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Lk1/a;->k(III)I

    move-result v1

    const/16 v2, 0x64

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x7f

    div-int/2addr v1, v3

    const/4 v3, 0x5

    invoke-static {v1, v3, v2}, Lk1/a;->k(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    const v1, 0x7f0901b1

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final D(I)Ljava/lang/String;
    .locals 1

    if-gtz p1, :cond_0

    const p1, 0x7f0f00cc

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x25

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final D0(Ljava/lang/String;Z)V
    .locals 4

    const v0, 0x7f09010c

    const v1, 0x7f09010d

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    aget v2, v0, v1

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const v3, 0x3f19999a    # 0.6f

    goto :goto_1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->e1()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->s1()V

    :cond_3
    return-void
.end method

.method public final E()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->R()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lw0/u;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final E0(ILh2/a;Lh2/a;)V
    .locals 2

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lw0/y6;

    const/4 v1, 0x2

    invoke-direct {v0, p3, p2, p0, v1}, Lw0/y6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final E1()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->G0()Ljava/lang/String;

    move-result-object v0

    sget v1, Lw0/u;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toLowerCase(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "4b0e1de041032ee63ef0c223926d7889"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "v1114cp"

    goto :goto_1

    :sswitch_1
    const-string v3, "0c280b07f92a3538bcda1aae2e8b0746"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "v1114aa"

    goto :goto_1

    :sswitch_2
    const-string v3, "d49ab03b18a5c5e21928c59c465394d7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "v1111aa"

    goto :goto_1

    :sswitch_3
    const-string v3, "4b37f46239a938fa164d4a0bdc65a399"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "v1111cp-only"

    goto :goto_1

    :sswitch_4
    const-string v3, "260459e68360a4ff5c3720d84a2acddd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "v1111cp"

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/ex/auto/MainActivity;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x205468fa -> :sswitch_4
        0x1ff65dde -> :sswitch_3
        0x4a346867 -> :sswitch_2
        0x57696393 -> :sswitch_1
        0x6a9deb7a -> :sswitch_0
    .end sparse-switch
.end method

.method public final F1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method public final varargs G([Ljava/lang/Object;)I
    .locals 1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getAVASMode"

    invoke-virtual {p0, v0, p1}, Lcom/ex/auto/MainActivity;->w0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final G0()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.njda.adapter"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v2, "getApplicationInfo(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ex/auto/MainActivity;->U0:Ljava/lang/String;

    invoke-static {v1, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->V0:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v3, "MD5"

    invoke-static {v2, v3}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v2, v0

    :goto_0
    :try_start_2
    iput-object v1, p0, Lcom/ex/auto/MainActivity;->U0:Ljava/lang/String;

    iput-object v2, p0, Lcom/ex/auto/MainActivity;->V0:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v2

    :catchall_1
    :goto_1
    return-object v0
.end method

.method public final H0(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    const-string v0, "MD5"

    const-string v1, "rm -f "

    :try_start_0
    invoke-static {p1, v0}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sem permiss\u00e3o de leitura em "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u2014 normalizando dono/modo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CaFix"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ex/auto/MainActivity;->F()Z

    move-result v2

    const/4 v4, 0x0

    const-string v5, "Update"

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": sem leitura e o canal ADB local est\u00e1 fora \u2014 ligue o ADB no app antes de tentar de novo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/ex/auto/MainActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ileg\u00edvel e canal ADB local fora \u2014 causa \u00e9 o canal, n\u00e3o o arquivo"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v3, p1, v0}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v4

    :cond_0
    const/16 v2, 0x1f40

    :try_start_1
    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    invoke-static {p1, v0}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": permiss\u00e3o corrigida, leitura OK"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Lcom/ex/auto/MainActivity;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getAbsolutePath(...)"

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 2>&1; echo RM_FEITO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": ileg\u00edvel mesmo ap\u00f3s corrigir permiss\u00e3o \u2014 "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string p1, "apagado, ser\u00e1 baixado de novo"

    goto :goto_0

    :cond_1
    const-string p1, "e n\u00e3o consegui apagar"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lcom/ex/auto/MainActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public final H1(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "adb_port_migrated"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Lkotlinx/coroutines/scheduling/h;

    const/16 v1, 0x15b3

    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f0f0108

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    return-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    :cond_2
    const-string p1, "Falha no ADB local: "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final I0()V
    .locals 10

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/fixes/ca_fix.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "connadaptor_arquivo_modo"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "connadaptor_arquivo_versao"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    invoke-static {v1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    invoke-static {v2}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-static {v1, v2}, Lw0/u;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-ne v7, v6, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v5

    :goto_1
    if-nez v4, :cond_4

    sget-object v4, Lw0/h4;->c:Lw0/h4;

    goto :goto_2

    :cond_4
    sget-object v4, Lw0/h4;->b:Lw0/h4;

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_8

    invoke-static {v1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_8

    invoke-static {v2}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    sget-object v4, Lw0/h4;->a:Lw0/h4;

    :cond_8
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const-string v7, "ConnAdaptor"

    const-string v8, "getAbsolutePath(...)"

    if-eqz v4, :cond_c

    if-eq v4, v6, :cond_a

    const/4 v0, 0x2

    if-ne v4, v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Landroidx/fragment/app/q;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "rm -f "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; echo MIG_RM"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x3a98

    invoke-virtual {p0, v4, v0}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "migra\u00e7\u00e3o do nome fixo: ca_fix.apk descartado ("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-ne v3, v6, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "o arquivo de "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " j\u00e1 estava no lugar"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_b
    const-string v1, "sem proced\u00eancia gravada"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v5}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_c
    invoke-static {v3}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mv -f "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1 && chown system:system "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>/dev/null; chmod 664 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>/dev/null; echo MIG_OK"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7530

    invoke-virtual {p0, v2, v0}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MIG_OK"

    invoke-static {v0, v2, v5}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_d

    move v5, v6

    :cond_d
    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "migra\u00e7\u00e3o do nome fixo: ca_fix.apk -> "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u2014 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_e

    const-string v1, "movido"

    goto :goto_4

    :cond_e
    const-string v1, "FALHOU"

    :goto_4
    invoke-static {v0, v1, v7, v6}, Landroidx/activity/result/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final I1()V
    .locals 4

    const-string v0, "KeyServerAtivador"

    const-string v1, "runKeyServerApply(userInitiated=true) iniciando"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ex/auto/MainActivity;->p0:Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->q0:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->v1()V

    const v0, 0x7f0f0200

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v1, Lw0/ma;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lw0/ma;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final J(ZZ)V
    .locals 8

    const v0, 0x7f0f003e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/MainActivity;->S1(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->R()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checagem: alvo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ativarDepois="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ConnAdaptor"

    invoke-static {v2, v0, v1}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, La1/l;

    move-object v3, p0

    move v7, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, La1/l;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object p1, v3, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final J0(Ljava/lang/String;Ljava/lang/String;)Le/i;
    .locals 7

    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v3, 0x1c

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/16 v4, 0x18

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const v3, 0x7f070064

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x2c

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x14

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v3, v5, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41a80000    # 21.0f

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, 0x7f050087

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    invoke-virtual {v5, p1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {p2}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const p2, 0x7f050089

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x6

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, v2, p2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Le/h;

    invoke-direct {p1, p0}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object p2, p1, Le/h;->b:Ljava/lang/Object;

    check-cast p2, Le/d;

    iput-object v1, p2, Le/d;->s:Landroid/view/View;

    iput-boolean v2, p2, Le/d;->m:Z

    invoke-virtual {p1}, Le/h;->h()Le/i;

    move-result-object p1

    return-object p1
.end method

.method public final K1(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lw0/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw0/n;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f0f0108

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string p1, "Falha no ADB local: "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final L()V
    .locals 2

    const v0, 0x7f0f0539

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/MainActivity;->Z1(Ljava/lang/CharSequence;)V

    sget v0, Lw0/u;->a:I

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "<get-prefs>(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lw0/u;->a(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lw0/u;->b(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/ex/auto/MainActivity;->K(Lcom/ex/auto/MainActivity;I)V

    :cond_1
    new-instance v0, Lw0/x8;

    const/16 v1, 0x1a

    invoke-direct {v0, p0, v1}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final L0()V
    .locals 3

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "aa_wifi_help_seen"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->k2()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->s()V

    return-void
.end method

.method public final L1(I)I
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->I0:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw0/fc;

    iget v2, v2, Lw0/fc;->a:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    const-string p1, "navSections"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final M0()V
    .locals 15

    sget-object v0, Lw0/wd;->a:Lw0/wd;

    invoke-static {p0}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Lw0/wd;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v8, p0

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v0, 0x200

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    const-string v3, "getInstalledApplications(...)"

    invoke-static {v0, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    iget v10, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x81

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v7

    if-nez v8, :cond_2

    if-nez v6, :cond_2

    if-eq v7, v5, :cond_4

    const/4 v5, 0x3

    if-ne v7, v5, :cond_2

    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v3}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v7, v2

    :goto_2
    if-ge v7, v4, :cond_6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    new-instance v10, Lw0/yf;

    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v12, "packageName"

    invoke-static {v11, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v11, v8}, Lw0/yf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v3, Lw0/ya;

    const/16 v4, 0x1c

    invoke-direct {v3, v4}, Lw0/ya;-><init>(I)V

    new-instance v4, Lw0/ya;

    invoke-direct {v4, v1}, Lw0/ya;-><init>(I)V

    new-array v1, v5, [Lh2/l;

    aput-object v3, v1, v2

    aput-object v4, v1, v6

    new-instance v3, La2/a;

    invoke-direct {v3, v1}, La2/a;-><init>([Lh2/l;)V

    invoke-static {v0, v3}, Ly1/g;->i0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const v3, 0x7f1001ee

    const/4 v4, 0x0

    const v5, 0x7f0f0527

    if-eqz v1, :cond_7

    new-instance v0, Lw0/zc;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Lw0/e8;->p(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, v3}, Le/h;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Le/h;->g(I)V

    iget-object v1, v0, Le/h;->b:Ljava/lang/Object;

    check-cast v1, Le/d;

    iget-object v2, v1, Le/d;->a:Landroid/view/ContextThemeWrapper;

    const v3, 0x7f0f0529

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Le/d;->f:Ljava/lang/CharSequence;

    const v1, 0x7f0f0038

    invoke-virtual {v0, v1, v4}, Le/h;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Le/h;->h()Le/i;

    return-void

    :cond_7
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Lw0/e8;->p(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f1001f0

    invoke-direct {v1, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x18

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v8, v6, v2, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    move v6, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lw0/yf;

    new-instance v12, Landroid/widget/CheckBox;

    invoke-direct {v12, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Lw0/yf;->b:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, v11, Lw0/yf;->a:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x40

    int-to-float v11, v11

    mul-float/2addr v11, v7

    float-to-int v11, v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance v10, Landroid/widget/CheckBox;

    invoke-direct {v10, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0f0528

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    new-instance v11, Lw0/uf;

    invoke-direct {v11, v5}, Lw0/uf;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v8, v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/16 v8, 0x12c

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v7, v8

    const/4 v8, -0x1

    invoke-direct {v1, v8, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lw0/zc;

    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Lw0/e8;->p(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v7, v3}, Le/h;-><init>(Landroid/content/Context;I)V

    iget-object v3, v1, Le/h;->b:Ljava/lang/Object;

    check-cast v3, Le/d;

    invoke-virtual {v1, v6}, Le/h;->g(I)V

    const v7, 0x7f0f0524

    iget-object v8, v3, Le/d;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v8, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v3, Le/d;->f:Ljava/lang/CharSequence;

    iput-object v2, v3, Le/d;->s:Landroid/view/View;

    const v2, 0x7f0f0032

    invoke-virtual {v1, v2, v4}, Le/h;->b(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v6, v4}, Le/h;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lw0/zc;->a()Le/i;

    move-result-object v4

    new-instance v3, Lw0/vf;

    move-object v8, p0

    move-object v6, v0

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, Lw0/vf;-><init>(Le/i;Ljava/util/ArrayList;Ljava/util/List;Landroid/widget/CheckBox;Lcom/ex/auto/MainActivity;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    return-void

    :goto_4
    const v0, 0x7f0f024f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(...)"

    invoke-static {v0, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lw0/h9;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    new-instance v0, La1/i;

    invoke-direct {v0, v3, v1, p0}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v1, v8, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final varargs M1(II[I)V
    .locals 10

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewFlipper;

    invoke-virtual {p1, p2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_6

    aget v4, p3, v2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    if-ne v3, p2, :cond_0

    move v3, v6

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    const v7, 0x7f07006d

    goto :goto_2

    :cond_1
    const v7, 0x106000d

    :goto_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x4

    if-eqz v3, :cond_2

    move v9, v1

    goto :goto_3

    :cond_2
    move v9, v8

    :goto_3
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lt v7, v8, :cond_3

    const/4 v6, 0x2

    :cond_3
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v6, v4, Landroid/widget/TextView;

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    check-cast v4, Landroid/widget/TextView;

    goto :goto_4

    :cond_4
    move-object v4, v7

    :goto_4
    if-eqz v4, :cond_5

    invoke-virtual {v4, v7, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_6
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_7

    new-instance v0, Lw0/v9;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lw0/v9;-><init>(Lcom/ex/auto/MainActivity;Landroid/widget/ViewFlipper;II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public final N(IIZ)V
    .locals 8

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->s0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/ex/auto/MainActivity;->G([Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_2

    const/4 v1, 0x1

    if-nez v5, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-ne v2, p3, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v0

    :goto_1
    if-nez v6, :cond_3

    const/4 v1, 0x2

    if-ge p2, v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/ex/auto/MainActivity;->z:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lw0/xa;

    invoke-direct {v2, p0, p1, p3, p2}, Lw0/xa;-><init>(Lcom/ex/auto/MainActivity;IZI)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x1f4

    invoke-virtual {v1, v2, p2, p3, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iput-boolean v0, p0, Lcom/ex/auto/MainActivity;->t0:Z

    return-void

    :cond_3
    iget-object p2, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/eb;

    move-object v4, p0

    move v3, p1

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lw0/eb;-><init>(ILcom/ex/auto/MainActivity;IZZ)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final N1(I)V
    .locals 8

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    aget v4, v1, v3

    invoke-virtual {p0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v4, p1, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    const/4 v7, 0x4

    :goto_1
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/TextView;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    check-cast v5, Landroid/widget/TextView;

    goto :goto_2

    :cond_1
    move-object v5, v7

    :goto_2
    if-eqz v5, :cond_3

    if-ne v4, p1, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    move v4, v2

    :goto_3
    invoke-virtual {v5, v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x7f090179
        0x7f090178
        0x7f09017a
        0x7f090176
        0x7f090174
        0x7f090175
        0x7f090177
        0x7f090173
    .end array-data
.end method

.method public final O()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.njda.adapter"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v2, "sourceDir"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "/data/app/"

    invoke-static {v1, v2, v0}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method public final O0()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->f1:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gestures_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/ex/auto/MainActivity;->S0:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    const v1, 0x7f0901d4

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v1, v0}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    :cond_1
    return-void
.end method

.method public final O1(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/ex/auto/MainActivity;->h0:Z

    const v0, 0x7f09010c

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f055a

    const v2, 0x7f0f057d

    const-string v3, "<get-prefs>(...)"

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    sget v4, Lw0/u;->a:I

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lw0/u;->a(Landroid/content/SharedPreferences;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f090145

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    sget p1, Lw0/u;->a:I

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lw0/u;->b(Landroid/content/SharedPreferences;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->X0()V

    return-void
.end method

.method public final P()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "connadaptor_modo"

    const-string v2, "ambos"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final P0()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->X0:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "rvc_black_bg"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/ex/auto/MainActivity;->S0:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    const v1, 0x7f0901fa

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v1, v0}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    :cond_1
    return-void
.end method

.method public final P1(I)V
    .locals 2

    iget v0, p0, Lcom/ex/auto/MainActivity;->I:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/ex/auto/MainActivity;->I:I

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o1()V

    iget v0, p0, Lcom/ex/auto/MainActivity;->G:I

    sget-object v1, Ly1/p;->a:Ly1/p;

    if-ne p1, v0, :cond_1

    const p1, 0x7f0f033a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/ex/auto/MainActivity;->Q1(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_1
    const-string p1, ""

    invoke-virtual {p0, p1, v1}, Lcom/ex/auto/MainActivity;->Q1(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->n1()V

    return-void
.end method

.method public final Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "aa"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0f023b

    goto :goto_0

    :cond_0
    const-string v0, "carplay"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f0241

    goto :goto_0

    :cond_1
    const p1, 0x7f0f023d

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final Q1(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "\u2014"

    :goto_0
    invoke-static {p1}, Lk1/a;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    iput-object p1, p0, Lcom/ex/auto/MainActivity;->f0:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/ex/auto/MainActivity;->g0:I

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o1()V

    return-void
.end method

.method public final R()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "connadaptor_versao_alvo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, ""

    const-class v1, Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "get"

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v4, "ro.build.version.versionname"

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_2

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    const-string v1, "H(\\d{4})\\d*$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v4, "compile(...)"

    invoke-static {v1, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v4, "matcher(...)"

    invoke-static {v1, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, v0}, Lk1/a;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo2/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lo2/e;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lo2/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    :catchall_0
    :cond_4
    const-string v0, "1114"

    const-string v1, "1111"

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lw0/ae;->a:Lw0/ae;

    const-string v4, "central reporta f\u00e1brica "

    const-string v5, " \u2014 n\u00e3o h\u00e1 artefato publicado para ela; a ativa\u00e7\u00e3o vai recusar por VERSION_DOWNGRADE"

    const-string v6, "ConnAdaptor"

    invoke-static {v4, v2, v5, v6, v3}, Landroidx/activity/result/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    invoke-static {v2, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v2, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, v1

    :cond_7
    :goto_3
    return-object v2
.end method

.method public final R0(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Le/h;

    invoke-direct {v2, p0}, Le/h;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0139

    invoke-virtual {v2, v3}, Le/h;->g(I)V

    const v3, 0x7f0f0137

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v4, Le/d;

    iput-object v3, v4, Le/d;->f:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iput-boolean v3, v4, Le/d;->m:Z

    const v3, 0x7f0f0138

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lw0/q9;

    invoke-direct {v4, p0, p1, v0, v1}, Lw0/q9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x7f0f0032

    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Le/h;->b(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Le/h;->h()Le/i;

    return-void
.end method

.method public final R1(Z)V
    .locals 7

    iget-boolean v0, p0, Lcom/ex/auto/MainActivity;->t0:Z

    const-string v1, "getString(...)"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const p1, 0x7f0f0349

    invoke-static {p1, v2, p0, v1}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->s0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ex/auto/MainActivity;->t0:Z

    iput-boolean p1, p0, Lcom/ex/auto/MainActivity;->r0:Z

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->g1()V

    const v4, 0x7f0f00a7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v2}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    const v1, 0x7f09012f

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/ex/auto/MainActivity;->z:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lw0/wa;

    const/4 v6, 0x1

    invoke-direct {v5, p1, p0, v0, v6}, Lw0/wa;-><init>(ZLandroid/content/ContextWrapper;II)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iput-boolean v2, p0, Lcom/ex/auto/MainActivity;->t0:Z

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public final S(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "1114"

    invoke-static {p1, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f0135

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0134

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final S0()V
    .locals 4

    const v0, 0x7f09011f

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f09011e

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v2, Lw0/hb;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v1, v3}, Lw0/hb;-><init>(Lcom/ex/auto/MainActivity;Lcom/ex/auto/MasterToggleView;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final S1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ex/auto/MainActivity;->o1:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->Y0()V

    return-void
.end method

.method public final T()J
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public final T0()V
    .locals 4

    const v0, 0x7f090127

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f090126

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v2, Lw0/hb;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Lw0/hb;-><init>(Lcom/ex/auto/MainActivity;Lcom/ex/auto/MasterToggleView;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final T1(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0x22010102

    goto :goto_0

    :cond_0
    const p1, 0x22010103

    goto :goto_0

    :cond_1
    const p1, 0x22010101

    :goto_0
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->l0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "saved_drive"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/ex/auto/MainActivity;->i1(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->a1()V

    return-void
.end method

.method public final U()Ljava/lang/String;
    .locals 7

    const-string v0, "com.njda.adapter"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v3, "getApplicationInfo(...)"

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ex/auto/MainActivity;->U0:Ljava/lang/String;

    invoke-static {v3, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->V0:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v4, "MD5"

    invoke-static {v0, v4}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    :try_start_2
    iput-object v3, p0, Lcom/ex/auto/MainActivity;->U0:Ljava/lang/String;

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->V0:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/ex/auto/MainActivity;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/ex/auto/MainActivity;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v3, "sourceDir"

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "/data/app/"

    invoke-static {v1, v3, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f0112

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v3, v1

    goto :goto_3

    :cond_1
    const v1, 0x7f0f0113

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :goto_3
    invoke-static {v3}, Li2/g;->b(Ljava/lang/Object;)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_3

    const/16 v2, 0x8

    invoke-static {v2, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_3
    const-string v0, "?"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    const v0, 0x7f0f010f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    return-object v0
.end method

.method public final U0(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41800000    # 16.0f

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const p2, 0x7f050089

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x12

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final U1(Ljava/lang/String;)V
    .locals 4

    const-string v0, "light"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "theme_mode"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "light_mode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-static {p1}, Le/o;->q(I)V

    sget-object p1, Lw0/wd;->a:Lw0/wd;

    sget-object p1, Lw0/wd;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lw0/wd;->d(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public final V()Ljava/lang/Integer;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->i1:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lf2/d;->g0(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/ex/auto/MainActivity;->j1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v1, ":"

    invoke-static {v4, v1, v4}, Lo2/k;->y0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v1, :cond_3

    return-object v2

    :catchall_0
    :cond_3
    return-object v0
.end method

.method public final V0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, p3, v0}, Lw0/r5;->h(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-boolean p3, p0, Lcom/ex/auto/MainActivity;->n1:Z

    const-string v0, "getString(...)"

    if-eqz p3, :cond_1

    const p1, 0x7f0f0349

    const/4 p2, 0x0

    invoke-static {p1, p2, p0, v0}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/ex/auto/MainActivity;->n1:Z

    const p3, 0x7f0f048f

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0f048e

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, v1}, Lcom/ex/auto/MainActivity;->J0(Ljava/lang/String;Ljava/lang/String;)Le/i;

    move-result-object v5

    iget-object p3, p0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lw0/qa;

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lw0/qa;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Le/i;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final V1(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/ex/auto/MainActivity;->S:Z

    const v0, 0x7f0901d8

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0901d6

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/high16 p1, -0x3d4c0000    # -90.0f

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final W(Lw0/hc;Lw0/e9;)V
    .locals 11

    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f40

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->K1(ILjava/lang/String;)Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "CentralEXAuto-update-staging.apk"

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-wide v0, p1, Lw0/hc;->a:J

    iget-object v3, p1, Lw0/hc;->c:Ljava/lang/String;

    iget-object v5, p1, Lw0/hc;->b:Ljava/lang/String;

    new-instance v8, Lw0/h9;

    const/16 p1, 0x13

    invoke-direct {v8, p0, p1}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    const/16 v10, 0x30

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v9, p2

    invoke-static/range {v2 .. v10}, Lcom/ex/auto/MainActivity;->X(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh2/a;Lh2/l;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/16 v3, 0x40

    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance p2, Ljava/lang/IllegalStateException;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "?"

    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f0f035f

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    cmp-long p2, v5, v0

    if-nez p2, :cond_6

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    if-nez p1, :cond_2

    new-array p1, p2, [Landroid/content/pm/Signature;

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    :goto_0
    const-string v3, "SHA-256"

    if-ge p2, v1, :cond_3

    aget-object v5, p1, p2

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    const-string v5, "digest(...)"

    invoke-static {v3, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lw0/ya;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lw0/ya;-><init>(I)V

    invoke-static {v3, v5}, Ly1/f;->b0([BLh2/l;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v4, v3}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "update"

    const-string v0, "/data/local/tmp/CentralEXAuto-update.apk"

    const/4 v1, 0x1

    invoke-virtual {p0, v4, v0, p2, v1}, Lcom/ex/auto/MainActivity;->q2(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v3}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x10

    invoke-static {v1, p1}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f0f0348

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const p2, 0x7f0f035e

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f0f0360

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const p2, 0x7f0f035d

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final W0()V
    .locals 3

    const v0, 0x7f090120

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/ex/auto/MainActivity;->n1:Z

    const-string v2, "getString(...)"

    if-eqz v1, :cond_1

    const v0, 0x7f0f0349

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, v2}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ex/auto/MainActivity;->n1:Z

    const v1, 0x7f0f04ae

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/MainActivity;->U0(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lw0/x8;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final W1(Ljava/lang/String;)V
    .locals 3

    const-string v0, "temp_batt_pill_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pill_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/ex/auto/TempBattPillFloaterService;->v:Lcom/ex/auto/TempBattPillFloaterService;

    sget-object v0, Lcom/ex/auto/TempBattPillFloaterService;->v:Lcom/ex/auto/TempBattPillFloaterService;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/ex/auto/TempBattPillFloaterService;->b:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/ex/auto/TempBattPillFloaterService;->f()V

    return-void

    :cond_0
    const-string p1, "pillPrefs"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    return-void
.end method

.method public final X0()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ex/auto/MainActivity;->P0:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lcom/ex/auto/MainActivity;->P0:J

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lw0/x8;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    sget v0, Lw0/u;->a:I

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "<get-prefs>(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lw0/u;->a(Landroid/content/SharedPreferences;)Z

    move-result v0

    const v2, 0x7f09010e

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0f0422

    const v4, 0x7f0f042c

    const v5, 0x7f0f04c2

    const v6, 0x7f0f0485

    if-eqz v2, :cond_6

    if-nez v0, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->O0:Lw0/o4;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x1

    if-eq v0, v7, :cond_4

    const/4 v7, 0x2

    if-eq v0, v7, :cond_3

    const/4 v7, 0x3

    if-eq v0, v7, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    const v0, 0x7f0f03de

    goto :goto_1

    :cond_4
    const v0, 0x7f0f03db

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    const v0, 0x7f090147

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->N0:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {v7, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lw0/u;->b(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-nez v1, :cond_7

    move v3, v6

    goto :goto_2

    :cond_7
    if-nez v2, :cond_8

    move v3, v5

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public final X1(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0x20020502

    goto :goto_0

    :cond_0
    const p1, 0x20020503

    goto :goto_0

    :cond_1
    const p1, 0x20020501

    :goto_0
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->l0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "saved_regen"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/ex/auto/MainActivity;->i1(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->a1()V

    return-void
.end method

.method public final Y()V
    .locals 2

    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final Y0()V
    .locals 5

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->S0:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f090187

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->p1:Ljava/lang/String;

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->o1:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/16 v3, 0x3e

    const-string v4, "\n"

    invoke-static {v2, v4, v1, v3}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final Y1(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "screen_rest_timeout_sec"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "quick_access_enabled"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const p1, 0x7f0f02f5

    const-string v1, "getString(...)"

    invoke-static {p1, v0, p0, v1}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->v1()V

    return-void
.end method

.method public final Z(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    instance-of v0, p1, Lw0/r6;

    if-eqz v0, :cond_0

    check-cast p1, Lw0/r6;

    iget p1, p1, Lw0/r6;->a:I

    invoke-virtual {p0, p1}, Lcom/ex/auto/MainActivity;->a0(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lw0/s6;

    const-string v1, "getString(...)"

    if-eqz v0, :cond_1

    const p1, 0x7f0f00d9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/net/UnknownHostException;

    const v2, 0x7f0f026b

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/net/NoRouteToHostException;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/net/ConnectException;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "falha ao verificar: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Update"

    invoke-static {v1, p1, v0}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final Z0(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->W0:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    new-instance p1, Lw0/fa;

    invoke-direct {p1, p0}, Lw0/fa;-><init>(Lcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance p1, Lw0/ga;

    invoke-direct {p1, p0}, Lw0/ga;-><init>(Lcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->W0:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preview falhou: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AVAS"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, ""

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f0f02a3

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void
.end method

.method public final Z1(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/ex/auto/MainActivity;->i0:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->S0:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const v0, 0x7f090166

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a0(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x193

    const-string v1, "getString(...)"

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1ad

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f0f036b

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const p1, 0x7f0f036a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const p1, 0x7f0f0369

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a1()V
    .locals 14

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->l0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "saved_drive"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->l0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "saved_regen"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lw0/ae;->a:Lw0/ae;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "toque \u2192 salvo drive="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " regen="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; watchdog vivo="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v6, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", floater="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "DriveRegen"

    const/4 v7, 0x0

    invoke-static {v6, v3, v7}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "toque na tela: drive="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Condu\u00e7\u00e3o"

    invoke-virtual {p0, v2, v0}, Lcom/ex/auto/MainActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->u1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v9

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/a9;

    const/4 v5, 0x2

    invoke-direct {v3, p0, v9, v5}, Lw0/a9;-><init>(Lcom/ex/auto/MainActivity;II)V

    const-wide/16 v10, 0x3e8

    invoke-virtual {v0, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "main"

    invoke-static {v0}, Lw0/t1;->Y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "entregue ao watchdog"

    invoke-static {v6, v0, v7}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "quem escreve: watchdog (fila \u00fanica)"

    invoke-virtual {p0, v2, v0}, Lcom/ex/auto/MainActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "watchdog recusou \u2014 escrevendo por conta pr\u00f3pria"

    invoke-static {v6, v0, v7}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "quem escreve: a pr\u00f3pria tela (watchdog fora do ar)"

    invoke-virtual {p0, v2, v0}, Lcom/ex/auto/MainActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "UPDATE_DRIVE_REGEN_MODES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->l0()Landroid/content/SharedPreferences;

    move-result-object v0

    const v2, 0x20020502

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->l0()Landroid/content/SharedPreferences;

    move-result-object v0

    const v2, 0x22010102

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    iget-object v11, p0, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v11, :cond_1

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->Y()V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->z:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v8, Lw0/n9;

    move-object v10, p0

    invoke-direct/range {v8 .. v13}, Lw0/n9;-><init>(ILcom/ex/auto/MainActivity;Landroid/car/hardware/property/CarPropertyManager;II)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->Y()V

    :cond_2
    return-void
.end method

.method public final a2()V
    .locals 11

    const v0, 0x7f090196

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    new-instance v1, La1/i;

    const/16 v3, 0x18

    invoke-direct {v1, v0, v3, p0}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v3, Lw0/t9;

    invoke-direct {v3, p0, v1, v0}, Lw0/t9;-><init>(Lcom/ex/auto/MainActivity;La1/i;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const v0, 0x7f090195

    const v1, 0x7f090182

    filled-new-array {v0, v1}, [I

    move-result-object v7

    const/4 v8, 0x0

    move v0, v8

    move v1, v0

    :goto_0
    const/4 v9, 0x2

    if-ge v0, v9, :cond_1

    aget v3, v7, v0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lw0/g9;

    const/4 v6, 0x0

    invoke-direct {v5, v1, p0, v7, v6}, Lw0/g9;-><init>(ILjava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_0

    :cond_1
    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterNetworkState()V"

    const/16 v6, 0x8

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterNetworkState"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v10, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onWifiAutoEnableChanged(Z)V"

    const/4 v6, 0x4

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onWifiAutoEnableChanged"

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const v1, 0x7f090192

    const-string v2, "wifi_auto_enable_on_wake"

    const/4 v3, 0x0

    move-object v5, v0

    move-object v4, v10

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterNetworkState()V"

    const/16 v6, 0x9

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterNetworkState"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v10, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onTelemetryAutostartChanged(Z)V"

    const/4 v6, 0x5

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onTelemetryAutostartChanged"

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x4

    const v1, 0x7f09018e

    const-string v2, "telemetry_autostart"

    const/4 v3, 0x0

    move-object v5, v0

    move-object v4, v10

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterNetworkState()V"

    const/16 v6, 0xa

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterNetworkState"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v10, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onPhoneSyncChanged(Z)V"

    const/4 v6, 0x6

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onPhoneSyncChanged"

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x4

    const v1, 0x7f09018c

    const-string v2, "phone_sync_enabled"

    const/4 v3, 0x0

    move-object v5, v0

    move-object v4, v10

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterNetworkState()V"

    const/16 v6, 0xb

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterNetworkState"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v5, 0x0

    const/16 v6, 0x14

    const v1, 0x7f090180

    const-string v2, "ap_sempre_aberto"

    const/4 v3, 0x0

    move-object v4, v0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterNetworkState()V"

    const/4 v6, 0x6

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterNetworkState"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v10, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onAutoProxyChanged(Z)V"

    const/4 v6, 0x2

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onAutoProxyChanged"

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x4

    const v1, 0x7f090184

    const-string v2, "auto_proxy_enabled"

    const/4 v3, 0x0

    move-object v5, v0

    move-object v4, v10

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    const v0, 0x7f09017b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lw0/v8;

    const/16 v3, 0x1c

    invoke-direct {v1, p0, v3}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v3, Lx1/a;

    invoke-direct {v3, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f090186

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lw0/v8;

    const/16 v4, 0x1d

    invoke-direct {v1, p0, v4}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v4, Lx1/a;

    invoke-direct {v4, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f09017f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lw0/h9;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v5, Lx1/a;

    invoke-direct {v5, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f090183

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lw0/h9;

    const/4 v6, 0x1

    invoke-direct {v1, p0, v6}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v6, Lx1/a;

    invoke-direct {v6, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f09017d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lw0/h9;

    const/4 v10, 0x2

    invoke-direct {v1, p0, v10}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v10, Lx1/a;

    invoke-direct {v10, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v4, v5, v6, v10}, [Lx1/a;

    move-result-object v0

    invoke-static {v0}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh2/a;

    invoke-virtual {p0, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lw0/d9;

    const/4 v5, 0x1

    invoke-direct {v4, v1, p0, v5}, Lw0/d9;-><init>(Lh2/a;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterNetworkState()V"

    const/4 v6, 0x7

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterNetworkState"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v10, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onAutoRouteChanged(Z)V"

    const/4 v6, 0x3

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onAutoRouteChanged"

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x4

    const v1, 0x7f09017c

    const-string v2, "auto_route_on_aa_connect"

    const/4 v3, 0x0

    move-object v5, v0

    move-object v4, v10

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    const v0, 0x7f090189

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/y8;

    const/16 v3, 0xf

    invoke-direct {v1, p0, v3}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09018a

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/y8;

    const/16 v3, 0x10

    invoke-direct {v1, p0, v3}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090190

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/y8;

    const/16 v3, 0x11

    invoke-direct {v1, p0, v3}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090191

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/y8;

    const/16 v3, 0xc

    invoke-direct {v1, p0, v3}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->A()V

    const v0, 0x7f090194

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/y8;

    const/16 v3, 0xd

    invoke-direct {v1, p0, v3}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09017e

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/y8;

    const/16 v3, 0xe

    invoke-direct {v1, p0, v3}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09018b

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-virtual {p0, v0, v8, v1}, Lcom/ex/auto/MainActivity;->M1(II[I)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->s1()V

    return-void
.end method

.method public final b0(Z)Z
    .locals 8

    const-string v0, "ADB"

    iget v1, p0, Lcom/ex/auto/MainActivity;->j1:I

    const-string v2, "GPIO "

    const-string v3, "out "

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/ex/auto/MainActivity;->i1:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lf2/d;->i0(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->V()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    sget-object v6, Lw0/ae;->a:Lw0/ae;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " por sysfs: pedi "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", li "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_2

    const-string v3, "n/d"

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_3

    const-string p1, ""

    goto :goto_3

    :cond_3
    const-string p1, " \u2014 vou tentar pelo ADB local"

    :goto_3
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    :goto_4
    sget-object v3, Lw0/ae;->a:Lw0/ae;

    const-string v3, " por sysfs falhou: "

    invoke-static {v2, v1, v3}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return v4
.end method

.method public final c0(Ljava/lang/String;)Lw0/wb;
    .locals 13

    const-string v1, "DistAux"

    sget-object v0, Lw0/u;->g:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx1/a;

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v4, v0, Lx1/a;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v0, v0, Lx1/a;->b:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    :try_start_0
    sget-object v0, Lw0/u6;->a:[B

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v5, "<get-prefs>(...)"

    invoke-static {v0, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v4, v2, v3}, Lw0/u6;->d(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;J)Lw0/t6;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pela distribuicao propria: vc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lw0/t6;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lw0/wb;

    iget-wide v6, v0, Lw0/t6;->a:J

    iget-object v8, v0, Lw0/t6;->b:Ljava/lang/String;

    iget-object v9, v0, Lw0/t6;->c:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v12}, Lw0/wb;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    sget-object v4, Lw0/u;->h:Ljava/util/Set;

    invoke-static {p1, v4}, Lw0/t1;->c(Ljava/lang/String;Ljava/util/Set;)Lw0/d5;

    move-result-object v4

    sget-object v5, Lw0/d5;->b:Lw0/d5;

    const-string v6, " indisponivel na distribuicao propria ("

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "); usando o GitHub"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") \u2014 e nao ha reserva no GitHub desde 23/09/2026"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ex/auto/MainActivity;->r0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"versionCode\"\\s*:\\s*(\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v4, "compile(...)"

    invoke-static {v1, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v4, "matcher(...)"

    invoke-static {v1, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v1, v4, v0}, Lk1/a;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo2/e;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lo2/e;->a()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v1, v4}, Ly1/g;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lo2/s;->Y(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_3
    move-wide v5, v2

    const-string v1, "versionName"

    invoke-static {v0, v1}, Lcom/ex/auto/MainActivity;->x0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v7, v1

    const-string v1, "apkUrl"

    invoke-static {v0, v1}, Lcom/ex/auto/MainActivity;->x0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "pageUrl"

    invoke-static {v0, v1}, Lcom/ex/auto/MainActivity;->x0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v8, :cond_6

    if-eqz v10, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sem apkUrl nem pageUrl em "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    const-string p1, "sha256"

    invoke-static {v0, p1}, Lcom/ex/auto/MainActivity;->x0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v4, Lw0/wb;

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lw0/wb;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public final c1()V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->S0:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const v0, 0x7f0901af

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "gestures_ac_swipe_single_step"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    :cond_0
    return-void
.end method

.method public final d0(Ljava/lang/String;Ljava/lang/String;)Lw0/zb;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "manifesto pela distribuicao propria: vc="

    sget v4, Lw0/u;->a:I

    const-string v4, "versao"

    invoke-static {v2, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lw0/u;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ly1/g;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v5

    goto :goto_0

    :cond_1
    sget-object v6, Lw0/u;->g:Ljava/lang/Object;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx1/a;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lx1/a;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    :goto_0
    const/4 v6, 0x0

    const-string v7, "CaFix"

    if-eqz v4, :cond_4

    :try_start_0
    sget-object v8, Lw0/u6;->a:[B

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "<get-prefs>(...)"

    invoke-static {v8, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    invoke-static {v1, v8, v4, v9, v10}, Lw0/u6;->d(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;J)Lw0/t6;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, v4, Lw0/t6;->a:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lw0/zb;

    const-string v9, ""

    iget-object v10, v4, Lw0/t6;->c:Ljava/lang/String;

    iget-wide v11, v4, Lw0/t6;->a:J

    iget-object v13, v4, Lw0/t6;->d:Ljava/lang/String;

    iget-wide v14, v4, Lw0/t6;->e:J

    invoke-direct/range {v8 .. v15}, Lw0/zb;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception v0

    invoke-static {v3, v2}, Lw0/u;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ly1/g;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v8, Lw0/u;->h:Ljava/util/Set;

    invoke-static {v4, v8}, Lw0/t1;->c(Ljava/lang/String;Ljava/util/Set;)Lw0/d5;

    move-result-object v4

    sget-object v8, Lw0/d5;->b:Lw0/d5;

    if-eq v4, v8, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lw0/ae;->a:Lw0/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "manifesto indispon\u00edvel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; sem reserva no GitHub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConnAdaptor"

    invoke-static {v3, v2, v6}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    throw v0

    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "distribuicao propria indisponivel ("

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "); usando o GitHub"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v3, v2}, Lw0/u;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x1

    move v4, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    :try_start_1
    invoke-virtual {v1, v5}, Lcom/ex/auto/MainActivity;->r0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "md5"

    invoke-static {v0, v8}, Lcom/ex/auto/MainActivity;->x0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-static {v8}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    const-string v8, "apkUrl"

    invoke-static {v0, v8}, Lcom/ex/auto/MainActivity;->x0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    new-instance v9, Lw0/zb;

    const-string v14, ""

    const-wide/16 v15, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v9 .. v16}, Lw0/zb;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    return-object v9

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " sem apkUrl"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " sem md5"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    const-string v8, "manifesto "

    const-string v9, " falhou: "

    invoke-static {v8, v5, v9}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HTTP 4\\d\\d"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    const-string v8, "compile(...)"

    invoke-static {v5, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    const-string v8, ""

    :cond_7
    invoke-virtual {v5, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v9, "matcher(...)"

    invoke-static {v5, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6, v8}, Lk1/a;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo2/e;

    move-result-object v5

    if-nez v5, :cond_8

    move-object v5, v0

    move v4, v6

    goto/16 :goto_2

    :cond_8
    move-object v5, v0

    goto/16 :goto_2

    :cond_9
    const v0, 0x7f0f013b

    if-nez v4, :cond_b

    if-eqz v5, :cond_a

    goto :goto_4

    :cond_a
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual/range {p0 .. p1}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw v5

    :cond_b
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual/range {p0 .. p1}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final d1()V
    .locals 3

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "adb_gpio_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f03ef

    goto :goto_0

    :cond_0
    const v0, 0x7f0f03ee

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->Q0:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->Q0:Landroid/widget/Toast;

    return-void
.end method

.method public final e1()V
    .locals 2

    iget-boolean v0, p0, Lcom/ex/auto/MainActivity;->l0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lw0/ma;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f0()Lw0/bc;
    .locals 10

    const-string v1, "DistAux"

    const-string v0, "keyserver pela distribuicao propria: vc="

    sget-object v2, Lw0/u;->g:Ljava/lang/Object;

    const-string v3, "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/geelyautokeyserver-patch.json"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/a;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lx1/a;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :try_start_0
    sget-object v4, Lw0/u6;->a:[B

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "<get-prefs>(...)"

    invoke-static {v4, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    invoke-static {p0, v4, v2, v5, v6}, Lw0/u6;->d(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;J)Lw0/t6;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v2, Lw0/t6;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lw0/bc;

    iget-object v7, v2, Lw0/t6;->b:Ljava/lang/String;

    iget-object v8, v2, Lw0/t6;->c:Ljava/lang/String;

    const-string v9, ""

    iget-wide v5, v2, Lw0/t6;->a:J

    invoke-direct/range {v4 .. v9}, Lw0/bc;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    sget-object v2, Lw0/u;->h:Ljava/util/Set;

    invoke-static {v3, v2}, Lw0/t1;->c(Ljava/lang/String;Ljava/util/Set;)Lw0/d5;

    move-result-object v2

    sget-object v4, Lw0/d5;->b:Lw0/d5;

    const-string v5, "keyserver indisponivel na distribuicao propria ("

    if-eq v2, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "); usando o GitHub"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") \u2014 e nao ha reserva no GitHub desde 23/09/2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Lcom/ex/auto/MainActivity;->r0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apkUrl"

    invoke-static {v0, v1}, Lcom/ex/auto/MainActivity;->x0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v1, "sha256"

    invoke-static {v0, v1}, Lcom/ex/auto/MainActivity;->x0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v1, "versionName"

    invoke-static {v0, v1}, Lcom/ex/auto/MainActivity;->x0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "?"

    :cond_2
    move-object v5, v0

    new-instance v2, Lw0/bc;

    const-wide/16 v3, 0x0

    invoke-direct/range {v2 .. v7}, Lw0/bc;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "geelyautokeyserver-patch.json sem sha256"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "geelyautokeyserver-patch.json sem apkUrl"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f1()V
    .locals 5

    const-string v0, "?"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :catch_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-wide/16 v1, -0x1

    :goto_1
    :try_start_2
    sget-object v3, Lw0/qe;->a:Lw0/qe;

    invoke-virtual {v3, p0}, Lw0/qe;->c(Lcom/ex/auto/MainActivity;)Lx1/a;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_1

    const v3, 0x7f0f027c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_1
    iget-object v4, v3, Lx1/a;->a:Ljava/lang/Object;

    iget-object v3, v3, Lx1/a;->b:Ljava/lang/Object;

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f0f027b

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {v3}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f0373

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->j0:Ljava/lang/String;

    const v0, 0x7f090223

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->j0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final g0()Lw0/hc;
    .locals 14

    sget-object v0, Lw0/u6;->a:[B

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "<get-prefs>(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPackageName(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->T()J

    move-result-wide v3

    invoke-static {p0, v0, v2, v3, v4}, Lw0/u6;->d(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;J)Lw0/t6;

    move-result-object v2

    sget-object v3, Lw0/qe;->a:Lw0/qe;

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, v2, Lw0/t6;->h:I

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->T()J

    move-result-wide v7

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lw0/qe;->g(Landroid/content/ContextWrapper;Landroid/content/SharedPreferences;IJ)V

    iget-wide v0, v2, Lw0/t6;->i:J

    invoke-static {p0, v0, v1}, Lw0/qe;->f(Landroid/content/ContextWrapper;J)V

    new-instance v0, Lw0/ma;

    const/16 v1, 0x15

    invoke-direct {v0, p0, v1}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v1, "PlaybookSync"

    invoke-virtual {v3, p0}, Lw0/qe;->b(Landroid/content/Context;)Lw0/ie;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v3, Lw0/p;

    invoke-direct {v3, p0}, Lw0/p;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lw0/ie;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "userCheck"

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lw0/he;

    iget-boolean v9, v8, Lw0/he;->c:Z

    if-eqz v9, :cond_1

    iget-object v8, v8, Lw0/he;->b:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    move v0, v8

    :goto_1
    if-ge v0, v6, :cond_5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v0, 0x1

    check-cast v9, Lw0/he;

    :try_start_0
    sget-object v0, Lw0/ne;->a:Lo2/h;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v9, v3, v0}, Lw0/ne;->a(Lw0/he;Lw0/p;Ljava/util/LinkedHashMap;)Lw0/me;

    move-result-object v0

    sget-object v11, Lw0/ae;->a:Lw0/ae;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v9, Lw0/he;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x5b

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] \u2192 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lw0/me;->a:Lw0/je;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lw0/me;->b:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " passos, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lw0/me;->c:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lw0/me;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    const-string v0, ""

    :cond_4
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    sget-object v11, Lw0/ae;->a:Lw0/ae;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v9, Lw0/he;->a:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "[userCheck] explodiu: "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_4
    move v0, v10

    goto/16 :goto_1

    :cond_5
    :goto_5
    new-instance v0, Lw0/hc;

    iget-wide v5, v2, Lw0/t6;->a:J

    iget-object v1, v2, Lw0/t6;->b:Ljava/lang/String;

    iget-object v2, v2, Lw0/t6;->c:Ljava/lang/String;

    invoke-direct {v0, v5, v6, v1, v2}, Lw0/hc;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final g1()V
    .locals 2

    const v0, 0x7f090131

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/ex/auto/MainActivity;->r0:Z

    invoke-virtual {v0, v1}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    :cond_0
    return-void
.end method

.method public final h2()V
    .locals 16

    move-object/from16 v2, p0

    const v7, 0x7f090217

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lx1/a;

    invoke-direct {v10, v0, v9}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0901e2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v11, Lx1/a;

    invoke-direct {v11, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f090202

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v12, Lx1/a;

    invoke-direct {v12, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0901b2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v13, Lx1/a;

    invoke-direct {v13, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0901bb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v14, Lx1/a;

    invoke-direct {v14, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0901f1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v15, Lx1/a;

    invoke-direct {v15, v0, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v10 .. v15}, [Lx1/a;

    move-result-object v0

    invoke-static {v0}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lw0/vb;

    invoke-direct {v6, v2, v3, v4}, Lw0/vb;-><init>(Lcom/ex/auto/MainActivity;II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0901d7

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lw0/w8;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e8

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lw0/w8;

    const/4 v4, 0x5

    invoke-direct {v3, v2, v4}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e7

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lw0/w8;

    const/16 v4, 0x9

    invoke-direct {v3, v2, v4}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901d3

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lw0/w8;

    const/16 v4, 0xa

    invoke-direct {v3, v2, v4}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901d2

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lw0/w8;

    const/16 v4, 0xb

    invoke-direct {v3, v2, v4}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lw0/tc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x8

    move v3, v1

    const/4 v1, 0x0

    move v4, v3

    const-class v3, Lcom/ex/auto/MainActivity;

    move v10, v4

    const-string v4, "refreshMasterToolsState"

    invoke-direct/range {v0 .. v6}, Lw0/tc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v11, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onRememberBrightnessChanged(Z)V"

    const/16 v6, 0x11

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onRememberBrightnessChanged"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x4

    const v1, 0x7f0901eb

    const/4 v3, 0x0

    const-string v2, "remember_brightness"

    move-object v5, v0

    move-object v4, v11

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/tc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x9

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/tc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lw0/v8;

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v3, 0x7f090201

    invoke-virtual {v2, v3, v0, v1}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0xc

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lw0/v8;

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v3, 0x7f0901ea

    invoke-virtual {v2, v3, v0, v1}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0xd

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v11, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onStatusBatteryChanged(Z)V"

    const/4 v6, 0x7

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onStatusBatteryChanged"

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x4

    const v1, 0x7f0901da

    const/4 v3, 0x0

    const-string v2, "status_battery_enabled"

    move-object v5, v0

    move-object v4, v11

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0xe

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v11, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onStatusTempExtChanged(Z)V"

    const/16 v6, 0x8

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onStatusTempExtChanged"

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x4

    const v1, 0x7f0901de

    const/4 v3, 0x0

    const-string v2, "status_temp_ext_enabled"

    move-object v5, v0

    move-object v4, v11

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0xf

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v11, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onStatusWifiChanged(Z)V"

    const/16 v6, 0x9

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onStatusWifiChanged"

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x4

    const v1, 0x7f0901e0

    const/4 v3, 0x0

    const-string v2, "status_wifi_enabled"

    move-object v5, v0

    move-object v4, v11

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x10

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v11, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onStatusSignalChanged(Z)V"

    const/16 v6, 0xa

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onStatusSignalChanged"

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x4

    const v1, 0x7f0901dc

    const/4 v3, 0x0

    const-string v2, "status_signal_enabled"

    move-object v5, v0

    move-object v4, v11

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    move-object v2, v0

    const v0, 0x7f090203

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/a0;

    const/4 v3, 0x4

    const-string v4, "batt"

    invoke-direct {v1, v2, v3, v4}, Lw0/a0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090210

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/a0;

    const-string v4, "temp"

    invoke-direct {v1, v2, v3, v4}, Lw0/a0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09020d

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/a0;

    const-string v4, "exttemp"

    invoke-direct {v1, v2, v3, v4}, Lw0/a0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x11

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v11, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onStatusBrightnessChanged(Z)V"

    const/16 v6, 0xb

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onStatusBrightnessChanged"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x4

    const v1, 0x7f09020b

    const/4 v3, 0x0

    const-string v2, "status_brightness_enabled"

    move-object v5, v0

    move-object v4, v11

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x12

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lw0/v8;

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v3, 0x7f090208

    invoke-virtual {v2, v3, v0, v1}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x13

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v11, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onStatusTripKmChanged(Z)V"

    const/16 v6, 0xc

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onStatusTripKmChanged"

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x4

    const v1, 0x7f090215

    const/4 v3, 0x0

    const-string v2, "status_trip_km_enabled"

    move-object v5, v0

    move-object v4, v11

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x14

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v11, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onStatusTotalKmChanged(Z)V"

    const/16 v6, 0xd

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onStatusTotalKmChanged"

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x4

    const v1, 0x7f090213

    const/4 v3, 0x0

    const-string v2, "status_total_km_enabled"

    move-object v5, v0

    move-object v4, v11

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    move-object v2, v0

    new-instance v0, Lw0/v8;

    const/16 v1, 0xe

    invoke-direct {v0, v2, v1}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const/4 v1, 0x0

    const v3, 0x7f090212

    invoke-virtual {v2, v3, v1, v0}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x15

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v11, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onTempBattPillEnabledChanged(Z)V"

    const/16 v6, 0xe

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onTempBattPillEnabledChanged"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x4

    const v1, 0x7f0901c9

    const/4 v3, 0x0

    const-string v2, "temp_batt_pill_enabled"

    move-object v5, v0

    move-object v4, v11

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x16

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lw0/ub;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lw0/ub;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v3, 0x7f0901cd

    invoke-virtual {v2, v3, v0, v1}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x17

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lw0/ub;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lw0/ub;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v3, 0x7f0901cb

    invoke-virtual {v2, v3, v0, v1}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x18

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lw0/ub;

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lw0/ub;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v3, 0x7f0901cc

    invoke-virtual {v2, v3, v0, v1}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x19

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lw0/v8;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v3, 0x7f0901d1

    invoke-virtual {v2, v3, v0, v1}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x1a

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lw0/v8;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v3, 0x7f0901d0

    invoke-virtual {v2, v3, v0, v1}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    const v0, 0x7f0901b7

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w8;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x1b

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v5, Lw0/n2;

    const/16 v1, 0x1a

    invoke-direct {v5, v1}, Lw0/n2;-><init>(I)V

    const/4 v6, 0x4

    const v1, 0x7f0901b9

    const/4 v3, 0x0

    const-string v2, "swc_media_control_enabled"

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x1c

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v5, 0x0

    const/16 v6, 0x10

    const v1, 0x7f0901b3

    const/4 v3, 0x0

    const-string v2, "camera_on_drive"

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    move-object v2, v0

    new-instance v0, Lw0/v8;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const/4 v1, 0x0

    const v3, 0x7f0901c1

    invoke-virtual {v2, v3, v1, v0}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterToolsState()V"

    const/16 v6, 0x1d

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v5, Lw0/n2;

    invoke-direct {v5, v2}, Lw0/n2;-><init>(Lcom/ex/auto/MainActivity;)V

    const/4 v6, 0x4

    const v1, 0x7f0901c2

    const/4 v3, 0x0

    const-string v2, "recirc_guard_enabled"

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/tc;

    const-string v5, "refreshMasterToolsState()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/tc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v11, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onWindowDriverOnDoorChanged(Z)V"

    const/16 v6, 0xf

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onWindowDriverOnDoorChanged"

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x4

    const v1, 0x7f0901c4

    const/4 v3, 0x0

    const-string v2, "window_driver_on_door"

    move-object v5, v0

    move-object v4, v11

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/tc;

    const-string v5, "refreshMasterToolsState()V"

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/tc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v11, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onWindowOppositeOnDoorChanged(Z)V"

    const/16 v6, 0x10

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onWindowOppositeOnDoorChanged"

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x4

    const v1, 0x7f0901be

    const/4 v3, 0x0

    const-string v2, "window_opposite_on_door"

    move-object v5, v0

    move-object v4, v11

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    move-object v2, v0

    const v0, 0x7f0901f9

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w8;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Lw0/v8;

    const/4 v0, 0x3

    invoke-direct {v11, v2, v0}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v0, Lw0/tc;

    const-string v5, "refreshToolsAfterAction()V"

    const/4 v6, 0x2

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshToolsAfterAction"

    invoke-direct/range {v0 .. v6}, Lw0/tc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v12, v0

    new-instance v0, Lw0/c8;

    const-string v5, "onRearCamPipSwitch(ZLkotlin/jvm/functions/Function0;)V"

    const/4 v1, 0x2

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onRearCamPipSwitch"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/c8;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const v1, 0x7f0901ff

    invoke-virtual {v2, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lw0/y6;

    invoke-direct {v3, v0, v11, v12}, Lw0/y6;-><init>(Lh2/p;Lh2/a;Lh2/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lw0/tc;

    const-string v5, "refreshMasterToolsState()V"

    const/4 v6, 0x3

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    invoke-direct/range {v0 .. v6}, Lw0/tc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lw0/v8;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v3, 0x7f0901fd

    invoke-virtual {v2, v3, v0, v1}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    new-instance v11, Lw0/v8;

    const/4 v0, 0x6

    invoke-direct {v11, v2, v0}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v0, Lw0/tc;

    const-string v5, "refreshToolsAfterAction()V"

    const/4 v6, 0x4

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshToolsAfterAction"

    invoke-direct/range {v0 .. v6}, Lw0/tc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v12, v0

    new-instance v0, Lw0/c8;

    const-string v5, "onAebSwitch(ZLkotlin/jvm/functions/Function0;)V"

    const/4 v6, 0x3

    const/4 v1, 0x2

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onAebSwitch"

    invoke-direct/range {v0 .. v6}, Lw0/c8;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const v1, 0x7f0901f4

    invoke-virtual {v2, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lw0/y6;

    invoke-direct {v3, v0, v11, v12}, Lw0/y6;-><init>(Lh2/p;Lh2/a;Lh2/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lw0/tc;

    const-string v5, "refreshToolsAfterAction()V"

    const/4 v6, 0x5

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshToolsAfterAction"

    invoke-direct/range {v0 .. v6}, Lw0/tc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lw0/v8;

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v3, 0x7f0901f2

    invoke-virtual {v2, v3, v0, v1}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    new-instance v11, Lw0/v8;

    const/16 v0, 0x8

    invoke-direct {v11, v2, v0}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v0, Lw0/tc;

    const-string v5, "refreshToolsAfterAction()V"

    const/4 v6, 0x6

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshToolsAfterAction"

    invoke-direct/range {v0 .. v6}, Lw0/tc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v12, v0

    new-instance v0, Lw0/c8;

    const-string v5, "onSpeedLockSwitch(ZLkotlin/jvm/functions/Function0;)V"

    const/4 v6, 0x4

    const/4 v1, 0x2

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onSpeedLockSwitch"

    invoke-direct/range {v0 .. v6}, Lw0/c8;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const v1, 0x7f0901fb

    invoke-virtual {v2, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lw0/y6;

    invoke-direct {v3, v0, v11, v12}, Lw0/y6;-><init>(Lh2/p;Lh2/a;Lh2/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lw0/v8;

    const/16 v1, 0x9

    invoke-direct {v0, v2, v1}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const/4 v1, 0x0

    const v3, 0x7f0901d9

    invoke-virtual {v2, v3, v1, v0}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    new-instance v0, Lw0/tc;

    const-string v5, "refreshMasterToolsState()V"

    const/4 v6, 0x7

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterToolsState"

    invoke-direct/range {v0 .. v6}, Lw0/tc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lw0/v8;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v3, 0x7f0901ae

    invoke-virtual {v2, v3, v0, v1}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    const v0, 0x7f0901f0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lx1/a;

    invoke-direct {v1, v0, v9}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0901ee

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lx1/a;

    invoke-direct {v4, v0, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0901ef

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lx1/a;

    invoke-direct {v5, v0, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0901ed

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x78

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v6, Lx1/a;

    invoke-direct {v6, v0, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v4, v5, v6}, [Lx1/a;

    move-result-object v0

    invoke-static {v0}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, La1/n;

    const/4 v5, 0x4

    invoke-direct {v4, v2, v1, v5}, La1/n;-><init>(Landroid/content/ContextWrapper;II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    const v0, 0x7f0901b0

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, v10}, Landroid/widget/ProgressBar;->setMin(I)V

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->C1()V

    new-instance v1, Lw0/u8;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lw0/u8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f090206

    const-string v1, "status_brightness_pct"

    const v3, 0x7f090205

    invoke-static {v3, v0, v2, v1}, Lcom/ex/auto/MainActivity;->i2(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    const v0, 0x7f09020a

    const-string v1, "status_brightness_pct2"

    const v3, 0x7f090207

    invoke-static {v3, v0, v2, v1}, Lcom/ex/auto/MainActivity;->i2(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    const-string v0, "temp_batt_pill_prefs"

    invoke-virtual {v2, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0901ce

    invoke-virtual {v2, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    const/16 v3, 0x96

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    const-string v3, "pill_size_pct"

    const/16 v4, 0x64

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x32

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v3, Lw0/uc;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v4}, Lw0/uc;-><init>(Lcom/ex/auto/MainActivity;Landroid/content/SharedPreferences;I)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v1, 0x7f0901c7

    invoke-virtual {v2, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    const-string v3, "pill_alpha"

    const/16 v4, 0x55

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v3, Lw0/uc;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v0, v4}, Lw0/uc;-><init>(Lcom/ex/auto/MainActivity;Landroid/content/SharedPreferences;I)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f0901d5

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w8;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e3

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w8;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09020f

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w8;

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901bd

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w8;

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f8

    invoke-virtual {v2, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w8;

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v8, v7}, Lcom/ex/auto/MainActivity;->o2(II)V

    return-void
.end method

.method public final i0(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 6

    long-to-double v0, p2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    invoke-static {p1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const p1, 0x7f0f016e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v4, 0x7f0f016d

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-lez v4, :cond_1

    const/16 v4, 0x64

    int-to-long v4, v4

    mul-long/2addr p2, v4

    div-long/2addr p2, p4

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    long-to-double p4, p4

    div-double/2addr p4, v2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s: %d%% (%.1f/%.1f MB)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s: %.1f MB"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i1(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ex/auto/MainActivity;->v1:Ljava/lang/Integer;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/ex/auto/MainActivity;->w1:Ljava/lang/Integer;

    :cond_1
    invoke-static {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->h(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "saved_drive"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v1

    :goto_0
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->w1:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/ex/auto/MainActivity;->x1:Ljava/util/Set;

    invoke-static {p2, v0, v3}, Lw0/t1;->B(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Set;)Lw0/n4;

    move-result-object p2

    const-string v0, "saved_regen"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    iget-object p1, p0, Lcom/ex/auto/MainActivity;->v1:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->y1:Ljava/util/Set;

    invoke-static {v1, p1, v0}, Lw0/t1;->B(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Set;)Lw0/n4;

    move-result-object p1

    const v0, 0x7f090198

    const v1, 0x20020501

    invoke-static {p0, v0, v1, p1}, Lcom/ex/auto/MainActivity;->j1(Lcom/ex/auto/MainActivity;IILw0/n4;)V

    const v0, 0x7f090199

    const v1, 0x20020502

    invoke-static {p0, v0, v1, p1}, Lcom/ex/auto/MainActivity;->j1(Lcom/ex/auto/MainActivity;IILw0/n4;)V

    const v0, 0x7f090197

    const v1, 0x20020503

    invoke-static {p0, v0, v1, p1}, Lcom/ex/auto/MainActivity;->j1(Lcom/ex/auto/MainActivity;IILw0/n4;)V

    const p1, 0x7f09016d

    const v0, 0x22010101

    invoke-static {p0, p1, v0, p2}, Lcom/ex/auto/MainActivity;->j1(Lcom/ex/auto/MainActivity;IILw0/n4;)V

    const p1, 0x7f09016c

    const v0, 0x22010102

    invoke-static {p0, p1, v0, p2}, Lcom/ex/auto/MainActivity;->j1(Lcom/ex/auto/MainActivity;IILw0/n4;)V

    const p1, 0x7f09016e

    const v0, 0x22010103

    invoke-static {p0, p1, v0, p2}, Lcom/ex/auto/MainActivity;->j1(Lcom/ex/auto/MainActivity;IILw0/n4;)V

    return-void
.end method

.method public final j0()V
    .locals 4

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "quick_access_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gestures_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->x0:Lcom/ex/auto/QuickAccessFloaterService;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/ve;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v0}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final k0(I)V
    .locals 68

    move-object/from16 v1, p0

    move/from16 v9, p1

    if-lez v9, :cond_13

    iget-object v0, v1, Lcom/ex/auto/MainActivity;->S0:[Z

    array-length v2, v0

    if-ge v9, v2, :cond_13

    aget-boolean v2, v0, v9

    if-eqz v2, :cond_0

    goto/16 :goto_10

    :cond_0
    packed-switch v9, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_0
    const v2, 0x7f0902ba

    goto :goto_0

    :pswitch_1
    const v2, 0x7f0902bd

    goto :goto_0

    :pswitch_2
    const v2, 0x7f0902bf

    goto :goto_0

    :pswitch_3
    const v2, 0x7f0902bb

    goto :goto_0

    :pswitch_4
    const v2, 0x7f0902bc

    goto :goto_0

    :pswitch_5
    const v2, 0x7f0902be

    goto :goto_0

    :pswitch_6
    const v2, 0x7f0902c0

    :goto_0
    if-nez v2, :cond_1

    goto/16 :goto_10

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    const/4 v13, 0x1

    aput-boolean v13, v0, v9

    const-string v14, "se\u00e7\u00e3o "

    const-string v15, "ArranqueUI"

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v2, " n\u00e3o inflou: "

    invoke-static {v14, v9, v2}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v2, v15}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const/16 v2, 0xb

    const/16 v4, 0x1a

    const/16 v5, 0x18

    const/16 v6, 0x17

    const/16 v8, 0x16

    const/16 v10, 0xa

    const/16 v0, 0x19

    const-string v7, "getString(...)"

    move-object/from16 v27, v7

    const-string v7, ""

    move-object/from16 v33, v7

    packed-switch v9, :pswitch_data_1

    :goto_2
    move-wide/from16 v39, v11

    move-object/from16 v20, v14

    move-object/from16 v27, v15

    goto/16 :goto_d

    :pswitch_7
    const v7, 0x7f090162

    invoke-virtual {v1, v7}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v3, Lw0/y8;

    invoke-direct {v3, v1, v13}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090161

    invoke-virtual {v1, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v7, Lw0/y8;

    const/4 v13, 0x7

    invoke-direct {v7, v1, v13}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090160

    invoke-virtual {v1, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v7, Lw0/y8;

    invoke-direct {v7, v1, v10}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f09014d

    invoke-virtual {v1, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v7, Lw0/y8;

    invoke-direct {v7, v1, v2}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090158

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lw0/v8;

    invoke-direct {v3, v1, v8}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v7, Lx1/a;

    invoke-direct {v7, v2, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x7f090154

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lw0/v8;

    invoke-direct {v3, v1, v6}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v6, Lx1/a;

    invoke-direct {v6, v2, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x7f090156

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lw0/v8;

    invoke-direct {v3, v1, v5}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v5, Lx1/a;

    invoke-direct {v5, v2, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x7f090157

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lw0/v8;

    invoke-direct {v3, v1, v0}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v8, Lx1/a;

    invoke-direct {v8, v2, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x7f090155

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lw0/v8;

    invoke-direct {v3, v1, v4}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v4, Lx1/a;

    invoke-direct {v4, v2, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x7f09014b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lw0/v8;

    const/16 v10, 0x1b

    invoke-direct {v3, v1, v10}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v10, Lx1/a;

    invoke-direct {v10, v2, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x7f090169

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lw0/v8;

    const/16 v13, 0x12

    invoke-direct {v3, v1, v13}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v13, Lx1/a;

    invoke-direct {v13, v2, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x7f09016a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lw0/v8;

    const/16 v0, 0x13

    invoke-direct {v3, v1, v0}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v0, Lx1/a;

    invoke-direct {v0, v2, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x7f09015a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lw0/v8;

    move-object/from16 v37, v6

    const/16 v6, 0x14

    invoke-direct {v3, v1, v6}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v6, Lx1/a;

    invoke-direct {v6, v2, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x7f090159

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lw0/v8;

    move-object/from16 v40, v4

    const/16 v4, 0x15

    invoke-direct {v3, v1, v4}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v4, Lx1/a;

    invoke-direct {v4, v2, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v43, v0

    move-object/from16 v45, v4

    move-object/from16 v38, v5

    move-object/from16 v44, v6

    move-object/from16 v36, v7

    move-object/from16 v39, v8

    move-object/from16 v41, v10

    move-object/from16 v42, v13

    filled-new-array/range {v36 .. v45}, [Lx1/a;

    move-result-object v0

    invoke-static {v0}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh2/a;

    invoke-virtual {v1, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lw0/d9;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v1, v5}, Lw0/d9;-><init>(Lh2/a;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_3
    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterConfigState()V"

    const/4 v6, 0x5

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterConfigState"

    const/16 v8, 0x19

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const v2, 0x7f090148

    const-string v3, "auto_update_enabled"

    const/4 v4, 0x1

    move-object v5, v0

    move-object/from16 v0, v33

    const/4 v10, 0x3

    const/4 v13, 0x2

    const/16 v35, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    invoke-virtual {v1}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    :cond_4
    move-object v7, v0

    :cond_5
    const-string v0, "ru"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f090164

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f090163

    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lw0/y8;

    invoke-direct {v2, v1, v13}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lw0/x8;

    invoke-direct {v0, v1, v8}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    const v0, 0x7f090151

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lw0/y8;

    invoke-direct {v2, v1, v10}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09015d

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lw0/y8;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09015b

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lw0/y8;

    const/4 v7, 0x5

    invoke-direct {v2, v1, v7}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090153

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lw0/y8;

    const/4 v3, 0x6

    invoke-direct {v2, v1, v3}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090167

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lw0/y8;

    const/16 v3, 0x8

    invoke-direct {v2, v1, v3}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09015f

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lw0/y8;

    const/16 v3, 0x9

    invoke-direct {v2, v1, v3}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->r1()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->r1()V

    goto/16 :goto_2

    :pswitch_8
    move v8, v0

    move v2, v4

    move v3, v13

    move-object/from16 v0, v33

    const/4 v7, 0x5

    const/4 v10, 0x0

    const/4 v13, 0x2

    const v4, 0x7f09019d

    const v5, 0x7f0901ad

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4
    if-ge v5, v13, :cond_7

    aget v8, v4, v5

    add-int/lit8 v24, v6, 0x1

    invoke-virtual {v1, v8}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v13, Lw0/g9;

    invoke-direct {v13, v6, v1, v4, v3}, Lw0/g9;-><init>(ILjava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v24

    const/16 v8, 0x19

    const/4 v13, 0x2

    goto :goto_4

    :cond_7
    const-string v5, "quick_access_prefs"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-virtual {v1}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const v6, 0x7f09019a

    invoke-virtual {v1, v6}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v8, Lw0/y8;

    invoke-direct {v8, v1, v2}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0901a5

    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v6, v1, Lcom/ex/auto/MainActivity;->V:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    sget-object v8, Lcom/ex/auto/QuickAccessFloaterService;->v0:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    move-object/from16 v25, v4

    move/from16 v33, v5

    const/16 v7, 0xe

    if-eqz v24, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v4, v24

    check-cast v4, Ljava/lang/String;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    int-to-float v7, v7

    mul-float v7, v7, v33

    float-to-int v7, v7

    invoke-virtual {v5, v7, v10, v7, v10}, Landroid/view/View;->setPadding(IIII)V

    const v10, 0x7f070065

    invoke-virtual {v5, v10}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    new-instance v7, Lw0/sf;

    invoke-direct {v7, v1}, Lw0/sf;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v7, v4}, Lw0/sf;->setIconId(Ljava/lang/String;)V

    const/16 v3, 0x11

    int-to-float v10, v3

    mul-float v10, v10, v33

    float-to-int v3, v10

    invoke-virtual {v7, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v30, v8

    const/16 v10, 0x42

    int-to-float v8, v10

    mul-float v8, v8, v33

    float-to-int v8, v8

    const/4 v10, -0x1

    invoke-direct {v3, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-static {v1, v4}, Lw0/e8;->C(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41880000    # 17.0f

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v7, 0x7f050087

    invoke-virtual {v1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    move-wide/from16 v39, v11

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v11, -0x2

    const/4 v12, 0x0

    invoke-direct {v10, v12, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/ex/auto/MasterToggleView;

    const/4 v10, 0x0

    invoke-direct {v3, v1, v10}, Lcom/ex/auto/MasterToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x38

    int-to-float v10, v10

    mul-float v10, v10, v33

    float-to-int v10, v10

    const/16 v12, 0x20

    int-to-float v12, v12

    mul-float v12, v12, v33

    float-to-int v12, v12

    invoke-direct {v7, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lw0/y6;

    const/4 v10, 0x5

    invoke-direct {v7, v4, v13, v1, v10}, Lw0/y6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v3}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/GridLayout$LayoutParams;->width:I

    iput v8, v3, Landroid/widget/GridLayout$LayoutParams;->height:I

    const/high16 v7, -0x80000000

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object v12

    iput-object v12, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    int-to-float v12, v10

    mul-float v12, v12, v33

    float-to-int v12, v12

    invoke-virtual {v3, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v7, v10

    move-object/from16 v4, v25

    move-object/from16 v8, v30

    move/from16 v5, v33

    move-wide/from16 v11, v39

    const/4 v3, 0x1

    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_8
    move-wide/from16 v39, v11

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v10, 0x38

    const/4 v11, -0x2

    const/16 v12, 0x20

    const v31, 0x7f050087

    const/high16 v32, -0x80000000

    const/16 v34, 0x5

    new-instance v6, Lw0/sb;

    invoke-direct {v6, v13, v4}, Lw0/sb;-><init>(Landroid/content/SharedPreferences;I)V

    move/from16 v28, v8

    new-instance v8, Lw0/pb;

    const/4 v3, 0x1

    invoke-direct {v8, v13, v3}, Lw0/pb;-><init>(Landroid/content/SharedPreferences;I)V

    const v2, 0x7f0901a3

    move/from16 v37, v3

    const v3, 0x7f0901a4

    const/16 v4, 0x32

    const/16 v5, 0x12c

    move/from16 v24, v7

    const/4 v7, 0x1

    move-object/from16 v20, v14

    move-object/from16 v10, v25

    move-object/from16 v12, v27

    move/from16 v14, v37

    const/16 v11, 0x10

    invoke-static/range {v1 .. v8}, Lcom/ex/auto/MainActivity;->b2(Lcom/ex/auto/MainActivity;IIIILh2/a;ZLh2/l;)V

    new-instance v6, Lw0/sb;

    invoke-direct {v6, v13, v14}, Lw0/sb;-><init>(Landroid/content/SharedPreferences;I)V

    new-instance v8, Lw0/pb;

    const/4 v1, 0x2

    invoke-direct {v8, v13, v1}, Lw0/pb;-><init>(Landroid/content/SharedPreferences;I)V

    const v2, 0x7f0901a1

    const v3, 0x7f0901a2

    const/16 v5, 0xc8

    move v11, v1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/ex/auto/MainActivity;->b2(Lcom/ex/auto/MainActivity;IIIILh2/a;ZLh2/l;)V

    new-instance v6, Lw0/sb;

    invoke-direct {v6, v13, v11}, Lw0/sb;-><init>(Landroid/content/SharedPreferences;I)V

    new-instance v8, Lw0/pb;

    const/4 v11, 0x3

    invoke-direct {v8, v13, v11}, Lw0/pb;-><init>(Landroid/content/SharedPreferences;I)V

    const v2, 0x7f09019f

    const v3, 0x7f0901a0

    invoke-static/range {v1 .. v8}, Lcom/ex/auto/MainActivity;->b2(Lcom/ex/auto/MainActivity;IIIILh2/a;ZLh2/l;)V

    new-instance v6, Lw0/sb;

    invoke-direct {v6, v13, v11}, Lw0/sb;-><init>(Landroid/content/SharedPreferences;I)V

    new-instance v8, Lw0/pb;

    const/4 v5, 0x0

    invoke-direct {v8, v13, v5}, Lw0/pb;-><init>(Landroid/content/SharedPreferences;I)V

    const v2, 0x7f0901a6

    const v3, 0x7f0901a7

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-static/range {v1 .. v8}, Lcom/ex/auto/MainActivity;->b2(Lcom/ex/auto/MainActivity;IIIILh2/a;ZLh2/l;)V

    new-instance v2, Lw0/ec;

    const v3, 0x7f0f0385

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "widget_float_drive_regen_alpha_pct"

    const-string v8, "drive_regen"

    const-string v4, "widget_float_drive_regen_enabled"

    const-string v5, "widget_float_drive_regen_pinned"

    const-string v6, "widget_float_drive_regen_size_pct"

    invoke-direct/range {v2 .. v8}, Lw0/ec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v41, Lw0/ec;

    const v3, 0x7f0f0387

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v46, "widget_float_fan_alpha_pct"

    const-string v47, "fan"

    const-string v43, "widget_float_fan_enabled"

    const-string v44, "widget_float_fan_pinned"

    const-string v45, "widget_float_fan_size_pct"

    move-object/from16 v42, v3

    invoke-direct/range {v41 .. v47}, Lw0/ec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v55, Lw0/ec;

    const v3, 0x7f0f038d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v60, "widget_float_temp_alpha_pct"

    const-string v61, "temp"

    const-string v57, "widget_float_temp_enabled"

    const-string v58, "widget_float_temp_pinned"

    const-string v59, "widget_float_temp_size_pct"

    move-object/from16 v56, v3

    invoke-direct/range {v55 .. v61}, Lw0/ec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v56, Lw0/ec;

    const v3, 0x7f0f0391

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v61, "widget_float_vent_alpha_pct"

    const-string v62, "vent"

    const-string v58, "widget_float_vent_enabled"

    const-string v59, "widget_float_vent_pinned"

    const-string v60, "widget_float_vent_size_pct"

    move-object/from16 v57, v3

    invoke-direct/range {v56 .. v62}, Lw0/ec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v57, Lw0/ec;

    const v3, 0x7f0f0390

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v62, "widget_float_vent_fan_alpha_pct"

    const-string v63, "vent_fan"

    const-string v59, "widget_float_vent_fan_enabled"

    const-string v60, "widget_float_vent_fan_pinned"

    const-string v61, "widget_float_vent_fan_size_pct"

    move-object/from16 v58, v3

    invoke-direct/range {v57 .. v63}, Lw0/ec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v58, Lw0/ec;

    const v3, 0x7f0f038b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v63, "widget_float_sysinfo_alpha_pct"

    const-string v64, "sysinfo"

    const-string v60, "widget_float_sysinfo_enabled"

    const-string v61, "widget_float_sysinfo_pinned"

    const-string v62, "widget_float_sysinfo_size_pct"

    move-object/from16 v59, v3

    invoke-direct/range {v58 .. v64}, Lw0/ec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v59, Lw0/ec;

    const v3, 0x7f0f037d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v64, "widget_float_apps_alpha_pct"

    const-string v65, "apps"

    const-string v61, "widget_float_apps_enabled"

    const-string v62, "widget_float_apps_pinned"

    const-string v63, "widget_float_apps_size_pct"

    move-object/from16 v60, v3

    invoke-direct/range {v59 .. v65}, Lw0/ec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v60, Lw0/ec;

    const v3, 0x7f0f03ba

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v65, "widget_float_volume_alpha_pct"

    const-string v66, "volume"

    const-string v62, "widget_float_volume_enabled"

    const-string v63, "widget_float_volume_pinned"

    const-string v64, "widget_float_volume_size_pct"

    move-object/from16 v61, v3

    invoke-direct/range {v60 .. v66}, Lw0/ec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v61, Lw0/ec;

    const v3, 0x7f0f0389

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v66, "widget_float_heating_alpha_pct"

    const-string v67, "heating"

    const-string v63, "widget_float_heating_enabled"

    const-string v64, "widget_float_heating_pinned"

    const-string v65, "widget_float_heating_size_pct"

    move-object/from16 v62, v3

    invoke-direct/range {v61 .. v67}, Lw0/ec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v62, v60

    move-object/from16 v63, v61

    move-object/from16 v60, v58

    move-object/from16 v61, v59

    move-object/from16 v58, v56

    move-object/from16 v59, v57

    move-object/from16 v56, v41

    move-object/from16 v57, v55

    move-object/from16 v55, v2

    filled-new-array/range {v55 .. v63}, [Lw0/ec;

    move-result-object v2

    invoke-static {v2}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const v2, 0x7f090228

    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/GridLayout;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v6, v1, Lcom/ex/auto/MainActivity;->W:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v7, v1, Lcom/ex/auto/MainActivity;->X:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v8, v1, Lcom/ex/auto/MainActivity;->Y:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw0/ec;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    int-to-float v5, v4

    mul-float v5, v5, v33

    float-to-int v5, v5

    move-object/from16 v23, v7

    const/16 v7, 0xe

    int-to-float v14, v7

    mul-float v14, v14, v33

    float-to-int v14, v14

    invoke-virtual {v3, v5, v14, v5, v14}, Landroid/view/View;->setPadding(IIII)V

    const v5, 0x7f070065

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v4, 0x2c

    int-to-float v4, v4

    mul-float v4, v4, v33

    float-to-int v4, v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setMinimumHeight(I)V

    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v4, v2, Lw0/ec;->a:Ljava/lang/String;

    iget-object v7, v2, Lw0/ec;->b:Ljava/lang/String;

    move-object/from16 v25, v7

    iget-object v7, v2, Lw0/ec;->e:Ljava/lang/String;

    move-object/from16 v26, v6

    iget-object v6, v2, Lw0/ec;->d:Ljava/lang/String;

    move-object/from16 v27, v15

    iget-object v15, v2, Lw0/ec;->f:Ljava/lang/String;

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, 0x2

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v4, 0x0

    const v9, 0x3f6b851f    # 0.92f

    invoke-virtual {v14, v4, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-virtual {v14, v4, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v9, 0x7f050087

    invoke-virtual {v1, v9}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, -0x2

    const/4 v11, 0x0

    invoke-direct {v4, v11, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0f04fa

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/ex/auto/MainActivity;->c2(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/ex/auto/MainActivity;->e2(Landroid/widget/TextView;Lcom/ex/auto/MainActivity;Lw0/ec;)V

    new-instance v9, Lw0/qb;

    invoke-direct {v9, v1, v2, v4, v11}, Lw0/qb;-><init>(Lcom/ex/auto/MainActivity;Lw0/ec;Landroid/widget/TextView;I)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x42

    int-to-float v11, v10

    mul-float v11, v11, v33

    float-to-int v11, v11

    move-object/from16 v32, v13

    const/16 v10, 0x20

    int-to-float v13, v10

    mul-float v13, v13, v33

    float-to-int v13, v13

    invoke-direct {v9, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x8

    int-to-float v10, v11

    mul-float v10, v10, v33

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v5, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lcom/ex/auto/MasterToggleView;

    const/4 v4, 0x0

    invoke-direct {v9, v1, v4}, Lcom/ex/auto/MasterToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v34, v14

    const/16 v11, 0x38

    int-to-float v14, v11

    mul-float v14, v14, v33

    float-to-int v14, v14

    invoke-direct {v4, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v13, Lw0/bd;

    invoke-direct {v13, v1}, Lw0/bd;-><init>(Lcom/ex/auto/MainActivity;)V

    invoke-virtual {v13, v15}, Lw0/bd;->setWidgetKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v4

    const/16 v5, 0x64

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v13, v4}, Lw0/bd;->setSizePercent(I)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v13, v4}, Lw0/bd;->setBackgroundPercent(I)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v14, "widget_bg_opacity_pct"

    invoke-interface {v4, v14, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v13, v4}, Lw0/bd;->setGlobalBackgroundPercent(I)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x6e

    int-to-float v5, v5

    mul-float v5, v5, v33

    float-to-int v5, v5

    const/4 v14, -0x1

    invoke-direct {v4, v14, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "apps"

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f0f04f9

    const v14, 0x7f07006b

    if-eqz v4, :cond_9

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v11, 0x10

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v11}, Lcom/ex/auto/MainActivity;->c2(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v5, Lw0/y8;

    const/16 v14, 0x17

    invoke-direct {v5, v1, v14}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v11, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v44, v6

    const/16 v14, 0x26

    int-to-float v6, v14

    mul-float v6, v6, v33

    float-to-int v6, v6

    move-object/from16 v45, v7

    const/4 v7, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v6, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v4, v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v1, v0}, Lcom/ex/auto/MainActivity;->c2(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    const v7, 0x7f07006b

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {v5, v1}, Lcom/ex/auto/MainActivity;->d2(Landroid/widget/TextView;Lcom/ex/auto/MainActivity;)V

    new-instance v7, Lw0/qb;

    const/4 v14, 0x1

    invoke-direct {v7, v1, v2, v5, v14}, Lw0/qb;-><init>(Lcom/ex/auto/MainActivity;Lw0/ec;Landroid/widget/TextView;I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x4a

    int-to-float v11, v11

    mul-float v11, v11, v33

    float-to-int v11, v11

    invoke-direct {v7, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v14, -0x1

    invoke-direct {v5, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_9
    move-object/from16 v44, v6

    move-object/from16 v45, v7

    :goto_7
    const-string v4, "heating"

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const v4, 0x7f0f04f9

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/ex/auto/MainActivity;->c2(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    const v7, 0x7f07006b

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v5, Lw0/y8;

    const/16 v6, 0x18

    invoke-direct {v5, v1, v6}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x26

    int-to-float v6, v14

    mul-float v6, v6, v33

    float-to-int v6, v6

    const/4 v14, -0x1

    invoke-direct {v5, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    const-string v4, "volume"

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object v4, v3

    invoke-static {v1, v0}, Lcom/ex/auto/MainActivity;->c2(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    move-object v5, v4

    invoke-static {v1, v0}, Lcom/ex/auto/MainActivity;->c2(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    move-object v7, v0

    new-instance v0, Lw0/rb;

    move-object v11, v5

    const/4 v5, 0x0

    move-object v14, v7

    invoke-direct/range {v0 .. v5}, Lw0/rb;-><init>(Lcom/ex/auto/MainActivity;Lw0/ec;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lw0/rb;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lw0/rb;-><init>(Lcom/ex/auto/MainActivity;Lw0/ec;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v1, v3, v4}, Lcom/ex/auto/MainActivity;->f2(Lcom/ex/auto/MainActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x26

    int-to-float v5, v5

    mul-float v5, v5, v33

    float-to-int v5, v5

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-direct {v0, v15, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v41, v8

    const/4 v8, 0x4

    int-to-float v7, v8

    mul-float v7, v7, v33

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v6, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v15, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v11, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_b
    move-object v14, v0

    move-object v11, v3

    move-object/from16 v41, v8

    const/4 v8, 0x4

    const/4 v15, 0x0

    :goto_8
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v15, v10, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    const v3, 0x7f0f04e1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x32

    move/from16 v18, v8

    const/16 v8, 0xc8

    move-object v3, v13

    move-object/from16 v13, v23

    move-object/from16 v10, v25

    move-object/from16 v15, v26

    move/from16 v4, v33

    move-object/from16 v6, v44

    const/16 v24, 0xe

    invoke-static/range {v1 .. v8}, Lcom/ex/auto/MainActivity;->g2(Lcom/ex/auto/MainActivity;Lw0/ec;Lw0/bd;FLjava/lang/String;Ljava/lang/String;II)Lx1/a;

    move-result-object v5

    iget-object v6, v5, Lx1/a;->a:Ljava/lang/Object;

    check-cast v6, Landroid/widget/LinearLayout;

    iget-object v5, v5, Lx1/a;->b:Ljava/lang/Object;

    check-cast v5, Landroid/widget/SeekBar;

    const v7, 0x7f0f04ef

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v5

    move-object v5, v7

    const/4 v7, 0x0

    move-object/from16 v23, v8

    const/16 v8, 0x64

    move-object/from16 v25, v12

    move-object/from16 v33, v14

    move-object/from16 v12, v23

    move-object v14, v6

    move-object/from16 v6, v45

    invoke-static/range {v1 .. v8}, Lcom/ex/auto/MainActivity;->g2(Lcom/ex/auto/MainActivity;Lw0/ec;Lw0/bd;FLjava/lang/String;Ljava/lang/String;II)Lx1/a;

    move-result-object v3

    iget-object v5, v3, Lx1/a;->a:Ljava/lang/Object;

    check-cast v5, Landroid/widget/LinearLayout;

    iget-object v3, v3, Lx1/a;->b:Ljava/lang/Object;

    check-cast v3, Landroid/widget/SeekBar;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v23, v4

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x2

    invoke-direct {v6, v4, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v4, 0x6

    int-to-float v7, v4

    mul-float v7, v7, v23

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v14, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v6, v4, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lw0/a0;

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v2}, Lw0/a0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object/from16 v2, v34

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {v15, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lx1/a;

    invoke-direct {v0, v12, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v13, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    const/4 v5, 0x0

    iput v5, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    iput v3, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    const/high16 v3, -0x80000000

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v3, v14}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    int-to-float v2, v7

    mul-float v2, v2, v23

    float-to-int v2, v2

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v2, v32

    invoke-virtual {v2, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v9, p1

    move-object v7, v13

    move-object v6, v15

    move-object/from16 v12, v25

    move-object/from16 v15, v27

    move-object/from16 v10, v29

    move-object/from16 v11, v30

    move-object/from16 v0, v33

    move-object/from16 v8, v41

    const/4 v14, 0x1

    move-object v13, v2

    move/from16 v33, v23

    goto/16 :goto_6

    :cond_c
    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move-object/from16 v27, v15

    const v0, 0x7f090226

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lw0/a0;

    move-object/from16 v3, v30

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4, v1}, Lw0/a0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090229

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lw0/y8;

    const/16 v4, 0x19

    invoke-direct {v2, v1, v4}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lw0/h9;

    const/16 v4, 0x15

    invoke-direct {v6, v1, v4}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v8, Lw0/e9;

    invoke-direct {v8, v1, v4}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    const/4 v7, 0x0

    const v2, 0x7f090224

    const v3, 0x7f090225

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-static/range {v1 .. v8}, Lcom/ex/auto/MainActivity;->b2(Lcom/ex/auto/MainActivity;IIIILh2/a;ZLh2/l;)V

    const v0, 0x7f09019c

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lw0/y8;

    const/16 v10, 0x1b

    invoke-direct {v2, v1, v10}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901ac

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lw0/y8;

    const/16 v3, 0x1c

    invoke-direct {v2, v1, v3}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901a8

    move-object/from16 v10, v29

    const/4 v4, 0x2

    invoke-static {v10, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Lcom/ex/auto/MainActivity;->M1(II[I)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->u1()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->u1()V

    goto/16 :goto_d

    :pswitch_9
    move v2, v4

    move v9, v10

    move-wide/from16 v39, v11

    move-object/from16 v20, v14

    move-object/from16 v25, v27

    const/high16 v3, -0x80000000

    const/4 v7, 0x5

    move v4, v0

    move-object/from16 v27, v15

    const v0, 0x7f090111

    const v5, 0x7f090122

    const v6, 0x7f090118

    filled-new-array {v6, v0, v5}, [I

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_9
    const/4 v10, 0x3

    if-ge v5, v10, :cond_d

    aget v10, v0, v5

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v1, v10}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v12, Lw0/g9;

    const/4 v13, 0x2

    invoke-direct {v12, v6, v1, v0, v13}, Lw0/g9;-><init>(ILjava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    move v6, v11

    goto :goto_9

    :cond_d
    const v5, 0x7f09012a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lw0/h9;

    const/16 v10, 0x18

    invoke-direct {v6, v1, v10}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v10, Lx1/a;

    invoke-direct {v10, v5, v6}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v5, 0x7f09012b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lw0/h9;

    invoke-direct {v6, v1, v4}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v4, Lx1/a;

    invoke-direct {v4, v5, v6}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v5, 0x7f090129

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lw0/h9;

    invoke-direct {v6, v1, v2}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v2, Lx1/a;

    invoke-direct {v2, v5, v6}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v5, 0x7f090128

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lw0/h9;

    const/16 v11, 0x1b

    invoke-direct {v6, v1, v11}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v11, Lx1/a;

    invoke-direct {v11, v5, v6}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v5, 0x7f090116

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lw0/h9;

    const/16 v12, 0x1c

    invoke-direct {v6, v1, v12}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v12, Lx1/a;

    invoke-direct {v12, v5, v6}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v5, 0x7f090114

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lw0/h9;

    const/16 v13, 0x1d

    invoke-direct {v6, v1, v13}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v13, Lx1/a;

    invoke-direct {v13, v5, v6}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v5, 0x7f090113

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lw0/ub;

    const/4 v14, 0x0

    invoke-direct {v6, v1, v14}, Lw0/ub;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v14, Lx1/a;

    invoke-direct {v14, v5, v6}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v5, 0x7f09011a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lw0/ub;

    const/4 v15, 0x1

    invoke-direct {v6, v1, v15}, Lw0/ub;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v15, Lx1/a;

    invoke-direct {v15, v5, v6}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v5, 0x7f090123

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lw0/ub;

    const/4 v3, 0x3

    invoke-direct {v6, v1, v3}, Lw0/ub;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v3, Lx1/a;

    invoke-direct {v3, v5, v6}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v5, 0x7f09011d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lw0/h9;

    invoke-direct {v6, v1, v8}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v8, Lx1/a;

    invoke-direct {v8, v5, v6}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v5, 0x7f090125

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lw0/h9;

    const/16 v9, 0x17

    invoke-direct {v6, v1, v9}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v9, Lx1/a;

    invoke-direct {v9, v5, v6}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v50, v2

    move-object/from16 v56, v3

    move-object/from16 v49, v4

    move-object/from16 v57, v8

    move-object/from16 v58, v9

    move-object/from16 v48, v10

    move-object/from16 v51, v11

    move-object/from16 v52, v12

    move-object/from16 v53, v13

    move-object/from16 v54, v14

    move-object/from16 v55, v15

    filled-new-array/range {v48 .. v58}, [Lx1/a;

    move-result-object v2

    invoke-static {v2}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh2/a;

    invoke-virtual {v1, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lw0/d9;

    const/4 v10, 0x3

    invoke-direct {v5, v3, v1, v10}, Lw0/d9;-><init>(Lh2/a;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a

    :cond_e
    const v2, 0x7f090115

    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/ex/auto/MainActivity;->f0:Ljava/util/List;

    iget v4, v1, Lcom/ex/auto/MainActivity;->g0:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ex/auto/MainActivity;->s2(Landroid/widget/Spinner;Ljava/util/List;I)V

    new-instance v3, Lw0/oc;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v5}, Lw0/oc;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v2, 0x7f090117

    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lw0/y8;

    const/16 v4, 0x1d

    invoke-direct {v3, v1, v4}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090119

    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lw0/tb;

    invoke-direct {v3, v1, v5}, Lw0/tb;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090110

    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lw0/tb;

    const/4 v14, 0x1

    invoke-direct {v3, v1, v14}, Lw0/tb;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09011c

    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lw0/tb;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4}, Lw0/tb;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->n0()Lw0/p3;

    move-result-object v2

    iget-object v3, v2, Lw0/p3;->b:Lw0/e9;

    iget-object v4, v2, Lw0/p3;->f:La1/r;

    invoke-virtual {v3, v4}, Lw0/e9;->c(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lw0/p3;->e:Z

    const v2, 0x7f09010f

    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, v1, Lcom/ex/auto/MainActivity;->Z:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    new-instance v8, Lw0/kc;

    const v4, 0x7f0f0437

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v12, v25

    invoke-static {v4, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f0f0412

    const-string v6, "com.amaze.filemanager"

    invoke-direct {v8, v5, v1, v4, v6}, Lw0/kc;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lw0/kc;

    const v4, 0x7f0f0414

    const-string v5, "com.timhss.geelybattery"

    const-string v6, "Capy"

    invoke-direct {v9, v4, v1, v6, v5}, Lw0/kc;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lw0/kc;

    const v4, 0x7f0f0410

    const-string v5, "com.geely.eisapo"

    const-string v6, "Ei Sapo"

    invoke-direct {v10, v4, v1, v6, v5}, Lw0/kc;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lw0/kc;

    const v4, 0x7f0f040f

    const-string v5, "br.com.central.dualdashcam"

    const-string v6, "DualDashcam"

    invoke-direct {v11, v4, v1, v6, v5}, Lw0/kc;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lw0/kc;

    const v4, 0x7f0f0415

    const-string v5, "com.geely.connadaptorlogger"

    const-string v6, "Logger"

    invoke-direct {v12, v4, v1, v6, v5}, Lw0/kc;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lw0/kc;

    const v4, 0x7f0f0413

    const-string v5, "org.mozilla.firefox"

    const-string v6, "Firefox"

    invoke-direct {v13, v4, v1, v6, v5}, Lw0/kc;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lw0/kc;

    const v4, 0x7f0f0416

    const-string v5, "app.revanced.android.gms"

    const-string v6, "microG"

    invoke-direct {v14, v4, v1, v6, v5}, Lw0/kc;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lw0/kc;

    const v4, 0x7f0f040d

    const-string v5, "org.bromite.chromium"

    const-string v6, "Chromium"

    invoke-direct {v15, v4, v1, v6, v5}, Lw0/kc;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array/range {v8 .. v15}, [Lw0/kc;

    move-result-object v4

    invoke-static {v4}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw0/kc;

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v13, 0x12

    int-to-float v9, v13

    mul-float/2addr v9, v5

    float-to-int v9, v9

    const/16 v11, 0x10

    int-to-float v10, v11

    mul-float/2addr v10, v5

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    const v9, 0x7f070065

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v11, Lw0/wc;

    invoke-direct {v11, v1}, Lw0/wc;-><init>(Lcom/ex/auto/MainActivity;)V

    iget-object v13, v6, Lw0/kc;->c:Ljava/lang/String;

    iget-object v14, v6, Lw0/kc;->a:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lw0/wc;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x42

    int-to-float v9, v15

    mul-float/2addr v9, v5

    float-to-int v9, v9

    invoke-direct {v13, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v15, 0x0

    invoke-virtual {v9, v10, v15, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextSize(F)V

    const v14, 0x7f050087

    invoke-virtual {v1, v14}, Landroid/content/Context;->getColor(I)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v14, v6, Lw0/kc;->b:I

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v14, 0x41600000    # 14.0f

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextSize(F)V

    const v15, 0x7f050089

    invoke-virtual {v1, v15}, Landroid/content/Context;->getColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v14, 0x2

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    int-to-float v14, v7

    mul-float/2addr v14, v5

    float-to-int v14, v14

    const/4 v7, 0x0

    invoke-virtual {v10, v7, v14, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, -0x2

    invoke-direct {v10, v7, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v12, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v9, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v12, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v7, 0x800015

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lw0/kc;->a()Lw0/xb;

    move-result-object v10

    iget-object v10, v10, Lw0/xb;->e:Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const v10, 0x7f050089

    invoke-virtual {v1, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v14, 0x2

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, -0x2

    invoke-direct {v10, v12, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0f0035

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x41800000    # 16.0f

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v13, 0x11

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v13, 0x82

    int-to-float v13, v13

    mul-float/2addr v13, v5

    float-to-int v13, v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setMinWidth(I)V

    const v13, 0x7f05007e

    invoke-virtual {v1, v13}, Landroid/content/Context;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const v13, 0x7f07005f

    invoke-virtual {v10, v13}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v10, v14}, Landroid/view/View;->setFocusable(Z)V

    const v13, 0x1080062

    invoke-virtual {v1, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    new-instance v14, Lw0/u9;

    const/4 v15, 0x0

    invoke-direct {v14, v6, v1, v15}, Lw0/u9;-><init>(Lw0/kc;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v10, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x2e

    int-to-float v15, v15

    mul-float/2addr v15, v5

    float-to-int v15, v15

    const/4 v13, -0x2

    invoke-direct {v14, v13, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0xc

    int-to-float v13, v13

    mul-float/2addr v13, v5

    float-to-int v13, v13

    invoke-virtual {v14, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v9, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0f041a

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v12, 0x11

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setGravity(I)V

    const v12, 0x7f050036

    invoke-virtual {v1, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const v12, 0x7f070067

    invoke-virtual {v13, v12}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setFocusable(Z)V

    const v12, 0x1080062

    invoke-virtual {v1, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    const/16 v12, 0x8

    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    new-instance v12, Lw0/u9;

    invoke-direct {v12, v6, v1, v14}, Lw0/u9;-><init>(Lw0/kc;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v13, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x74

    int-to-float v14, v14

    mul-float/2addr v14, v5

    float-to-int v14, v14

    invoke-direct {v12, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0xa

    int-to-float v15, v14

    mul-float/2addr v15, v5

    float-to-int v14, v15

    invoke-virtual {v12, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v9, v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v12, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0xd

    int-to-float v14, v14

    mul-float/2addr v14, v5

    float-to-int v14, v14

    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v9}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    const/4 v14, 0x0

    iput v14, v9, Landroid/widget/GridLayout$LayoutParams;->width:I

    const/16 v12, 0xae

    int-to-float v12, v12

    mul-float/2addr v12, v5

    float-to-int v12, v12

    iput v12, v9, Landroid/widget/GridLayout$LayoutParams;->height:I

    const/high16 v12, -0x80000000

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v12, v14}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object v15

    iput-object v15, v9, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    const/4 v15, 0x6

    int-to-float v12, v15

    mul-float/2addr v12, v5

    float-to-int v12, v12

    invoke-virtual {v9, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v48, Lw0/cc;

    iget-object v8, v6, Lw0/kc;->c:Ljava/lang/String;

    invoke-virtual {v6}, Lw0/kc;->a()Lw0/xb;

    move-result-object v50

    move-object/from16 v51, v7

    move-object/from16 v49, v8

    move-object/from16 v53, v10

    move-object/from16 v52, v11

    move-object/from16 v54, v13

    invoke-direct/range {v48 .. v54}, Lw0/cc;-><init>(Ljava/lang/String;Lw0/xb;Landroid/widget/TextView;Lw0/wc;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v6, v48

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x5

    goto/16 :goto_b

    :cond_f
    const v2, 0x7f09011b

    const/4 v10, 0x3

    invoke-static {v0, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v0}, Lcom/ex/auto/MainActivity;->M1(II[I)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o1()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o1()V

    goto/16 :goto_d

    :pswitch_a
    move-wide/from16 v39, v11

    move-object/from16 v20, v14

    move-object/from16 v27, v15

    const/16 v0, 0x13

    const/16 v4, 0x15

    const/16 v6, 0x14

    const v3, 0x7f09013a

    invoke-virtual {v1, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    const v5, 0x7f090130

    invoke-virtual {v1, v5}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    invoke-static {v3}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/ex/auto/MainActivity;->b0:Ljava/util/List;

    iget v9, v1, Lcom/ex/auto/MainActivity;->c0:I

    invoke-virtual {v1, v3, v7, v9}, Lcom/ex/auto/MainActivity;->s2(Landroid/widget/Spinner;Ljava/util/List;I)V

    invoke-static {v5}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/ex/auto/MainActivity;->d0:Ljava/lang/Object;

    iget v9, v1, Lcom/ex/auto/MainActivity;->e0:I

    invoke-virtual {v1, v5, v7, v9}, Lcom/ex/auto/MainActivity;->s2(Landroid/widget/Spinner;Ljava/util/List;I)V

    new-instance v7, Lw0/oc;

    const/4 v14, 0x1

    invoke-direct {v7, v1, v14}, Lw0/oc;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v7}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v3, Lw0/oc;

    const/4 v14, 0x2

    invoke-direct {v3, v1, v14}, Lw0/oc;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v5, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v3, 0x7f090140

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lw0/h9;

    const/16 v7, 0x9

    invoke-direct {v5, v1, v7}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v9, Lx1/a;

    invoke-direct {v9, v3, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x7f090138

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lw0/h9;

    const/16 v7, 0xc

    invoke-direct {v5, v1, v7}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v10, Lx1/a;

    invoke-direct {v10, v3, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x7f090133

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lw0/h9;

    const/16 v7, 0xd

    invoke-direct {v5, v1, v7}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v11, Lx1/a;

    invoke-direct {v11, v3, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x7f090139

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lw0/h9;

    const/16 v7, 0xf

    invoke-direct {v5, v1, v7}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v12, Lx1/a;

    invoke-direct {v12, v3, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x7f090136

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lw0/h9;

    const/16 v7, 0x10

    invoke-direct {v5, v1, v7}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v13, Lx1/a;

    invoke-direct {v13, v3, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x7f09012e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lw0/h9;

    const/16 v7, 0x11

    invoke-direct {v5, v1, v7}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v14, Lx1/a;

    invoke-direct {v14, v3, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x7f09012c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lw0/h9;

    const/16 v7, 0x12

    invoke-direct {v5, v1, v7}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v15, Lx1/a;

    invoke-direct {v15, v3, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v9 .. v15}, [Lx1/a;

    move-result-object v3

    invoke-static {v3}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh2/a;

    invoke-virtual {v1, v9}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lw0/d9;

    const/4 v14, 0x2

    invoke-direct {v10, v5, v1, v14}, Lw0/d9;-><init>(Lh2/a;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c

    :cond_10
    const v3, 0x7f090135

    invoke-virtual {v1, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lw0/y8;

    invoke-direct {v5, v1, v4}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090134

    invoke-virtual {v1, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lw0/y8;

    invoke-direct {v4, v1, v8}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move/from16 v21, v0

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterAudioState()V"

    move/from16 v19, v6

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterAudioState"

    move v9, v2

    move/from16 v8, v21

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    new-instance v2, Lw0/h9;

    const/16 v14, 0xa

    invoke-direct {v2, v1, v14}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v3, 0x7f09012f

    invoke-virtual {v1, v3, v0, v2}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterAudioState()V"

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterAudioState"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x0

    move/from16 v22, v7

    const/16 v7, 0x14

    const v2, 0x7f090142

    const-string v3, "pause_audio_on_door"

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v5, v0

    move/from16 v10, v19

    move/from16 v13, v22

    invoke-static/range {v1 .. v7}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterAudioState()V"

    const/4 v6, 0x2

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterAudioState"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v7, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onMediaBarFloaterChanged(Z)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onMediaBarFloaterChanged"

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v5, v7

    const/4 v7, 0x4

    const v2, 0x7f09013e

    const-string v3, "media_bar_floater_enabled"

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterAudioState()V"

    const/4 v6, 0x3

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterAudioState"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v7, v0

    new-instance v0, Lw0/qc;

    const-string v5, "onLyricsFloaterChanged(Z)V"

    const/4 v6, 0x1

    const/4 v1, 0x1

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "onLyricsFloaterChanged"

    invoke-direct/range {v0 .. v6}, Lw0/qc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v5, v7

    const/4 v7, 0x4

    const v2, 0x7f09013c

    const-string v3, "lyrics_floater_enabled"

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/ex/auto/MainActivity;->F0(Lcom/ex/auto/MainActivity;ILjava/lang/String;ZLh2/a;Lh2/l;I)V

    new-instance v0, Lw0/pc;

    const-string v5, "refreshMasterAudioState()V"

    const/4 v6, 0x4

    const/4 v1, 0x0

    const-class v3, Lcom/ex/auto/MainActivity;

    const-string v4, "refreshMasterAudioState"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/pc;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    new-instance v2, Lw0/h9;

    invoke-direct {v2, v1, v9}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v3, 0x7f09013b

    invoke-virtual {v1, v3, v0, v2}, Lcom/ex/auto/MainActivity;->E0(ILh2/a;Lh2/a;)V

    const v0, 0x7f090137

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lw0/y8;

    invoke-direct {v2, v1, v13}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09012d

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lw0/y8;

    invoke-direct {v2, v1, v8}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090141

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lw0/y8;

    invoke-direct {v2, v1, v10}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->q1()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->q1()V

    goto :goto_d

    :pswitch_b
    move-wide/from16 v39, v11

    move-object/from16 v20, v14

    move-object/from16 v27, v15

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->a2()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->s1()V

    goto :goto_d

    :pswitch_c
    move-wide/from16 v39, v11

    move-object/from16 v20, v14

    move-object/from16 v27, v15

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->h2()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->v1()V

    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const v0, 0x7f09016b

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    move/from16 v9, p1

    if-eqz v0, :cond_11

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_e

    :cond_11
    const/4 v7, 0x0

    :goto_e
    if-eqz v7, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_12

    :try_start_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v7, v4, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v5, v0, v4}, Landroid/view/View;->layout(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_12
    move-object/from16 v5, v27

    goto :goto_f

    :catchall_1
    move-exception v0

    const-string v4, "pr\u00e9-medida da se\u00e7\u00e3o "

    const-string v5, " falhou: "

    invoke-static {v4, v9, v5}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, v27

    invoke-static {v0, v4, v5}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_f
    const-string v0, ": inflar="

    move-object/from16 v4, v20

    invoke-static {v4, v9, v0}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v6, v16, v39

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms configurar="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v2, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms pre_medida="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public final k2()V
    .locals 4

    const v0, 0x7f0f0052

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    const v2, 0x7f0f0051

    invoke-static {v0, v1, p0, v2, v1}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Le/h;

    invoke-direct {v2, p0}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v3, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v3, Le/d;

    iput-object v0, v3, Le/d;->d:Ljava/lang/CharSequence;

    iput-object v1, v3, Le/d;->f:Ljava/lang/CharSequence;

    const v0, 0x7f0f01aa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Le/h;->h()Le/i;

    return-void
.end method

.method public final l0()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->J:Lx1/c;

    invoke-virtual {v0}, Lx1/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final l1()V
    .locals 0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->O0()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->v1()V

    return-void
.end method

.method public final l2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "exit_code=0"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v0, 0x7f0f01da

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lx1/a;

    invoke-direct {v0, p1, p2}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "INSTALL_FAILURE: apkm_corrompido"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f0f009d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_1
    const-string v0, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f0f0307

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_2
    const-string v0, "INSTALL_FAILED_INVALID_APK"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "INSTALL_PARSE_FAILED"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v0, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x7f0f01f7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_4
    const-string v0, "INSTALL_FAILED_VERSION_DOWNGRADE"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const p1, 0x7f0f01de

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_5
    const-string v0, "INSTALL_FAILED_ALREADY_EXISTS"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const p1, 0x7f0f02eb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_6
    const-string v0, "exit_code=41"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "cp:"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "exit"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_1

    :cond_7
    const-string v0, "INSTALL_FAILED_ABORTED"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x7f0f01d6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_8
    const-string v0, "Failure"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {p1}, Lo2/k;->o0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_0

    :cond_a
    move-object p2, v2

    :goto_0
    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_b

    invoke-static {p2}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    :cond_b
    const-string p1, ""

    :cond_c
    const p2, 0x7f0f01d9

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_d
    const-string v0, "exit_code=12"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const p1, 0x7f0f0145

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_e
    const-string v0, "exit_code=13"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    const p1, 0x7f0f03d8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_f
    const-string v0, "exit_code=14"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_10

    const p1, 0x7f0f03d9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_10
    const p1, 0x7f0f0176

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_11
    :goto_1
    const p1, 0x7f0f01a2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_12
    :goto_2
    const p1, 0x7f0f01a0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Lx1/a;

    invoke-direct {v0, p2, p1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    iget-object p1, v0, Lx1/a;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, v0, Lx1/a;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_7

    :cond_13
    new-instance v0, Le/h;

    invoke-direct {v0, p0}, Le/h;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_14

    const v1, 0x7f0f01e8

    :goto_5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_14
    const v1, 0x7f0f01d7

    goto :goto_5

    :goto_6
    iget-object v3, v0, Le/h;->b:Ljava/lang/Object;

    check-cast v3, Le/d;

    iput-object v1, v3, Le/d;->d:Ljava/lang/CharSequence;

    iput-object p2, v3, Le/d;->f:Ljava/lang/CharSequence;

    const p2, 0x7f0f0038

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v2}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Le/h;->h()Le/i;

    if-eqz p1, :cond_15

    new-instance p1, Lw0/ma;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    const-wide/16 v0, 0x1f4

    iget-object p2, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_15
    :goto_7
    return-void
.end method

.method public final m0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    invoke-static {p1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "null"

    invoke-static {p1, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    return-object p1

    :catch_0
    :catchall_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final m1(Z)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/ex/auto/MainActivity;->g1:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lcom/ex/auto/MainActivity;->g1:J

    :try_start_0
    iget-object p1, p0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lw0/nb;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lw0/nb;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final m2(II)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->n0()Lw0/p3;

    move-result-object v0

    iget-object v1, v0, Lw0/p3;->b:Lw0/e9;

    iget-object v2, v0, Lw0/p3;->f:La1/r;

    invoke-virtual {v1, v2}, Lw0/e9;->c(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lw0/p3;->e:Z

    invoke-virtual {p0, p1}, Lcom/ex/auto/MainActivity;->k0(I)V

    const v0, 0x7f09016b

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/ViewFlipper;

    invoke-virtual {v2, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    invoke-virtual {p0, p2}, Lcom/ex/auto/MainActivity;->N1(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/ex/auto/MainActivity;->z(Z)V

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const p2, 0x7f09019d

    const v0, 0x7f0901ad

    filled-new-array {p2, v0}, [I

    move-result-object p2

    const v0, 0x7f0901a8

    invoke-virtual {p0, v0, v1, p2}, Lcom/ex/auto/MainActivity;->M1(II[I)V

    goto :goto_0

    :cond_2
    const p2, 0x7f090118

    const v0, 0x7f090111

    filled-new-array {p2, v0}, [I

    move-result-object p2

    const v0, 0x7f09011b

    invoke-virtual {p0, v0, v1, p2}, Lcom/ex/auto/MainActivity;->M1(II[I)V

    goto :goto_0

    :cond_3
    const p2, 0x7f090195

    const v0, 0x7f090182

    filled-new-array {p2, v0}, [I

    move-result-object p2

    const v0, 0x7f09018b

    invoke-virtual {p0, v0, v1, p2}, Lcom/ex/auto/MainActivity;->M1(II[I)V

    goto :goto_0

    :cond_4
    const p2, 0x7f090217

    invoke-virtual {p0, v1, p2}, Lcom/ex/auto/MainActivity;->o2(II)V

    :goto_0
    new-instance p2, Lw0/a9;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lw0/a9;-><init>(Lcom/ex/auto/MainActivity;II)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v4, v0, v6

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Lw0/b9;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lw0/b9;-><init>(Lcom/ex/auto/MainActivity;Landroid/widget/ViewFlipper;IJJ)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public final n0()Lw0/p3;
    .locals 1

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->k0:Lx1/c;

    invoke-virtual {v0}, Lx1/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/p3;

    return-object v0
.end method

.method public final n1()V
    .locals 3

    iget v0, p0, Lcom/ex/auto/MainActivity;->I:I

    new-instance v1, Lw0/a9;

    const/4 v2, 0x4

    invoke-direct {v1, v0, p0, v2}, Lw0/a9;-><init>(ILcom/ex/auto/MainActivity;I)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x1e

    int-to-float v4, v3

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/16 v5, 0x18

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    const/16 v6, 0x1c

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {v1, v4, v5, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    const v4, 0x7f070064

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f050087

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41d00000    # 26.0f

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    invoke-virtual {v6, p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {p1, v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v6, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u00d7"

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x11

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v6, 0x42000000    # 32.0f

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const v6, 0x7f050089

    invoke-virtual {p0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x30

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "\n"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {p2, v7, v5, v8}, Lo2/k;->v0(Ljava/lang/String;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    new-instance v7, Lw0/n2;

    const/16 v8, 0x1c

    invoke-direct {v7, v8}, Lw0/n2;-><init>(I)V

    const-string v8, "\n\n"

    invoke-static {p2, v8, v7, v3}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41900000    # 18.0f

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p2, 0x0

    const v3, 0x3f933333    # 1.15f

    invoke-virtual {v4, p2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 p2, 0xa

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    const/16 v3, 0x8

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v4, v5, p2, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance p2, Landroid/widget/ScrollView;

    invoke-direct {p2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p2, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x1ae

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Le/h;

    invoke-direct {p2, p0}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v2, p2, Le/h;->b:Ljava/lang/Object;

    check-cast v2, Le/d;

    iput-object v1, v2, Le/d;->s:Landroid/view/View;

    invoke-virtual {p2}, Le/h;->a()Le/i;

    move-result-object p2

    new-instance v1, Lw0/i;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p2}, Lw0/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lw0/ba;

    invoke-direct {p1, p2, v0}, Lw0/ba;-><init>(Le/i;F)V

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final o0()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->u:Lx1/c;

    invoke-virtual {v0}, Lx1/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final o1()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->S0:[Z

    const/4 v2, 0x4

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_e

    :cond_0
    const v1, 0x7f09012b

    const v2, 0x7f090129

    const v3, 0x7f09012a

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-ge v3, v6, :cond_2

    aget v6, v1, v3

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0, v6}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v8, v0, Lcom/ex/auto/MainActivity;->I:I

    if-ne v8, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v6, v5}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    :cond_2
    const v1, 0x7f090115

    invoke-virtual {v0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "findViewById(...)"

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/Spinner;

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->f0:Ljava/util/List;

    iget v4, v0, Lcom/ex/auto/MainActivity;->g0:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/ex/auto/MainActivity;->s2(Landroid/widget/Spinner;Ljava/util/List;I)V

    iget v1, v0, Lcom/ex/auto/MainActivity;->I:I

    iget v3, v0, Lcom/ex/auto/MainActivity;->H:I

    if-ne v1, v3, :cond_3

    move v1, v5

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    const v3, 0x7f090116

    invoke-virtual {v0, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    const v6, 0x7f0f035c

    goto :goto_3

    :cond_4
    const v6, 0x7f0f01db

    :goto_3
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f090114

    invoke-virtual {v0, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_5

    const/16 v7, 0x8

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f090113

    invoke-virtual {v0, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->Z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x0

    :cond_7
    :goto_6
    if-ge v7, v3, :cond_14

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lw0/cc;

    iget-object v9, v8, Lw0/cc;->b:Lw0/xb;

    iget-object v10, v8, Lw0/cc;->c:Landroid/widget/TextView;

    iget-object v11, v8, Lw0/cc;->d:Lw0/wc;

    iget-object v12, v8, Lw0/cc;->f:Landroid/widget/TextView;

    iget-object v13, v8, Lw0/cc;->e:Landroid/widget/TextView;

    iget-object v14, v9, Lw0/xb;->d:Ljava/lang/String;

    if-eqz v14, :cond_8

    move/from16 v18, v5

    goto :goto_7

    :cond_8
    const/16 v18, 0x0

    :goto_7
    new-instance v15, Lw0/dc;

    iget-object v9, v9, Lw0/xb;->e:Ljava/lang/CharSequence;

    invoke-static {v9}, Lcom/ex/auto/MainActivity;->M(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    if-eqz v18, :cond_9

    const v9, 0x7f0f00f8

    goto :goto_8

    :cond_9
    const v9, 0x7f0f01db

    :goto_8
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v14, "getString(...)"

    invoke-static {v9, v14}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/ex/auto/MainActivity;->M(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    iget-object v9, v8, Lw0/cc;->b:Lw0/xb;

    iget-boolean v14, v9, Lw0/xb;->f:Z

    iget-boolean v9, v9, Lw0/xb;->g:Z

    move/from16 v20, v9

    move/from16 v19, v14

    invoke-direct/range {v15 .. v20}, Lw0/dc;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    move-object/from16 v9, v16

    move-object/from16 v14, v17

    move/from16 v2, v19

    move/from16 v4, v20

    iget-object v6, v8, Lw0/cc;->g:Lw0/dc;

    invoke-static {v6, v15}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v14}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v13, v6}, Landroid/view/View;->setAlpha(F)V

    if-eqz v2, :cond_d

    if-eqz v18, :cond_c

    goto :goto_9

    :cond_c
    const v9, 0x7f07005f

    goto :goto_a

    :cond_d
    :goto_9
    const v9, 0x7f070067

    :goto_a
    invoke-virtual {v13, v9}, Landroid/view/View;->setBackgroundResource(I)V

    if-nez v2, :cond_e

    const v2, 0x7f050088

    goto :goto_b

    :cond_e
    if-eqz v18, :cond_f

    const v2, 0x7f050089

    goto :goto_b

    :cond_f
    const v2, 0x7f05007e

    :goto_b
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v18, :cond_10

    const/4 v2, 0x0

    goto :goto_c

    :cond_10
    const/16 v2, 0x8

    :goto_c
    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v4, :cond_11

    goto :goto_d

    :cond_11
    const v6, 0x3ee66666    # 0.45f

    :goto_d
    invoke-virtual {v12, v6}, Landroid/view/View;->setAlpha(F)V

    iput-object v15, v8, Lw0/cc;->g:Lw0/dc;

    :cond_12
    if-nez v18, :cond_13

    invoke-virtual {v11}, Lw0/wc;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lw0/wc;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :cond_13
    invoke-virtual {v11}, Lw0/wc;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_7

    iget-boolean v2, v8, Lw0/cc;->h:Z

    if-nez v2, :cond_7

    iget-object v2, v8, Lw0/cc;->a:Ljava/lang/String;

    iput-boolean v5, v8, Lw0/cc;->h:Z

    new-instance v4, La1/g;

    const/16 v6, 0x10

    invoke-direct {v4, v0, v2, v8, v6}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    :cond_14
    :goto_e
    return-void
.end method

.method public final o2(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const v3, 0x7f0901e4

    invoke-virtual {v0, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    const v4, 0x7f0901e6

    invoke-virtual {v0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    if-eqz v4, :cond_0

    new-instance v5, Lw0/z9;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lw0/z9;-><init>(Landroid/widget/ScrollView;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const v4, 0x7f0901e2

    const v5, 0x7f090202

    const v6, 0x7f090217

    filled-new-array {v6, v4, v5}, [I

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x3

    if-ge v6, v7, :cond_2

    aget v8, v4, v6

    if-ne v2, v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    :goto_1
    const/4 v8, 0x1

    if-ltz v6, :cond_3

    move v6, v8

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    if-eqz v6, :cond_4

    iput v1, v0, Lcom/ex/auto/MainActivity;->T:I

    iput v2, v0, Lcom/ex/auto/MainActivity;->U:I

    :cond_4
    invoke-virtual {v0, v6}, Lcom/ex/auto/MainActivity;->V1(Z)V

    move v6, v5

    :goto_3
    const v9, 0x106000d

    const v10, 0x7f07006d

    const/4 v11, 0x0

    if-ge v6, v7, :cond_a

    aget v12, v4, v6

    invoke-virtual {v0, v12}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    if-ne v12, v2, :cond_5

    move v12, v8

    goto :goto_4

    :cond_5
    move v12, v5

    :goto_4
    if-eqz v12, :cond_6

    move v9, v10

    :cond_6
    invoke-virtual {v13, v9}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v13, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v12, :cond_7

    move v10, v5

    goto :goto_5

    :cond_7
    const/4 v10, 0x4

    :goto_5
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_8

    check-cast v9, Landroid/widget/TextView;

    goto :goto_6

    :cond_8
    move-object v9, v11

    :goto_6
    if-eqz v9, :cond_9

    invoke-virtual {v9, v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_a
    const v4, 0x7f0901b2

    const v6, 0x7f0901bb

    const v12, 0x7f0901f1

    filled-new-array {v4, v6, v12}, [I

    move-result-object v13

    move v14, v5

    :goto_7
    if-ge v14, v7, :cond_f

    aget v15, v13, v14

    invoke-virtual {v0, v15}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move/from16 v17, v4

    move-object/from16 v4, v16

    check-cast v4, Landroid/widget/LinearLayout;

    if-ne v15, v2, :cond_b

    move v15, v8

    goto :goto_8

    :cond_b
    move v15, v5

    :goto_8
    if-eqz v15, :cond_c

    move v5, v10

    goto :goto_9

    :cond_c
    move v5, v9

    :goto_9
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_d

    check-cast v4, Landroid/widget/TextView;

    goto :goto_a

    :cond_d
    move-object v4, v11

    :goto_a
    if-eqz v4, :cond_e

    invoke-virtual {v4, v11, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_e
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v17

    const/4 v5, 0x0

    goto :goto_7

    :cond_f
    move/from16 v17, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0901b5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v7, Lx1/a;

    invoke-direct {v7, v4, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0901bc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lx1/a;

    invoke-direct {v6, v4, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0901f7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v8, Lx1/a;

    invoke-direct {v8, v4, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v7, v6, v8}, [Lx1/a;

    move-result-object v4

    invoke-static {v4}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    if-ne v2, v6, :cond_10

    const/high16 v6, 0x42b40000    # 90.0f

    goto :goto_c

    :cond_10
    const/4 v6, 0x0

    :goto_c
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0xa0

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_b

    :cond_11
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_12

    new-instance v4, Lw0/v9;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v3, v1, v5}, Lw0/v9;-><init>(Lcom/ex/auto/MainActivity;Landroid/widget/ViewFlipper;II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_12
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Le/j;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0021

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_b

    new-instance v4, Landroidx/emoji2/text/m;

    check-cast v3, Landroid/widget/FrameLayout;

    const/16 v7, 0x1d

    invoke-direct {v4, v7, v3}, Landroidx/emoji2/text/m;-><init>(ILjava/lang/Object;)V

    iput-object v4, v0, Lcom/ex/auto/MainActivity;->t:Landroidx/emoji2/text/m;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v8, v0, Lcom/ex/auto/MainActivity;->t:Landroidx/emoji2/text/m;

    if-eqz v8, :cond_a

    iget-object v8, v8, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Le/j;->setContentView(Landroid/view/View;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "inflate="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v11, v3, v1

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "ms setContent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v8, v3

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/ex/auto/MainActivity;->P:Ljava/lang/String;

    iput-wide v1, v0, Lcom/ex/auto/MainActivity;->Q:J

    const-string v1, "App"

    const-string v2, "Sess\u00e3o iniciada"

    invoke-virtual {v0, v1, v2}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v1, v2}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, v0, Lcom/ex/auto/MainActivity;->K:Landroid/net/wifi/WifiManager;

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lw0/x8;

    const/4 v4, 0x4

    invoke-direct {v2, v0, v4}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v1, Lw0/k5;->a:Lw0/k5;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "<get-prefs>(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lw0/k5;->h(Landroid/content/Context;)V

    const-string v8, "dr_sent_v2"

    invoke-interface {v1, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/16 v9, 0xc

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, La1/i;

    invoke-direct {v10, v0, v9, v1}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-wide/16 v11, 0x2ee0

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, Lw0/j5;

    const/4 v11, 0x2

    invoke-direct {v10, v1, v11}, Lw0/j5;-><init>(Landroid/content/SharedPreferences;I)V

    const-wide/16 v12, 0x1770

    invoke-virtual {v8, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lw0/k5;->m(Landroid/content/ContextWrapper;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v12

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-static {v8, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v8, "versionName"

    invoke-static {v1, v8}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lw0/k5;->h(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lw0/x8;

    const/4 v10, 0x6

    invoke-direct {v8, v0, v10}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v1, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v12, Lw0/fc;

    const v1, 0x7f090179

    invoke-direct {v12, v1, v6}, Lw0/fc;-><init>(II)V

    new-instance v13, Lw0/fc;

    const v8, 0x7f090178

    const/4 v14, 0x1

    invoke-direct {v13, v8, v14}, Lw0/fc;-><init>(II)V

    move v15, v14

    new-instance v14, Lw0/fc;

    new-instance v15, Lw0/v8;

    const/16 v5, 0xf

    invoke-direct {v15, v0, v5}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v5, 0x7f09017a

    invoke-direct {v14, v5, v11, v15}, Lw0/fc;-><init>(IILh2/a;)V

    new-instance v15, Lw0/fc;

    new-instance v11, Lw0/v8;

    const/16 v6, 0x10

    invoke-direct {v11, v0, v6}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v6, 0x7f090176

    const/4 v7, 0x3

    invoke-direct {v15, v6, v7, v11}, Lw0/fc;-><init>(IILh2/a;)V

    new-instance v7, Lw0/fc;

    new-instance v11, Lw0/v8;

    const/16 v6, 0x11

    invoke-direct {v11, v0, v6}, Lw0/v8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v6, 0x7f090174

    invoke-direct {v7, v6, v4, v11}, Lw0/fc;-><init>(IILh2/a;)V

    new-instance v4, Lw0/fc;

    const/4 v11, 0x5

    const v6, 0x7f090175

    invoke-direct {v4, v6, v11}, Lw0/fc;-><init>(II)V

    new-instance v11, Lw0/fc;

    const v6, 0x7f090177

    invoke-direct {v11, v6, v10}, Lw0/fc;-><init>(II)V

    move-object/from16 v17, v4

    move-object/from16 v16, v7

    move-object/from16 v18, v11

    const/4 v4, 0x1

    filled-new-array/range {v12 .. v18}, [Lw0/fc;

    move-result-object v7

    invoke-static {v7}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/ex/auto/MainActivity;->I0:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {v0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v13, Lw0/w8;

    invoke-direct {v13, v0, v9}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v7, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v8}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lw0/w8;

    const/16 v9, 0x16

    invoke-direct {v8, v0, v9}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v7, Lw0/w8;

    const/16 v8, 0x17

    invoke-direct {v7, v0, v8}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f090176

    invoke-virtual {v0, v5}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v7, Lw0/w8;

    const/16 v8, 0x18

    invoke-direct {v7, v0, v8}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f090174

    invoke-virtual {v0, v5}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v7, Lw0/w8;

    const/16 v8, 0x19

    invoke-direct {v7, v0, v8}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f090175

    invoke-virtual {v0, v5}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v7, Lw0/w8;

    const/16 v8, 0x1a

    invoke-direct {v7, v0, v8}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v6}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lw0/w8;

    const/16 v7, 0x1b

    invoke-direct {v6, v0, v7}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f090173

    invoke-virtual {v0, v5}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lw0/w8;

    const/16 v7, 0x1c

    invoke-direct {v6, v0, v7}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f090222

    invoke-virtual {v0, v5}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lw0/w8;

    const/16 v7, 0x1d

    invoke-direct {v6, v0, v7}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f090220

    invoke-virtual {v0, v5}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0xd

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const v7, 0x7f09021f

    invoke-virtual {v0, v7}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/ex/auto/MainActivity;->T0:Ljava/lang/String;

    if-eqz v8, :cond_3

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v8, v0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, La1/g;

    invoke-direct {v9, v0, v7, v5, v6}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    iget-object v5, v0, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v5, :cond_4

    move v14, v4

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v0, v14}, Lcom/ex/auto/MainActivity;->x2(Z)V

    const v4, 0x7f09010c

    invoke-virtual {v0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lw0/y8;

    const/4 v7, 0x0

    invoke-direct {v5, v0, v7}, Lw0/y8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f090145

    invoke-virtual {v0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lw0/w8;

    invoke-direct {v5, v0, v6}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f09010d

    invoke-virtual {v0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lw0/w8;

    const/16 v6, 0xe

    invoke-direct {v5, v0, v6}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f090146

    invoke-virtual {v0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lw0/w8;

    const/16 v6, 0xf

    invoke-direct {v5, v0, v6}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f09016d

    invoke-virtual {v0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lw0/w8;

    const/16 v6, 0x10

    invoke-direct {v5, v0, v6}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f09016c

    invoke-virtual {v0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lw0/w8;

    const/16 v6, 0x11

    invoke-direct {v5, v0, v6}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f09016e

    invoke-virtual {v0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lw0/w8;

    const/16 v6, 0x12

    invoke-direct {v5, v0, v6}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f090198

    invoke-virtual {v0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lw0/w8;

    const/16 v6, 0x13

    invoke-direct {v5, v0, v6}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f090199

    invoke-virtual {v0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lw0/w8;

    const/16 v6, 0x14

    invoke-direct {v5, v0, v6}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f090197

    invoke-virtual {v0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lw0/w8;

    const/16 v6, 0x15

    invoke-direct {v5, v0, v6}, Lw0/w8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Li/s;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v0, v5}, Li/s;-><init>(Lcom/ex/auto/MainActivity;Landroid/content/SharedPreferences;)V

    const v2, 0x7f09016f

    invoke-virtual {v0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Li/s;->c:Ljava/lang/Object;

    const v2, 0x7f090144

    invoke-virtual {v0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lw0/i;

    invoke-direct {v6, v10, v4}, Lw0/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "master_home_car_color"

    const-string v6, "green"

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v5, v4, Li/s;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_6

    move-object v6, v2

    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Li/s;->a(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/MainActivity;->N1(I)V

    const v1, 0x7f09021b

    invoke-virtual {v0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lw0/xc;

    invoke-direct {v2, v0}, Lw0/xc;-><init>(Lcom/ex/auto/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    const v2, 0x7f090223

    invoke-virtual {v0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "v"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_7
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " master="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v11

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/MainActivity;->P:Ljava/lang/String;

    :try_start_1
    new-instance v1, La1/p;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, La1/p;-><init>(Landroid/content/ContextWrapper;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-static {v0, v4, v2, v3, v1}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iput-object v1, v0, Lcom/ex/auto/MainActivity;->L:Landroid/car/Car;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v0, v7}, Lcom/ex/auto/MainActivity;->x2(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    :goto_4
    const/4 v4, 0x0

    goto :goto_5

    :catchall_1
    const/4 v7, 0x0

    goto :goto_4

    :catchall_2
    const/4 v7, 0x0

    :goto_5
    iput-object v4, v0, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    iput-object v4, v0, Lcom/ex/auto/MainActivity;->N:Landroid/car/media/CarAudioManager;

    invoke-virtual {v0, v7}, Lcom/ex/auto/MainActivity;->x2(Z)V

    :goto_6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-boolean v1, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    sget-boolean v1, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    if-eqz v1, :cond_8

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/BlackoutFloaterService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_8
    sget-boolean v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-eqz v1, :cond_9

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_9
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "blackout_enabled"

    const/4 v7, 0x0

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "drive_regen_enabled"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    invoke-virtual {v0, v7}, Lcom/ex/auto/MainActivity;->r2(I)V

    return-void

    :cond_a
    const-string v1, "binding"

    invoke-static {v1}, Li2/g;->h(Ljava/lang/String;)V

    const/16 v19, 0x0

    throw v19

    :cond_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "rootView"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->n0()Lw0/p3;

    move-result-object v0

    iget-object v1, v0, Lw0/p3;->b:Lw0/e9;

    iget-object v2, v0, Lw0/p3;->f:La1/r;

    invoke-virtual {v1, v2}, Lw0/e9;->c(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lw0/p3;->e:Z

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->L:Landroid/car/Car;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->W0:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->W0:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->x:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->z:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    invoke-super {p0}, Le/j;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 4

    invoke-super {p0}, Le/j;->onPause()V

    sget-object v0, Lw0/ud;->a:Lw0/ud;

    invoke-virtual {v0}, Lw0/ud;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ao sair da tela \u2014 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lw0/ud;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Metricas"

    invoke-static {v1, v0, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iput-boolean v2, p0, Lcom/ex/auto/MainActivity;->O:Z

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->n0()Lw0/p3;

    move-result-object v0

    iget-object v1, v0, Lw0/p3;->b:Lw0/e9;

    iget-object v3, v0, Lw0/p3;->f:La1/r;

    invoke-virtual {v1, v3}, Lw0/e9;->c(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, v0, Lw0/p3;->e:Z

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->B0:Landroidx/activity/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->G0:Lw0/jc;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->k1:Lw0/jc;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->y0:Lw0/jc;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method public final onResume()V
    .locals 18

    move-object/from16 v1, p0

    sget-object v2, Lw0/s;->b:Lw0/s;

    sget-object v3, Lw0/s;->a:Lw0/s;

    sget-object v4, Lw0/s;->c:Lw0/s;

    iget-object v5, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    invoke-super {v1}, Le/j;->onResume()V

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    sget-object v0, Lw0/ae;->b:Ljava/io/File;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v1, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    :cond_1
    :goto_0
    sput-object v0, Lw0/ae;->b:Ljava/io/File;

    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/ex/auto/MainActivity;->z(Z)V

    iget-object v8, v1, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lw0/x8;

    invoke-direct {v0, v1, v7}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->T()J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v11, -0x1

    const-string v13, "connadaptor_checado_na_vc"

    invoke-interface {v0, v13, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v0, v11, v9

    if-nez v0, :cond_2

    goto/16 :goto_a

    :cond_2
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v13, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v9, "com.njda.adapter"

    invoke-virtual {v0, v9, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ERRO: "

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->O()Z

    move-result v9

    const-string v10, "Modo"

    if-nez v9, :cond_3

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verifica\u00e7\u00e3o do modo: ConnAdaptor n\u00e3o est\u00e1 instalado em /data/app \u2014 sourceDir="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0, v7}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_a

    :cond_3
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v0

    sget v9, Lw0/u;->a:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->R()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lw0/u;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "toLowerCase(...)"

    invoke-static {v9, v13}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->G0()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v14, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v13}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v12, v6

    :goto_3
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "connadaptor_expected_md5"

    invoke-interface {v13, v14, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "connadaptor_arquivo_modo"

    invoke-interface {v14, v15, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12}, Lw0/u;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_6

    :cond_5
    :goto_4
    move-object v2, v4

    goto/16 :goto_7

    :cond_6
    invoke-static {v9}, Lw0/u;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_5
    move-object v2, v3

    goto/16 :goto_7

    :cond_7
    const-string v6, "carplay"

    const-string v11, "ambos"

    const-string v7, "aa"

    filled-new-array {v7, v6, v11}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "1111"

    invoke-static {v7, v11}, Lw0/u;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lw0/u;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    :cond_a
    invoke-static {v7, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "1114"

    invoke-static {v7, v11}, Lw0/u;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lw0/u;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_7

    :cond_b
    :goto_6
    invoke-static {v13}, Lw0/u;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v14, :cond_5

    invoke-static {v14}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_5

    :cond_d
    :goto_7
    const/16 v6, 0x8

    if-ne v2, v4, :cond_f

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    const-string v2, "n\u00e3o d\u00e1 para dizer se o ConnAdaptor \u00e9 do modo "

    const-string v3, " (em uso "

    invoke-static {v2, v0, v3}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v12, :cond_e

    invoke-static {v6, v12}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_e
    const-string v2, "ileg\u00edvel"

    :goto_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") \u2014 sem build conhecida nem proced\u00eancia gravada. N\u00e3o afirmo nada."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v10, v0, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a

    :cond_f
    if-ne v2, v3, :cond_11

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    const-string v2, "ConnAdaptor confere com o modo "

    const-string v3, " ("

    invoke-static {v2, v0, v3}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v12, :cond_10

    invoke-static {v6, v12}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v10, v0, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    sget-object v3, Lw0/ae;->a:Lw0/ae;

    const-string v3, " \u2014 em uso "

    const-string v4, ", esperado "

    const-string v6, "ConnAdaptor N\u00c3O confere com o modo "

    invoke-static {v6, v0, v3, v12, v4}, Landroidx/activity/result/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Le/h;

    invoke-direct {v2, v1}, Le/h;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f011c

    invoke-virtual {v2, v3}, Le/h;->g(I)V

    invoke-virtual {v1, v0}, Lcom/ex/auto/MainActivity;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f0f011b

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v3, Le/d;

    iput-object v0, v3, Le/d;->f:Ljava/lang/CharSequence;

    new-instance v0, Lw0/z8;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v3, 0x7f0f0255

    invoke-virtual {v2, v3, v0}, Le/h;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 v0, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Le/h;->b(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Le/h;->h()Le/i;

    :goto_a
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "crash_detected"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "auto_apply_paused"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    new-instance v0, Le/h;

    invoke-direct {v0, v1}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Le/h;->b:Ljava/lang/Object;

    check-cast v3, Le/d;

    const v4, 0x7f0f01a6

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Le/d;->d:Ljava/lang/CharSequence;

    const v4, 0x7f0f01a5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Le/d;->f:Ljava/lang/CharSequence;

    const v4, 0x7f0f0140

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lw0/z8;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v4, v6}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v4, 0x7f0f0161

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lw0/z8;

    invoke-direct {v6, v1, v2}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v4, v6}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-boolean v7, v3, Le/d;->m:Z

    invoke-virtual {v0}, Le/h;->h()Le/i;

    :cond_13
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->j0()V

    iget-object v0, v1, Lcom/ex/auto/MainActivity;->G0:Lw0/jc;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.ex.auto.wifimanager.STATUS_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.ex.auto.AUTO_PROXY_APPLIED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.ex.auto.AUTO_ROUTE_APPLIED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.ex.auto.DRIVE_REGEN_RECUSADO"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.ex.auto.USB_WATCHDOG_APPLIED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/ex/auto/MainActivity;->k1:Lw0/jc;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/ex/auto/MainActivity;->y0:Lw0/jc;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.ex.auto.PHONE_SYNC_APPLIED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v2, v1, Lcom/ex/auto/MainActivity;->O:Z

    iget-object v0, v1, Lcom/ex/auto/MainActivity;->B0:Landroidx/activity/d;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-wide v3, v1, Lcom/ex/auto/MainActivity;->Q:J

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    const-string v3, "ms"

    const-string v4, "ArranqueUI"

    if-lez v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/ex/auto/MainActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " total_ate_resume="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v9, v1, Lcom/ex/auto/MainActivity;->Q:J

    sub-long/2addr v6, v9

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/ex/auto/MainActivity;->t:Landroidx/emoji2/text/m;

    if-eqz v0, :cond_15

    iget-object v0, v0, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v6, Lw0/x8;

    invoke-direct {v6, v1, v2}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_14
    const/4 v6, 0x0

    goto :goto_b

    :cond_15
    const-string v0, "binding"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    const/4 v6, 0x0

    throw v6

    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->v1()V

    invoke-virtual {v1, v6, v6}, Lcom/ex/auto/MainActivity;->i1(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->A1()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v9

    const-wide/16 v9, 0x14

    cmp-long v0, v6, v9

    if-ltz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "fase refreshUi="

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget v0, v1, Lcom/ex/auto/MainActivity;->R:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_17

    iget-object v0, v1, Lcom/ex/auto/MainActivity;->S0:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_17

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o1()V

    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->e1()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v6

    cmp-long v0, v11, v9

    if-ltz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "fase bindStatus="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->f1()V

    iget v0, v1, Lcom/ex/auto/MainActivity;->R:I

    const v6, 0x7f090176

    invoke-virtual {v1, v6}, Lcom/ex/auto/MainActivity;->L1(I)I

    move-result v6

    if-ne v0, v6, :cond_19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->h1(Lcom/ex/auto/MainActivity;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v6

    cmp-long v0, v11, v9

    if-ltz v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "fase carlockWavs="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-wide v6, v1, Lcom/ex/auto/MainActivity;->l1:J

    const/16 v0, 0x18

    int-to-long v11, v0

    mul-long/2addr v6, v11

    const/16 v0, 0x3c

    int-to-long v11, v0

    mul-long/2addr v6, v11

    mul-long/2addr v6, v11

    const/16 v0, 0x3e8

    int-to-long v11, v0

    mul-long/2addr v6, v11

    const-wide v11, 0x1a113b67e8eL

    add-long/2addr v6, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v0, v11, v6

    if-gtz v0, :cond_1a

    goto :goto_c

    :cond_1a
    new-instance v0, Le/h;

    invoke-direct {v0, v1}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v6, v0, Le/h;->b:Ljava/lang/Object;

    check-cast v6, Le/d;

    const v7, 0x7f0f036f

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Le/d;->d:Ljava/lang/CharSequence;

    const v7, 0x7f0f036e

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Le/d;->f:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    iput-boolean v7, v6, Le/d;->m:Z

    const v6, 0x7f0f036d

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lw0/z8;

    const/16 v11, 0x1b

    invoke-direct {v7, v1, v11}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v6, v7}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v6, 0x7f0f0103

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lw0/z8;

    const/16 v11, 0x1c

    invoke-direct {v7, v1, v11}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v6, v7}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Le/h;->h()Le/i;

    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v11, "device_banned"

    const/4 v12, 0x0

    invoke-interface {v0, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v11, 0x3

    const-string v12, "<get-prefs>(...)"

    if-nez v0, :cond_1b

    move-wide/from16 v16, v9

    goto :goto_d

    :cond_1b
    new-instance v0, Le/h;

    invoke-direct {v0, v1}, Le/h;-><init>(Landroid/content/Context;)V

    const v13, 0x7f0f00be

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Le/h;->b:Ljava/lang/Object;

    check-cast v14, Le/d;

    iput-object v13, v14, Le/d;->f:Ljava/lang/CharSequence;

    const/4 v13, 0x0

    iput-boolean v13, v14, Le/d;->m:Z

    const v13, 0x7f0f0038

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lw0/z8;

    const/16 v15, 0x12

    invoke-direct {v14, v1, v15}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v13, v14}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Le/h;->a()Le/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    sget-boolean v13, Lw0/n0;->a:Z

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-static {v13, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lw0/q1;

    invoke-direct {v14, v11, v0}, Lw0/q1;-><init>(ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v15, La1/i;

    move-wide/from16 v16, v9

    const/4 v9, 0x5

    invoke-direct {v15, v13, v9, v14}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v0, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    cmp-long v0, v9, v16

    if-ltz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "fase banState="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    sget-boolean v0, Lw0/sd;->a:Z

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lw0/sd;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sget-boolean v0, Lw0/n0;->a:Z

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lw0/n0;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sget-object v0, Lw0/k5;->a:Lw0/k5;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lw0/k5;->f(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->q0()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Lw0/x8;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1d
    iget-boolean v0, v1, Lcom/ex/auto/MainActivity;->H0:Z

    if-nez v0, :cond_1e

    iput-boolean v2, v1, Lcom/ex/auto/MainActivity;->H0:Z

    new-instance v0, Lw0/x8;

    invoke-direct {v0, v1, v11}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1e
    return-void
.end method

.method public final p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p2, p3}, Lw0/u;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "connadaptor_expected_md5"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "connadaptor_arquivo_versao"

    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "connadaptor_arquivo_modo"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final p1()V
    .locals 3

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "master_carlock_apply_mode"

    const-string v2, "reboot"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persistent"

    invoke-static {v0, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f090135

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f090134

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final q0()Z
    .locals 6

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    const-string v1, "connectivity"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/net/ConnectivityManager;

    const-class v0, Landroid/net/ConnectivityManager;

    const-string v3, "getGlobalProxy"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/net/ProxyInfo;

    if-eqz v1, :cond_1

    move-object v5, v0

    check-cast v5, Landroid/net/ProxyInfo;

    :cond_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :catch_0
    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    :goto_2
    move v2, v4

    :catch_1
    :cond_4
    return v2
.end method

.method public final q1()V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->S0:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f09013a

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const v1, 0x7f090130

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->b0:Ljava/util/List;

    iget v3, p0, Lcom/ex/auto/MainActivity;->c0:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/ex/auto/MainActivity;->s2(Landroid/widget/Spinner;Ljava/util/List;I)V

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->d0:Ljava/lang/Object;

    iget v2, p0, Lcom/ex/auto/MainActivity;->e0:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/ex/auto/MainActivity;->s2(Landroid/widget/Spinner;Ljava/util/List;I)V

    const v0, 0x7f090131

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    iget-boolean v1, p0, Lcom/ex/auto/MainActivity;->r0:Z

    invoke-virtual {v0, v1}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    const v0, 0x7f090143

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pause_audio_on_door"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    const v0, 0x7f09013f

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "media_bar_floater_enabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    const v0, 0x7f09013d

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "lyrics_floater_enabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->p1()V

    return-void
.end method

.method public final q2(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n                setenforce 0 2>/dev/null || true\n                "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n                echo \"== copiar APK para tmp (pm install) ==\"\n                chmod 644 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null || true\n                rm -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null || true\n                cp -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1 || exit 47\n                sync 2>/dev/null || true\n                chown root:root "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1 || true\n                chmod 644 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1 || true\n                restorecon -v "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>/dev/null || true\n                ls -l "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1\n            "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x1d4c0

    if-eqz p4, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->K1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_0
    const-string v0, "Falha no ADB local"

    const/4 v1, 0x1

    invoke-static {p4, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    const-wide/16 v2, -0x1

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p4}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p3, p2, p1, v0, p4}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f0f0146

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p4}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/ex/auto/MainActivity;->N0(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "getInputStream(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo2/a;->a:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v0, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v0, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0}, La1/b;->Z(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-static {v0, v1}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ex/auto/MainActivity;->a0(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    :try_start_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    throw v0
.end method

.method public final r1()V
    .locals 10

    const v0, 0x7f090169

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lw0/wd;->a:Lw0/wd;

    invoke-static {p0}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {p0}, Lw0/wd;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->S0:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "theme_mode"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dark"

    const-string v4, "light"

    const-string v5, "auto"

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v6, "light_mode"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v5

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v4

    goto :goto_1

    :cond_3
    move-object v0, v1

    :cond_4
    :goto_1
    const v6, 0x7f090162

    invoke-virtual {p0, v6}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v6, v4}, Landroid/view/View;->setSelected(Z)V

    const v4, 0x7f090161

    invoke-virtual {p0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f090160

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v4, 0xca9

    if-eq v1, v4, :cond_c

    const/16 v4, 0xcae

    if-eq v1, v4, :cond_b

    const/16 v4, 0xe43

    if-eq v1, v4, :cond_9

    const/16 v4, 0xe74

    if-eq v1, v4, :cond_7

    const/16 v4, 0xeb3

    if-eq v1, v4, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    const v0, 0x7f0f047f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const v0, 0x7f0f047e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    const v0, 0x7f0f047c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_b
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f0f047d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_c
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2

    :cond_d
    const v0, 0x7f0f047a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_e
    :goto_2
    const v0, 0x7f0f047b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    const v1, 0x7f09014f

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "screen_rest_timeout_sec"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x7f090158

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lx1/a;

    invoke-direct {v5, v1, v4}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v1, 0x7f090154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lx1/a;

    invoke-direct {v6, v1, v4}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v1, 0x7f090156

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v7, Lx1/a;

    invoke-direct {v7, v1, v4}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v1, 0x7f090157

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v8, Lx1/a;

    invoke-direct {v8, v1, v4}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v1, 0x7f090155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x78

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v9, Lx1/a;

    invoke-direct {v9, v1, v4}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v6, v7, v8, v9}, [Lx1/a;

    move-result-object v1

    invoke-static {v1}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p0, v5}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-ne v0, v4, :cond_f

    move v4, v2

    goto :goto_5

    :cond_f
    move v4, v3

    :goto_5
    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_4

    :cond_10
    const v0, 0x7f09014a

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lw0/u;->a:I

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "<get-prefs>(...)"

    invoke-static {v1, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "canal_efetivo"

    const-string v6, "stable"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_6

    :cond_11
    move-object v6, v1

    :goto_6
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090149

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v5, "auto_update_enabled"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    const v0, 0x7f09015e

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "silence_tbox_log"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    const v0, 0x7f09015c

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "silence_avm_log"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    const v0, 0x7f090166

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->i0:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09015a

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f04df

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090168

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->j0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090165

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->K0:Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_7

    :cond_12
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ttl_65_ativo"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_7
    invoke-virtual {v0, v1}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f090152

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    if-nez v0, :cond_13

    move v4, v3

    goto :goto_8

    :cond_13
    move v4, v2

    :goto_8
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090150

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v0, :cond_14

    goto :goto_9

    :cond_14
    move v3, v2

    :goto_9
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final r2(I)V
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->I0:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Ly1/g;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/fc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/ex/auto/MainActivity;->R:I

    iget p1, v0, Lw0/fc;->b:I

    iget v1, v0, Lw0/fc;->a:I

    invoke-virtual {p0, p1, v1}, Lcom/ex/auto/MainActivity;->m2(II)V

    iget-object p1, v0, Lw0/fc;->c:Lh2/a;

    invoke-interface {p1}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :cond_1
    const-string p1, "navSections"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final s()V
    .locals 14

    iget-boolean v1, p0, Lcom/ex/auto/MainActivity;->l0:Z

    const-string v2, "getString(...)"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const v1, 0x7f0f00a7

    invoke-static {v1, v3, p0, v2}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->O()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "Desativar"

    const-string v4, "usu\u00e1rio pediu para reverter o ConnAdaptor pro de f\u00e1brica"

    invoke-static {v1, v4, v3}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ex/auto/MainActivity;->l0:Z

    const v3, 0x7f0f014d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v1}, Lcom/ex/auto/MainActivity;->D0(Ljava/lang/String;Z)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lw0/e9;

    const/4 v2, 0x7

    invoke-direct {v8, p0, v2}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v9, Lw0/e9;

    const/16 v3, 0x8

    invoke-direct {v9, p0, v3}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v12, Lw0/h9;

    invoke-direct {v12, p0, v2}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    const/16 v13, 0x600

    move-object v2, v1

    const/4 v1, 0x0

    const-wide/16 v3, 0x1388

    const v5, 0xea60

    const-string v6, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v13}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "connadaptor_ja_ativado"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->C()V

    return-void

    :cond_2
    new-instance v1, Le/h;

    invoke-direct {v1, p0}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v2, v1, Le/h;->b:Ljava/lang/Object;

    check-cast v2, Le/d;

    const v3, 0x7f0f00af

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Le/d;->d:Ljava/lang/CharSequence;

    const v3, 0x7f0f00ae

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Le/d;->f:Ljava/lang/CharSequence;

    const v2, 0x7f0f0559

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw0/z8;

    const/16 v4, 0xc

    invoke-direct {v3, p0, v4}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v1, v2, v3}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Le/h;->b(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Le/h;->h()Le/i;

    return-void
.end method

.method public final s0(Lw0/xb;)V
    .locals 7

    iget-object v2, p1, Lw0/xb;->b:Ljava/lang/String;

    iget-object v3, p1, Lw0/xb;->c:Ljava/lang/String;

    iget-object v4, p1, Lw0/xb;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lw0/xb;->f:Z

    iput-boolean v0, p1, Lw0/xb;->g:Z

    const v0, 0x7f0f016c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lw0/xb;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lw0/xb;->a()V

    new-instance v0, Lw0/qa;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lw0/qa;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;Ljava/lang/Object;I)V

    iget-object p1, v1, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s1()V
    .locals 6

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->S0:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090189

    const-string v2, "aa"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {p0, v3, v1}, Lcom/ex/auto/MainActivity;->t1(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const v1, 0x7f09018a

    invoke-static {p0, v0, v1}, Lcom/ex/auto/MainActivity;->t1(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->R()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1114"

    invoke-static {v0, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const v3, 0x7f090190

    invoke-static {p0, v2, v3}, Lcom/ex/auto/MainActivity;->t1(Lcom/ex/auto/MainActivity;ZI)V

    const v2, 0x7f090191

    invoke-static {v0, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, v0, v2}, Lcom/ex/auto/MainActivity;->t1(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->Y0()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wifi_auto_enable_on_wake"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const v1, 0x7f090193

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ex/auto/MasterToggleView;

    const-string v3, "telemetry_autostart"

    invoke-static {v1, v0, p0, v3, v2}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v1, 0x7f09018f

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ex/auto/MasterToggleView;

    const-string v3, "phone_sync_enabled"

    invoke-static {v1, v0, p0, v3, v2}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v1, 0x7f09018d

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ex/auto/MasterToggleView;

    const-string v3, "ap_sempre_aberto"

    invoke-static {v1, v0, p0, v3, v2}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v1, 0x7f090181

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ex/auto/MasterToggleView;

    const-string v3, "auto_route_on_aa_connect"

    invoke-static {v1, v0, p0, v3, v2}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v1, 0x7f09017c

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ex/auto/MasterToggleView;

    const-string v3, "auto_proxy_enabled"

    invoke-static {v1, v0, p0, v3, v2}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v1, 0x7f090185

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v1, v0}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    const v0, 0x7f09017b

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/ex/auto/MainActivity;->h0:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0f0559

    goto :goto_0

    :cond_1
    const v1, 0x7f0f057d

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090183

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "auto_connect_preferred_bt"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    if-nez v1, :cond_3

    const v1, 0x7f0f00f2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lo2/t;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_6
    move-object v4, v3

    :goto_2
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    :goto_3
    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    move-object v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09017d

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/ex/auto/MainActivity;->x0:Z

    if-eqz v1, :cond_9

    const v1, 0x7f0f02d6

    goto :goto_5

    :cond_9
    const v1, 0x7f0f014a

    :goto_5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final s2(Landroid/widget/Spinner;Ljava/util/List;I)V
    .locals 7

    invoke-virtual {p1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lk1/a;->T(II)Ll2/c;

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

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ll2/b;->nextInt()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v1

    :goto_1
    if-nez v5, :cond_1

    const-string v5, ""

    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v1, v4

    :cond_3
    invoke-static {v1, p2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0c0032

    invoke-direct {v0, p0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_4
    if-ltz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    if-ge p3, p2, :cond_5

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p2

    if-eq p2, p3, :cond_5

    invoke-virtual {p1, p3, v2}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    :cond_5
    return-void
.end method

.method public final t(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "1111"

    const v3, 0x7f0f0114

    const-string v4, "1114"

    const v5, 0x7f0f0111

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "4b0e1de041032ee63ef0c223926d7889"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_1
    const-string v1, "19593246e356874905f072cd82af107b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const p1, 0x7f0f0110

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_2
    const-string v1, "0c280b07f92a3538bcda1aae2e8b0746"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_3
    const-string v1, "d49ab03b18a5c5e21928c59c465394d7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_4
    const-string v1, "4b37f46239a938fa164d4a0bdc65a399"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const p1, 0x7f0f0115

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_5
    const-string v1, "260459e68360a4ff5c3720d84a2acddd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v2}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x205468fa -> :sswitch_5
        0x1ff65dde -> :sswitch_4
        0x4a346867 -> :sswitch_3
        0x57696393 -> :sswitch_2
        0x67733494 -> :sswitch_1
        0x6a9deb7a -> :sswitch_0
    .end sparse-switch
.end method

.method public final t0()Ljava/lang/String;
    .locals 4

    const-string v0, "/data/local/tmp/CentralEXAuto-update.apk"

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n            setenforce 0 2>/dev/null || true\n            "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            echo \"== instalando update CentralEX ==\"\n            ls -l "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1 || exit 50\n            chown root:root "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1 || true\n            chmod 644 "

    const-string v3, " 2>&1 || true\n            restorecon -v "

    invoke-static {v1, v2, v0, v3, v0}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, " 2>/dev/null || true\n            "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n            echo \"== pm install ==\"\n            pm install -r -g -d "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1\n            code=$?\n            echo \"exit_code=$code\"\n            exit $code\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n        "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x15f90

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->K1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 p2, 0x11

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-object p1
.end method

.method public final u(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "connadaptor_expected_md5"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "connadaptor_arquivo_modo"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "connadaptor_arquivo_versao"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lw0/u;->a:I

    if-eqz p1, :cond_7

    invoke-static {p1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "toLowerCase(...)"

    invoke-static {p1, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_7

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_7

    invoke-static {v1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_7

    invoke-static {v3}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v1, v3}, Lw0/u;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_2
    return-object v2
.end method

.method public final u1()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->S0:[Z

    const/4 v2, 0x5

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string v1, "quick_access_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const v3, 0x7f09019b

    invoke-virtual {v0, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "quick_access_enabled"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->V:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "qa_visible_"

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ex/auto/MasterToggleView;

    sget-object v8, Lcom/ex/auto/QuickAccessFloaterService;->w0:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v6, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    goto :goto_0

    :cond_1
    const v3, 0x7f0901a9

    invoke-virtual {v0, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const-string v7, "qa_tab_alpha"

    const/16 v8, 0x5a

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0x64

    invoke-static {v7, v2, v8}, Lk1/a;->k(III)I

    move-result v7

    int-to-float v7, v7

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v7, v9

    const v10, 0x7f0901aa

    invoke-virtual {v0, v10}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    const v10, 0x7f0901ab

    invoke-virtual {v0, v10}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const-string v11, "qa_panel_width_pct"

    invoke-interface {v1, v11, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/16 v12, 0x32

    const/16 v13, 0xc8

    invoke-static {v11, v12, v13}, Lk1/a;->k(III)I

    move-result v11

    mul-int/lit8 v11, v11, 0x26

    int-to-float v11, v11

    div-float/2addr v11, v9

    float-to-int v11, v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    float-to-int v11, v11

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const-string v11, "qa_panel_height_pct"

    invoke-interface {v1, v11, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11, v12, v13}, Lk1/a;->k(III)I

    move-result v11

    mul-int/lit8 v11, v11, 0x40

    int-to-float v11, v11

    div-float/2addr v11, v9

    float-to-int v11, v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    float-to-int v11, v11

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "qa_icon_size_pct"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0x12c

    invoke-static {v7, v12, v8}, Lk1/a;->k(III)I

    move-result v7

    const/high16 v8, 0x42100000    # 36.0f

    int-to-float v7, v7

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    float-to-int v7, v7

    const/16 v8, 0x12

    const/16 v9, 0x24

    invoke-static {v7, v8, v9}, Lk1/a;->k(III)I

    move-result v7

    rsub-int/lit8 v8, v7, 0x46

    div-int/lit8 v8, v8, 0x2

    const/16 v9, 0x11

    if-ge v8, v9, :cond_2

    move v8, v9

    :cond_2
    const/16 v9, 0x3a

    rsub-int/lit8 v7, v7, 0x3a

    div-int/lit8 v7, v7, 0x2

    const/16 v10, 0xb

    if-ge v7, v10, :cond_3

    move v7, v10

    :cond_3
    const-string v10, "qa_icon_order"

    const/4 v11, 0x0

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-static {v10}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    move/from16 v16, v6

    goto/16 :goto_4

    :cond_5
    const-string v11, ","

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x6

    invoke-static {v10, v11, v2, v12}, Lo2/k;->v0(Ljava/lang/String;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v10}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v2

    :goto_2
    if-ge v13, v12, :cond_8

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    move/from16 v16, v6

    sget-object v6, Lcom/ex/auto/QuickAccessFloaterService;->v0:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move/from16 v6, v16

    goto :goto_2

    :cond_8
    move/from16 v16, v6

    sget-object v6, Lcom/ex/auto/QuickAccessFloaterService;->v0:Ljava/util/List;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-static {v10, v11}, Ly1/g;->g0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_5

    :goto_4
    sget-object v6, Lcom/ex/auto/QuickAccessFloaterService;->v0:Ljava/util/List;

    :goto_5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    sget-object v11, Lcom/ex/auto/QuickAccessFloaterService;->w0:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v12, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_b

    new-instance v11, Lw0/sf;

    invoke-direct {v11, v0}, Lw0/sf;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v11, v10}, Lw0/sf;->setIconId(Ljava/lang/String;)V

    const v10, 0x7f070066

    invoke-virtual {v11, v10}, Li/b1;->setBackgroundResource(I)V

    int-to-float v10, v8

    mul-float/2addr v10, v4

    float-to-int v10, v10

    int-to-float v12, v7

    mul-float/2addr v12, v4

    float-to-int v12, v12

    invoke-virtual {v11, v10, v12, v10, v12}, Landroid/view/View;->setPadding(IIII)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x46

    int-to-float v12, v12

    mul-float/2addr v12, v4

    float-to-int v12, v12

    int-to-float v13, v9

    mul-float/2addr v13, v4

    float-to-int v13, v13

    invoke-direct {v10, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x8

    int-to-float v12, v12

    mul-float/2addr v12, v4

    float-to-int v12, v12

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v3, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_c
    iget-object v1, v0, Lcom/ex/auto/MainActivity;->W:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "<get-keys>(...)"

    invoke-static {v3, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    move v6, v2

    goto :goto_7

    :cond_e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    move/from16 v6, v16

    :goto_7
    const v3, 0x7f090227

    invoke-virtual {v0, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v3, v6}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    const v3, 0x7f09022a

    invoke-virtual {v0, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "widgets_poslock_all"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    goto :goto_8

    :cond_10
    :goto_9
    return-void
.end method

.method public final varargs u2(J[I)Lw0/h0;
    .locals 5

    array-length v0, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p3

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p3, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aget p3, p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Lk1/a;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Ly1/p;->a:Ly1/p;

    :cond_2
    :goto_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_5

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_5
    new-instance v0, Lw0/f2;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p3}, Lw0/f2;-><init>(ILjava/lang/Object;)V

    new-instance p3, La1/r;

    const/4 v1, 0x7

    invoke-direct {p3, v1, v0}, La1/r;-><init>(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p1, Lw0/h0;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p3, v0, p2}, Lw0/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object p1
.end method

.method public final v(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "connadaptor_modo"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "modo de proje\u00e7\u00e3o: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Modo"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Lw0/u;->j(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "aa"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ambos"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ex/auto/MainActivity;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f0f0240

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(...)"

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->O()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/ex/auto/MainActivity;->K(Lcom/ex/auto/MainActivity;I)V

    :cond_2
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v0, Lw0/v1;->a:Lw0/v1;

    invoke-virtual {v0}, Lw0/v1;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "reaplicar_patch_monitor"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v0, Lw0/v1;->a:Lw0/v1;

    invoke-virtual {v0}, Lw0/v1;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    new-instance v0, Lw0/ma;

    const/16 v3, 0xd

    invoke-direct {v0, p0, v3}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->e1()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->e1()V

    new-instance v0, Lw0/c9;

    invoke-direct {v0, p1, p0, v1}, Lw0/c9;-><init>(Ljava/lang/String;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v1()V
    .locals 10

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->S0:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0901e9

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->c1:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "pip_overlay_enabled"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    const v0, 0x7f0901d4

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->f1:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "gestures_enabled"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    invoke-virtual {p0, v3}, Lcom/ex/auto/MainActivity;->m1(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ex/auto/MainActivity;->e1:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0xbb8

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    iput-wide v4, p0, Lcom/ex/auto/MainActivity;->e1:J

    iget-boolean v0, p0, Lcom/ex/auto/MainActivity;->d1:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lw0/nb;

    const/4 v4, 0x5

    invoke-direct {v2, p0, v4}, Lw0/nb;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    const v0, 0x7f0901ec

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "remember_brightness"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->C1()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "status_battery_enabled"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f0901db

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "status_temp_ext_enabled"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f0901df

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "status_wifi_enabled"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f0901e1

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "status_signal_enabled"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f0901dd

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "gestures_ac_swipe_single_step"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f0901af

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "hvac_digital_batt"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f090204

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "hvac_digital_temp"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f090211

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "hvac_digital_ext_temp"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f09020e

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "status_brightness_enabled"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f09020c

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "status_brightness2_enabled"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f090209

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "status_trip_km_enabled"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f090216

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "status_total_km_enabled"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f090214

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "temp_batt_pill_enabled"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f0901ca

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v2, v0}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    const-string v0, "temp_batt_pill_prefs"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pill_mode"

    const-string v4, "both"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0901cd

    invoke-virtual {p0, v5}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "temp"

    invoke-static {v2, v6}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    const v5, 0x7f0901cb

    invoke-virtual {p0, v5}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "batt"

    invoke-static {v2, v6}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    const v5, 0x7f0901cc

    invoke-virtual {p0, v5}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v2, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setSelected(Z)V

    const-string v2, "pill_text_white"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f0901d1

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    const v2, 0x7f0901d0

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    xor-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->q0:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "keyserver_bind_enabled"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_3
    const v2, 0x7f0901b8

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "swc_media_control_enabled"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f0901ba

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "camera_on_drive"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f0901b4

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "recirc_guard_enabled"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f0901c3

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "window_driver_on_door"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f0901c5

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "window_opposite_on_door"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f0901bf

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v2, v0}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    const/4 v0, 0x3

    invoke-static {v3, v0}, Lk1/a;->T(II)Ll2/c;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ll2/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    move-object v4, v0

    check-cast v4, Ll2/b;

    iget-boolean v5, v4, Ll2/b;->c:Z

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ll2/b;->nextInt()I

    move-result v4

    invoke-static {p0, v4}, Lw0/t1;->O(Landroid/content/Context;I)Lw0/k;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    move v4, v3

    goto :goto_6

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v3

    move v5, v4

    :cond_8
    :goto_5
    if-ge v5, v0, :cond_a

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lw0/k;

    if-eqz v6, :cond_8

    add-int/lit8 v4, v4, 0x1

    if-ltz v4, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Count overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_6
    const v0, 0x7f0901c0

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v4, :cond_b

    const v2, 0x7f0f0489

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_b
    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const/high16 v6, 0x7f0e0000

    invoke-virtual {v2, v6, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->X0:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "rvc_black_bg"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_8
    const v2, 0x7f0901fa

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v2, v0}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    invoke-virtual {p0, v3}, Lcom/ex/auto/MainActivity;->w1(Z)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "rear_cam_turn_signal_enabled"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f090200

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    const-string v4, "rear_cam_hold_open_5s"

    invoke-static {v2, v0, p0, v4, v3}, Landroidx/activity/result/b;->t(Lcom/ex/auto/MasterToggleView;ZLcom/ex/auto/MainActivity;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f0901fe

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v2, v0}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "aeb_state_saved"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, "aeb_desired"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const v4, 0x7f0901f6

    invoke-virtual {p0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v4, v0}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    const v0, 0x7f0901f5

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v2, :cond_d

    const v4, 0x7f0f03f0

    goto :goto_9

    :cond_d
    const v4, 0x7f0f03f2

    :goto_9
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_e

    const v4, 0x7f05007e

    goto :goto_a

    :cond_e
    const v4, 0x7f050088

    :goto_a
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v2, :cond_f

    const v2, 0x7f07006a

    goto :goto_b

    :cond_f
    const v2, 0x7f07006b

    :goto_b
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "aeb_restore_on_boot"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f0901f3

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v2, v0}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->z0:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_c

    :cond_10
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "speed_auto_lock_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_c
    const v2, 0x7f0901fc

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v2, v0}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    invoke-virtual {p0, v3}, Lcom/ex/auto/MainActivity;->x1(Z)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "screen_rest_timeout_sec"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0x7f0901f0

    const v4, 0x7f0901ee

    const v5, 0x7f0901ef

    const v6, 0x7f0901ed

    filled-new-array {v2, v4, v5, v6}, [I

    move-result-object v7

    move v8, v3

    :goto_d
    const/4 v9, 0x4

    if-ge v8, v9, :cond_11

    aget v9, v7, v8

    invoke-virtual {p0, v9}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_11
    const/16 v3, 0x1e

    if-eq v0, v3, :cond_14

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_13

    const/16 v3, 0x78

    if-eq v0, v3, :cond_12

    goto :goto_e

    :cond_12
    move v2, v6

    goto :goto_e

    :cond_13
    move v2, v5

    goto :goto_e

    :cond_14
    move v2, v4

    :goto_e
    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lo2/k;->F0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->w0:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/ex/auto/MainActivity;->v0:Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ex/auto/MainActivity;->v0:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const p2, 0x30d40

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcom/ex/auto/MainActivity;->v0:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const p2, 0x186a0

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/ex/auto/MainActivity;->v0:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ex/auto/MainActivity;->v0:Ljava/lang/StringBuilder;

    const-string p2, "[... log truncado ...]\n"

    invoke-virtual {p1, v0, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p1
.end method

.method public final varargs w0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->N:Landroid/car/media/CarAudioManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p2}, Lcom/ex/auto/MainActivity;->H([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final w1(Z)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/ex/auto/MainActivity;->Y0:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lcom/ex/auto/MainActivity;->Y0:J

    :try_start_0
    iget-object p1, p0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lw0/x8;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final w2(Ljava/lang/Float;)V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1, v2, v1}, Lk1/a;->k(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v3, p0, Lcom/ex/auto/MainActivity;->E0:Ljava/lang/Integer;

    invoke-static {p1, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ex/auto/MainActivity;->E0:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/ex/auto/MainActivity;->E0:Ljava/lang/Integer;

    const v3, 0x7f09021a

    invoke-virtual {p0, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "\u2014"

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f09021b

    invoke-virtual {p0, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v5, v4, Lw0/xc;

    if-eqz v5, :cond_3

    move-object v0, v4

    check-cast v0, Lw0/xc;

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Lw0/xc;

    invoke-direct {v0, p0}, Lw0/xc;-><init>(Lcom/ex/auto/MainActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_5
    move p1, v2

    :goto_2
    invoke-static {p1, v2, v1}, Lk1/a;->k(III)I

    move-result p1

    iput p1, v0, Lw0/xc;->e:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lw0/k9;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lw0/k9;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final x1(Z)V
    .locals 7

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    if-nez p1, :cond_1

    iget-wide v3, p0, Lcom/ex/auto/MainActivity;->A0:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0xbb8

    cmp-long p1, v3, v5

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    iput-wide v1, p0, Lcom/ex/auto/MainActivity;->A0:J

    :try_start_0
    iget-object p1, p0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lw0/j9;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lw0/j9;-><init>(Landroid/car/hardware/property/CarPropertyManager;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final x2(Z)V
    .locals 3

    const v0, 0x7f09021d

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v1, 0x7f0f00d5

    goto :goto_0

    :cond_0
    const v1, 0x7f0f00d7

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "\ud83d\ude97 "

    invoke-static {v1, v2}, Lo2/k;->r0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09021c

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    const p1, 0x7f05007e

    goto :goto_1

    :cond_1
    const p1, 0x7f050081

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final y(Z)V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    const-string p1, "getString(...)"

    const/4 v0, 0x0

    const v1, 0x7f0f00d8

    invoke-static {v1, v0, p0, p1}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ex/auto/MainActivity;->z:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lw0/pa;

    invoke-direct {v3, v0, v1, p0, p1}, Lw0/pa;-><init>(Landroid/car/hardware/property/CarPropertyManager;ILcom/ex/auto/MainActivity;Z)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final y0()Z
    .locals 3

    const-string v0, " "

    const-string v1, "grep -c "

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lw0/u;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " /proc/mounts"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f40

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->o0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ly1/g;->f0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y1()V
    .locals 0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->v1()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->v1()V

    return-void
.end method

.method public final y2(Ljava/io/File;)Ljava/lang/Long;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final z(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->X0()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/ex/auto/MainActivity;->M0:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    iput-wide v0, p0, Lcom/ex/auto/MainActivity;->M0:J

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz p1, :cond_5

    iget-boolean p1, p1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ex/auto/CentralWatchdogService;->r0()V

    :cond_1
    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lcom/ex/auto/CentralWatchdogService;->b2:Z

    :cond_2
    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz p1, :cond_4

    iget-boolean p1, p1, Lcom/ex/auto/CentralWatchdogService;->c2:Z

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lcom/ex/auto/CentralWatchdogService;->Z1:Z

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/MainActivity;->N0:Ljava/lang/Boolean;

    :cond_4
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->X0()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final z0()Ljava/util/List;
    .locals 7

    const-string v0, "/data/data/com.aurora.store/cache/Downloads"

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n            [ -d "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] || exit 0\n            for pkgdir in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/*/; do\n              [ -d \"$pkgdir\" ] || continue\n              for vcdir in \"$pkgdir\"*/; do\n                [ -f \"${vcdir}base.apk\" ] || continue\n                echo \"${vcdir%/}\"\n              done\n            done\n        "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->o0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    const-string v6, "/data/data/com.aurora.store/cache/Downloads/"

    invoke-static {v5, v6}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ly1/g;->Z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final z1()V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->D0:Ljava/lang/String;

    const-string v3, "n/d"

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-wide v5, p0, Lcom/ex/auto/MainActivity;->F0:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x7530

    cmp-long v2, v5, v7

    if-lez v2, :cond_1

    :cond_0
    iput-wide v0, p0, Lcom/ex/auto/MainActivity;->F0:J

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const-string v1, "%.1f GB"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide/high16 v7, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v3

    :goto_0
    iget-object v1, p0, Lcom/ex/auto/MainActivity;->D0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->D0:Ljava/lang/String;

    const v1, 0x7f090221

    invoke-virtual {p0, v1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->w1:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->v1:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v0}, Lcom/ex/auto/MainActivity;->i1(Ljava/lang/Integer;Ljava/lang/Integer;)V

    const v2, 0x7f090218

    invoke-virtual {p0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/MainActivity;->w2(Ljava/lang/Float;)V

    invoke-virtual {p0, v1}, Lcom/ex/auto/MainActivity;->x2(Z)V

    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/ex/auto/MainActivity;->y:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v4, p0, Lcom/ex/auto/MainActivity;->y:Z

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->u1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p0, Lcom/ex/auto/MainActivity;->R:I

    const v5, 0x7f090179

    invoke-virtual {p0, v5}, Lcom/ex/auto/MainActivity;->L1(I)I

    move-result v5

    if-ne v3, v5, :cond_4

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/ex/auto/MainActivity;->x:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lw0/pa;

    invoke-direct {v5, p0, v0, v4, v2}, Lw0/pa;-><init>(Lcom/ex/auto/MainActivity;Landroid/car/hardware/property/CarPropertyManager;ZI)V

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    iput-boolean v1, p0, Lcom/ex/auto/MainActivity;->y:Z

    :goto_2
    return-void
.end method

.method public final z2(Ljava/io/File;Ljava/lang/String;J)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, p3, v2

    if-lez p2, :cond_1

    cmp-long p2, v0, p3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "APK \u00e9 vc="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", manifesto prometeu "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    if-nez p1, :cond_2

    new-array p1, p2, [Landroid/content/pm/Signature;

    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    array-length p4, p1

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    array-length p4, p1

    move v0, p2

    :goto_1
    if-ge v0, p4, :cond_3

    aget-object v1, p1, v0

    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const-string v2, "digest(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lw0/ya;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lw0/ya;-><init>(I)V

    invoke-static {v1, v2}, Ly1/f;->b0([BLh2/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_4
    if-ge p2, p1, :cond_5

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    add-int/lit8 p2, p2, 0x1

    check-cast p4, Ljava/lang/String;

    const-string v0, "c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8"

    invoke-static {p4, v0}, Lo2/t;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "APK n\u00e3o est\u00e1 assinado com a chave de plataforma"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "APK de outro pacote: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "APK ileg\u00edvel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
