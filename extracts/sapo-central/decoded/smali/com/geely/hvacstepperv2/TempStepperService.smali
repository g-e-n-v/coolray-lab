.class public Lcom/geely/hvacstepperv2/TempStepperService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final c0:[I

.field public static final d0:[I

.field public static e0:Z


# instance fields
.field public A:Z

.field public B:I

.field public C:F

.field public D:Z

.field public final E:La1/q;

.field public F:Z

.field public final G:La1/q;

.field public H:I

.field public I:I

.field public J:F

.field public K:F

.field public L:F

.field public M:F

.field public N:Z

.field public O:I

.field public final P:La1/q;

.field public Q:Landroid/view/View;

.field public final R:[Landroid/widget/TextView;

.field public S:Z

.field public final T:La1/f;

.field public U:Z

.field public V:I

.field public W:J

.field public X:La1/k;

.field public Y:La1/u;

.field public Z:La1/u;

.field public a:F

.field public final a0:La1/s;

.field public b:F

.field public b0:Z

.field public c:Landroid/view/WindowManager;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/car/Car;

.field public k:Landroid/car/hardware/property/CarPropertyManager;

.field public l:I

.field public m:F

.field public final n:Landroid/os/Handler;

.field public o:Landroid/os/HandlerThread;

.field public p:Landroid/os/Handler;

.field public final q:La1/d;

.field public r:J

.field public volatile s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x7

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v4

    sput-object v4, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    filled-new-array {v2, v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->d0:[I

    sput-boolean v2, Lcom/geely/hvacstepperv2/TempStepperService;->e0:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->b:F

    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    const/high16 v0, 0x41b00000    # 22.0f

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    new-instance v0, La1/d;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, La1/d;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->q:La1/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->v:I

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->w:I

    const/4 v2, 0x7

    iput v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->x:I

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->y:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->z:F

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->B:I

    iput v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->C:F

    new-instance v2, La1/q;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, La1/q;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    iput-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->E:La1/q;

    iput-boolean v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->F:Z

    new-instance v1, La1/q;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, La1/q;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    iput-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->G:La1/q;

    new-instance v1, La1/q;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, La1/q;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    iput-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->P:La1/q;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->R:[Landroid/widget/TextView;

    new-instance v1, La1/f;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, La1/f;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    iput-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->T:La1/f;

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->V:I

    new-instance v0, La1/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, La1/s;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->a0:La1/s;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->X:La1/k;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->X:La1/k;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->U:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->V:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->W:J

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->T:La1/f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->S:Z

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->Q:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->q:La1/d;

    iget-wide v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->r:J

    invoke-virtual {v0, v1, v2}, La1/d;->a(J)Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 7

    const-string v0, "HvacStepperV2"

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/high16 v1, 0x41800000    # 16.0f

    iput v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    const/high16 v2, 0x41f00000    # 30.0f

    iput v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->b:F

    :try_start_0
    const-class v2, Landroid/car/hardware/property/CarPropertyManager;

    const-string v3, "getCarPropertyConfig"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const v4, 0x15600503

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getMinValue"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "getMaxValue"

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v4, Ljava/lang/Float;

    if-eqz v3, :cond_3

    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_3

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v5, v3, v2

    if-gez v5, :cond_3

    sub-float v5, v2, v3

    const/high16 v6, 0x42200000    # 40.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    iput v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->b:F

    cmpg-float v2, v3, v1

    if-gez v2, :cond_2

    const-string v2, "HAL min %.1f ignorado \u2014 uso m\u00ednimo UI %.1f \u00b0C"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "Intervalo activo: %.1f\u00b0C \u2013 %.1f\u00b0C (invert HAL=%s)"

    iget v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->b:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCarPropertyConfig indispon\u00edvel ou falhou: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public final e(Ljava/lang/Runnable;)V
    .locals 7

    iget-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    iget-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->q:La1/d;

    iget-object v1, v2, La1/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    new-instance v1, La1/c;

    const/4 v6, 0x0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, La1/c;-><init>(Ljava/lang/Object;JLjava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->s:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    iget-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->q:La1/d;

    iget-wide v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->r:J

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, La1/c;

    const/4 v6, 0x0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, La1/c;-><init>(Ljava/lang/Object;JLjava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g()V
    .locals 10

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->u:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->v:I

    move v2, v0

    :goto_0
    const/4 v3, 0x4

    const-string v4, "HvacStepperV2"

    const/4 v5, 0x1

    if-ge v2, v3, :cond_3

    sget-object v6, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    aget v6, v6, v2

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_5

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const v8, 0x15600502

    invoke-virtual {v7, v8, v6}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_2

    const/high16 v8, -0x3dcc0000    # -45.0f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_2

    const/high16 v8, 0x42820000    # 65.0f

    cmpg-float v8, v7, v8

    if-gez v8, :cond_2

    iput v6, p0, Lcom/geely/hvacstepperv2/TempStepperService;->v:I

    iput-boolean v5, p0, Lcom/geely/hvacstepperv2/TempStepperService;->u:Z

    iput v7, p0, Lcom/geely/hvacstepperv2/TempStepperService;->z:F

    const-string v8, "Sensor cabina OK (HVAC_TEMPERATURE_CURRENT) area=0x%x \u2192 %.1f\u00b0C"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v9, v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "cabina area 0x%x: %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->u:Z

    if-nez v2, :cond_4

    const-string v2, "HVAC_TEMPERATURE_CURRENT indispon\u00edvel \u2014 AUTO usar\u00e1 s\u00f3 modo sistema (OEM) se activar."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    iput-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->A:Z

    iput v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->B:I

    :goto_2
    if-ge v0, v3, :cond_8

    sget-object v2, Lcom/geely/hvacstepperv2/TempStepperService;->d0:[I

    aget v2, v2, v0

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v2}, Lcom/geely/hvacstepperv2/TempStepperService;->i(I)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/high16 v8, -0x3da40000    # -55.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/high16 v8, 0x428c0000    # 70.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    iput v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->B:I

    iput-boolean v5, p0, Lcom/geely/hvacstepperv2/TempStepperService;->A:Z

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->C:F

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Exterior OK (ENV_OUTSIDE_TEMPERATURE) area=0x%x \u2192 %.1f\u00b0C"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    const-string v0, "ENV_OUTSIDE_TEMPERATURE indispon\u00edvel em todas as zonas testadas."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v2, 0x7

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    :try_start_1
    const-class v0, Landroid/car/hardware/property/CarPropertyManager;

    const-string v3, "getCarPropertyConfig"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const v4, 0x15400500

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getMaxValue"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_c

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v0, v5, :cond_c

    const/16 v3, 0x10

    if-gt v0, v3, :cond_c

    move v2, v0

    :catch_1
    :cond_c
    :goto_4
    iput v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->x:I

    iput v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->w:I

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->r()V

    :cond_d
    :goto_5
    return-void
.end method

.method public final h()V
    .locals 8

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "init"

    const-string v2, "HvacStepperV2"

    const/4 v3, 0x4

    if-ge v0, v3, :cond_3

    sget-object v3, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    aget v3, v3, v0

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const v5, 0x15600503

    invoke-virtual {v4, v5, v3}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Float;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, p0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    iput v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    const-string v6, "Temp HAL=%.1f \u2192 UI=%.1f\u00b0C (area=0x%x)"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v5, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/geely/hvacstepperv2/TempStepperService;->q(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "area 0x%x inv\u00e1lida: %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "N\u00e3o foi poss\u00edvel ler temperatura \u2014 usando valor padr\u00e3o 22.0"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/geely/hvacstepperv2/TempStepperService;->q(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final i(I)Ljava/lang/Float;
    .locals 5

    const-string v0, "HvacStepperV2"

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const v1, 0x11600703

    :try_start_0
    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v3, v1, p1}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "exterior float area 0x%x: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v3

    if-nez v3, :cond_2

    return-object v2

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v3, v1, p1}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    const/16 v3, -0x226

    if-le v1, v3, :cond_3

    const/16 v3, 0x2bc

    if-ge v1, v3, :cond_3

    int-to-float v1, v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_3
    const/16 v3, -0x2d

    if-lt v1, v3, :cond_4

    const/16 v3, 0x41

    if-gt v1, v3, :cond_4

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "exterior int area 0x%x: %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-object v2
.end method

.method public final j()V
    .locals 5

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->R:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    invoke-static {p0, v2}, La1/b;->G(Lcom/geely/hvacstepperv2/TempStepperService;I)La1/a;

    move-result-object v3

    if-eqz v3, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    aget-object v4, v0, v2

    invoke-virtual {v3}, La1/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    aget-object v3, v0, v2

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public final k()I
    .locals 7

    iget v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->w:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    iget v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_3

    sget-object v4, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    aget v4, v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_2

    aget v6, v0, v5

    if-ne v6, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v1, 0x1

    aput v4, v0, v1

    move v1, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-ge v2, v1, :cond_6

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v3

    if-nez v3, :cond_4

    iget v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    return v0

    :cond_4
    aget v3, v0, v2

    :try_start_0
    iget-object v4, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const v5, 0x15400500

    invoke-virtual {v4, v5, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v4

    if-ltz v4, :cond_5

    iget v5, p0, Lcom/geely/hvacstepperv2/TempStepperService;->x:I

    add-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_5

    iput v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->w:I

    const-string v5, "HvacStepperV2"

    const-string v6, "HVAC_FAN_SPEED leg\u00edvel area=0x%x \u2192 %d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->w:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    return v0
.end method

.method public final l(F)V
    .locals 7

    iget v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    sub-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->b:F

    iget v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    sub-float/2addr v1, v2

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    iget p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    const-string p1, "btn"

    invoke-virtual {p0, p1}, Lcom/geely/hvacstepperv2/TempStepperService;->q(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-nez p1, :cond_1

    const-string p1, "CarService n\u00e3o dispon\u00edvel"

    invoke-virtual {p0, v1, p1}, Lcom/geely/hvacstepperv2/TempStepperService;->m(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    iget v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    sget-object v3, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v3, "cpm"

    invoke-static {p1, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x15600503

    invoke-static {p1, v3, v2, v0}, Lw0/p1;->j(Landroid/car/hardware/property/CarPropertyManager;IIF)Z

    move-result p1

    const-string v2, "HvacStepperV2"

    if-nez p1, :cond_3

    const-string p1, "Erro ao definir temperatura: escrita falhou ou estourou o prazo"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Erro ao enviar temperatura"

    invoke-virtual {p0, v1, p1}, Lcom/geely/hvacstepperv2/TempStepperService;->m(ILjava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget v5, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {p1, v1, v4, v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Enviado HAL=%.1f UI=%.1f\u00b0C invert=%s (area=0x%x)"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    iget v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    invoke-virtual {p1, v3, v1}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result p1

    sub-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_5

    const-string v1, "Readback OK: HAL raw=%.2f \u2192 UI %.1f\u00b0C (pedido %.1f\u00b0C)"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v3, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_5
    const-string v3, "Readback DIVERGENTE: pedido UI=%.1f\u00b0C mas HAL devolve raw=%.2f \u2192 UI %.1f\u00b0C (\u0394=%.1f). Poss\u00edvel escrita int (wheel/XSF) ou outra zona."

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v4, v5, v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v3, "HAL leu %.1f\u00b0C (pediste %.1f) \u2014 ver logcat"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/geely/hvacstepperv2/TempStepperService;->m(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Readback p\u00f3s-set indispon\u00edvel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v2}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final m(ILjava/lang/String;)V
    .locals 2

    new-instance v0, La1/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, p1, v1}, La1/j;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->E:La1/q;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->t:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->D:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->t:Z

    iget-boolean v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->D:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    invoke-static {v1, v2, v0}, Lw0/p1;->h(Landroid/car/hardware/property/CarPropertyManager;IZ)Z

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v1, v0, v0}, Lw0/p1;->h(Landroid/car/hardware/property/CarPropertyManager;IZ)Z

    iput-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->D:Z

    const-string v0, "HvacStepperV2"

    const-string v1, "AUTO OEM desligado"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->y:I

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->Z:La1/u;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->Y:La1/u;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v1, v0}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->Y:La1/u;

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->Z:La1/u;

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 13

    const-string v1, "HvacStepperV2"

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "HvacStepperCar"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->o:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/geely/hvacstepperv2/TempStepperService;->e0:Z

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v3, "hvac_stepper_v2"

    const-string v4, "HVAC Stepper V2"

    const/4 v5, 0x2

    invoke-direct {v0, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v4, "Controlo de temperatura HVAC (com polling)"

    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v4, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "HVAC Stepper V2 activo"

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v3, "Stepper com polling de 3 s"

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v3, 0x1080039

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->a0:La1/s;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "com.geely.hvacstepperv2.PRESETS_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->b0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "registerReceiver PRESETS_CHANGED"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->b0:Z

    :goto_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0c0056

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f090306

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f090304

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f090062

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f090302

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f090303

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f09006a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v7, 0x7f09006b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v7, La1/m;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, La1/m;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, La1/m;

    const/4 v7, 0x1

    invoke-direct {v0, p0, v7}, La1/m;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v4, La1/m;

    const/4 v7, 0x2

    invoke-direct {v4, p0, v7}, La1/m;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f090271

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->Q:Landroid/view/View;

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f090264

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/geely/hvacstepperv2/TempStepperService;->R:[Landroid/widget/TextView;

    aput-object v0, v4, v3

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v7, 0x7f090265

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v7, 0x7f090266

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v4, v5

    move v0, v3

    :goto_1
    const/4 v5, 0x3

    if-ge v0, v5, :cond_2

    aget-object v5, v4, v0

    if-eqz v5, :cond_1

    new-instance v7, La1/n;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v0, v8}, La1/n;-><init>(Landroid/content/ContextWrapper;II)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->e:Landroid/widget/TextView;

    new-instance v4, La1/m;

    const/4 v7, 0x3

    invoke-direct {v4, p0, v7}, La1/m;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->j()V

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/2addr v0, v5

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->O:I

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f0900cb

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v4, La1/o;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, La1/o;-><init>(Landroid/content/ContextWrapper;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f06016f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/16 v11, 0x8

    const/4 v12, -0x3

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x7f6

    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v4, "hvac_stepper"

    const/16 v5, 0x51

    invoke-static {p0, v4, v5, v3, v0}, Lw0/e8;->G(Landroid/content/Context;Ljava/lang/String;III)Lw0/yd;

    move-result-object v0

    iget v3, v0, Lw0/yd;->a:I

    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v3, v0, Lw0/yd;->b:I

    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Lw0/yd;->c:I

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_1
    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    invoke-interface {v0, v3, v7}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->p()V

    const-string v0, "init"

    invoke-virtual {p0, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->q(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v3, "addView overlay falhou (permiss\u00e3o SYSTEM_ALERT_WINDOW?)"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Overlay n\u00e3o exibido \u2014 conceda sobreposi\u00e7\u00e3o e reinicie o servi\u00e7o"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    :try_start_2
    new-instance v0, La1/p;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, La1/p;-><init>(Landroid/content/ContextWrapper;I)V

    const-wide/16 v2, 0x0

    invoke-static {p0, v6, v2, v3, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->j:Landroid/car/Car;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Erro ao conectar ao CarService: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public final onDestroy()V
    .locals 6

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/geely/hvacstepperv2/TempStepperService;->e0:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->s:Z

    iget-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->q:La1/d;

    iput-boolean v1, v2, La1/d;->b:Z

    iget-object v1, v2, La1/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->j:Landroid/car/Car;

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    new-instance v4, La1/i;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, v1}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->T:La1/f;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->P:La1/q;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->b0:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->a0:La1/s;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->b0:Z

    :cond_0
    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_0

    const-string p2, "com.geely.hvacstepperv2.RUN_PRESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "preset_slot"

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p2, 0x3

    if-ge p1, p2, :cond_0

    new-instance p2, La1/e;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, La1/e;-><init>(Ljava/lang/Object;II)V

    const-wide/16 v0, 0x12c

    iget-object p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public final p()V
    .locals 4

    iget-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->t:Z

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "AUTO (sist.)"

    goto :goto_0

    :cond_0
    const-string v1, "AUTO \u25cf"

    goto :goto_0

    :cond_1
    const-string v1, "AUTO"

    :goto_0
    if-eqz v0, :cond_2

    const v0, -0xb52180

    goto :goto_1

    :cond_2
    const v0, -0x33000001    # -1.3421772E8f

    :goto_1
    new-instance v2, La1/j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v0, v3}, La1/j;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;Ljava/lang/String;II)V

    invoke-virtual {p0, v2}, Lcom/geely/hvacstepperv2/TempStepperService;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->r()V

    iget v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    rem-float v1, v0, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%.0f\u00b0"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%.1f\u00b0"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->t:Z

    const-string v2, " \u00b7cab %.0f\u00b0"

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->D:Z

    if-eqz p1, :cond_1

    const-string p1, " \u00b7AUTO-OEM"

    goto :goto_1

    :cond_1
    const-string p1, " \u00b7AUTO"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->D:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->u:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->z:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->z:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->y:I

    if-ltz p1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " \u00b7vent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    iget-boolean p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->u:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->z:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->z:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, La1/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lcom/geely/hvacstepperv2/TempStepperService;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r()V
    .locals 9

    iget-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->u:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->z:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    iget-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->A:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->C:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v1

    :goto_1
    const-string v0, "n/d"

    const-string v1, "%.1f \u00b0C"

    if-eqz v6, :cond_2

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->z:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v0

    :goto_2
    if-eqz v8, :cond_3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->C:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v7, v0

    new-instance v3, La1/l;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, La1/l;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {p0, v3}, Lcom/geely/hvacstepperv2/TempStepperService;->f(Ljava/lang/Runnable;)V

    return-void
.end method
