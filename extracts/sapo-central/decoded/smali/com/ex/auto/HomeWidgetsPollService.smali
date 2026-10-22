.class public final Lcom/ex/auto/HomeWidgetsPollService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic E:I


# instance fields
.field public final A:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final B:J

.field public C:Landroid/widget/Toast;

.field public D:Landroid/widget/TextView;

.field public final a:Landroid/os/Handler;

.field public final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public volatile d:Z

.field public volatile e:Z

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile i:Landroid/car/Car;

.field public volatile j:Landroid/car/hardware/property/CarPropertyManager;

.field public volatile k:Ljava/lang/Integer;

.field public volatile l:Ljava/lang/Integer;

.field public volatile m:Ljava/lang/Integer;

.field public volatile n:Ljava/lang/Float;

.field public final o:Lx1/c;

.field public final p:J

.field public volatile q:Ljava/lang/Integer;

.field public volatile r:Ljava/lang/Boolean;

.field public volatile s:Ljava/lang/Boolean;

.field public volatile t:Ljava/lang/Boolean;

.field public volatile u:Ljava/lang/Boolean;

.field public volatile v:Ljava/lang/Boolean;

.field public volatile w:Ljava/lang/Integer;

.field public volatile x:Ljava/lang/Integer;

.field public volatile y:Ljava/lang/Boolean;

