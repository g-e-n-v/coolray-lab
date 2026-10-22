.class public final Lcom/ex/auto/HomeFloatingWidgetsService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final a0:Ljava/util/List;

.field public static volatile b0:Lcom/ex/auto/HomeFloatingWidgetsService;


# instance fields
.field public volatile A:Ljava/lang/Boolean;

.field public B:Landroid/view/View;

.field public C:Landroid/view/View;

.field public D:Landroid/view/View;

.field public E:Landroid/view/View;

.field public F:Landroid/view/View;

.field public G:Landroid/view/View;

.field public H:Landroid/widget/GridLayout;

.field public I:Landroid/widget/LinearLayout;

.field public J:Landroid/widget/LinearLayout;

.field public K:Landroid/widget/FrameLayout;

.field public L:Lw0/u7;

.field public M:Landroid/widget/TextView;

.field public N:Landroid/widget/TextView;

.field public O:Lw0/t7;

.field public P:Landroid/widget/SeekBar;

.field public Q:Lw0/p7;

.field public R:Lc0/f;

.field public S:La1/s;

.field public final T:Lw0/t7;

.field public final U:[I

.field public final V:[I

.field public final W:Ljava/util/List;

.field public final X:Ljava/util/concurrent/ThreadPoolExecutor;

.field public Y:Ljava/util/ArrayList;

.field public final Z:Lw0/t7;

.field public a:Landroid/view/WindowManager;

.field public b:Landroid/content/SharedPreferences;

.field public final c:Landroid/os/Handler;

.field public volatile d:Z

.field public volatile e:Landroid/car/Car;

.field public volatile f:Landroid/car/hardware/property/CarPropertyManager;

.field public final g:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile k:J

.field public l:Z

.field public m:Z

.field public n:Z

.field public volatile o:Ljava/lang/Integer;

.field public volatile p:Ljava/lang/Integer;

.field public volatile q:Ljava/lang/Integer;

.field public volatile r:Ljava/lang/Float;

.field public volatile s:Ljava/lang/Integer;

.field public volatile t:Ljava/lang/Boolean;

.field public volatile u:Ljava/lang/Boolean;

.field public volatile v:Ljava/lang/Boolean;

.field public volatile w:Ljava/lang/Boolean;

.field public volatile x:Ljava/lang/Boolean;

.field public volatile y:Ljava/lang/Integer;

.field public volatile z:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v7, "widget_float_volume_enabled"

    const-string v8, "widget_float_sysinfo_enabled"

    const-string v0, "widget_float_drive_regen_enabled"

    const-string v1, "widget_float_fan_enabled"

    const-string v2, "widget_float_temp_enabled"

    const-string v3, "widget_float_vent_enabled"

    const-string v4, "widget_float_vent_fan_enabled"

    const-string v5, "widget_float_heating_enabled"

    const-string v6, "widget_float_apps_enabled"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    new-instance v0, Lw0/l1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lw0/l1;-><init>(I)V

    const-string v1, "widgets-car-command"

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lw0/t1;->C(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->j:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lw0/t7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lw0/t7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->T:Lw0/t7;

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->U:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->V:[I

    const v1, 0x7f090096

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lx1/a;

    const-string v4, "volante"

    invoke-direct {v3, v4, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v1, 0x7f090088

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lx1/a;

    const-string v5, "vidro_traseiro"

    invoke-direct {v4, v5, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v1, 0x7f090087

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v5, Lx1/a;

    const-string v6, "vidro_max"

    invoke-direct {v5, v6, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v1, 0x7f090097

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lx1/a;

    const-string v7, "parabrisa"

    invoke-direct {v6, v7, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v1, 0x7f09008f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v7, Lx1/a;

    const-string v8, "banco_motorista"

    invoke-direct {v7, v8, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v1, 0x7f090090

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lx1/a;

    const-string v9, "banco_passageiro"

    invoke-direct {v8, v9, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v3 .. v8}, [Lx1/a;

    move-result-object v1

    invoke-static {v1}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->W:Ljava/util/List;

    new-instance v1, Lw0/l1;

    invoke-direct {v1, v0}, Lw0/l1;-><init>(I)V

    const-string v0, "widgets-poll"

    invoke-static {v0, v1, v2}, Lw0/t1;->C(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->X:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lw0/t7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lw0/t7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->Z:Lw0/t7;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0900bd
        0x7f0900be
        0x7f0900bf
        0x7f0900c0
        0x7f0900c1
        0x7f0900c2
        0x7f0900c3
    .end array-data

    :array_1
    .array-data 4
        0x7f0900bd
        0x7f0900be
        0x7f0900bf
        0x7f0900c0
        0x7f0900c1
        0x7f0900c2
        0x7f0900c3
    .end array-data
.end method

.method public static varargs H(Landroid/view/View;[I)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, -0x2

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final a(Lcom/ex/auto/HomeFloatingWidgetsService;)V
    .locals 3

    iget-boolean v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->d:Z

    if-nez v0, :cond_14

    sget-object v0, Lw0/wd;->a:Lw0/wd;

    invoke-static {p0}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "widget_float_drive_regen_enabled"

    const-string v1, "widget_float_drive_regen_pinned"

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->c()V

    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/view/View;

    :cond_2
    const-string v0, "widget_float_fan_enabled"

    const-string v2, "widget_float_fan_pinned"

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/view/View;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->d()V

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/view/View;

    :cond_4
    const-string v0, "widget_float_temp_enabled"

    const-string v2, "widget_float_temp_pinned"

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/view/View;

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->h()V

    :cond_5
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/view/View;

    :cond_6
    const-string v0, "widget_float_vent_enabled"

    const-string v2, "widget_float_vent_pinned"

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->E:Landroid/view/View;

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->j()V

    :cond_7
    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->E:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->E:Landroid/view/View;

    :cond_8
    const-string v0, "widget_float_vent_fan_enabled"

    const-string v2, "widget_float_vent_fan_pinned"

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/view/View;

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->i()V

    :cond_9
    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/view/View;

    :cond_a
    const-string v0, "widget_float_heating_enabled"

    const-string v2, "widget_float_heating_pinned"

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->G:Landroid/view/View;

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->e()V

    :cond_b
    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->G:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->G:Landroid/view/View;

    :cond_c
    const-string v0, "widget_float_apps_enabled"

    const-string v2, "widget_float_apps_pinned"

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->H:Landroid/widget/GridLayout;

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->b()V

    :cond_d
    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->H:Landroid/widget/GridLayout;

    if-eqz v0, :cond_e

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->H:Landroid/widget/GridLayout;

    :cond_e
    const-string v0, "widget_float_volume_enabled"

    const-string v1, "widget_float_volume_pinned"

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->I:Landroid/widget/LinearLayout;

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->k()V

    :cond_f
    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->I:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->w()V

    :cond_10
    const-string v0, "widget_float_sysinfo_enabled"

    const-string v1, "widget_float_sysinfo_pinned"

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->J:Landroid/widget/LinearLayout;

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->g()V

    :cond_11
    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->J:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->u()V

    :cond_12
    invoke-static {p0}, Lw0/t1;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_13
    return-void

    :cond_14
    :goto_0
    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->t()V

    return-void
.end method

.method public static f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILw0/x6;I)V
    .locals 14

    move-object/from16 v10, p2

    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    move v2, v0

    goto :goto_0

    :cond_0
    move/from16 v2, p5

    :goto_0
    and-int/lit8 v0, p7, 0x40

    const/4 v12, 0x0

    if-eqz v0, :cond_1

    move-object v11, v12

    goto :goto_1

    :cond_1
    move-object/from16 v11, p6

    :goto_1
    const v0, 0x800033

    move/from16 v1, p3

    move/from16 v3, p4

    invoke-static {p0, v10, v0, v1, v3}, Lw0/e8;->G(Landroid/content/Context;Ljava/lang/String;III)Lw0/yd;

    move-result-object v0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x108

    const/4 v6, -0x3

    const/4 v3, -0x2

    const/16 v4, 0x7f6

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v2, v0, Lw0/yd;->a:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v3, v0, Lw0/yd;->b:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Lw0/yd;->c:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v0, 0x30

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "dimen"

    const-string v3, "android"

    const-string v4, "status_bar_height"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    :cond_2
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v0

    :goto_2
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v2, v0, :cond_3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_3
    const v0, 0x7f090330

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v3, Li2/k;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Li2/k;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Li2/l;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v7, Li2/l;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, Li2/j;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move-object v6, v1

    new-instance v1, Li2/j;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw0/k7;

    move-object v2, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v11}, Lw0/k7;-><init>(Li2/j;Lcom/ex/auto/HomeFloatingWidgetsService;Li2/k;Li2/k;Li2/l;Landroid/view/WindowManager$LayoutParams;Li2/l;Li2/j;Landroid/view/View;Ljava/lang/String;Lh2/a;)V

    move-object v1, v6

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :try_start_0
    iget-object p0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->a:Landroid/view/WindowManager;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_4
    const-string p0, "wm"

    invoke-static {p0}, Li2/g;->h(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    const-string p1, "addOverlayView("

    const-string v0, "): "

    invoke-static {p1, v10, v0}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "HomeFloatingWidgets"

    invoke-static {p0, p1, v0}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static final l(Lc0/f;Landroid/widget/ImageView;Lcom/ex/auto/HomeFloatingWidgetsService;)V
    .locals 1

    invoke-virtual {p0}, Lc0/f;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    const v0, 0x7f0700dc

    goto :goto_0

    :cond_0
    const v0, 0x7f0700db

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p0, :cond_1

    const p0, -0xadae

    goto :goto_1

    :cond_1
    const p0, 0x7f05003f

    invoke-virtual {p2, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public static final m(Lcom/ex/auto/HomeFloatingWidgetsService;FZLc0/f;Landroid/widget/ImageView;Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p5, 0x7f05003f

    invoke-virtual {p0, p5}, Landroid/content/Context;->getColor(I)I

    move-result p5

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p5, 0x41d00000    # 26.0f

    mul-float/2addr p5, p1

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p5, 0x11

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p5, 0x0

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {v0, p5, p5, p5, p5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    if-eqz p2, :cond_0

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result p2

    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p2, p5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p5, 0x2

    invoke-virtual {p0, p5}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    if-ge p1, p5, :cond_1

    goto :goto_1

    :cond_1
    move p5, p1

    :goto_1
    const p1, -0x66000001

    invoke-virtual {p2, p5, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lw0/g7;

    invoke-direct {p1, p3, p6, p4, p0}, Lw0/g7;-><init>(Lc0/f;ILandroid/widget/ImageView;Lcom/ex/auto/HomeFloatingWidgetsService;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public final A(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->p:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->I()V

    sget-object v0, Lw0/v7;->a:[I

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lw0/v7;->c(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lw0/c7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lw0/c7;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    return-void
.end method

.method public final B(I)V
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->N()V

    new-instance v0, Lw0/b7;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lw0/b7;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    return-void
.end method

.method public final C(I)V
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->M()V

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->N()V

    new-instance v0, Lw0/b7;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lw0/b7;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    return-void
.end method

.method public final D(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lw0/wd;->a:Lw0/wd;

    invoke-static {p0}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "prefs"

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->m:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Z

    if-eqz p1, :cond_3

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    return v1
.end method

.method public final E(I)V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p1

    const/4 p1, 0x0

    const/4 v2, 0x7

    invoke-static {v1, p1, v2}, Lk1/a;->k(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->J()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_1

    new-instance v0, Lw0/b7;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lw0/b7;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lw0/c7;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lw0/c7;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    return-void
.end method

.method public final F(I)V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p1

    const/4 p1, 0x0

    const/4 v2, 0x7

    invoke-static {v1, p1, v2}, Lk1/a;->k(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->M()V

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->J()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_1

    new-instance v0, Lw0/b7;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lw0/b7;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lw0/c7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lw0/c7;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    return-void
.end method

.method public final G(F)V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->r:Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x41880000    # 17.0f

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {p1, v1, v2}, Lk1/a;->j(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->r:Ljava/lang/Float;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->L()V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lw0/d7;

    invoke-direct {v0, p1}, Lw0/d7;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    return-void

    :cond_2
    new-instance v0, Lw0/e7;

    invoke-direct {v0, p0, p1}, Lw0/e7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;F)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    return-void
.end method

.method public final I()V
    .locals 6

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "drive_regen"

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->O(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->o:Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v4, 0x22010101

    if-ne v1, v4, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    const v4, 0x7f090084

    const v5, 0x7f09030d

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->o:Ljava/lang/Integer;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v4, 0x22010102

    if-ne v1, v4, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    const v4, 0x7f090083

    const v5, 0x7f09030c

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->o:Ljava/lang/Integer;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v4, 0x22010103

    if-ne v1, v4, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    :goto_4
    move v1, v2

    :goto_5
    const v4, 0x7f090085

    const v5, 0x7f09030f

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->p:Ljava/lang/Integer;

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v4, 0x20020501

    if-ne v1, v4, :cond_8

    move v1, v3

    goto :goto_7

    :cond_8
    :goto_6
    move v1, v2

    :goto_7
    const v4, 0x7f09008d

    const v5, 0x7f090317

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->p:Ljava/lang/Integer;

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v4, 0x20020502

    if-ne v1, v4, :cond_a

    move v1, v3

    goto :goto_9

    :cond_a
    :goto_8
    move v1, v2

    :goto_9
    const v4, 0x7f09008e

    const v5, 0x7f090318

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->p:Ljava/lang/Integer;

    if-nez v1, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v4, 0x20020503

    if-ne v1, v4, :cond_c

    move v2, v3

    :cond_c
    :goto_a
    const v1, 0x7f09008c

    const v3, 0x7f090316

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    return-void
.end method

.method public final J()V
    .locals 10

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const v1, 0x7f090330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "fan"

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->O(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f0902fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "\u2014"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->U:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1
    if-ge v5, v3, :cond_4

    aget v7, v2, v5

    add-int/lit8 v8, v6, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v6, v9, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v6, :cond_3

    const v6, 0x7f070114

    goto :goto_3

    :cond_3
    const v6, 0x7f070113

    :goto_3
    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_1

    :cond_4
    :goto_4
    return-void
.end method

.method public final K()V
    .locals 11

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->G:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "heating"

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->O(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    const-string v3, "widget_heating_icons"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw0/jh;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->W:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx1/a;

    iget-object v5, v3, Lx1/a;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v3, v3, Lx1/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f090096

    const v5, 0x7f090321

    invoke-virtual {p0, v0, v3, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0f03a2

    invoke-virtual {p0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f090088

    const v5, 0x7f090311

    invoke-virtual {p0, v0, v3, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0f03a4

    invoke-virtual {p0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f090087

    const v5, 0x7f090310

    invoke-virtual {p0, v0, v3, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0f039e

    invoke-virtual {p0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f090097

    const v3, 0x7f090323

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f03a3

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    const/4 v2, 0x1

    if-lez v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v4

    :goto_3
    const v3, 0x7f09008f

    const v5, 0x7f090319

    invoke-virtual {p0, v0, v3, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f03a0

    invoke-virtual {p0, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Ljava/lang/Integer;

    const v7, 0x7f0f039d

    const/4 v8, 0x4

    const-string v9, "\u2014"

    if-nez v6, :cond_6

    move-object v6, v9

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v10, v8, :cond_7

    invoke-virtual {p0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_7
    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_5

    :cond_8
    move v1, v4

    :goto_5
    if-lez v1, :cond_9

    move v4, v2

    :cond_9
    const v1, 0x7f090090

    const v2, 0x7f09031a

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f03a1

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Ljava/lang/Integer;

    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v8, :cond_b

    invoke-virtual {p0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_6
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_c
    const-string v0, "prefs"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final L()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "temp"

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->O(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f090309

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->r:Ljava/lang/Float;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "\u2014"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final M()V
    .locals 10

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_10

    :cond_0
    const v1, 0x7f090330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "vent_fan"

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->O(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    const v4, 0x7f090091

    const v5, 0x7f09031b

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    const v4, 0x7f090093

    const v5, 0x7f09031d

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    :goto_4
    move v1, v2

    :goto_5
    const v4, 0x7f090092

    const v5, 0x7f09031c

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_8

    move v1, v3

    goto :goto_7

    :cond_8
    :goto_6
    move v1, v2

    :goto_7
    const v4, 0x7f090095

    const v5, 0x7f090320

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_a

    move v1, v3

    goto :goto_9

    :cond_a
    :goto_8
    move v1, v2

    :goto_9
    const v4, 0x7f090094

    const v5, 0x7f09031e

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v5, 0x7f09008a

    const v6, 0x7f090313

    invoke-virtual {p0, v0, v5, v6, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    const v1, 0x7f0902fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Integer;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    goto :goto_a

    :cond_b
    const-string v6, "\u2014"

    :goto_a
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->A:Ljava/lang/Boolean;

    invoke-static {v5, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f090086

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v4, :cond_c

    const v6, 0x7f070111

    goto :goto_b

    :cond_c
    const v6, 0x7f070110

    :goto_b
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v4, :cond_d

    const v4, 0x7f050038

    goto :goto_c

    :cond_d
    const v4, 0x7f050041

    :goto_c
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->V:[I

    array-length v4, v1

    move v5, v2

    move v6, v5

    :goto_d
    if-ge v5, v4, :cond_10

    aget v7, v1, v5

    add-int/lit8 v8, v6, 0x1

    iget-object v9, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Integer;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Integer;

    invoke-static {v9}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v6, v9, :cond_e

    move v6, v3

    goto :goto_e

    :cond_e
    move v6, v2

    :goto_e
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v6, :cond_f

    const v6, 0x7f070114

    goto :goto_f

    :cond_f
    const v6, 0x7f070113

    :goto_f
    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_d

    :cond_10
    :goto_10
    return-void
.end method

.method public final N()V
    .locals 6

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->E:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "vent"

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->O(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    const v4, 0x7f090091

    const v5, 0x7f09031b

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    const v4, 0x7f090093

    const v5, 0x7f09031d

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    :goto_4
    move v1, v2

    :goto_5
    const v4, 0x7f090092

    const v5, 0x7f09031c

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_8

    move v1, v3

    goto :goto_7

    :cond_8
    :goto_6
    move v1, v2

    :goto_7
    const v4, 0x7f090095

    const v5, 0x7f090320

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_a

    move v2, v3

    :cond_a
    :goto_8
    const v1, 0x7f090094

    const v3, 0x7f09031e

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f09008a

    const v3, 0x7f090313

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    return-void
.end method

.method public final O(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lw0/v7;->a:[I

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "drive_regen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "widget_float_drive_regen_alpha_pct"

    goto :goto_1

    :sswitch_1
    const-string v1, "vent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "widget_float_vent_alpha_pct"

    goto :goto_1

    :sswitch_2
    const-string v1, "temp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "widget_float_temp_alpha_pct"

    goto :goto_1

    :sswitch_3
    const-string v1, "apps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "widget_float_apps_alpha_pct"

    goto :goto_1

    :sswitch_4
    const-string v1, "fan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "widget_float_fan_alpha_pct"

    goto :goto_1

    :sswitch_5
    const-string v1, "volume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const-string p1, "widget_float_volume_alpha_pct"

    goto :goto_1

    :sswitch_6
    const-string v1, "sysinfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const-string p1, "widget_float_sysinfo_alpha_pct"

    goto :goto_1

    :sswitch_7
    const-string v1, "vent_fan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_0
    const-string p1, "widget_float_heating_alpha_pct"

    goto :goto_1

    :cond_7
    const-string p1, "widget_float_vent_fan_alpha_pct"

    :goto_1
    const/16 v1, 0x64

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lw0/v7;->b(I)I

    move-result p1

    return p1

    :cond_8
    const-string p1, "prefs"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x7d1b7b77 -> :sswitch_7
        -0x67930b05 -> :sswitch_6
        -0x305518e6 -> :sswitch_5
        0x18b13 -> :sswitch_4
        0x2dca72 -> :sswitch_3
        0x3643d4 -> :sswitch_2
        0x372cb5 -> :sswitch_1
        0x2b4e1d48 -> :sswitch_0
    .end sparse-switch
.end method

.method public final P(Ljava/lang/String;)F
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "drive_regen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "widget_float_drive_regen_size_pct"

    goto :goto_1

    :sswitch_1
    const-string v1, "vent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "widget_float_vent_size_pct"

    goto :goto_1

    :sswitch_2
    const-string v1, "temp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "widget_float_temp_size_pct"

    goto :goto_1

    :sswitch_3
    const-string v1, "apps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "widget_float_apps_size_pct"

    goto :goto_1

    :sswitch_4
    const-string v1, "fan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "widget_float_fan_size_pct"

    goto :goto_1

    :sswitch_5
    const-string v1, "volume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const-string p1, "widget_float_volume_size_pct"

    goto :goto_1

    :sswitch_6
    const-string v1, "sysinfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const-string p1, "widget_float_sysinfo_size_pct"

    goto :goto_1

    :sswitch_7
    const-string v1, "vent_fan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_0
    const-string p1, "widget_float_heating_size_pct"

    goto :goto_1

    :cond_7
    const-string p1, "widget_float_vent_fan_size_pct"

    :goto_1
    const/16 v1, 0x64

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x32

    const/16 v1, 0xc8

    invoke-static {p1, v0, v1}, Lk1/a;->k(III)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const v0, 0x3fcccccd    # 1.6f

    mul-float/2addr p1, v0

    return p1

    :cond_8
    const-string p1, "prefs"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x7d1b7b77 -> :sswitch_7
        -0x67930b05 -> :sswitch_6
        -0x305518e6 -> :sswitch_5
        0x18b13 -> :sswitch_4
        0x2dca72 -> :sswitch_3
        0x3643d4 -> :sswitch_2
        0x372cb5 -> :sswitch_1
        0x2b4e1d48 -> :sswitch_0
    .end sparse-switch
.end method

.method public final Q(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lw0/v7;->o(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
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

.method public final b()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    const-string v2, "prefs"

    if-eqz v1, :cond_c

    const-string v4, "widget_apps_list"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x6

    invoke-static {v5, v1, v4, v6}, Lo2/k;->v0(Ljava/lang/String;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :cond_2
    :goto_2
    if-ge v8, v7, :cond_3

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_b

    const-string v7, "widget_apps_rows"

    const/4 v8, 0x2

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, 0x1

    invoke-static {v5, v7, v6}, Lk1/a;->k(III)I

    move-result v5

    iget-object v9, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v9, :cond_a

    const-string v10, "widget_apps_cols"

    const/4 v11, 0x3

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9, v7, v6}, Lk1/a;->k(III)I

    move-result v9

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x2e

    invoke-virtual {v0, v11}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v11

    const/16 v12, 0x4a

    invoke-virtual {v0, v12}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v12

    iget-object v13, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v13, :cond_9

    const-string v14, "widget_float_apps_alpha_pct"

    const/16 v15, 0x64

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13, v4, v15}, Lk1/a;->k(III)I

    move-result v13

    iget-object v14, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v14, :cond_8

    const-string v2, "widget_float_apps_size_pct"

    invoke-interface {v14, v2, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v14, 0x32

    move/from16 v16, v15

    const/16 v15, 0xc8

    invoke-static {v2, v14, v15}, Lk1/a;->k(III)I

    move-result v2

    int-to-float v2, v2

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v2, v14

    new-instance v14, Landroid/widget/GridLayout;

    invoke-direct {v14, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    const v15, 0x7f090330

    invoke-virtual {v14, v15}, Landroid/view/View;->setId(I)V

    invoke-virtual {v14, v5}, Landroid/widget/GridLayout;->setRowCount(I)V

    invoke-virtual {v14, v9}, Landroid/widget/GridLayout;->setColumnCount(I)V

    const/16 v15, 0x8

    invoke-virtual {v0, v15}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v15

    invoke-virtual {v14, v15, v15, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    new-instance v15, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v8, 0x12

    invoke-virtual {v0, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v15, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v8, 0x7f0500f5

    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    mul-int/lit16 v13, v13, 0xe6

    div-int/lit8 v13, v13, 0x64

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v13, v3, v6, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v15, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v4

    move v8, v6

    :goto_3
    if-ge v8, v3, :cond_5

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v8, v8, 0x1

    check-cast v13, Ljava/lang/String;

    mul-int v15, v5, v9

    if-ge v6, v15, :cond_5

    invoke-virtual {v10, v13}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    if-nez v15, :cond_4

    move/from16 v19, v3

    move v3, v7

    :goto_4
    move-object/from16 v18, v1

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v17, v8

    move/from16 v22, v9

    const/4 v5, 0x2

    const/4 v6, 0x6

    goto/16 :goto_7

    :cond_4
    :try_start_0
    invoke-virtual {v10, v13}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v7}, Li2/g;->b(Ljava/lang/Object;)V

    move-object/from16 v18, v1

    :try_start_1
    invoke-virtual {v10, v13, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-object v1, v13

    :goto_5
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move/from16 v19, v3

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x4

    move/from16 v20, v5

    invoke-virtual {v0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v5

    move/from16 v21, v6

    move/from16 v17, v8

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    invoke-virtual {v0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v3

    move/from16 v22, v9

    invoke-virtual {v0, v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v9

    invoke-virtual {v4, v5, v8, v3, v9}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const v5, 0x33ffffff

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    const/4 v8, 0x0

    invoke-direct {v3, v5, v8, v8}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/view/View;->setClickable(Z)V

    new-instance v5, Lw0/y6;

    const/4 v8, 0x1

    invoke-direct {v5, v15, v0, v13, v8}, Lw0/y6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/GridLayout$LayoutParams;

    div-int v5, v21, v22

    invoke-static {v5}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    rem-int v7, v21, v22

    invoke-static {v7}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    iput v12, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    invoke-virtual {v0, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    invoke-virtual {v0, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v9

    invoke-virtual {v0, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v13

    invoke-virtual {v1, v7, v8, v9, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v14, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v21, 0x1

    move v6, v1

    move v7, v3

    move/from16 v8, v17

    move-object/from16 v1, v18

    move/from16 v3, v19

    move/from16 v5, v20

    :goto_6
    move/from16 v9, v22

    const/4 v4, 0x0

    goto/16 :goto_3

    :catch_1
    move/from16 v19, v3

    const/4 v3, 0x1

    goto/16 :goto_4

    :goto_7
    move v7, v3

    move/from16 v8, v17

    move-object/from16 v1, v18

    move/from16 v3, v19

    move/from16 v5, v20

    move/from16 v6, v21

    goto :goto_6

    :cond_5
    move/from16 v21, v6

    if-nez v21, :cond_6

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f037b

    invoke-virtual {v0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f05003f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v4

    invoke-virtual {v0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v5

    invoke-virtual {v0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    invoke-virtual {v0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v3

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v2, v1

    if-nez v1, :cond_7

    goto :goto_8

    :cond_7
    invoke-virtual {v0, v14, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->y(Landroid/view/View;F)V

    :goto_8
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v3

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v4

    const/4 v6, 0x0

    const/16 v7, 0x60

    const-string v2, "widget_float_apps"

    const/4 v5, 0x0

    move-object v1, v14

    invoke-static/range {v0 .. v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILw0/x6;I)V

    iput-object v1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->H:Landroid/widget/GridLayout;

    return-void

    :cond_8
    invoke-static {v2}, Li2/g;->h(Ljava/lang/String;)V

    const/16 v16, 0x0

    throw v16

    :cond_9
    const/16 v16, 0x0

    invoke-static {v2}, Li2/g;->h(Ljava/lang/String;)V

    throw v16

    :cond_a
    const/16 v16, 0x0

    invoke-static {v2}, Li2/g;->h(Ljava/lang/String;)V

    throw v16

    :cond_b
    const/16 v16, 0x0

    invoke-static {v2}, Li2/g;->h(Ljava/lang/String;)V

    throw v16

    :cond_c
    const/16 v16, 0x0

    invoke-static {v2}, Li2/g;->h(Ljava/lang/String;)V

    throw v16
.end method

.method public final c()V
    .locals 11

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v4, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->H(Landroid/view/View;[I)V

    const-string v0, "drive_regen"

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->P(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->y(Landroid/view/View;F)V

    const v0, 0x7f09030e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f039a

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090315

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f03a6

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090317

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f03a8

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090318

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f03a9

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090316

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f03a7

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090084

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w6;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090083

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w6;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090085

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w6;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09008d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w6;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09008e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w6;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09008c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w6;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    const/4 v9, 0x0

    const/16 v10, 0x60

    const-string v5, "widget_float_drive_regen"

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v10}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILw0/x6;I)V

    iput-object v4, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->I()V

    return-void

    :array_0
    .array-data 4
        0x7f090084
        0x7f090083
        0x7f090085
        0x7f09008d
        0x7f09008e
        0x7f09008c
    .end array-data
.end method

.method public final d()V
    .locals 11

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c007c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    const v0, 0x7f0900da

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->H(Landroid/view/View;[I)V

    const v0, 0x7f0900d9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "fan"

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->P(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->y(Landroid/view/View;F)V

    const v0, 0x7f0902fd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f039c

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090068

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w6;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090069

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w6;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    const/16 v0, 0x118

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    const/4 v9, 0x0

    const/16 v10, 0x60

    const-string v5, "widget_float_fan"

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v10}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILw0/x6;I)V

    iput-object v4, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->J()V

    return-void
.end method

.method public final e()V
    .locals 11

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    const-string v0, "heating"

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->P(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->y(Landroid/view/View;F)V

    const v1, 0x7f090312

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f039f

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090096

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lw0/w6;

    const/16 v3, 0x15

    invoke-direct {v2, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090088

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lw0/w6;

    const/16 v3, 0x16

    invoke-direct {v2, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090087

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lw0/w6;

    const/16 v3, 0x17

    invoke-direct {v2, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090097

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lw0/w6;

    const/16 v3, 0x18

    invoke-direct {v2, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09008f

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lw0/w6;

    const/16 v3, 0x19

    invoke-direct {v2, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090090

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lw0/w6;

    const/16 v3, 0x1a

    invoke-direct {v2, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0xe6

    int-to-float v1, v1

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->P(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    const/16 v0, 0x2f8

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    const/4 v9, 0x0

    const/16 v10, 0x40

    const-string v5, "widget_float_heating"

    move-object v3, p0

    invoke-static/range {v3 .. v10}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILw0/x6;I)V

    iput-object v4, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->G:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->K()V

    return-void
.end method

.method public final g()V
    .locals 13

    sget-object v0, Lw0/ug;->a:Lo2/h;

    const/4 v0, 0x0

    sput-object v0, Lw0/ug;->b:Lx1/a;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    const-string v2, "prefs"

    if-eqz v1, :cond_2

    const-string v3, "widget_float_sysinfo_alpha_pct"

    const/16 v4, 0x64

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v4}, Lk1/a;->k(III)I

    move-result v1

    iget-object v5, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_1

    const-string v0, "widget_float_sysinfo_size_pct"

    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x32

    const/16 v5, 0xc8

    invoke-static {v0, v2, v5}, Lk1/a;->k(III)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090330

    invoke-virtual {v6, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v5

    const/16 v7, 0xc

    invoke-virtual {p0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v9

    invoke-virtual {p0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    invoke-virtual {v6, v5, v8, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v7, 0x12

    invoke-virtual {p0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v7, 0x7f0500f5

    invoke-virtual {p0, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    mul-int/lit16 v1, v1, 0xe6

    div-int/2addr v1, v4

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v1, v4, v8, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f05003f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41b00000    # 22.0f

    mul-float/2addr v5, v0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const-string v7, "\ud83c\udf21 --\u00b0C"

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const-string v3, "CPU --%"

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->M:Landroid/widget/TextView;

    iput-object v7, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->N:Landroid/widget/TextView;

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v9

    new-instance v11, Lw0/x6;

    const/4 v0, 0x1

    invoke-direct {v11, p0, v0}, Lw0/x6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    const/16 v12, 0x20

    const-string v7, "widget_float_sysinfo"

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v12}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILw0/x6;I)V

    iput-object v6, v5, Lcom/ex/auto/HomeFloatingWidgetsService;->J:Landroid/widget/LinearLayout;

    iget-object v0, v5, Lcom/ex/auto/HomeFloatingWidgetsService;->O:Lw0/t7;

    if-eqz v0, :cond_0

    iget-object v1, v5, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lw0/t7;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lw0/t7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    iput-object v0, v5, Lcom/ex/auto/HomeFloatingWidgetsService;->O:Lw0/t7;

    iget-object v1, v5, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    move-object v5, p0

    invoke-static {v2}, Li2/g;->h(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v5, p0

    invoke-static {v2}, Li2/g;->h(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()V
    .locals 11

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    const v0, 0x7f0902d4

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->H(Landroid/view/View;[I)V

    const v0, 0x7f0902d3

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "temp"

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->P(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->y(Landroid/view/View;F)V

    const v0, 0x7f090307

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f03aa

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090071

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w6;

    const/16 v2, 0x1d

    invoke-direct {v1, p0, v2}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090072

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/l7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lw0/l7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    const/16 v0, 0x1b8

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    const/4 v9, 0x0

    const/16 v10, 0x60

    const-string v5, "widget_float_temp"

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v10}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILw0/x6;I)V

    iput-object v4, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->L()V

    return-void
.end method

.method public final i()V
    .locals 11

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    const-string v0, "vent_fan"

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->P(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->y(Landroid/view/View;F)V

    const v1, 0x7f090091

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lw0/w6;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090093

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lw0/w6;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090092

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lw0/w6;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090095

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lw0/w6;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090094

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lw0/w6;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09008a

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lw0/w6;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090068

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lw0/w6;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090069

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lw0/w6;

    const/16 v3, 0xb

    invoke-direct {v2, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090086

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lw0/w6;

    const/16 v3, 0xc

    invoke-direct {v2, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x104

    int-to-float v1, v1

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->P(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    const/16 v0, 0x370

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    const/4 v9, 0x0

    const/16 v10, 0x40

    const-string v5, "widget_float_vent_fan"

    move-object v3, p0

    invoke-static/range {v3 .. v10}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILw0/x6;I)V

    iput-object v4, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->M()V

    return-void
.end method

.method public final j()V
    .locals 11

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v4, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->H(Landroid/view/View;[I)V

    const-string v0, "vent"

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->P(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->y(Landroid/view/View;F)V

    const v0, 0x7f09031f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f03af

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09031b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f03ab

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09031d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f03ad

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09031c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f03ac

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090320

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f03b1

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09031e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f03ae

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090313

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f03a5

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->Q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090091

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/l7;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lw0/l7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090093

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/l7;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lw0/l7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090092

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w6;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090095

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w6;

    invoke-direct {v1, p0, v2}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090094

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w6;

    invoke-direct {v1, p0, v3}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09008a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lw0/w6;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    const/4 v9, 0x0

    const/16 v10, 0x60

    const-string v5, "widget_float_vent"

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v10}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILw0/x6;I)V

    iput-object v4, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->E:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->N()V

    return-void

    :array_0
    .array-data 4
        0x7f090091
        0x7f090093
        0x7f090092
        0x7f090095
        0x7f090094
        0x7f09008a
    .end array-data
.end method

.method public final k()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->R:Lc0/f;

    const/4 v7, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lc0/f;

    invoke-direct {v1, v0}, Lc0/f;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;)V

    iput-object v1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->R:Lc0/f;

    new-instance v2, Lw0/x6;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lw0/x6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    :try_start_0
    new-instance v3, Lw0/g1;

    invoke-direct {v3, v1, v2}, Lw0/g1;-><init>(Lc0/f;Lw0/x6;)V

    const-wide/16 v4, 0x0

    invoke-static {v0, v7, v4, v5, v3}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v3

    iput-object v3, v1, Lc0/f;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {v2}, Lw0/x6;->a()Ljava/lang/Object;

    :cond_0
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Lc0/f;->d()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3}, Lc0/f;->f()I

    move-result v2

    iget-object v4, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    const-string v5, "prefs"

    if-eqz v4, :cond_9

    const-string v6, "widget_volume_vertical"

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v6, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_8

    const-string v9, "widget_float_volume_alpha_pct"

    const/16 v10, 0x64

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6, v8, v10}, Lk1/a;->k(III)I

    move-result v6

    iget-object v9, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v9, :cond_7

    const-string v11, "widget_float_volume_size_pct"

    invoke-interface {v9, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/16 v11, 0x32

    const/16 v12, 0xc8

    invoke-static {v9, v11, v12}, Lk1/a;->k(III)I

    move-result v9

    int-to-float v9, v9

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v9, v11

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v12, 0x7f090330

    invoke-virtual {v11, v12}, Landroid/view/View;->setId(I)V

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v13, 0xe

    invoke-virtual {v0, v13}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v14

    const/16 v15, 0xc

    move/from16 v16, v10

    invoke-virtual {v0, v15}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v10

    invoke-virtual {v0, v13}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v13

    invoke-virtual {v0, v15}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v15

    invoke-virtual {v11, v14, v10, v13, v15}, Landroid/view/View;->setPadding(IIII)V

    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v13, 0x12

    invoke-virtual {v0, v13}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v10, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v13, 0x7f0500f5

    invoke-virtual {v0, v13}, Landroid/content/Context;->getColor(I)I

    move-result v13

    mul-int/lit16 v6, v6, 0xe6

    div-int/lit8 v6, v6, 0x64

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v14

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v6, v14, v15, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v10, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v11, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v6, 0x1c

    invoke-virtual {v0, v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    float-to-int v6, v6

    move v10, v2

    move v2, v4

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v3, v4, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->l(Lc0/f;Landroid/widget/ImageView;Lcom/ex/auto/HomeFloatingWidgetsService;)V

    new-instance v6, Lw0/y6;

    const/4 v13, 0x0

    invoke-direct {v6, v3, v0, v4, v13}, Lw0/y6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lw0/p7;

    invoke-direct {v6, v3, v4, v0}, Lw0/p7;-><init>(Lc0/f;Landroid/widget/ImageView;Lcom/ex/auto/HomeFloatingWidgetsService;)V

    iput-object v6, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Lw0/p7;

    iget-object v6, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_6

    const-string v5, "widget_volume_signs"

    invoke-interface {v6, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_2

    const-string v5, "+"

    const/4 v6, 0x1

    move v1, v9

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->m(Lcom/ex/auto/HomeFloatingWidgetsService;FZLc0/f;Landroid/widget/ImageView;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v5, "\u2212"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->m(Lcom/ex/auto/HomeFloatingWidgetsService;FZLc0/f;Landroid/widget/ImageView;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    move v1, v9

    const-string v5, "\u2212"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->m(Lcom/ex/auto/HomeFloatingWidgetsService;FZLc0/f;Landroid/widget/ImageView;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v5, "+"

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->m(Lcom/ex/auto/HomeFloatingWidgetsService;FZLc0/f;Landroid/widget/ImageView;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    iput-object v7, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->P:Landroid/widget/SeekBar;

    goto/16 :goto_2

    :cond_3
    new-instance v5, Lw0/q7;

    invoke-direct {v5, v3, v4, v0}, Lw0/q7;-><init>(Lc0/f;Landroid/widget/ImageView;Lcom/ex/auto/HomeFloatingWidgetsService;)V

    const/16 v3, 0xd2

    invoke-virtual {v0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    const/16 v6, 0x30

    invoke-virtual {v0, v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    float-to-int v6, v6

    const/16 v7, 0xa

    if-nez v2, :cond_4

    new-instance v2, Landroid/widget/SeekBar;

    invoke-direct {v2, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v2, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v1, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->P:Landroid/widget/SeekBar;

    goto :goto_2

    :cond_4
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    iput v7, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/SeekBar;

    invoke-direct {v7, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v7, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v7, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->P:Landroid/widget/SeekBar;

    :goto_2
    iget-object v1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->S:La1/s;

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, La1/s;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, La1/s;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->S:La1/s;

    :try_start_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_3
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v3

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v4

    const/4 v6, 0x0

    const/16 v7, 0x60

    const-string v2, "widget_float_volume"

    const/4 v5, 0x0

    move-object v1, v11

    invoke-static/range {v0 .. v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILw0/x6;I)V

    iput-object v1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->I:Landroid/widget/LinearLayout;

    return-void

    :cond_6
    invoke-static {v5}, Li2/g;->h(Ljava/lang/String;)V

    throw v7

    :cond_7
    invoke-static {v5}, Li2/g;->h(Ljava/lang/String;)V

    throw v7

    :cond_8
    invoke-static {v5}, Li2/g;->h(Ljava/lang/String;)V

    throw v7

    :cond_9
    invoke-static {v5}, Li2/g;->h(Ljava/lang/String;)V

    throw v7
.end method

.method public final n(Landroid/view/View;IIZ)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p4, :cond_0

    const v0, 0x7f070111

    goto :goto_0

    :cond_0
    const v0, 0x7f070112

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p4, :cond_1

    const p2, 0x7f050038

    goto :goto_1

    :cond_1
    const p2, 0x7f050041

    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final o(Z)V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Ljava/lang/Integer;

    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v1

    if-le v3, v0, :cond_3

    const/4 v3, 0x0

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Ljava/lang/Integer;

    goto :goto_2

    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Ljava/lang/Integer;

    :goto_2
    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->K()V

    new-instance p1, Lw0/h7;

    invoke-direct {p1, v2, v3}, Lw0/h7;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    return-void

    :cond_5
    new-instance v0, Lw0/i7;

    invoke-direct {v0, p1, p0, v2}, Lw0/i7;-><init>(ZLcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

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

    sput-object p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b0:Lcom/ex/auto/HomeFloatingWidgetsService;

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->a:Landroid/view/WindowManager;

    const v0, 0x7f0f03be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(...)"

    invoke-static {v3, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0f03bd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x30

    const-string v2, "home_floating_widgets"

    const v5, 0x1080039

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lw0/t1;->E(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    const/16 v2, 0x76

    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :try_start_0
    new-instance v0, La1/p;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, La1/p;-><init>(Landroid/content/ContextWrapper;I)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {p0, v2, v3, v4, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/Car;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    iget-object v2, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->Z:Lw0/t7;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    iget-object v2, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->T:Lw0/t7;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "HomeFloatingWidgets"

    const-string v2, "HomeFloatingWidgetsService iniciado"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->d:Z

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x0

    sput-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->b0:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->X:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->S:La1/s;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->S:La1/s;

    :try_start_1
    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/Car;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->p()V

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->t()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->L:Lw0/u7;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->L:Lw0/u7;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->K:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v1, "wm"

    invoke-static {v1}, Li2/g;->h(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->K:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final q(I)I
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

.method public final r(Lh2/a;)V
    .locals 2

    new-instance v0, La1/i;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1, p1}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->R:Lc0/f;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->P:Landroid/widget/SeekBar;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lc0/f;->d()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lc0/f;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Lw0/p7;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lw0/p7;->a()Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/view/View;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/view/View;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/view/View;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->E:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->E:Landroid/view/View;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/view/View;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->G:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->G:Landroid/view/View;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->H:Landroid/widget/GridLayout;

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->H:Landroid/widget/GridLayout;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->w()V

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->u()V

    return-void
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->O:Lw0/t7;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->O:Lw0/t7;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->p()V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->J:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->J:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->M:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->N:Landroid/widget/TextView;

    return-void
.end method

.method public final v(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    return-void

    :cond_1
    const-string p1, "wm"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->I:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->I:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->P:Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Lw0/p7;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->S:La1/s;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->S:La1/s;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->R:Lc0/f;

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v2, v1, Lc0/f;->e:Ljava/lang/Object;

    check-cast v2, Landroid/car/Car;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/car/Car;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    iput-object v0, v1, Lc0/f;->e:Ljava/lang/Object;

    iput-object v0, v1, Lc0/f;->f:Ljava/lang/Object;

    const/4 v2, -0x1

    iput v2, v1, Lc0/f;->c:I

    :cond_2
    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->R:Lc0/f;

    return-void
.end method

.method public final x(Lh2/l;)V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, La1/i;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2, p1}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_1
    :goto_0
    return-void
.end method

.method public final y(Landroid/view/View;F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v2, v3

    mul-float/2addr v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, 0x1

    if-lez v2, :cond_2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_3

    int-to-float v2, v4

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-lez v0, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int v4, v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    :goto_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Lcom/ex/auto/HomeFloatingWidgetsService;->y(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public final z(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->o:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->I()V

    sget-object v0, Lw0/v7;->a:[I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lw0/v7;->c(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lw0/c7;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lw0/c7;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    return-void
.end method
