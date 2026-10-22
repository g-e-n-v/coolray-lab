.class public final Lw0/ud;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw0/ud;

.field public static final b:[J

.field public static final c:Lw0/td;

.field public static final d:Lw0/td;

.field public static final e:Lw0/td;

.field public static final f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw0/ud;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw0/ud;->a:Lw0/ud;

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lw0/ud;->b:[J

    new-instance v0, Lw0/td;

    const-string v1, "toque\u2192quadro"

    invoke-direct {v0, v1}, Lw0/td;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw0/ud;->c:Lw0/td;

    new-instance v0, Lw0/td;

    const-string v1, "leitura carro"

    invoke-direct {v0, v1}, Lw0/td;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw0/ud;->d:Lw0/td;

    new-instance v0, Lw0/td;

    const-string v1, "shell adbd"

    invoke-direct {v0, v1}, Lw0/td;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw0/ud;->e:Lw0/td;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lw0/ud;->f:Ljava/util/HashMap;

    return-void

    nop

    :array_0
    .array-data 8
        0x10
        0x32
        0x64
        0xc8
        0x1f4
        0x3e8
        0x7d0
        0x1388
    .end array-data
.end method

.method public static a(Lw0/td;)Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lw0/td;->b:J

    iget-object v2, p0, Lw0/td;->a:Ljava/lang/String;

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    const-string p0, ": 0"

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lw0/td;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " m\u00e9dia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lw0/td;->c:J

    iget-wide v5, p0, Lw0/td;->b:J

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms p50"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-static {p0, v1, v2}, Lw0/ud;->b(Lw0/td;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " p95"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, 0x3fee666666666666L    # 0.95

    invoke-static {p0, v1, v2}, Lw0/ud;->b(Lw0/td;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " m\u00e1x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lw0/td;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lw0/td;->e:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " estouros="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lw0/td;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lw0/td;D)Ljava/lang/String;
    .locals 9

    iget-wide v0, p0, Lw0/td;->b:J

    iget-object p0, p0, Lw0/td;->f:[J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string p0, "-"

    return-object p0

    :cond_0
    long-to-double v0, v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    const-string v4, ">"

    sget-object v5, Lw0/ud;->b:[J

    const-string v6, "ms"

    if-ge v1, v0, :cond_3

    aget-wide v7, p0, v1

    add-long/2addr v2, v7

    cmp-long v7, v2, p1

    if-ltz v7, :cond_2

    const/16 p0, 0x8

    if-ge v1, p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "\u2264"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide p1, v5, v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ly1/f;->c0([J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ly1/f;->c0([J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lw0/td;J)V
    .locals 2

    sget-object v0, Lw0/ud;->a:Lw0/ud;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lw0/ud;->c(Lw0/td;JZ)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized c(Lw0/td;JZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "s"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p1, Lw0/td;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lw0/td;->b:J

    iget-wide v0, p1, Lw0/td;->c:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Lw0/td;->c:J

    iget-wide v0, p1, Lw0/td;->d:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    iput-wide p2, p1, Lw0/td;->d:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    iget-wide v0, p1, Lw0/td;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lw0/td;->e:J

    :cond_1
    const/4 p4, 0x0

    :goto_1
    sget-object v0, Lw0/ud;->b:[J

    const/16 v1, 0x8

    if-ge p4, v1, :cond_2

    aget-wide v0, v0, p4

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lw0/td;->f:[J

    aget-wide p2, p1, p4

    add-long/2addr p2, v2

    aput-wide p2, p1, p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .locals 7

    const-string v0, " \u00b7 filas m\u00e1x: "

    monitor-enter p0

    :try_start_0
    sget-object v1, Lw0/ud;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "<get-entries>(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, " "

    new-instance v3, Lw0/ya;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Lw0/ya;-><init>(I)V

    const/16 v4, 0x1e

    invoke-static {v1, v2, v3, v4}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lw0/ud;->c:Lw0/td;

    invoke-static {v2}, Lw0/ud;->a(Lw0/td;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u00b7 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lw0/ud;->d:Lw0/td;

    invoke-static {v3}, Lw0/ud;->a(Lw0/td;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u00b7 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lw0/ud;->e:Lw0/td;

    invoke-static {v4}, Lw0/ud;->a(Lw0/td;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v3, v4}, [Lw0/td;

    move-result-object v1

    invoke-static {v1}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw0/td;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lw0/td;->b:J

    iput-wide v3, v2, Lw0/td;->c:J

    iput-wide v3, v2, Lw0/td;->d:J

    iput-wide v3, v2, Lw0/td;->e:J

    iget-object v2, v2, Lw0/td;->f:[J

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v5, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    goto :goto_1

    :cond_1
    sget-object v1, Lw0/ud;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lw0/ud;->c:Lw0/td;

    iget-wide v0, v0, Lw0/td;->b:J

    sget-object v2, Lw0/ud;->d:Lw0/td;

    iget-wide v2, v2, Lw0/td;->b:J

    add-long/2addr v0, v2

    sget-object v2, Lw0/ud;->e:Lw0/td;

    iget-wide v2, v2, Lw0/td;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
