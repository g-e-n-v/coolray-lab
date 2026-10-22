.class public abstract Lw0/f8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo2/h;

    const-string v1, "\\[dex:([0-9a-f]{8}(?:-[0-9a-f]{8})*)]"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lo2/h;-><init>(ILjava/lang/String;)V

    sput-object v0, Lw0/f8;->a:Lo2/h;

    return-void
.end method

.method public static final a(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const-string v5, "classes"

    invoke-static {v4, v5}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ".dex"

    invoke-static {v4, v5, v3}, Lo2/t;->Z(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2f

    invoke-static {v4, v3}, Lo2/k;->f0(Ljava/lang/String;C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lw0/n2;

    const/16 v2, 0x17

    invoke-direct {v0, v2}, Lw0/n2;-><init>(I)V

    new-instance v2, Lw0/n2;

    const/16 v4, 0x18

    invoke-direct {v2, v4}, Lw0/n2;-><init>(I)V

    const/4 v4, 0x2

    new-array v5, v4, [Lh2/l;

    aput-object v0, v5, v3

    const/4 v0, 0x1

    aput-object v2, v5, v0

    new-instance v0, La2/a;

    invoke-direct {v0, v5}, La2/a;-><init>([Lh2/l;)V

    invoke-static {v1, v0}, Ly1/g;->i0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance v1, Lw0/q1;

    invoke-direct {v1, v4, p0}, Lw0/q1;-><init>(ILjava/lang/Object;)V

    const/16 p0, 0x1e

    const-string v2, "-"

    invoke-static {v0, v2, v1, p0}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    const-string v1, "entries(...)"

    invoke-static {p0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ly1/j;

    invoke-direct {v1, p0}, Ly1/j;-><init>(Ljava/util/Enumeration;)V

    invoke-static {v1}, Ln2/g;->U(Ljava/util/Iterator;)Ln2/f;

    move-result-object p0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p0, Ln2/a;

    invoke-virtual {p0}, Ln2/a;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lw0/f8;->a(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p0

    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v0, p0}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    const/4 p0, 0x0

    return-object p0
.end method
