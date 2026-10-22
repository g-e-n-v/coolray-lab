.class public abstract Lw0/ug;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo2/h;

.field public static volatile b:Lx1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo2/h;

    const-string v1, " +"

    invoke-direct {v0, v1}, Lo2/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw0/ug;->a:Lo2/h;

    return-void
.end method

.method public static a()Ljava/lang/Double;
    .locals 13

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/thermal"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lw0/sg;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_9

    aget-object v5, v0, v4

    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "temp"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lf2/d;->h0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    new-instance v7, Lx1/b;

    invoke-direct {v7, v6}, Lx1/b;-><init>(Ljava/lang/Throwable;)V

    move-object v6, v7

    :goto_1
    nop

    instance-of v7, v6, Lx1/b;

    if-eqz v7, :cond_0

    move-object v6, v1

    :cond_0
    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_7

    invoke-static {v6}, Lo2/s;->Y(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :try_start_1
    new-instance v8, Ljava/io/File;

    const-string v9, "type"

    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Lf2/d;->h0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v8

    new-instance v9, Lx1/b;

    invoke-direct {v9, v8}, Lx1/b;-><init>(Ljava/lang/Throwable;)V

    move-object v8, v9

    :goto_2
    nop

    instance-of v9, v8, Lx1/b;

    if-eqz v9, :cond_1

    move-object v8, v1

    :cond_1
    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_3

    invoke-static {v8}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_3

    :cond_2
    move-object v8, v1

    :goto_3
    if-eqz v8, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    cmp-long v5, v9, v11

    if-lez v5, :cond_4

    long-to-double v5, v6

    const-wide v9, 0x408f400000000000L    # 1000.0

    :goto_5
    div-double/2addr v5, v9

    goto :goto_6

    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v11, 0xc8

    cmp-long v5, v9, v11

    if-lez v5, :cond_5

    long-to-double v5, v6

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    goto :goto_5

    :cond_5
    long-to-double v5, v6

    :goto_6
    const-wide/high16 v9, -0x3fbc000000000000L    # -40.0

    cmpg-double v7, v5, v9

    if-ltz v7, :cond_7

    const-wide v9, 0x4062c00000000000L    # 150.0

    cmpl-double v7, v5, v9

    if-lez v7, :cond_6

    goto :goto_7

    :cond_6
    new-instance v7, Lw0/tg;

    invoke-static {v8}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-direct {v7, v8, v5, v6}, Lw0/tg;-><init>(Ljava/lang/String;D)V

    goto :goto_8

    :cond_7
    :goto_7
    move-object v7, v1

    :goto_8
    if-eqz v7, :cond_8

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lw0/b6;

    const/16 v3, 0x10

    invoke-direct {v0, v3}, Lw0/b6;-><init>(I)V

    invoke-static {v2, v0}, Ly1/g;->i0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    goto :goto_9

    :cond_a
    sget-object v0, Ly1/p;->a:Ly1/p;

    :goto_9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lw0/tg;

    iget-object v3, v3, Lw0/tg;->a:Ljava/lang/String;

    const-string v4, "mtktscpu"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_a

    :cond_c
    move-object v2, v1

    :goto_a
    check-cast v2, Lw0/tg;

    if-eqz v2, :cond_d

    iget-wide v0, v2, Lw0/tg;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_d
    return-object v1
.end method

.method public static b()Ljava/lang/Integer;
    .locals 13

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/stat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lo2/a;->a:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v1, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {v1}, La1/b;->F(Ljava/io/BufferedReader;)Ln2/f;

    move-result-object v0

    check-cast v0, Ln2/a;

    invoke-virtual {v0}, Ln2/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lw0/ug;->a:Lo2/h;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lo2/h;->d(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ly1/g;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lo2/s;->Y(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v6 .. v12}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-static {v0, v10}, Ly1/g;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_0

    invoke-static {v10}, Lo2/s;->Y(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_1

    :cond_0
    move-wide v10, v6

    :goto_1
    add-long/2addr v8, v10

    goto :goto_0

    :cond_1
    sget-object v0, Lw0/ug;->b:Lx1/a;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v10, Lx1/a;

    invoke-direct {v10, v5, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v10, Lw0/ug;->b:Lx1/a;

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, v0, Lx1/a;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget-object v0, v0, Lx1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sub-long/2addr v3, v0

    add-long/2addr v3, v8

    cmp-long v0, v3, v6

    if-gtz v0, :cond_3

    goto :goto_3

    :cond_3
    long-to-double v0, v8

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v5

    long-to-double v3, v3

    div-double/2addr v0, v3

    double-to-int v0, v0

    const/16 v1, 0x64

    invoke-static {v0, v2, v1}, Lk1/a;->k(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :cond_4
    :try_start_3
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v2, "Sequence is empty."

    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v1, v2}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    :cond_5
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method
