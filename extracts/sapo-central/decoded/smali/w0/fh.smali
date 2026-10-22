.class public abstract Lw0/fh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "persist.sys.hvacdigital.batt"

    const-string v1, "persist.sys.hvacdigital.exttemp"

    const-string v2, "persist.sys.hvacdigital.temp"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

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

    sget-object v3, Lo2/a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v3, "getBytes(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sput-object v1, Lw0/fh;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    const-string v2, "entries(...)"

    invoke-static {p0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ly1/j;

    invoke-direct {v2, p0}, Ly1/j;-><init>(Ljava/util/Enumeration;)V

    invoke-static {v2}, Ln2/g;->U(Ljava/util/Iterator;)Ln2/f;

    move-result-object p0

    new-instance v2, Lw0/zf;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lw0/zf;-><init>(I)V

    new-instance v3, Ln2/d;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4, v2}, Ln2/d;-><init>(Ln2/f;ZLh2/l;)V

    new-instance p0, Ln2/b;

    invoke-direct {p0, v3}, Ln2/b;-><init>(Ln2/d;)V

    :cond_0
    invoke-virtual {p0}, Ln2/b;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ln2/b;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v3, v7, v5

    if-gtz v3, :cond_0

    const-wide/32 v7, 0x1e84801

    cmp-long v3, v5, v7

    if-gez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v2}, La1/b;->W(Ljava/io/InputStream;)[B

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    sget-object v2, Lw0/fh;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_5

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, [B

    array-length v8, v3

    array-length v9, v7

    sub-int/2addr v8, v9

    if-ltz v8, :cond_0

    move v9, v0

    :goto_1
    aget-byte v10, v3, v9

    aget-byte v11, v7, v0

    if-ne v10, v11, :cond_3

    move v10, v4

    :goto_2
    array-length v11, v7

    if-ge v10, v11, :cond_2

    add-int v11, v9, v10

    aget-byte v11, v3, v11

    aget-byte v12, v7, v10

    if-ne v11, v12, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    array-length v11, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v10, v11, :cond_3

    goto :goto_0

    :cond_3
    if-eq v9, v8, :cond_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_5
    invoke-static {v2, p0}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    move v4, v0

    :cond_5
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return v4

    :goto_4
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-static {v1, p0}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return v0
.end method