.field public final z:Landroidx/activity/d;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    new-instance v0, Lw0/l1;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lw0/l1;-><init>(I)V

    const-string v1, "home-widget-vhal"

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lw0/t1;->C(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lw0/l1;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lw0/l1;-><init>(I)V

    const-string v1, "home-widget-command"

    invoke-static {v1, v0, v2}, Lw0/t1;->C(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->g:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lw0/f2;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lw0/f2;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lx1/c;

    invoke-direct {v1, v0}, Lx1/c;-><init>(Lh2/a;)V

    iput-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->o:Lx1/c;

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->p:J

    new-instance v0, Landroidx/activity/d;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Landroidx/activity/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->z:Landroidx/activity/d;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->A:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->B:J

    return-void
.end method

.method public static final a(Landroid/appwidget/AppWidgetManager;Lcom/ex/auto/HomeWidgetsPollService;Ljava/lang/Class;)Z
    .locals 1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p0

    const-string p1, "getAppWidgetIds(...)"

    invoke-static {p0, p1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p0

    const/4 p1, 0x1

    if-nez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 7

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "com.ex.auto.widget.FAN_PLUS"

    const/4 v5, 0x0

    const-string v6, "com.ex.auto.widget.TEMP_PLUS"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v0, "com.ex.auto.widget.FAN_MINUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_3

    :sswitch_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :sswitch_2
    const-string v0, "com.ex.auto.widget.TEMP_MINUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iget-object v3, p0, Lcom/ex/auto/HomeWidgetsPollService;->n:Ljava/lang/Float;

    const-string v6, "temp"

    if-nez v3, :cond_2

    invoke-virtual {p0, v6}, Lcom/ex/auto/HomeWidgetsPollService;->d(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v0, v3, v5}, Lk1/a;->j(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->n:Ljava/lang/Float;

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->n:Ljava/lang/Float;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/ex/auto/HomeWidgetsPollService;->e(Ljava/lang/String;F)V

    goto :goto_3

    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    :goto_1
    iget-object v3, p0, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Integer;

    const-string v6, "fan"

    if-nez v3, :cond_6

    invoke-virtual {p0, v6}, Lcom/ex/auto/HomeWidgetsPollService;->d(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v5

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v0

    const/4 v0, 0x7

    invoke-static {v3, v1, v0}, Lk1/a;->k(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Integer;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v6, v0}, Lcom/ex/auto/HomeWidgetsPollService;->e(Ljava/lang/String;F)V

    :goto_3
    invoke-virtual {p0, p1}, Lcom/ex/auto/HomeWidgetsPollService;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {p0, v5}, Lcom/ex/auto/HomeWidgetsPollService;->p(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/ex/auto/HomeWidgetsPollService;->i()V

    if-nez v5, :cond_9

    move v5, v2

    goto :goto_4

    :cond_9
    move v5, v1

    :goto_4
    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :try_start_0
    iget-object v6, p0, Lcom/ex/auto/HomeWidgetsPollService;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lw0/x7;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lw0/x7;-><init>(Lcom/ex/auto/HomeWidgetsPollService;Ljava/lang/String;Landroid/car/hardware/property/CarPropertyManager;Landroid/appwidget/AppWidgetManager;Z)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v1, p0

    :catch_1
    iget-object p1, v1, Lcom/ex/auto/HomeWidgetsPollService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x67c00581 -> :sswitch_3
        -0x327c1702 -> :sswitch_2
        -0x22a7c0d4 -> :sswitch_1
        0x6f93980b -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(Ljava/lang/String;Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_c

    :sswitch_0
    const-string v0, "com.ex.auto.widget.WHEEL_HEAT_TOGGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->t:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lw0/v7;->m(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    xor-int/lit8 p1, v3, 0x1

    invoke-static {p2, p1}, Lw0/v7;->z(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->t:Ljava/lang/Boolean;

    return-void

    :sswitch_1
    const-string v0, "com.ex.auto.widget.FAN_MINUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_c

    :cond_3
    invoke-virtual {p0, p2, v2}, Lcom/ex/auto/HomeWidgetsPollService;->q(Landroid/car/hardware/property/CarPropertyManager;I)V

    return-void

    :sswitch_2
    const-string v0, "com.ex.auto.widget.REGEN_MID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_c

    :cond_4
    const p1, 0x20020502

    invoke-static {p0, p2, p1}, Lw0/v7;->w(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Integer;

    return-void

    :sswitch_3
    const-string v0, "com.ex.auto.widget.REGEN_LOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_c

    :cond_5
    const p1, 0x20020501

    invoke-static {p0, p2, p1}, Lw0/v7;->w(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Integer;

    return-void

    :sswitch_4
    const-string v0, "com.ex.auto.widget.SEAT_HEAT_PASSENGER_CYCLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_c

    :cond_6
    invoke-virtual {p0, p2, v1, v3}, Lcom/ex/auto/HomeWidgetsPollService;->g(Landroid/car/hardware/property/CarPropertyManager;IZ)V

    return-void

    :sswitch_5
    const-string v0, "com.ex.auto.widget.SEAT_HEAT_DRIVER_CYCLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_c

    :cond_7
    invoke-virtual {p0, p2, v4, v4}, Lcom/ex/auto/HomeWidgetsPollService;->g(Landroid/car/hardware/property/CarPropertyManager;IZ)V

    return-void

    :sswitch_6
    const-string v0, "com.ex.auto.widget.VENT_FLOOR_WINDSHIELD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_c

    :cond_8
    const/4 p1, 0x6

    invoke-static {p2, p1}, Lw0/v7;->y(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->q:Ljava/lang/Integer;

    return-void

    :sswitch_7
    const-string v0, "com.ex.auto.widget.VENT_PREV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_c

    :cond_9
    sget-object p1, Lw0/v7;->b:[I

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->q:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lw0/v7;->p([ILjava/lang/Integer;I)I

    move-result v0

    aget p1, p1, v0

    invoke-static {p2, p1}, Lw0/v7;->y(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->q:Ljava/lang/Integer;

    return-void

    :sswitch_8
    const-string v0, "com.ex.auto.widget.VENT_NEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_c

    :cond_a
    sget-object p1, Lw0/v7;->b:[I

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->q:Ljava/lang/Integer;

    invoke-static {p1, v0, v4}, Lw0/v7;->p([ILjava/lang/Integer;I)I

    move-result v0

    aget p1, p1, v0

    invoke-static {p2, p1}, Lw0/v7;->y(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->q:Ljava/lang/Integer;

    return-void

    :sswitch_9
    const-string v0, "com.ex.auto.widget.VENT_FACE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_c

    :cond_b
    invoke-static {p2, v4}, Lw0/v7;->y(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->q:Ljava/lang/Integer;

    return-void

    :sswitch_a
    const-string v0, "com.ex.auto.widget.DRIVE_ECO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_c

    :cond_c
    const p1, 0x22010101

    invoke-static {p0, p2, p1}, Lw0/v7;->r(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Integer;

    return-void

    :sswitch_b
    const-string v0, "com.ex.auto.widget.REGEN_PREV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_c

    :cond_d
    sget-object p1, Lw0/v7;->d:[I

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lw0/v7;->p([ILjava/lang/Integer;I)I

    move-result v0

    aget p1, p1, v0

    invoke-static {p0, p2, p1}, Lw0/v7;->w(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Integer;

    return-void

    :sswitch_c
    const-string v0, "com.ex.auto.widget.REGEN_NEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_c

    :cond_e
    sget-object p1, Lw0/v7;->d:[I

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Integer;

    invoke-static {p1, v0, v4}, Lw0/v7;->p([ILjava/lang/Integer;I)I

    move-result v0

    aget p1, p1, v0

    invoke-static {p0, p2, p1}, Lw0/v7;->w(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Integer;

    return-void

    :sswitch_d
    const-string v0, "com.ex.auto.widget.REGEN_HIGH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_c

    :cond_f
    const p1, 0x20020503

    invoke-static {p0, p2, p1}, Lw0/v7;->w(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Integer;

    return-void

    :sswitch_e
    const-string v0, "com.ex.auto.widget.VENT_FLOOR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_c

    :cond_10
    const/4 p1, 0x2

    invoke-static {p2, p1}, Lw0/v7;->y(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->q:Ljava/lang/Integer;

    return-void

    :sswitch_f
    const-string v0, "com.ex.auto.widget.DRIVE_COMFORT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_c

    :cond_11
    const p1, 0x22010102

    invoke-static {p0, p2, p1}, Lw0/v7;->r(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Integer;

    return-void

    :sswitch_10
    const-string v0, "com.ex.auto.widget.REAR_DEFROST_TOGGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_c

    :cond_12
    iget-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->r:Ljava/lang/Boolean;

    if-eqz p1, :cond_13

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_3

    :cond_13
    invoke-static {p2}, Lw0/v7;->h(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_14

    goto :goto_2

    :cond_14
    :goto_3
    xor-int/lit8 p1, v3, 0x1

    invoke-static {p2, p1}, Lw0/v7;->u(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->r:Ljava/lang/Boolean;

    return-void

    :sswitch_11
    const-string v0, "com.ex.auto.widget.TEMP_PLUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_c

    :cond_15
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2, p1}, Lcom/ex/auto/HomeWidgetsPollService;->r(Landroid/car/hardware/property/CarPropertyManager;F)V

    return-void

    :sswitch_12
    const-string v0, "com.ex.auto.widget.DRIVE_SPORT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_c

    :cond_16
    const p1, 0x22010103

    invoke-static {p0, p2, p1}, Lw0/v7;->r(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Integer;

    return-void

    :sswitch_13
    const-string v0, "com.ex.auto.widget.TEMP_MINUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_c

    :cond_17
    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p0, p2, p1}, Lcom/ex/auto/HomeWidgetsPollService;->r(Landroid/car/hardware/property/CarPropertyManager;F)V

    return-void

    :sswitch_14
    const-string v0, "com.ex.auto.widget.AC_TOGGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_c

    :cond_18
    iget-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->y:Ljava/lang/Boolean;

    if-eqz p1, :cond_19

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_5

    :cond_19
    invoke-static {p2}, Lw0/v7;->d(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1a

    goto :goto_4

    :cond_1a
    :goto_5
    xor-int/lit8 p1, v3, 0x1

    invoke-static {p2, p1}, Lw0/v7;->q(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->y:Ljava/lang/Boolean;

    return-void

    :sswitch_15
    const-string v0, "com.ex.auto.widget.WINDSHIELD_HEAT_TOGGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_c

    :cond_1b
    iget-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->v:Ljava/lang/Boolean;

    if-eqz p1, :cond_1c

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_7

    :cond_1c
    invoke-static {p2}, Lw0/v7;->n(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1d

    goto :goto_6

    :cond_1d
    :goto_7
    xor-int/lit8 p1, v3, 0x1

    invoke-static {p2, p1}, Lw0/v7;->A(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->v:Ljava/lang/Boolean;

    return-void

    :sswitch_16
    const-string v0, "com.ex.auto.widget.RECIRC_TOGGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto/16 :goto_c

    :cond_1e
    iget-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->s:Ljava/lang/Boolean;

    if-eqz p1, :cond_1f

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_9

    :cond_1f
    invoke-static {p2}, Lw0/v7;->i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_20

    goto :goto_8

    :cond_20
    :goto_9
    xor-int/lit8 p1, v3, 0x1

    invoke-static {p2, p1}, Lw0/v7;->v(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->s:Ljava/lang/Boolean;

    return-void

    :sswitch_17
    const-string v0, "com.ex.auto.widget.FAN_PLUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto/16 :goto_c

    :cond_21
    invoke-virtual {p0, p2, v4}, Lcom/ex/auto/HomeWidgetsPollService;->q(Landroid/car/hardware/property/CarPropertyManager;I)V

    return-void

    :sswitch_18
    const-string v0, "com.ex.auto.widget.VENT_WINDSHIELD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_c

    :cond_22
    invoke-static {p2, v1}, Lw0/v7;->y(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->q:Ljava/lang/Integer;

    return-void

    :sswitch_19
    const-string v0, "com.ex.auto.widget.FRONT_MAX_DEFROST_TOGGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_c

    :cond_23
    iget-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->u:Ljava/lang/Boolean;

    if-eqz p1, :cond_24

    :goto_a
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_b

    :cond_24
    invoke-static {p2}, Lw0/v7;->f(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_25

    goto :goto_a

    :cond_25
    :goto_b
    xor-int/lit8 p1, v3, 0x1

    invoke-static {p2, p1}, Lw0/v7;->t(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->u:Ljava/lang/Boolean;

    return-void

    :sswitch_1a
    const-string v0, "com.ex.auto.widget.VENT_FACE_FLOOR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_c

    :cond_26
    const/4 p1, 0x3

    invoke-static {p2, p1}, Lw0/v7;->y(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->q:Ljava/lang/Integer;

    return-void

    :sswitch_1b
    const-string v0, "com.ex.auto.widget.DRIVE_PREV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_c

    :cond_27
    sget-object p1, Lw0/v7;->c:[I

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lw0/v7;->p([ILjava/lang/Integer;I)I

    move-result v0

    aget p1, p1, v0

    invoke-static {p0, p2, p1}, Lw0/v7;->r(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Integer;

    return-void

    :sswitch_1c
    const-string v0, "com.ex.auto.widget.DRIVE_NEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    :goto_c
    return-void

    :cond_28
    sget-object p1, Lw0/v7;->c:[I

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Integer;

    invoke-static {p1, v0, v4}, Lw0/v7;->p([ILjava/lang/Integer;I)I

    move-result v0

    aget p1, p1, v0

    invoke-static {p0, p2, p1}, Lw0/v7;->r(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Integer;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d170a7f -> :sswitch_1c
        -0x7d15f33f -> :sswitch_1b
        -0x79a167e5 -> :sswitch_1a
        -0x78bc9446 -> :sswitch_19
        -0x713635fe -> :sswitch_18
        -0x67c00581 -> :sswitch_17
        -0x5308b810 -> :sswitch_16
        -0x4b46c9f2 -> :sswitch_15
        -0x35606de8 -> :sswitch_14
        -0x327c1702 -> :sswitch_13
        -0x257ef17a -> :sswitch_12
        -0x22a7c0d4 -> :sswitch_11
        -0x15ccf06e -> :sswitch_10
        -0x11c2b3a2 -> :sswitch_f
        -0xed05f45 -> :sswitch_e
        0x13c0295d -> :sswitch_d
        0x13c2d6ae -> :sswitch_c
        0x13c3edee -> :sswitch_b
        0x14bd0f23 -> :sswitch_a
        0x419603ae -> :sswitch_9
        0x4199b844 -> :sswitch_8
        0x419acf84 -> :sswitch_7
        0x44661775 -> :sswitch_6
        0x47c53f7d -> :sswitch_5
        0x48c8a473 -> :sswitch_4
        0x63bbf019 -> :sswitch_3
        0x63bbf30d -> :sswitch_2
        0x6f93980b -> :sswitch_1
        0x71967a86 -> :sswitch_0
    .end sparse-switch
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/Float;
    .locals 5

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->o:Lx1/c;

    invoke-virtual {v0}, Lx1/c;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "_ts"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-wide v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->p:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lx1/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Ljava/lang/String;F)V
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->o:Lx1/c;

    invoke-virtual {v0}, Lx1/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "_ts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p2, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    :try_start_0
    new-instance v1, Lw0/z0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lw0/z0;-><init>(Ljava/lang/Object;II)V

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->i:Landroid/car/Car;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connectCar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "HomeWidgetsPoll"

    invoke-static {v0, v1, v2}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final g(Landroid/car/hardware/property/CarPropertyManager;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->w:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->x:Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_1
    invoke-static {p1, p2}, Lw0/v7;->j(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    sget-object v1, Lw0/v7;->a:[I

    const-string v1, "cpm"

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x1540050b

    invoke-static {p1, v1, p2, v0}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p3, :cond_4

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->w:Ljava/lang/Integer;

    return-void

    :cond_4
    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->x:Ljava/lang/Integer;

    return-void
.end method

.method public final h(Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/ex/auto/HomeWidgetsPollService;->A:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    if-lez v1, :cond_0

    sget-object p1, Lw0/ae;->a:Lw0/ae;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "volante/widget: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " a\u00e7\u00e3o(\u00f5es) da fila aplicada(s) depois do Car conectar"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HomeWidgetsPoll"

    invoke-static {v1, p1, v0}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/ex/auto/HomeWidgetsPollService;->b(Ljava/lang/String;Landroid/car/hardware/property/CarPropertyManager;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v1}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final j(Landroid/appwidget/AppWidgetManager;)V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/DriveRegenWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/DriveRegenWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Integer;

    invoke-static {p0, v1, v2}, Lw0/t1;->i(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/DriveModeVerticalWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/DriveModeVerticalWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lw0/t1;->g(Landroid/content/Context;Ljava/lang/Integer;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/RegenVerticalWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/RegenVerticalWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lw0/e8;->f(Landroid/content/Context;Ljava/lang/Integer;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public final k(Landroid/appwidget/AppWidgetManager;)V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/FanSpeedWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/ex/auto/FanSpeedWidgetProvider;->a:[I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Integer;

    const v2, 0x7f0c007b

    invoke-static {p0, v1, v2}, Lw0/t1;->h(Landroid/content/Context;Ljava/lang/Integer;I)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/FanSpeedVerticalWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/FanSpeedVerticalWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Integer;

    const v2, 0x7f0c007d

    invoke-static {p0, v1, v2}, Lw0/t1;->h(Landroid/content/Context;Ljava/lang/Integer;I)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public final l(Landroid/appwidget/AppWidgetManager;)V
    .locals 7

    new-instance v0, Lw0/v6;

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->t:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/ex/auto/HomeWidgetsPollService;->r:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/ex/auto/HomeWidgetsPollService;->u:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/ex/auto/HomeWidgetsPollService;->v:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/ex/auto/HomeWidgetsPollService;->w:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/ex/auto/HomeWidgetsPollService;->x:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v6}, Lw0/v6;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/ex/auto/HeatingTestWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v2, Lcom/ex/auto/HeatingTestWidgetProvider;->a:I

    invoke-static {p0, v0}, Lw0/t1;->j(Landroid/content/Context;Lw0/v6;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public final m(Landroid/appwidget/AppWidgetManager;)V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/TemperatureWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/TemperatureWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->n:Ljava/lang/Float;

    const v2, 0x7f0c0086

    invoke-static {p0, v1, v2}, Lw0/e8;->e(Landroid/content/Context;Ljava/lang/Float;I)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/TemperatureVerticalWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/TemperatureVerticalWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->n:Ljava/lang/Float;

    const v2, 0x7f0c0088

    invoke-static {p0, v1, v2}, Lw0/e8;->e(Landroid/content/Context;Ljava/lang/Float;I)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public final n(Landroid/appwidget/AppWidgetManager;)V
    .locals 5

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/HvacDirectionFanWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/ex/auto/HvacDirectionFanWidgetProvider;->a:[I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->q:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/ex/auto/HomeWidgetsPollService;->s:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/ex/auto/HomeWidgetsPollService;->y:Ljava/lang/Boolean;

    invoke-static {p0, v1, v2, v3, v4}, Lw0/e8;->h(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public final o(Landroid/appwidget/AppWidgetManager;)V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/HvacDirectionWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/HvacDirectionWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->q:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/ex/auto/HomeWidgetsPollService;->s:Ljava/lang/Boolean;

    invoke-static {p0, v1, v2}, Lw0/e8;->i(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Boolean;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/HvacDirectionVerticalWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/HvacDirectionVerticalWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->q:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/ex/auto/HomeWidgetsPollService;->s:Ljava/lang/Boolean;

    invoke-static {p0, v1, v2}, Lw0/e8;->g(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Boolean;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/ex/auto/HomeWidgetsPollService;->f()V

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->z:Landroidx/activity/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->e:Z

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->i:Landroid/car/Car;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iput-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->i:Landroid/car/Car;

    iput-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->j:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 34

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v3, "com.ex.auto.widget.REFRESH_OPACITY"

    invoke-static {v2, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->j(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->k(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->m(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->o(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->n(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->l(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_b

    :cond_1
    const-string v3, "com.ex.auto.widget.WHEEL_MODE_ENTERED"

    invoke-static {v2, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/ex/auto/HomeWidgetsPollService;->i()V

    goto/16 :goto_b

    :cond_2
    const-string v3, "com.ex.auto.widget.WHEEL_MODE_EXITED"

    invoke-static {v2, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/ex/auto/HomeWidgetsPollService;->i()V

    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/w7;

    invoke-direct {v2, v0, v4}, Lw0/w7;-><init>(Lcom/ex/auto/HomeWidgetsPollService;I)V

    const-wide/16 v3, 0x8c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b

    :cond_3
    if-eqz v2, :cond_1e

    const-string v32, "com.ex.auto.widget.SEAT_HEAT_PASSENGER_CYCLE"

    const-string v33, "com.ex.auto.widget.AC_TOGGLE"

    const-string v5, "com.ex.auto.widget.DRIVE_ECO"

    const-string v6, "com.ex.auto.widget.DRIVE_COMFORT"

    const-string v7, "com.ex.auto.widget.DRIVE_SPORT"

    const-string v8, "com.ex.auto.widget.REGEN_LOW"

    const-string v9, "com.ex.auto.widget.REGEN_MID"

    const-string v10, "com.ex.auto.widget.REGEN_HIGH"

    const-string v11, "com.ex.auto.widget.DRIVE_NEXT"

    const-string v12, "com.ex.auto.widget.DRIVE_PREV"

    const-string v13, "com.ex.auto.widget.REGEN_NEXT"

    const-string v14, "com.ex.auto.widget.REGEN_PREV"

    const-string v15, "com.ex.auto.widget.FAN_MINUS"

    const-string v16, "com.ex.auto.widget.FAN_PLUS"

    const-string v17, "com.ex.auto.widget.TEMP_MINUS"

    const-string v18, "com.ex.auto.widget.TEMP_PLUS"

    const-string v19, "com.ex.auto.widget.VENT_FACE"

    const-string v20, "com.ex.auto.widget.VENT_FLOOR"

    const-string v21, "com.ex.auto.widget.VENT_FACE_FLOOR"

    const-string v22, "com.ex.auto.widget.VENT_WINDSHIELD"

    const-string v23, "com.ex.auto.widget.VENT_FLOOR_WINDSHIELD"

    const-string v24, "com.ex.auto.widget.VENT_NEXT"

    const-string v25, "com.ex.auto.widget.VENT_PREV"

    const-string v26, "com.ex.auto.widget.REAR_DEFROST_TOGGLE"

    const-string v27, "com.ex.auto.widget.RECIRC_TOGGLE"

    const-string v28, "com.ex.auto.widget.WHEEL_HEAT_TOGGLE"

    const-string v29, "com.ex.auto.widget.FRONT_MAX_DEFROST_TOGGLE"

    const-string v30, "com.ex.auto.widget.WINDSHIELD_HEAT_TOGGLE"

    const-string v31, "com.ex.auto.widget.SEAT_HEAT_DRIVER_CYCLE"

    filled-new-array/range {v5 .. v33}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lk1/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_b

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v5, 0x1

    const-string v6, "saved_drive"

    const v7, 0x22010102

    const/4 v8, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v3, "com.ex.auto.widget.DRIVE_ECO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const v3, 0x22010101

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_4

    :sswitch_1
    const-string v3, "com.ex.auto.widget.DRIVE_COMFORT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :sswitch_2
    const-string v3, "com.ex.auto.widget.DRIVE_SPORT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    const v3, 0x22010103

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :sswitch_3
    const-string v3, "com.ex.auto.widget.DRIVE_PREV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    sget-object v3, Lw0/v7;->c:[I

    iget-object v9, v0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Integer;

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_8
    invoke-static {v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->h(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6, v8}, Lw0/v7;->p([ILjava/lang/Integer;I)I

    move-result v6

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :sswitch_4
    const-string v3, "com.ex.auto.widget.DRIVE_NEXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    :goto_2
    move-object v3, v1

    goto :goto_4

    :cond_a
    sget-object v3, Lw0/v7;->c:[I

    iget-object v9, v0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Integer;

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_3

    :cond_b
    invoke-static {v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->h(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6, v5}, Lw0/v7;->p([ILjava/lang/Integer;I)I

    move-result v6

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "saved_regen"

    const v9, 0x20020502

    sparse-switch v6, :sswitch_data_1

    goto/16 :goto_7

    :sswitch_5
    const-string v6, "com.ex.auto.widget.REGEN_MID"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto/16 :goto_7

    :cond_c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_7

    :sswitch_6
    const-string v6, "com.ex.auto.widget.REGEN_LOW"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto/16 :goto_7

    :cond_d
    const v1, 0x20020501

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    :sswitch_7
    const-string v6, "com.ex.auto.widget.REGEN_PREV"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_7

    :cond_e
    sget-object v1, Lw0/v7;->d:[I

    iget-object v6, v0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Integer;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_5

    :cond_f
    invoke-static {v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->h(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v6, v8}, Lw0/v7;->p([ILjava/lang/Integer;I)I

    move-result v6

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    :sswitch_8
    const-string v6, "com.ex.auto.widget.REGEN_NEXT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_7

    :cond_10
    sget-object v1, Lw0/v7;->d:[I

    iget-object v6, v0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Integer;

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_6

    :cond_11
    invoke-static {v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->h(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    :goto_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v6, v5}, Lw0/v7;->p([ILjava/lang/Integer;I)I

    move-result v6

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    :sswitch_9
    const-string v6, "com.ex.auto.widget.REGEN_HIGH"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_7

    :cond_12
    const v1, 0x20020503

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_7
    const-string v6, "HomeWidgetsPoll"

    if-nez v3, :cond_13

    if-nez v1, :cond_13

    move v7, v4

    goto/16 :goto_a

    :cond_13
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Integer;

    :cond_14
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Integer;

    :cond_15
    invoke-static {v0, v3, v1}, Lw0/v7;->c(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v7

    sget-object v8, Lw0/ae;->a:Lw0/ae;

    const-string v8, "condu\u00e7\u00e3o/regenera\u00e7\u00e3o pelo widget: \'"

    const-string v9, "\' \u2192 "

    invoke-static {v8, v2, v9}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    const/16 v10, 0x20

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "drive="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    :cond_16
    move-object v3, v9

    :cond_17
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "regen="

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_8

    :cond_18
    move-object v9, v1

    :cond_19
    :goto_8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_1a

    const-string v1, "\u2014 gravado, watchdog assumiu a escrita"

    goto :goto_9

    :cond_1a
    const-string v1, "\u2014 gravado, escrita direta"

    :goto_9
    invoke-static {v8, v1, v6, v4}, Landroidx/activity/result/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_a
    if-eqz v7, :cond_1b

    goto :goto_b

    :cond_1b
    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->A:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "volante/widget: \'"

    const-string v3, "\' chegou antes do Car conectar \u2014 na fila"

    invoke-static {v1, v2, v3, v6, v4}, Landroidx/activity/result/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_1c

    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->i:Landroid/car/Car;

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Lcom/ex/auto/HomeWidgetsPollService;->f()V

    :cond_1c
    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/w7;

    invoke-direct {v2, v0, v5}, Lw0/w7;-><init>(Lcom/ex/auto/HomeWidgetsPollService;I)V

    iget-wide v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->B:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    :cond_1d
    invoke-virtual {v0, v2, v1}, Lcom/ex/auto/HomeWidgetsPollService;->b(Ljava/lang/String;Landroid/car/hardware/property/CarPropertyManager;)V

    :cond_1e
    :goto_b
    const/4 v1, 0x2

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7d170a7f -> :sswitch_4
        -0x7d15f33f -> :sswitch_3
        -0x257ef17a -> :sswitch_2
        -0x11c2b3a2 -> :sswitch_1
        0x14bd0f23 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x13c0295d -> :sswitch_9
        0x13c2d6ae -> :sswitch_8
        0x13c3edee -> :sswitch_7
        0x63bbf019 -> :sswitch_6
        0x63bbf30d -> :sswitch_5
    .end sparse-switch
.end method

.method public final p(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, La1/i;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1, p1}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->C:Landroid/widget/Toast;

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090322

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->D:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->C:Landroid/widget/Toast;

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->D:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showWheelToast: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "HomeWidgetsPoll"

    invoke-static {p1, v0, v1}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final q(Landroid/car/hardware/property/CarPropertyManager;I)V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Integer;

    const-string v1, "fan"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Integer;

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->d(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lw0/v7;->e(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    :goto_2
    add-int/2addr v0, p2

    const/4 p2, 0x0

    const/4 v2, 0x7

    invoke-static {v0, p2, v2}, Lk1/a;->k(III)I

    move-result p2

    :goto_3
    invoke-static {p1, p2}, Lw0/v7;->s(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Integer;

    int-to-float p1, p2

    invoke-virtual {p0, v1, p1}, Lcom/ex/auto/HomeWidgetsPollService;->e(Ljava/lang/String;F)V

    return-void
.end method

.method public final r(Landroid/car/hardware/property/CarPropertyManager;F)V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->n:Ljava/lang/Float;

    const-string v1, "temp"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->n:Ljava/lang/Float;

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->d(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lw0/v7;->k(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/high16 v0, 0x41b00000    # 22.0f

    :goto_1
    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x41880000    # 17.0f

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {p2, v0, v2}, Lk1/a;->j(FFF)F

    move-result p2

    :goto_2
    invoke-static {p1, p2}, Lw0/v7;->x(Landroid/car/hardware/property/CarPropertyManager;F)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->n:Ljava/lang/Float;

    invoke-virtual {p0, v1, p2}, Lcom/ex/auto/HomeWidgetsPollService;->e(Ljava/lang/String;F)V

    return-void
.end method

.method public final s(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "\u2014"

    const-string v2, "getString(...)"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v0, "com.ex.auto.widget.FAN_MINUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_5

    :sswitch_1
    const-string v0, "com.ex.auto.widget.REGEN_PREV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_5

    :sswitch_2
    const-string v0, "com.ex.auto.widget.REGEN_NEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0x20020501

    if-ne v0, v3, :cond_2

    const p1, 0x7f0f03a8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0x20020502

    if-ne v0, v3, :cond_4

    const p1, 0x7f0f03a9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_1
    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x20020503

    if-ne p1, v0, :cond_6

    const p1, 0x7f0f03a7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_2
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f0f02cf

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_3
    const-string v0, "com.ex.auto.widget.TEMP_PLUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_5

    :sswitch_4
    const-string v0, "com.ex.auto.widget.TEMP_MINUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->n:Ljava/lang/Float;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f0f01b9

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_5
    const-string v0, "com.ex.auto.widget.FAN_PLUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Integer;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f0f0199

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_6
    const-string v0, "com.ex.auto.widget.DRIVE_PREV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_5

    :sswitch_7
    const-string v0, "com.ex.auto.widget.DRIVE_NEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    :goto_5
    const/4 p1, 0x0

    return-object p1

    :cond_b
    iget-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Integer;

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0x22010101

    if-ne v0, v3, :cond_d

    const p1, 0x7f0f0399

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    :goto_6
    if-nez p1, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0x22010102

    if-ne v0, v3, :cond_f

    const p1, 0x7f0f0398

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    :goto_7
    if-nez p1, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x22010103

    if-ne p1, v0, :cond_11

    const p1, 0x7f0f039b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_11
    :goto_8
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f0f0170

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d170a7f -> :sswitch_7
        -0x7d15f33f -> :sswitch_6
        -0x67c00581 -> :sswitch_5
        -0x327c1702 -> :sswitch_4
        -0x22a7c0d4 -> :sswitch_3
        0x13c2d6ae -> :sswitch_2
        0x13c3edee -> :sswitch_1
        0x6f93980b -> :sswitch_0
    .end sparse-switch
.end method
