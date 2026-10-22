.class public final Lkotlinx/coroutines/scheduling/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/scheduling/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/DataInputStream;)Lq0/n;
    .locals 8

    const/16 v0, 0x18

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    not-int v6, v1

    if-ne v6, v0, :cond_3

    new-array v0, v4, [B

    if-lez v4, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    :cond_0
    const/4 p0, 0x0

    move v6, p0

    :goto_0
    if-ge p0, v4, :cond_1

    aget-byte v7, v0, p0

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-ne v6, v5, :cond_2

    new-instance p0, Lq0/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lq0/n;->a:I

    iput v2, p0, Lq0/n;->b:I

    iput v3, p0, Lq0/n;->c:I

    iput-object v0, p0, Lq0/n;->d:Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "checksum ADB invalido"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cabecalho ADB invalido"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/io/OutputStream;III[B)V
    .locals 3

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length p2, p4

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length p2, p4

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    if-ge p3, p2, :cond_0

    aget-byte v2, p4, p3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    not-int p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, p4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/h;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-object p2, Lw0/ud;->e:Lw0/td;

    invoke-static {p2, v2, v3}, Lw0/ud;->d(Lw0/td;J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-object p2, Lw0/ud;->e:Lw0/td;

    invoke-static {p2, v2, v3}, Lw0/ud;->d(Lw0/td;J)V

    throw p1
.end method

.method public c(ILjava/lang/String;)Ljava/lang/String;
    .locals 19

    move/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shell:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v3, v1

    add-int/lit8 v4, v3, 0x1

    new-array v5, v4, [B

    array-length v6, v1

    const/4 v7, 0x0

    invoke-static {v1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v7, v5, v3

    const/16 v1, 0x1000

    if-gt v4, v1, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v8, v0

    add-long/2addr v3, v8

    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    :try_start_0
    new-instance v8, Ljava/net/InetSocketAddress;

    const-string v9, "127.0.0.1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v10, p0

    :try_start_1
    iget v11, v10, Lkotlinx/coroutines/scheduling/h;->a:I

    invoke-direct {v8, v9, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v8, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v6, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    const-string v9, "host::central-geely"

    invoke-virtual {v9, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v9, v2

    add-int/lit8 v11, v9, 0x1

    new-array v11, v11, [B

    array-length v12, v2

    invoke-static {v2, v7, v11, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v7, v11, v9

    const v2, 0x4e584e43    # 9.072519E8f

    const/high16 v9, 0x1000000

    invoke-static {v8, v2, v9, v1, v11}, Lkotlinx/coroutines/scheduling/h;->d(Ljava/io/OutputStream;III[B)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v11, v3, v11

    const-wide/16 v13, 0x0

    cmp-long v1, v11, v13

    const-string v9, "prazo total do comando ADB estourado"

    if-lez v1, :cond_a

    move-wide/from16 p1, v13

    const-wide/32 v13, 0x7fffffff

    :try_start_2
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v1, v11

    invoke-virtual {v6, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {v0}, Lkotlinx/coroutines/scheduling/h;->a(Ljava/io/DataInputStream;)Lq0/n;

    move-result-object v1

    iget v1, v1, Lq0/n;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v11, "adbd pediu autenticacao por chave"

    const v12, 0x48545541

    if-eq v1, v12, :cond_9

    if-ne v1, v2, :cond_0

    if-ne v1, v2, :cond_8

    const v1, 0x4e45504f    # 8.2759366E8f

    const/4 v2, 0x1

    :try_start_3
    invoke-static {v8, v1, v2, v7, v5}, Lkotlinx/coroutines/scheduling/h;->d(Ljava/io/OutputStream;III[B)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v5, v7

    move v15, v5

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v18, v8

    sub-long v7, v3, v16

    cmp-long v16, v7, p1

    if-lez v16, :cond_7

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {v0}, Lkotlinx/coroutines/scheduling/h;->a(Ljava/io/DataInputStream;)Lq0/n;

    move-result-object v7

    iget v8, v7, Lq0/n;->a:I

    iget v13, v7, Lq0/n;->b:I

    if-eq v8, v12, :cond_6

    const v14, 0x59414b4f

    if-ne v8, v14, :cond_2

    iget v7, v7, Lq0/n;->c:I

    if-ne v7, v2, :cond_1

    move v5, v2

    move v15, v13

    :cond_1
    move-object/from16 v8, v18

    const/4 v7, 0x0

    :goto_1
    const-wide/32 v13, 0x7fffffff

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    move-object v1, v0

    goto/16 :goto_3

    :cond_2
    const v12, 0x45545257

    if-ne v8, v12, :cond_4

    if-nez v5, :cond_3

    move v5, v2

    move v15, v13

    :cond_3
    iget-object v7, v7, Lq0/n;->d:Ljava/lang/Object;

    check-cast v7, [B

    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write([B)V

    const/4 v7, 0x0

    new-array v8, v7, [B

    move-object/from16 v7, v18

    invoke-static {v7, v14, v2, v13, v8}, Lkotlinx/coroutines/scheduling/h;->d(Ljava/io/OutputStream;III[B)V

    move-object v8, v7

    const/4 v7, 0x0

    const v12, 0x48545541

    goto :goto_1

    :cond_4
    move-object/from16 v7, v18

    const v0, 0x45534c43

    if-ne v8, v0, :cond_5

    const/4 v9, 0x0

    new-array v3, v9, [B

    invoke-static {v7, v0, v2, v15, v3}, Lkotlinx/coroutines/scheduling/h;->d(Ljava/io/OutputStream;III[B)V

    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    return-object v0

    :cond_5
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mensagem ADB inesperada: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "handshake ADB inesperado"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_2

    :goto_3
    :try_start_5
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1

    :cond_b
    move-object/from16 v10, p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "comando shell excede payload ADB: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes > 4096; use AdbBigScript"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
