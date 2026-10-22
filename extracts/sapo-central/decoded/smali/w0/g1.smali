.class public final synthetic Lw0/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/car/Car$CarServiceLifecycleListener;


# instance fields
.field public final synthetic a:Lc0/f;

.field public final synthetic b:Lw0/x6;


# direct methods
.method public synthetic constructor <init>(Lc0/f;Lw0/x6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/g1;->a:Lc0/f;

    iput-object p2, p0, Lw0/g1;->b:Lw0/x6;

    return-void
.end method


# virtual methods
.method public final onLifecycleChanged(Landroid/car/Car;Z)V
    .locals 5

    if-eqz p2, :cond_5

    iget-object p2, p0, Lw0/g1;->a:Lc0/f;

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p2, Lc0/f;->f:Ljava/lang/Object;

    const-string v2, "getVolumeGroupIdForUsage"

    if-nez p1, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    filled-new-array {v3}, [I

    move-result-object v4

    invoke-static {p1, v2, v4}, Lc0/f;->a(Ljava/lang/Object;Ljava/lang/String;[I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ltz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    filled-new-array {v4, v3}, [I

    move-result-object v3

    invoke-static {p1, v2, v3}, Lc0/f;->a(Ljava/lang/Object;Ljava/lang/String;[I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ltz v2, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    const-string v2, "getVolumeGroupIdForStreamType"

    const/4 v3, 0x3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {p1, v2, v3}, Lc0/f;->a(Ljava/lang/Object;Ljava/lang/String;[I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ltz p1, :cond_4

    move v4, p1

    :cond_4
    :goto_1
    iput v4, p2, Lc0/f;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    iput-object v1, p2, Lc0/f;->f:Ljava/lang/Object;

    iput v0, p2, Lc0/f;->c:I

    :cond_5
    :goto_2
    iget-object p1, p0, Lw0/g1;->b:Lw0/x6;

    invoke-virtual {p1}, Lw0/x6;->a()Ljava/lang/Object;

    return-void
.end method
