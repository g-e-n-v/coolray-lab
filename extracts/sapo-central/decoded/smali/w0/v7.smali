.class public abstract Lw0/v7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I

.field public static final h:Ljava/util/Set;

.field public static final i:Ljava/util/Set;

.field public static final j:[I

.field public static final k:Ljava/lang/Object;

.field public static final l:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0x10

    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x4

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lw0/v7;->a:[I

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v4, 0x6

    filled-new-array {v2, v0, v1, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lw0/v7;->b:[I

    const v0, 0x22010101

    const v1, 0x22010102

    const v3, 0x22010103

    filled-new-array {v0, v1, v3}, [I

    move-result-object v5

    sput-object v5, Lw0/v7;->c:[I

    const v5, 0x20020501

    const v6, 0x20020502

    const v7, 0x20020503

    filled-new-array {v5, v6, v7}, [I

    move-result-object v8

    sput-object v8, Lw0/v7;->d:[I

    const/4 v8, 0x0

    filled-new-array {v8, v2}, [I

    move-result-object v9

    sput-object v9, Lw0/v7;->e:[I

    const/high16 v9, 0x1000000

    filled-new-array {v8, v2, v9}, [I

    move-result-object v9

    sput-object v9, Lw0/v7;->f:[I

    const/16 v9, 0x31

    const/4 v10, 0x5

    filled-new-array {v2, v9, v10, v8}, [I

    move-result-object v9

    sput-object v9, Lw0/v7;->g:[I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lk1/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lw0/v7;->h:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lk1/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lw0/v7;->i:Ljava/util/Set;

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lw0/v7;->j:[I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f07010a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lx1/a;

    invoke-direct {v9, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f07010b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, Lx1/a;

    invoke-direct {v10, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f07010c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v11, Lx1/a;

    invoke-direct {v11, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f07010d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v12, Lx1/a;

    invoke-direct {v12, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x50

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f07010e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v13, Lx1/a;

    invoke-direct {v13, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f07010f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v14, Lx1/a;

    invoke-direct {v14, v0, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v9 .. v14}, [Lx1/a;

    move-result-object v0

    invoke-static {v0}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lw0/v7;->k:Ljava/lang/Object;

    filled-new-array {v8, v2}, [I

    move-result-object v0

    sput-object v0, Lw0/v7;->l:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x14
        0x28
        0x3c
        0x50
        0x64
    .end array-data
.end method

.method public static A(Landroid/car/hardware/property/CarPropertyManager;Z)V
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x10200c00

    const/16 v1, 0x75

    invoke-static {p0, v0, v1, p1}, Lw0/p1;->i(Landroid/car/hardware/property/CarPropertyManager;IIZ)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "widget_bg_opacity_pct"

    const/16 v2, 0x64

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0, v1, v2}, Lk1/a;->k(III)I

    move-result p0

    invoke-static {p0}, Lw0/v7;->b(I)I

    move-result p0

    return p0
.end method

.method public static b(I)I
    .locals 9

    sget-object v0, Lw0/v7;->j:[I

    array-length v1, v0

    const/16 v2, 0x64

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    aget v3, v0, v1

    array-length v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p0, v1, v2}, Lk1/a;->k(III)I

    move-result v6

    sub-int v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v5, v4, :cond_3

    :goto_0
    aget v7, v0, v5

    invoke-static {p0, v1, v2}, Lk1/a;->k(III)I

    move-result v8

    sub-int v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v6, v8, :cond_2

    move v3, v7

    move v6, v8

    :cond_2
    if-eq v5, v4, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_4
    sget-object p0, Lw0/v7;->k:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_5
    const p0, 0x7f07010f

    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->h(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "saved_drive"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "saved_regen"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string p1, "widget"

    invoke-static {p1}, Lw0/t1;->Y(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "UPDATE_DRIVE_REGEN_MODES"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;
    .locals 6

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/u;->B:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const v4, 0x15600099

    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    invoke-static {p0, v4, v5}, Lw0/p1;->a(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lw0/u;->B:[I

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    aget v5, v0, v3

    invoke-static {p0, v4, v5}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;
    .locals 3

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    sget-object v1, Lw0/v7;->g:[I

    aget v1, v1, v0

    const v2, 0x15400500

    invoke-static {p0, v2, v1}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x15200507

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lw0/p1;->a(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;
    .locals 5

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget v3, p2, v1

    invoke-static {p0, p1, v3}, Lw0/p1;->e(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Object;

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

.method public static h(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x15200514

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lw0/p1;->a(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v0, Lw0/u;->e:I

    sget v1, Lw0/u;->f:I

    invoke-static {p0, v0, v1}, Lw0/p1;->a(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Integer;
    .locals 1

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1540050b

    invoke-static {p0, v0, p1}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v0, Lw0/u;->d:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lw0/p1;->b(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v1, 0x41880000    # 17.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x42000000    # 32.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;
    .locals 3

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    sget-object v1, Lw0/v7;->a:[I

    aget v1, v1, v0

    const v2, 0x15400501

    invoke-static {p0, v2, v1}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;
    .locals 6

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/v7;->l:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    const v5, 0x1140050d

    invoke-static {p0, v5, v4}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static n(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x10200c00

    const/16 v1, 0x75

    invoke-static {p0, v0, v1}, Lw0/p1;->a(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static o(Landroid/content/Context;)Landroid/content/Context;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Le/o;->c()Ly/e;

    move-result-object v0

    invoke-virtual {v0}, Ly/e;->b()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v0, v0, Ly/e;->a:Ly/f;

    iget-object v0, v0, Ly/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "tela_preta_prefs"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_language_tag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    :cond_3
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "createConfigurationContext(...)"

    invoke-static {p0, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static p([ILjava/lang/Integer;I)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget v4, p0, v3

    if-ne p1, v4, :cond_1

    move v0, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-gez v0, :cond_3

    array-length p1, p0

    div-int/lit8 v0, p1, 0x2

    :cond_3
    add-int/2addr v0, p2

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, v2, p0}, Lk1/a;->k(III)I

    move-result p0

    return p0
.end method

.method public static q(Landroid/car/hardware/property/CarPropertyManager;Z)V
    .locals 6

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/u;->B:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const v4, 0x15600099

    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    invoke-static {p0, v4, v5, p1}, Lw0/p1;->i(Landroid/car/hardware/property/CarPropertyManager;IIZ)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lw0/u;->B:[I

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    invoke-static {p0, v4, v3, p1}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public static r(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cpm"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lw0/v7;->c(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x3

    if-ge p0, v0, :cond_2

    sget-object v0, Lw0/v7;->f:[I

    aget v0, v0, p0

    const v1, 0x22010100

    invoke-static {p1, v1, v0, p2}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static s(Landroid/car/hardware/property/CarPropertyManager;I)V
    .locals 3

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    sget-object v1, Lw0/v7;->g:[I

    aget v1, v1, v0

    const v2, 0x15400500

    invoke-static {p0, v2, v1, p1}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static t(Landroid/car/hardware/property/CarPropertyManager;Z)V
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x15200507

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Lw0/p1;->i(Landroid/car/hardware/property/CarPropertyManager;IIZ)Z

    return-void
.end method

.method public static u(Landroid/car/hardware/property/CarPropertyManager;Z)V
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x15200514

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p1}, Lw0/p1;->i(Landroid/car/hardware/property/CarPropertyManager;IIZ)Z

    return-void
.end method

.method public static v(Landroid/car/hardware/property/CarPropertyManager;Z)V
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lw0/u;->e:I

    sget v1, Lw0/u;->f:I

    invoke-static {p0, v0, v1, p1}, Lw0/p1;->i(Landroid/car/hardware/property/CarPropertyManager;IIZ)Z

    return-void
.end method

.method public static w(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cpm"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lw0/v7;->c(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge p0, v0, :cond_2

    sget-object v0, Lw0/v7;->e:[I

    aget v0, v0, p0

    const v1, 0x20020500

    invoke-static {p1, v1, v0, p2}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static x(Landroid/car/hardware/property/CarPropertyManager;F)V
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lw0/u;->d:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Lw0/p1;->j(Landroid/car/hardware/property/CarPropertyManager;IIF)Z

    const/4 v1, 0x4

    invoke-static {p0, v0, v1, p1}, Lw0/p1;->j(Landroid/car/hardware/property/CarPropertyManager;IIF)Z

    return-void
.end method

.method public static y(Landroid/car/hardware/property/CarPropertyManager;I)V
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const v1, 0x15400501

    invoke-static {p0, v1, v0, p1}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    const/4 v0, 0x4

    invoke-static {p0, v1, v0, p1}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    return-void
.end method

.method public static z(Landroid/car/hardware/property/CarPropertyManager;Z)V
    .locals 5

    const-string v0, "cpm"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/v7;->l:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    const v4, 0x1140050d

    invoke-static {p0, v4, v3, p1}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
