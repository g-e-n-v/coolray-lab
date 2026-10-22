.class public final Lcom/ex/auto/Politica;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/ex/auto/Politica;

.field public static final b:Z

.field public static volatile c:[I

.field public static volatile d:Z

.field public static final e:[Ljava/lang/String;

.field public static volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/ex/auto/Politica;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ex/auto/Politica;->a:Lcom/ex/auto/Politica;

    :try_start_0
    const-string v0, "expolitica"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "libexpolitica n\u00e3o carregou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ex/auto/Politica;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/ex/auto/Politica;->b:Z

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/ex/auto/Politica;->e:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "Politica"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static final b(I)Ljava/lang/String;
    .locals 5

    sget-boolean v0, Lcom/ex/auto/Politica;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p0, :cond_4

    sget-object v0, Lcom/ex/auto/Politica;->e:[Ljava/lang/String;

    array-length v2, v0

    if-lt p0, v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object v2, v0, p0

    if-eqz v2, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/ex/auto/Politica;->e(I)[B

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3, v2}, Lcom/ex/auto/Politica;->nativeCall(I[B)[B

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lo2/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v3, v0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "texto["

    const-string v3, "] indispon\u00edvel: "

    invoke-static {v2, p0, v3}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ex/auto/Politica;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    sget-boolean p0, Lcom/ex/auto/Politica;->f:Z

    if-nez p0, :cond_5

    const/4 p0, 0x1

    sput-boolean p0, Lcom/ex/auto/Politica;->f:Z

    const-string p0, "cofre de caminhos indispon\u00edvel \u2014 binds e servi\u00e7os do init ficam desligados at\u00e9 a biblioteca carregar"

    invoke-static {p0}, Lcom/ex/auto/Politica;->a(Ljava/lang/String;)V

    :cond_5
    if-nez v1, :cond_6

    const-string v1, "/nao-disponivel"

    :cond_6
    return-object v1
.end method

.method public static d(IJ)Lw0/se;
    .locals 8

    sget-boolean v0, Lcom/ex/auto/Politica;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x7fffffff

    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    move-wide p1, v2

    :cond_2
    long-to-int p1, p1

    :goto_0
    :try_start_0
    invoke-static {p0}, Lcom/ex/auto/Politica;->e(I)[B

    move-result-object p0

    invoke-static {p1}, Lcom/ex/auto/Politica;->e(I)[B

    move-result-object p1

    invoke-static {p0, p1}, Ly1/f;->d0([B[B)[B

    move-result-object p0

    const/4 p1, 0x4

    invoke-static {p1, p0}, Lcom/ex/auto/Politica;->nativeCall(I[B)[B

    move-result-object p0

    array-length p2, p0

    const/16 v0, 0xc

    if-ge p2, v0, :cond_3

    :goto_1
    return-object v1

    :cond_3
    new-instance v2, Lw0/se;

    const/4 p2, 0x0

    invoke-static {p2, p0}, Lcom/ex/auto/Politica;->f(I[B)I

    move-result v3

    invoke-static {p1, p0}, Lcom/ex/auto/Politica;->f(I[B)I

    move-result p1

    int-to-long v4, p1

    const/16 p1, 0x8

    invoke-static {p1, p0}, Lcom/ex/auto/Politica;->f(I[B)I

    move-result p0

    int-to-long v6, p0

    invoke-direct/range {v2 .. v7}, Lw0/se;-><init>(IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "decis\u00e3o de sa\u00fade falhou: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ex/auto/Politica;->a(Ljava/lang/String;)V

    return-object v1
.end method

.method public static e(I)[B
    .locals 5

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p0, v3, v0

    return-object v3
.end method

.method public static f(I[B)I
    .locals 2

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p0, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p0, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x3

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static g(I)Ljava/util/ArrayList;
    .locals 8

    sget-boolean v0, Lcom/ex/auto/Politica;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/ex/auto/Politica;->e(I)[B

    move-result-object v2

    invoke-static {p0}, Lcom/ex/auto/Politica;->e(I)[B

    move-result-object p0

    invoke-static {v2, p0}, Ly1/f;->d0([B[B)[B

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/ex/auto/Politica;->e(I)[B

    move-result-object v3

    invoke-static {p0, v3}, Ly1/f;->d0([B[B)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ex/auto/Politica;->nativeCall(I[B)[B

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ex/auto/Politica;->f(I[B)I

    move-result v0

    if-gez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-static {v2, v0}, Lk1/a;->T(II)Ll2/c;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ll2/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    move-object v3, v0

    check-cast v3, Ll2/b;

    iget-boolean v3, v3, Ll2/b;->c:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Ll2/b;

    invoke-virtual {v3}, Ll2/b;->nextInt()I

    move-result v3

    new-instance v4, Lw0/re;

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v3, 0x4

    invoke-static {v5, p0}, Lcom/ex/auto/Politica;->f(I[B)I

    move-result v5

    add-int/lit8 v3, v3, 0x8

    invoke-static {v3, p0}, Lcom/ex/auto/Politica;->f(I[B)I

    move-result v3

    int-to-long v6, v3

    invoke-direct {v4, v5, v6, v7}, Lw0/re;-><init>(IJ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    return-object v2

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pol\u00edtica nativa falhou: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ex/auto/Politica;->a(Ljava/lang/String;)V

    return-object v1
.end method

.method public static final h(I)I
    .locals 1

    sget-object v0, Lcom/ex/auto/Politica;->a:Lcom/ex/auto/Politica;

    invoke-virtual {v0, p0}, Lcom/ex/auto/Politica;->c(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    sget-boolean v0, Lcom/ex/auto/Politica;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ex/auto/Politica;->d:Z

    const-string v0, "cofre de properties indispon\u00edvel \u2014 as fun\u00e7\u00f5es do carro que dependem dele v\u00e3o se declarar sem dado at\u00e9 a biblioteca carregar"

    invoke-static {v0}, Lcom/ex/auto/Politica;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static i()[B
    .locals 4

    sget-boolean v0, Lcom/ex/auto/Politica;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [B

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/ex/auto/Politica;->nativeCall(I[B)[B

    move-result-object v0

    array-length v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    return-object v0

    :cond_1
    :goto_0
    return-object v1

    :catchall_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "semente indispon\u00edvel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ex/auto/Politica;->a(Ljava/lang/String;)V

    return-object v1
.end method

.method public static j()Ljava/lang/String;
    .locals 8

    const-string v0, "substring(...)"

    sget-boolean v1, Lcom/ex/auto/Politica;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-array v3, v1, [B

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/ex/auto/Politica;->nativeCall(I[B)[B

    move-result-object v3

    array-length v4, v3

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    :goto_0
    return-object v2

    :cond_1
    new-instance v4, Lw0/ya;

    const/16 v6, 0x18

    invoke-direct {v4, v6}, Lw0/ya;-><init>(I)V

    invoke-static {v3, v4}, Ly1/f;->b0([BLh2/l;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x8

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0xc

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x14

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "uuid indispon\u00edvel: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ex/auto/Politica;->a(Ljava/lang/String;)V

    return-object v2
.end method

.method private static final native nativeCall(I[B)[B
.end method


# virtual methods
.method public final c(I)Ljava/lang/Integer;
    .locals 6

    sget-boolean v0, Lcom/ex/auto/Politica;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/ex/auto/Politica;->c:[I

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Ly1/f;->Z([II)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ex/auto/Politica;->c:[I

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Ly1/f;->Z([II)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    new-array v2, v0, [B

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/ex/auto/Politica;->nativeCall(I[B)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ex/auto/Politica;->f(I[B)I

    move-result v3

    if-lez v3, :cond_4

    array-length v4, v2

    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_3

    goto :goto_1

    :cond_3
    new-array v4, v3, [I

    :goto_0
    if-ge v0, v3, :cond_5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x4

    invoke-static {v5, v2}, Lcom/ex/auto/Politica;->f(I[B)I

    move-result v5

    aput v5, v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cofre indispon\u00edvel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ex/auto/Politica;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    move-object v4, v1

    :cond_5
    if-nez v4, :cond_6

    monitor-exit p0

    return-object v1

    :cond_6
    :try_start_3
    sput-object v4, Lcom/ex/auto/Politica;->c:[I

    invoke-static {v4, p1}, Ly1/f;->Z([II)Ljava/lang/Integer;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    monitor-exit p0

    throw p1
.end method
