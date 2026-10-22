.class public final Lcom/ex/auto/PhoneSyncService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static volatile z:Z


# instance fields
.field public volatile a:Z

.field public b:Ljava/net/ServerSocket;

.field public c:Landroid/bluetooth/BluetoothServerSocket;

.field public final d:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final e:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final f:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

.field public final h:Ljava/util/concurrent/ScheduledExecutorService;

.field public i:Landroid/car/Car;

.field public volatile j:Landroid/car/hardware/property/CarPropertyManager;

.field public volatile k:Landroid/car/media/CarAudioManager;

.field public volatile l:Lw0/xg;

.field public volatile m:Ljava/lang/Integer;

.field public final n:[I

.field public final o:Ljava/lang/Object;

.field public p:Ljava/lang/Integer;

.field public q:J

.field public r:Ljava/lang/Integer;

.field public s:J

.field public t:Ljava/lang/Boolean;

.field public u:J

.field public final v:Ljava/lang/Object;

.field public final w:Ljava/util/List;

.field public final x:Ljava/util/List;

.field public final y:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "phone-sync-http-client"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/ex/auto/PhoneSyncService;->e(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x3

    const-string v2, "phone-sync-bt-client"

    invoke-static {v0, v2}, Lcom/ex/auto/PhoneSyncService;->e(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v0, "phone-sync-shell"

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/ex/auto/PhoneSyncService;->e(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance v0, Lw0/l1;

    const/16 v3, 0xe

    invoke-direct {v0, v3}, Lw0/l1;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x5

    const/4 v3, 0x0

    const/16 v4, 0x31

    filled-new-array {v2, v4, v0, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->n:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->o:Ljava/lang/Object;

    new-instance v3, Lw0/ge;

    sget v4, Lw0/u;->m:I

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v5, 0x0

    const-string v6, "Travar ao se afastar"

    invoke-direct/range {v3 .. v8}, Lw0/ge;-><init>(IILjava/lang/String;II)V

    new-instance v0, Lx1/a;

    const-string v4, "away_lock"

    invoke-direct {v0, v4, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lw0/ge;

    sget v6, Lw0/u;->n:I

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v7, 0x0

    const-string v8, "Destravar ao aproximar"

    invoke-direct/range {v5 .. v10}, Lw0/ge;-><init>(IILjava/lang/String;II)V

    new-instance v3, Lx1/a;

    const-string v4, "approach_unlock"

    invoke-direct {v3, v4, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lw0/ge;

    sget v7, Lw0/u;->o:I

    sget v8, Lw0/u;->p:I

    const/4 v10, 0x1

    const/4 v11, 0x2

    const-string v9, "Porta-malas ao aproximar"

    invoke-direct/range {v6 .. v11}, Lw0/ge;-><init>(IILjava/lang/String;II)V

    new-instance v4, Lx1/a;

    const-string v5, "tail_approach"

    invoke-direct {v4, v5, v6}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lw0/ge;

    sget v8, Lw0/u;->q:I

    const/4 v12, 0x1

    const/4 v9, 0x0

    const-string v10, "Travamento por velocidade"

    invoke-direct/range {v7 .. v12}, Lw0/ge;-><init>(IILjava/lang/String;II)V

    new-instance v5, Lx1/a;

    const-string v6, "speed_auto_lock"

    invoke-direct {v5, v6, v7}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v3, v4, v5}, [Lx1/a;

    move-result-object v0

    invoke-static {v0}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->v:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lx1/a;

    const-string v3, "fl"

    invoke-direct {v2, v3, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lx1/a;

    const-string v4, "fr"

    invoke-direct {v1, v4, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v5, Lx1/a;

    const-string v6, "rl"

    invoke-direct {v5, v6, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v7, 0x40

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lx1/a;

    const-string v9, "rr"

    invoke-direct {v8, v9, v7}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v1, v5, v8}, [Lx1/a;

    move-result-object v1

    invoke-static {v1}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/PhoneSyncService;->w:Ljava/util/List;

    new-instance v1, Lx1/a;

    invoke-direct {v1, v3, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lx1/a;

    invoke-direct {v0, v4, v7}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lx1/a;

    invoke-direct {v3, v6, v2}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lx1/a;

    invoke-direct {v4, v9, v2}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v0, v3, v4}, [Lx1/a;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->x:Ljava/util/List;

    const-string v5, "i2c-mfi"

    const-string v6, "carplay-diag"

    const-string v1, "connadaptor-log"

    const-string v2, "connadaptor-logs"

    const-string v3, "mfi-kernel"

    const-string v4, "mfi-state"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->y:Ljava/util/List;

    return-void
.end method

.method public static D(Ljava/io/OutputStream;ILjava/lang/String;)V
    .locals 5

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v1, "getBytes(...)"

    invoke-static {p2, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_3

    const/16 v2, 0x19d

    if-eq p1, v2, :cond_2

    const/16 v2, 0x1f4

    if-eq p1, v2, :cond_1

    const/16 v2, 0x1f7

    if-eq p1, v2, :cond_0

    const-string v2, "Bad Request"

    goto :goto_0

    :cond_0
    const-string v2, "Service Unavailable"

    goto :goto_0

    :cond_1
    const-string v2, "Internal Server Error"

    goto :goto_0

    :cond_2
    const-string v2, "Payload Too Large"

    goto :goto_0

    :cond_3
    const-string v2, "OK"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP/1.1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\nConnection: close\r\nContent-Type: application/json; charset=utf-8\r\nContent-Length: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\r\n\r\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public static e(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Landroidx/emoji2/text/a;

    const/4 v1, 0x1

    invoke-direct {v7, v1, p1}, Landroidx/emoji2/text/a;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    const-wide/16 v3, 0x1e

    move v2, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static f(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const/16 p0, 0x3ff

    int-to-long v3, p0

    add-long/2addr v1, v3

    const/16 p0, 0x400

    int-to-long v3, p0

    div-long/2addr v1, v3

    long-to-int p0, v1

    const-string v1, "sizeKb"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/io/BufferedInputStream;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 8

    const/16 v0, 0x3f

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lo2/k;->x0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x26

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {p1, v1}, Lo2/k;->u0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v5, 0x3d

    const/4 v6, 0x6

    invoke-static {v2, v5, v3, v6}, Lo2/k;->j0(Ljava/lang/CharSequence;CII)I

    move-result v5

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v6, "substring(...)"

    invoke-static {v4, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lx1/a;

    invoke-direct {v5, v4, v2}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v2, v3

    :cond_3
    if-ge v2, p1, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    move-object v6, v5

    check-cast v6, Lx1/a;

    iget-object v6, v6, Lx1/a;->a:Ljava/lang/Object;

    const-string v7, "filename"

    invoke-static {v6, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_4
    move-object v5, v4

    :goto_2
    check-cast v5, Lx1/a;

    if-eqz v5, :cond_5

    iget-object p1, v5, Lx1/a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v4

    :goto_3
    const-string v1, "put(...)"

    const-string v2, "error"

    const-string v5, "ok"

    if-nez p1, :cond_6

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "filename obrigat\u00f3rio"

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_6
    invoke-static {p1}, Lcom/ex/auto/PhoneSyncService;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "nome inv\u00e1lido (use .wav)"

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_7
    const-wide/16 v6, 0x1

    cmp-long v6, v6, p2

    if-gtz v6, :cond_b

    const-wide/32 v6, 0x1900001

    cmp-long v6, p2, v6

    if-gez v6, :cond_b

    long-to-int v6, p2

    invoke-static {p0, v6}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/io/BufferedInputStream;I)[B

    move-result-object p0

    array-length v6, p0

    int-to-long v6, v6

    cmp-long p2, v6, p2

    if-eqz p2, :cond_8

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "upload interrompido"

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_8
    :try_start_0
    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw0/n;

    invoke-direct {p3, v3}, Lw0/n;-><init>(I)V

    const/16 v1, 0x2710

    invoke-static {p2, v1, v4, p3}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    new-instance p2, Ljava/io/File;

    const-string p3, "/data/local/tmp/sons"

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_5

    :cond_9
    :goto_4
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p3, v0, v3}, Ljava/io/File;->setReadable(ZZ)Z

    const-string p2, "PhoneSyncService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avas_sound salvo: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes)"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "message"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Som enviado: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u2014 abra o AvasSomAtivador no carro para aplicar"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catchall_0
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-static {p2, p0}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    :cond_a
    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_b
    const-wide/16 v6, 0x0

    cmp-long p1, p2, v6

    if-lez p1, :cond_c

    const-wide/32 v6, 0x1900000

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-static {p0, p1}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/io/BufferedInputStream;I)[B

    :cond_c
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "arquivo vazio ou acima de 25 MB"

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final j(JLjava/util/ArrayList;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 7

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :catch_0
    :cond_0
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "endMs"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v4, p0

    if-ltz v4, :cond_0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static final l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x26

    const/4 v2, 0x0

    aput-char v1, v0, v2

    invoke-static {p0, v0}, Lo2/k;->u0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v4, 0x3d

    const/4 v5, 0x6

    invoke-static {v1, v4, v2, v5}, Lo2/k;->j0(Ljava/lang/CharSequence;CII)I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "substring(...)"

    invoke-static {v3, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lx1/a;

    invoke-direct {v4, v3, v1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :cond_3
    if-ge v2, p0, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    move-object v4, v1

    check-cast v4, Lx1/a;

    iget-object v4, v4, Lx1/a;->a:Ljava/lang/Object;

    invoke-static {v4, p1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    check-cast v1, Lx1/a;

    if-eqz v1, :cond_5

    iget-object p0, v1, Lx1/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_5

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v3
.end method

.method public static n(Lorg/json/JSONArray;)Ljava/util/Set;
    .locals 5

    if-nez p0, :cond_0

    sget-object p0, Ly1/r;->a:Ly1/r;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v3}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static p(Ljava/io/BufferedInputStream;I)[B
    .locals 3

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "Incomplete request body"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-ne v1, p1, :cond_2

    return-object v0

    :cond_2
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string p1, "copyOf(...)"

    invoke-static {p0, p1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static q(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "Incomplete Bluetooth message"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/high16 v3, 0x100000

    if-ge v2, v3, :cond_4

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Bluetooth message too large"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "HTTP line too large"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    add-int/lit8 v5, v2, 0x1

    aput-byte v4, p0, v2

    move v2, v5

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static t(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ok"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "message"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "put(...)"

    invoke-static {p0, p1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-static {p0, v0}, Lo2/k;->z0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    invoke-static {p0, v0}, Lo2/k;->z0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[^A-Za-z0-9._-]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "replaceAll(...)"

    invoke-static {p0, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ".wav"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo2/t;->Z(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-gt v1, v0, :cond_1

    const/16 v1, 0x79

    if-ge v0, v1, :cond_1

    const-string v0, "."

    invoke-static {p0, v0}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "put(...)"

    const-string v1, "ok"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/ex/auto/PhoneSyncService;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, La1/g;

    const/16 v5, 0x16

    invoke-direct {v4, p0, p1, p3, v5}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "accepted"

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "confirmed"

    invoke-virtual {p1, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "message"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catch_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "operation already running"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final B(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    :goto_0
    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xc22

    if-eq v1, v2, :cond_5

    const v2, 0x18b13

    if-eq v1, v2, :cond_3

    const v2, 0x3643d4

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "temp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/ex/auto/PhoneSyncService;->r:Ljava/lang/Integer;

    iput-wide p3, p0, Lcom/ex/auto/PhoneSyncService;->s:J

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    const-string v1, "fan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/ex/auto/PhoneSyncService;->p:Ljava/lang/Integer;

    iput-wide p3, p0, Lcom/ex/auto/PhoneSyncService;->q:J

    goto :goto_1

    :cond_5
    const-string v1, "ac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/ex/auto/PhoneSyncService;->t:Ljava/lang/Boolean;

    iput-wide p3, p0, Lcom/ex/auto/PhoneSyncService;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public final C()Lorg/json/JSONObject;
    .locals 5

    const-wide/16 v0, 0x5dc

    invoke-static {v0, v1}, Lcom/ex/auto/VhalProviderService;->b(J)Lw0/wg;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->l:Lw0/xg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw0/xg;->b()Lw0/wg;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, v0, Lw0/wg;->a:Ljava/lang/Float;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v4, "speedKmh"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v3, v0, Lw0/wg;->b:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "gear"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    iget-object v3, v0, Lw0/wg;->c:Ljava/lang/String;

    if-eqz v3, :cond_4

    const-string v4, "gearLabel"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v3, v0, Lw0/wg;->d:Ljava/lang/Float;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v4, "socPct"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v3, v0, Lw0/wg;->e:Ljava/lang/Float;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v4, "rangeKm"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v3, v0, Lw0/wg;->f:Ljava/lang/Float;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v4, "odometerKm"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v3, v0, Lw0/wg;->g:Ljava/lang/Float;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v4, "instPowerKw"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v3, v0, Lw0/wg;->p:Ljava/lang/Float;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v4, "outsideTempC"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    iget-object v3, v0, Lw0/wg;->q:Ljava/lang/Float;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v4, "aux12vVolt"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    iget-object v3, v0, Lw0/wg;->m:Ljava/lang/Boolean;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "acOn"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_b
    iget-object v3, v0, Lw0/wg;->n:Ljava/lang/Integer;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "acFanLevel"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_c
    iget-object v3, v0, Lw0/wg;->o:Ljava/lang/Float;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v4, "hvacTempSetC"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    iget-object v3, v0, Lw0/wg;->G:Ljava/lang/Float;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v4, "chargeKw"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    iget-object v3, v0, Lw0/wg;->E:Ljava/lang/Boolean;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "charging"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_f
    iget-object v3, v0, Lw0/wg;->F:Ljava/lang/Boolean;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "dcfc"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_10
    iget-object v3, v0, Lw0/wg;->r:Ljava/lang/Integer;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "ignicao"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_11
    iget-object v3, v0, Lw0/wg;->h:Ljava/lang/Integer;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "consumoMedio100Raw"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_12
    iget-object v3, v0, Lw0/wg;->i:Ljava/lang/Integer;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "potMediaIpkRaw"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_13
    iget-object v3, v0, Lw0/wg;->j:Ljava/lang/Integer;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "odoEvdtRaw"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_14
    iget-object v3, v0, Lw0/wg;->s:Ljava/lang/Float;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v4, "tripAKm"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_15
    iget-object v3, v0, Lw0/wg;->t:Ljava/lang/Float;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v4, "tripBKm"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_16
    iget-object v3, v0, Lw0/wg;->u:Ljava/lang/Integer;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "tripATempoRaw"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_17
    iget-object v3, v0, Lw0/wg;->v:Ljava/lang/Integer;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "tripBTempoRaw"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_18
    iget-object v3, v0, Lw0/wg;->w:Ljava/lang/Float;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v4, "tripAVelMediaKmh"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_19
    iget-object v3, v0, Lw0/wg;->x:Ljava/lang/Float;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v4, "tripBVelMediaKmh"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1a
    iget-object v3, v0, Lw0/wg;->H:Ljava/lang/Boolean;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "vhalLive"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1b
    iget-object v3, v0, Lw0/wg;->I:Ljava/lang/String;

    if-eqz v3, :cond_1c

    const-string v4, "unknown"

    invoke-static {v3, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "carId"

    iget-object v0, v0, Lw0/wg;->I:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1c
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1d

    move-object v1, v2

    :cond_1d
    return-object v1
.end method

.method public final a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8

    const-string v0, "PhoneSyncService"

    const-string v1, "key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lw0/ee;->a:Lw0/ee;

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    sget-object v2, Lw0/ee;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw0/be;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "ok"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "chave desconhecida: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "put(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    iget-object v4, v2, Lw0/be;->c:Lw0/ce;

    sget-object v5, Lw0/ce;->b:Lw0/ce;

    if-ne v4, v5, :cond_1

    invoke-static {p0}, Lw0/ee;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lw0/ee;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    :goto_0
    iget-object v2, v2, Lw0/be;->b:Lw0/de;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v5, "value"

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-ne v2, v6, :cond_2

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_2
    new-instance p1, Landroidx/fragment/app/q;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_3
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    invoke-static {p0}, Lw0/ee;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-class v7, Lcom/ex/auto/CentralWatchdogService;

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    :try_start_1
    const-string v4, "auto_proxy_enabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_5

    :cond_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "auto_proxy_changed"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v4, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_5

    :catch_0
    move-exception v2

    goto/16 :goto_4

    :sswitch_1
    const-string v4, "auto_route_on_aa_connect"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_5

    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "auto_route_changed"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v4, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_5

    :sswitch_2
    const-string v3, "rvc_black_bg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_5

    :cond_6
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, La1/g;

    const/16 v7, 0x17

    invoke-direct {v4, v2, v1, p0, v7}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_5

    :sswitch_3
    const-string v4, "status_battery_enabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    :cond_8
    sget v2, Lw0/pg;->a:I

    invoke-static {p0}, Lw0/pg;->d(Landroid/content/Context;)V

    :goto_2
    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-static {}, Lw0/t1;->W()V

    goto/16 :goto_5

    :sswitch_4
    const-string v4, "hvac_stepper_enabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sget-boolean v3, Lcom/geely/hvacstepperv2/TempStepperService;->e0:Z

    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/geely/hvacstepperv2/TempStepperService;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v2, :cond_9

    if-nez v3, :cond_9

    invoke-virtual {p0, v4}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_5

    :cond_9
    if-nez v2, :cond_13

    if-eqz v3, :cond_13

    invoke-virtual {p0, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_5

    :sswitch_5
    const-string v2, "saved_regen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_5

    :sswitch_6
    const-string v2, "saved_drive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_5

    :cond_a
    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v2, "quick_access"

    invoke-static {v2}, Lw0/t1;->Y(Ljava/lang/String;)Z

    goto/16 :goto_5

    :sswitch_7
    const-string v4, "telemetry_autostart"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_5

    :cond_b
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "telemetry_on"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0, v3}, Lcom/ex/auto/VhalProviderService;->c(Landroid/content/Context;Z)V

    goto/16 :goto_5

    :sswitch_8
    const-string v4, "avas_muted_saved"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_5

    :cond_c
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lw0/d0;

    const/4 v7, 0x3

    invoke-direct {v4, p0, v2, v7}, Lw0/d0;-><init>(Ljava/lang/Object;ZI)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_5

    :sswitch_9
    const-string v3, "hvac_digital_ext_temp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_5

    :sswitch_a
    const-string v4, "status_temp_ext_enabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_5

    :cond_d
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    :cond_e
    sget v2, Lw0/pg;->a:I

    invoke-static {p0}, Lw0/pg;->e(Landroid/content/Context;)V

    :goto_3
    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-static {}, Lw0/t1;->W()V

    goto/16 :goto_5

    :sswitch_b
    const-string v2, "floater_alpha"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_5

    :cond_f
    new-instance v2, Landroid/content/Intent;

    const-string v3, "UPDATE_FLOATER_ALPHA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "alpha"

    invoke-static {p0}, Lw0/ee;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const/16 v7, 0x64

    invoke-interface {v4, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    :sswitch_c
    const-string v4, "quick_access_enabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_5

    :cond_10
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    sget-boolean v3, Lcom/ex/auto/QuickAccessFloaterService;->y0:Z

    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v2, :cond_11

    if-nez v3, :cond_11

    invoke-virtual {p0, v4}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_5

    :cond_11
    if-nez v2, :cond_13

    if-eqz v3, :cond_13

    invoke-virtual {p0, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_5

    :sswitch_d
    const-string v3, "hvac_digital_temp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_5

    :sswitch_e
    const-string v3, "hvac_digital_batt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_5

    :cond_12
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lw0/ab;

    const/4 v7, 0x6

    invoke-direct {v4, p0, v7, v2}, Lw0/ab;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    const-string v3, "applySideEffect("

    const-string v4, "): "

    invoke-static {v3, v1, v4}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_5
    const-string v2, "set_setting ativo: "

    const-string v3, " = "

    invoke-static {v2, v1, v3}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Config "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " aplicada"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/ex/auto/PhoneSyncService;->t(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5271050b -> :sswitch_e
        -0x5268c836 -> :sswitch_d
        -0x42c9ac08 -> :sswitch_c
        -0x38d6ce58 -> :sswitch_b
        -0x1ac43c1b -> :sswitch_a
        -0x1a057d8 -> :sswitch_9
        0x91819b -> :sswitch_8
        0xfd8a70d -> :sswitch_7
        0x17b429d2 -> :sswitch_6
        0x18738085 -> :sswitch_5
        0x2dfb7b44 -> :sswitch_4
        0x33d184c2 -> :sswitch_3
        0x4cd16625 -> :sswitch_2
        0x6bff5025 -> :sswitch_1
        0x6f6f3fe0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 6

    const-string v0, "central_boot.log"

    const-string v1, "central_logtail.log"

    const-string v2, "central_events.log"

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

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "getFilesDir(...)"

    invoke-static {v4, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 13

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/Download"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ex/auto/PhoneSyncService;->y:Ljava/util/List;

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v6, "getName(...)"

    invoke-static {v10, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "prefix"

    invoke-static {v11, v6}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Lo2/t;->b0(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lw0/b6;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lw0/b6;-><init>(I)V

    invoke-static {v1, v0}, Ly1/g;->i0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_4
    sget-object v0, Ly1/p;->a:Ly1/p;

    return-object v0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 12

    sget-object v0, Lw0/ee;->a:Lw0/ee;

    const-string v0, "?"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :catch_0
    :goto_0
    const-string v2, "v"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sget-object v4, Lw0/ee;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw0/be;

    iget-object v7, v5, Lw0/be;->c:Lw0/ce;

    iget-object v8, v5, Lw0/be;->a:Ljava/lang/String;

    sget-object v9, Lw0/ce;->b:Lw0/ce;

    if-ne v7, v9, :cond_1

    invoke-static {p0}, Lw0/ee;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    goto :goto_2

    :cond_1
    invoke-static {p0}, Lw0/ee;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    :goto_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    iget-object v10, v5, Lw0/be;->b:Lw0/de;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eqz v10, :cond_3

    if-ne v10, v6, :cond_2

    iget v5, v5, Lw0/be;->d:I

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v9, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    :cond_2
    new-instance v0, Landroidx/fragment/app/q;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v9, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_3
    const-string v5, "t"

    const-string v6, "phone_sync_meta"

    invoke-virtual {p0, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "getSharedPreferences(...)"

    invoke-static {v6, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    invoke-interface {v6, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v9, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "protocol"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "device"

    const-string v5, "central"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "version"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "settings"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "put(...)"

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "bleSegredoHex"

    sget-object v3, Lw0/u0;->a:Lw0/u0;

    invoke-static {p0}, Lw0/u0;->f(Landroid/content/Context;)[B

    move-result-object v3

    new-instance v4, Lw0/o;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Lw0/o;-><init>(I)V

    invoke-static {v3, v4}, Ly1/f;->b0([BLh2/l;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/ex/auto/PhoneSyncService;->C()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "telemetry"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v2, p0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v3, 0x0

    if-nez v2, :cond_7

    :cond_6
    move-object v4, v3

    goto :goto_4

    :cond_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    sget-object v5, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v5, Lw0/u;->d:I

    invoke-static {v2, v5, v6}, Lw0/p1;->b(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    const-string v8, "driverTemp"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    const/4 v7, 0x4

    invoke-static {v2, v5, v7}, Lw0/p1;->b(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const-string v5, "passengerTemp"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    invoke-virtual {p0}, Lcom/ex/auto/PhoneSyncService;->r()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v5, "fanLevel"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_a
    invoke-virtual {p0}, Lcom/ex/auto/PhoneSyncService;->o()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v5, "acOn"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_b
    iget-object v2, p0, Lcom/ex/auto/PhoneSyncService;->o:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    const-string v5, "fanTs"

    iget-wide v7, p0, Lcom/ex/auto/PhoneSyncService;->q:J

    invoke-virtual {v4, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "tempTs"

    iget-wide v7, p0, Lcom/ex/auto/PhoneSyncService;->s:J

    invoke-virtual {v4, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "acTs"

    iget-wide v7, p0, Lcom/ex/auto/PhoneSyncService;->u:J

    invoke-virtual {v4, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_6

    :goto_4
    if-eqz v4, :cond_c

    const-string v2, "hvac"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    iget-object v2, p0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_e

    :cond_d
    move-object v4, v3

    goto/16 :goto_8

    :cond_e
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    sget-object v5, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v5, Lw0/u;->r:I

    invoke-static {v2, v5, v1}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const-string v7, "locked"

    if-ne v5, v6, :cond_f

    move v5, v6

    goto :goto_5

    :cond_f
    move v5, v1

    :goto_5
    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_10
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, p0, Lcom/ex/auto/PhoneSyncService;->w:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v1

    :cond_11
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lx1/a;

    iget-object v10, v9, Lx1/a;->a:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v9, v9, Lx1/a;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    const v11, 0x16400b00

    invoke-static {v2, v11, v9}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-ne v8, v6, :cond_12

    move v8, v6

    goto :goto_7

    :cond_12
    move v8, v1

    :goto_7
    invoke-virtual {v5, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move v8, v6

    goto :goto_6

    :cond_13
    if-eqz v8, :cond_14

    const-string v2, "open"

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_d

    :goto_8
    if-eqz v4, :cond_15

    const-string v2, "doors"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_15
    iget-object v2, p0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_17

    :cond_16
    move-object v4, v3

    goto :goto_a

    :cond_17
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, p0, Lcom/ex/auto/PhoneSyncService;->x:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v1

    :cond_18
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lx1/a;

    iget-object v9, v8, Lx1/a;->a:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v8, v8, Lx1/a;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    const v10, 0x13400bc0

    invoke-static {v2, v10, v8}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move v7, v6

    goto :goto_9

    :cond_19
    if-eqz v7, :cond_16

    :goto_a
    if-eqz v4, :cond_1a

    const-string v2, "windows"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1a
    iget-object v2, p0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_1b

    goto :goto_d

    :cond_1b
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, p0, Lcom/ex/auto/PhoneSyncService;->v:Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v1

    :cond_1c
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw0/ge;

    sget-object v10, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v10, v8, Lw0/ge;->a:I

    iget v11, v8, Lw0/ge;->b:I

    invoke-static {v2, v10, v11}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_1c

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v7

    iget v8, v8, Lw0/ge;->e:I

    if-eq v7, v8, :cond_1d

    move v7, v6

    goto :goto_c

    :cond_1d
    move v7, v1

    :goto_c
    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move v7, v6

    goto :goto_b

    :cond_1e
    if-eqz v7, :cond_1f

    move-object v3, v4

    :cond_1f
    :goto_d
    if-eqz v3, :cond_20

    const-string v1, "presence"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_20
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final g(Ljava/io/Closeable;Ljava/util/concurrent/ThreadPoolExecutor;Lh2/a;)V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v1, La1/g;

    const/16 v2, 0x18

    invoke-direct {v1, p0, p3, p1, v2}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    :try_start_1
    const-string p2, "{\"ok\":false,\"error\":\"busy\"}"

    instance-of p3, p1, Ljava/net/Socket;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Ljava/net/Socket;

    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    const-string v0, "getOutputStream(...)"

    invoke-static {p3, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1f7

    invoke-static {p3, v0, p2}, Lcom/ex/auto/PhoneSyncService;->D(Ljava/io/OutputStream;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Landroid/bluetooth/BluetoothSocket;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    const-string p3, "{\"ok\":false,\"error\":\"busy\"}\n"

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    const-string v0, "getBytes(...)"

    invoke-static {p3, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method public final h(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    sget-object v3, Ly1/q;->a:Ly1/q;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "state"

    const-wide/16 v6, 0x0

    const-string v8, "error"

    const-string v9, "put(...)"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "ok"

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "telemetry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ex/auto/PhoneSyncService;->C()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v2, "apply(...)"

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :sswitch_1
    const-string v3, "trips"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const-string v0, "since"

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    :cond_3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v2, Lw0/m3;

    invoke-direct {v2, v1, v11}, Lw0/m3;-><init>(Landroid/app/Service;I)V

    invoke-virtual {v2}, Lw0/m3;->a()Ljava/util/ArrayList;

    move-result-object v2

    const-string v4, "trip"

    invoke-static {v6, v7, v2, v4}, Lcom/ex/auto/PhoneSyncService;->j(JLjava/util/ArrayList;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "charges"

    new-instance v3, Lw0/m3;

    invoke-direct {v3, v1, v10}, Lw0/m3;-><init>(Landroid/app/Service;I)V

    invoke-virtual {v3}, Lw0/m3;->a()Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "charge"

    invoke-static {v6, v7, v3, v4}, Lcom/ex/auto/PhoneSyncService;->j(JLjava/util/ArrayList;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "done"

    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_14

    :catch_0
    move-exception v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/ex/auto/PhoneSyncService;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :sswitch_3
    const-string v2, "merge"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/ex/auto/PhoneSyncService;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "applied"

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :sswitch_4
    const-string v2, "ping"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "service"

    const-string v3, "TelaPretaSync"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "protocol"

    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "device"

    const-string v3, "central"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :sswitch_5
    const-string v4, "action"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "op desconhecida: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_8
    const-string v0, "temp"

    const-string v4, "reboot"

    const-string v9, "a\u00e7\u00e3o desconhecida: "

    const-string v13, "Temperatura "

    if-eqz v2, :cond_9

    const-string v15, "name"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_9
    const/4 v15, 0x0

    :goto_1
    const-string v16, ""

    if-nez v15, :cond_a

    move-object/from16 v15, v16

    :cond_a
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v14, "on"

    const-string v10, "t"

    sparse-switch v17, :sswitch_data_1

    goto/16 :goto_12

    :sswitch_6
    :try_start_2
    const-string v0, "ac_power"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_12

    :cond_b
    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v10, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v14, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, v1, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_d

    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    :cond_d
    sget-object v5, Lw0/u;->B:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    const v9, 0x15600099

    if-ge v7, v6, :cond_f

    aget v10, v5, v7

    invoke-static {v2, v9, v10, v0}, Lw0/p1;->i(Landroid/car/hardware/property/CarPropertyManager;IIZ)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_4

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_f
    sget-object v5, Lw0/u;->B:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_c

    aget v10, v5, v7

    invoke-static {v2, v9, v10, v0}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v10

    if-eqz v10, :cond_10

    goto :goto_4

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :goto_4
    if-eqz v11, :cond_11

    const-string v2, "ac"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/ex/auto/PhoneSyncService;->B(Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_13

    :cond_11
    :goto_5
    if-eqz v0, :cond_12

    const-string v0, "A/C ligado"

    goto :goto_6

    :cond_12
    const-string v0, "A/C desligado"

    :goto_6
    invoke-static {v0, v11}, Lcom/ex/auto/PhoneSyncService;->t(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_7
    const-string v0, "set_setting"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_12

    :cond_13
    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/ex/auto/PhoneSyncService;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_8
    const-string v0, "modo_oficina_ocultar"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_12

    :cond_14
    sget-object v0, Lw0/wd;->a:Lw0/wd;

    invoke-static {v1}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v0, "j\u00e1 estava em modo oficina"

    invoke-static {v0, v11}, Lcom/ex/auto/PhoneSyncService;->t(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :cond_15
    const/16 v3, 0x18

    if-eqz v2, :cond_16

    const-string v4, "horas"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    :cond_16
    invoke-virtual {v0, v1, v3}, Lw0/wd;->c(Landroid/content/Context;I)Lw0/vd;

    move-result-object v0

    iget-boolean v2, v0, Lw0/vd;->a:Z

    iget-object v0, v0, Lw0/vd;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ex/auto/PhoneSyncService;->t(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_9
    const-string v0, "stream_stop"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_12

    :cond_17
    const-string v0, "phone-request"

    sget-object v2, Lw0/m;->i:Lw0/m6;

    if-eqz v2, :cond_18

    invoke-virtual {v2, v0}, Lw0/m6;->g(Ljava/lang/String;)V

    :cond_18
    const-string v0, "ExSapoCast encerrado"

    invoke-static {v0, v11}, Lcom/ex/auto/PhoneSyncService;->t(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_a
    const-string v0, "windows"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_12

    :cond_19
    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V

    const-string v0, "open"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, v1, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_1a

    const/4 v7, 0x0

    goto :goto_9

    :cond_1a
    if-eqz v0, :cond_1b

    const/16 v3, 0x64

    goto :goto_7

    :cond_1b
    const/4 v3, 0x0

    :goto_7
    sget-object v4, Lw0/u;->s:[I

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_8
    if-ge v6, v5, :cond_1d

    aget v9, v4, v6

    const v10, 0x13400bc0

    invoke-static {v2, v10, v9, v3}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v9

    if-eqz v9, :cond_1c

    move v7, v11

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_1d
    :goto_9
    if-eqz v0, :cond_1e

    const-string v0, "Janelas abrindo"

    goto :goto_a

    :cond_1e
    const-string v0, "Janelas fechando"

    :goto_a
    invoke-static {v0, v7}, Lcom/ex/auto/PhoneSyncService;->t(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_b
    const-string v0, "lock_doors"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_12

    :cond_1f
    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V

    const-string v0, "lock"

    invoke-virtual {v2, v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ex/auto/PhoneSyncService;->x(Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_c
    const-string v0, "hvac_fan"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_12

    :cond_20
    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v10, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "level"

    const/4 v5, 0x3

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-static {v0, v5, v2}, Lk1/a;->k(III)I

    move-result v0

    iget-object v2, v1, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_22

    :cond_21
    const/4 v11, 0x0

    goto :goto_c

    :cond_22
    iget-object v5, v1, Lcom/ex/auto/PhoneSyncService;->m:Ljava/lang/Integer;

    const v6, 0x15400500

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v2, v6, v5, v0}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_c

    :cond_23
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/ex/auto/PhoneSyncService;->m:Ljava/lang/Integer;

    :cond_24
    iget-object v5, v1, Lcom/ex/auto/PhoneSyncService;->n:[I

    array-length v7, v5

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v7, :cond_21

    aget v10, v5, v9

    invoke-static {v2, v6, v10, v0}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v13

    if-eqz v13, :cond_25

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/ex/auto/PhoneSyncService;->m:Ljava/lang/Integer;

    goto :goto_c

    :cond_25
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :goto_c
    if-eqz v11, :cond_26

    const-string v2, "fan"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/ex/auto/PhoneSyncService;->B(Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ventila\u00e7\u00e3o \u2192 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/ex/auto/PhoneSyncService;->t(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_d
    const-string v0, "modo_oficina_restaurar"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_12

    :cond_27
    sget-object v0, Lw0/wd;->a:Lw0/wd;

    invoke-static {v1}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v0, "n\u00e3o estava em modo oficina"

    invoke-static {v0, v11}, Lcom/ex/auto/PhoneSyncService;->t(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :cond_28
    const-string v2, "celular"

    invoke-virtual {v0, v1, v2}, Lw0/wd;->f(Landroid/content/Context;Ljava/lang/String;)Lw0/vd;

    move-result-object v0

    iget-boolean v2, v0, Lw0/vd;->a:Z

    iget-object v0, v0, Lw0/vd;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ex/auto/PhoneSyncService;->t(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_e
    const-string v0, "aa_deactivate"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_12

    :cond_29
    const-string v0, "rede.desativarAa"

    const-string v2, "Desativa\u00e7\u00e3o enviada"

    invoke-virtual {v1, v0, v2, v3}, Lcom/ex/auto/PhoneSyncService;->A(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_f
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_12

    :cond_2a
    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "Reiniciar"

    const-string v2, "reboot pedido pelo celular (sync)"

    invoke-static {v0, v2, v11}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/ex/auto/PhoneSyncService;->u()Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_10
    const/4 v5, 0x0

    const-string v0, "stream_offer"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v0, :cond_2b

    goto/16 :goto_12

    :cond_2b
    const-string v0, "pip"

    if-eqz v2, :cond_2c

    :try_start_3
    const-string v3, "display"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_d

    :cond_2c
    move-object v14, v5

    :goto_d
    if-nez v14, :cond_2d

    goto :goto_e

    :cond_2d
    move-object/from16 v16, v14

    :goto_e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_f

    :cond_2e
    move-object/from16 v0, v16

    :goto_f
    sget-object v2, Lw0/m;->b:Lw0/m;

    invoke-virtual {v2, v1, v0}, Lw0/m;->r(Lcom/ex/auto/PhoneSyncService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/ex/auto/PhoneSyncService;->t(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_11
    const-string v0, "list_logs"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_12

    :cond_2f
    invoke-virtual {v1}, Lcom/ex/auto/PhoneSyncService;->m()Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_12
    const-string v0, "presence"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_12

    :cond_30
    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V

    const-string v0, "key"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    goto :goto_10

    :cond_31
    const-string v3, "value"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_32

    goto :goto_10

    :cond_32
    const/4 v11, 0x0

    :goto_10
    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v11}, Lcom/ex/auto/PhoneSyncService;->y(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_13
    const-string v3, "hvac_set_temp"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto/16 :goto_12

    :cond_33
    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v10, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/high16 v5, 0x4036000000000000L    # 22.0

    invoke-virtual {v2, v0, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v5, v5

    const/high16 v6, 0x41880000    # 17.0f

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v5, v6, v7}, Lk1/a;->j(FFF)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    const-string v6, "zone"

    const-string v7, "driver"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "both"

    invoke-static {v2, v6}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_34

    invoke-virtual {v1, v11, v5}, Lcom/ex/auto/PhoneSyncService;->z(IF)Z

    move-result v6

    invoke-virtual {v1, v7, v5}, Lcom/ex/auto/PhoneSyncService;->z(IF)Z

    move-result v7

    or-int/2addr v6, v7

    goto :goto_11

    :cond_34
    const-string v6, "passenger"

    invoke-static {v2, v6}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-virtual {v1, v7, v5}, Lcom/ex/auto/PhoneSyncService;->z(IF)Z

    move-result v6

    goto :goto_11

    :cond_35
    invoke-virtual {v1, v11, v5}, Lcom/ex/auto/PhoneSyncService;->z(IF)Z

    move-result v6

    :goto_11
    if-eqz v6, :cond_36

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v0, v7, v3, v4}, Lcom/ex/auto/PhoneSyncService;->B(Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u2192 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " \u00b0C"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/ex/auto/PhoneSyncService;->t(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_14
    const-string v0, "aa_activate"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_12

    :cond_37
    const-string v0, "tela_preta_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "getSharedPreferences(...)"

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lw0/u;->d(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "rede.ativarConnAdaptor"

    const-string v3, "Ativa\u00e7\u00e3o AA/CarPlay enviada"

    const-string v4, "caApk"

    new-instance v5, Lx1/a;

    invoke-direct {v5, v4, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "caMd5"

    invoke-static {v0}, Lw0/t1;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lx1/a;

    invoke-direct {v6, v4, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v6}, [Lx1/a;

    move-result-object v0

    invoke-static {v0}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/ex/auto/PhoneSyncService;->A(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_15
    const-string v0, "proxy_ready"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_12

    :cond_38
    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V

    const-string v0, "ip"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "port"

    const/16 v4, 0x1f90

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "up"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v0, v3, v2}, Lw0/t1;->d0(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_14

    :sswitch_16
    const-string v0, "aa_restart"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    :goto_12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_14

    :cond_39
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v0, "aa_restart (celular)"

    invoke-static {v0}, Lw0/t1;->q(Ljava/lang/String;)Lw0/a5;

    move-result-object v0

    sget-object v2, Lw0/a5;->b:Lw0/a5;

    if-ne v0, v2, :cond_3a

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "projecao_em_curso"

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "message"

    const v3, 0x7f0f02d0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_14

    :cond_3a
    const-string v0, "rede.reiniciarAa"

    const-string v2, "Rein\u00edcio AA/CarPlay enviado"

    invoke-virtual {v1, v0, v2, v3}, Lcom/ex/auto/PhoneSyncService;->A(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_14

    :goto_13
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_3b
    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_14
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_5
        0x348172 -> :sswitch_4
        0x62fa438 -> :sswitch_3
        0x68ac491 -> :sswitch_2
        0x69810ee -> :sswitch_1
        0x2e8323b9 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7443cf10 -> :sswitch_16
        -0x6ea0036e -> :sswitch_15
        -0x62d361ce -> :sswitch_14
        -0x520fc8c0 -> :sswitch_13
        -0x4c186305 -> :sswitch_12
        -0x48f97f50 -> :sswitch_11
        -0x411bd323 -> :sswitch_10
        -0x37ba085b -> :sswitch_f
        0x13cf45f3 -> :sswitch_e
        0x2a3f4fd5 -> :sswitch_d
        0x40bf7004 -> :sswitch_c
        0x48c8ae71 -> :sswitch_b
        0x506fa283 -> :sswitch_a
        0x61012161 -> :sswitch_9
        0x69c04a94 -> :sswitch_8
        0x75a6ef73 -> :sswitch_7
        0x79d5d6a8 -> :sswitch_6
    .end sparse-switch
.end method

.method public final k(Ljava/io/BufferedInputStream;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 17

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    const-string v3, "Som de bloqueio aplicado: "

    const-string v4, "carlock bind ("

    const/16 v5, 0x3f

    const-string v6, ""

    move-object/from16 v7, p2

    invoke-static {v7, v5, v6}, Lo2/k;->x0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "remove"

    invoke-static {v5, v6}, Lcom/ex/auto/PhoneSyncService;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-static {v6, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const-string v8, "message"

    const-string v9, "getApplicationContext(...)"

    const-wide/16 v10, 0x0

    const-string v12, "put(...)"

    const-string v13, "ok"

    if-eqz v6, :cond_2

    cmp-long v3, v1, v10

    if-lez v3, :cond_0

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/io/BufferedInputStream;I)[B

    :cond_0
    sget-object v0, Lw0/qe;->a:Lw0/qe;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "audio.restaurarSomTrava"

    const/16 v2, 0xc

    invoke-static {v0, v1, v7, v2}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v0, "Som original restaurado"

    goto :goto_0

    :cond_1
    const-string v0, "Falha ao restaurar (sincronize a central uma vez)"

    :goto_0
    invoke-virtual {v1, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string v6, "filename"

    invoke-static {v5, v6}, Lcom/ex/auto/PhoneSyncService;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "error"

    const/4 v14, 0x0

    if-nez v5, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "filename obrigat\u00f3rio"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_3
    invoke-static {v5}, Lcom/ex/auto/PhoneSyncService;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "nome inv\u00e1lido (use .wav)"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_4
    const-wide/16 v15, 0x1

    cmp-long v15, v15, v1

    if-gtz v15, :cond_a

    const-wide/32 v15, 0x1900001

    cmp-long v15, v1, v15

    if-gez v15, :cond_a

    long-to-int v10, v1

    invoke-static {v0, v10}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/io/BufferedInputStream;I)[B

    move-result-object v0

    array-length v10, v0

    int-to-long v10, v10

    cmp-long v1, v10, v1

    if-eqz v1, :cond_5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "upload interrompido"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_5
    :try_start_0
    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw0/n;

    invoke-direct {v2, v14}, Lw0/n;-><init>(I)V

    const/16 v10, 0x2710

    invoke-static {v1, v10, v7, v2}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/sons"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :cond_6
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v14}, Ljava/io/File;->setReadable(ZZ)Z

    sget-object v0, Lw0/qe;->a:Lw0/qe;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "audio.aplicarSomTrava"

    const-string v7, "wav"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lx1/a;

    invoke-direct {v9, v7, v2}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v9}, Ly1/s;->W(Lx1/a;)Ljava/util/Map;

    move-result-object v2

    const/16 v7, 0x8

    invoke-static {v0, v1, v2, v7}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v0

    const-string v1, "PhoneSyncService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    move-object v4, v13

    goto :goto_2

    :cond_7
    const-string v4, "falhou"

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v0, :cond_8

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    const-string v0, "Falha ao aplicar o som"

    :goto_3
    invoke-virtual {v1, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

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
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_5
    return-object v0

    :cond_a
    cmp-long v3, v1, v10

    if-lez v3, :cond_b

    const-wide/32 v3, 0x1900000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/io/BufferedInputStream;I)[B

    :cond_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "arquivo vazio ou acima de 25 MB"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final m()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/ex/auto/PhoneSyncService;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/io/File;

    invoke-static {v4}, Lcom/ex/auto/PhoneSyncService;->f(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/ex/auto/PhoneSyncService;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {v3}, Lcom/ex/auto/PhoneSyncService;->f(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ok"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "logger"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "telapretacentral"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "put(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final o()Ljava/lang/Boolean;
    .locals 7

    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lw0/u;->B:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const v5, 0x15600099

    if-ge v4, v2, :cond_2

    aget v6, v1, v4

    invoke-static {v0, v5, v6}, Lw0/p1;->a(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lw0/u;->B:[I

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_5

    aget v6, v1, v4

    invoke-static {v0, v5, v6}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/app/NotificationChannel;

    const v1, 0x7f0f0286

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "phone_sync"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v1, v2}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    sget-object v0, Lw0/ee;->a:Lw0/ee;

    invoke-virtual {v0, p0}, Lw0/ee;->b(Landroid/app/Service;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ex/auto/PhoneSyncService;->a:Z

    sput-boolean v0, Lcom/ex/auto/PhoneSyncService;->z:Z

    sget-object v1, Lw0/m;->j:Lw0/m;

    const-string v2, "unregister: "

    monitor-enter v1

    :try_start_0
    sget-object v3, Lw0/m;->k:Landroid/net/nsd/NsdManager;

    sget-object v4, Lw0/m;->l:Lw0/xd;

    const/4 v5, 0x0

    sput-object v5, Lw0/m;->l:Lw0/xd;

    sput-object v5, Lw0/m;->k:Landroid/net/nsd/NsdManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    const-string v4, "NsdAnuncio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :cond_1
    :goto_1
    monitor-exit v1

    :goto_2
    sget-object v2, Lw0/u0;->a:Lw0/u0;

    monitor-enter v2

    :try_start_3
    sput-object v5, Lw0/u0;->l:Landroid/content/Context;

    sput-boolean v0, Lw0/u0;->m:Z

    sget-object v0, Lw0/u0;->k:Le/l;

    if-eqz v0, :cond_2

    sget-object v1, Lw0/u0;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_5

    :cond_2
    :goto_3
    sput-object v5, Lw0/u0;->k:Le/l;

    sget-object v0, Lw0/u0;->o:Lw0/r0;

    if-eqz v0, :cond_3

    sget-object v1, Lw0/u0;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    sput-object v5, Lw0/u0;->o:Lw0/r0;

    sget-object v0, Lw0/u0;->f:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    sget-object v1, Lw0/u0;->g:Lw0/s0;

    sput-object v5, Lw0/u0;->f:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    sput-object v5, Lw0/u0;->g:Lw0/s0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_4
    monitor-exit v2

    sget-object v0, Lw0/u0;->a:Lw0/u0;

    monitor-enter v0

    :try_start_5
    sget-object v1, Lw0/u0;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    sget-object v1, Lw0/u0;->h:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattServer;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    :cond_5
    :try_start_7
    sput-object v5, Lw0/u0;->h:Landroid/bluetooth/BluetoothGattServer;

    sput-object v5, Lw0/u0;->i:Landroid/bluetooth/BluetoothGattCharacteristic;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    monitor-exit v0

    :try_start_8
    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->b:Ljava/net/ServerSocket;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    :cond_6
    :try_start_9
    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    :cond_7
    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    const-string v1, "activeClients"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_2
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    :try_start_a
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->clear()V

    :try_start_b
    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->i:Landroid/car/Car;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :catch_3
    :cond_9
    iput-object v5, p0, Lcom/ex/auto/PhoneSyncService;->i:Landroid/car/Car;

    iput-object v5, p0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    iput-object v5, p0, Lcom/ex/auto/PhoneSyncService;->k:Landroid/car/media/CarAudioManager;

    iput-object v5, p0, Lcom/ex/auto/PhoneSyncService;->l:Lw0/xg;

    const-string v0, "PhoneSyncService"

    const-string v1, "PhoneSyncService destru\u00eddo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catchall_5
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v1

    :goto_5
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v0

    :goto_6
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    const p1, 0xbab9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f0f0287

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/app/Notification$Builder;

    const-string p3, "phone_sync"

    invoke-direct {p2, p0, p3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p3, 0x1080080

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const p3, 0x7f0f0288

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x34

    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    sget-boolean p1, Lcom/ex/auto/PhoneSyncService;->z:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    sput-boolean p2, Lcom/ex/auto/PhoneSyncService;->z:Z

    iput-boolean p2, p0, Lcom/ex/auto/PhoneSyncService;->a:Z

    const/4 p1, 0x3

    const/4 p3, 0x0

    :try_start_0
    new-instance v0, La1/p;

    invoke-direct {v0, p0, p1}, La1/p;-><init>(Landroid/content/ContextWrapper;I)V

    const-wide/16 v1, 0x0

    invoke-static {p0, p3, v1, v2, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->i:Landroid/car/Car;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PhoneSyncService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connectCar: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lw0/fe;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lw0/fe;-><init>(Lcom/ex/auto/PhoneSyncService;I)V

    const-string v3, "phone-sync-tcp"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lw0/fe;

    invoke-direct {v1, p0, p2}, Lw0/fe;-><init>(Lcom/ex/auto/PhoneSyncService;I)V

    const-string v3, "phone-sync-bt"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lw0/fe;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lw0/fe;-><init>(Lcom/ex/auto/PhoneSyncService;I)V

    const-string v3, "phone-sync-hvac"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Lw0/m;->j:Lw0/m;

    const-string v1, "registerService falhou: "

    const-string v3, "EX Sapo "

    monitor-enter v0

    :try_start_1
    sget-object v4, Lw0/m;->l:Lw0/xd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    monitor-exit v0

    goto/16 :goto_4

    :cond_1
    :try_start_2
    const-string v4, "servicediscovery"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/net/nsd/NsdManager;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/net/nsd/NsdManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_f

    :cond_2
    move-object v4, p3

    :goto_1
    if-nez v4, :cond_3

    monitor-exit v0

    goto :goto_4

    :cond_3
    :try_start_3
    invoke-static {p0}, Lw0/m;->n(Lcom/ex/auto/PhoneSyncService;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    :try_start_5
    const-string v6, "0"

    :goto_2
    new-instance v7, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v7}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    const-string v3, "_exsapo._tcp."

    invoke-virtual {v7, v3}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    const v3, 0xbab8

    invoke-virtual {v7, v3}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    const-string v3, "v"

    const-string v8, "1"

    invoke-virtual {v7, v3, v8}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "id"

    invoke-virtual {v7, v3, v5}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "vc"

    invoke-virtual {v7, v3, v6}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sync"

    const-string v8, "47801"

    invoke-virtual {v7, v3, v8}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lw0/xd;

    invoke-direct {v3, v5, v6}, Lw0/xd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lw0/m;->k:Landroid/net/nsd/NsdManager;

    sput-object v3, Lw0/m;->l:Lw0/xd;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v4, v7, p2, v3}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v3

    :try_start_7
    sput-object p3, Lw0/m;->l:Lw0/xd;

    const-string v4, "NsdAnuncio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    monitor-exit v0

    :goto_4
    sget-object v0, Lw0/u0;->a:Lw0/u0;

    :try_start_8
    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroid/bluetooth/BluetoothManager;

    if-eqz v3, :cond_4

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    goto :goto_5

    :catchall_3
    move-exception p1

    goto/16 :goto_d

    :cond_4
    move-object v1, p3

    :goto_5
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    goto :goto_6

    :cond_5
    move-object v1, p3

    :goto_6
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v1, :cond_10

    monitor-enter v0

    :try_start_9
    sget-object v1, Lw0/u0;->g:Lw0/s0;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v1, :cond_6

    monitor-exit v0

    goto :goto_8

    :cond_6
    :try_start_a
    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroid/bluetooth/BluetoothManager;

    if-eqz v3, :cond_7

    check-cast v1, Landroid/bluetooth/BluetoothManager;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception p1

    goto/16 :goto_c

    :cond_7
    move-object v1, p3

    :goto_7
    if-nez v1, :cond_8

    monitor-exit v0

    goto :goto_8

    :cond_8
    :try_start_b
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-nez v1, :cond_9

    monitor-exit v0

    goto :goto_8

    :cond_9
    :try_start_c
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v1

    if-nez v1, :cond_a

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "BleCarro"

    const-string v3, "farol: este r\u00e1dio n\u00e3o tem advertiser (getBluetoothLeAdvertiser = null) \u2014 recurso indispon\u00edvel neste aparelho"

    invoke-static {v1, v3, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    monitor-exit v0

    goto :goto_8

    :cond_a
    :try_start_d
    sput-object v1, Lw0/u0;->f:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lw0/u0;->l:Landroid/content/Context;

    new-instance v3, Lw0/s0;

    invoke-direct {v3, p0}, Lw0/s0;-><init>(Lcom/ex/auto/PhoneSyncService;)V

    sput-object v3, Lw0/u0;->g:Lw0/s0;

    invoke-static {p0, v1, v3}, Lw0/u0;->b(Landroid/content/Context;Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;)V

    invoke-static {p0}, Lw0/u0;->a(Landroid/content/Context;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    monitor-exit v0

    :goto_8
    monitor-enter v0

    :try_start_e
    sget-object v1, Lw0/u0;->h:Landroid/bluetooth/BluetoothGattServer;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v1, :cond_b

    monitor-exit v0

    goto :goto_a

    :cond_b
    :try_start_f
    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroid/bluetooth/BluetoothManager;

    if-eqz v3, :cond_c

    move-object p3, v1

    check-cast p3, Landroid/bluetooth/BluetoothManager;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception p1

    goto :goto_b

    :cond_c
    :goto_9
    if-nez p3, :cond_d

    monitor-exit v0

    goto :goto_a

    :cond_d
    :try_start_10
    new-instance v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v3, Lw0/u0;->c:Ljava/util/UUID;

    const/16 v4, 0x12

    invoke-direct {v1, v3, v4, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    new-instance v3, Landroid/bluetooth/BluetoothGattDescriptor;

    sget-object v4, Lw0/u0;->d:Ljava/util/UUID;

    const/16 v5, 0x11

    invoke-direct {v3, v4, v5}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Ljava/util/UUID;I)V

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    new-instance v3, Landroid/bluetooth/BluetoothGattService;

    sget-object v4, Lw0/u0;->b:Ljava/util/UUID;

    invoke-direct {v3, v4, v2}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    new-instance v4, Lw0/t0;

    invoke-direct {v4}, Landroid/bluetooth/BluetoothGattServerCallback;-><init>()V

    invoke-virtual {p3, p0, v4}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object p3

    sput-object p3, Lw0/u0;->h:Landroid/bluetooth/BluetoothGattServer;

    sget-object p3, Lw0/u0;->h:Landroid/bluetooth/BluetoothGattServer;

    if-nez p3, :cond_e

    sget-object p3, Lw0/ae;->a:Lw0/ae;

    const-string p3, "BleCarro"

    const-string v1, "gatt: openGattServer devolveu null"

    invoke-static {p3, v1, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    monitor-exit v0

    goto :goto_a

    :cond_e
    :try_start_11
    sput-object v1, Lw0/u0;->i:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object p3, Lw0/u0;->h:Landroid/bluetooth/BluetoothGattServer;

    if-eqz p3, :cond_f

    invoke-virtual {p3, v3}, Landroid/bluetooth/BluetoothGattServer;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    :cond_f
    sget-object p3, Lw0/ae;->a:Lw0/ae;

    const-string p3, "BleCarro"

    const-string v1, "gatt no ar"

    invoke-static {p3, v1, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    monitor-exit v0

    :goto_a
    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lw0/fe;

    invoke-direct {v0, p0, p1}, Lw0/fe;-><init>(Lcom/ex/auto/PhoneSyncService;I)V

    const-string p1, "phone-sync-ble"

    invoke-direct {p3, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    goto :goto_e

    :goto_b
    :try_start_12
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw p1

    :goto_c
    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw p1

    :goto_d
    const-string p3, "BleCarro"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "podeAnunciar: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, p3}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_10
    sget-object p1, Lw0/ae;->a:Lw0/ae;

    const-string p1, "PhoneSyncService"

    const-string p3, "BLE: este r\u00e1dio n\u00e3o anuncia \u2014 s\u00f3 mDNS e os canais de sempre"

    invoke-static {p1, p3, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_e
    const-string p1, "PhoneSyncService"

    const-string p3, "PhoneSyncService iniciado"

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :goto_f
    :try_start_14
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    throw p1
.end method

.method public final r()Ljava/lang/Integer;
    .locals 6

    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/ex/auto/PhoneSyncService;->m:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v1, v3, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/ex/auto/PhoneSyncService;->n:[I

    :goto_0
    array-length v1, v3

    :goto_1
    if-ge v2, v1, :cond_3

    aget v4, v3, v2

    const v5, 0x15400500

    invoke-static {v0, v5, v4}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final u()Lorg/json/JSONObject;
    .locals 6

    const-string v0, "put(...)"

    const-string v1, "ok"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/ex/auto/PhoneSyncService;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lw0/r0;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Lw0/r0;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "accepted"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "confirmed"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "message"

    const-string v3, "Reboot enviado"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :catch_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "error"

    const-string v3, "operation already running"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final w(Lorg/json/JSONObject;Ljava/io/OutputStream;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "toString(...)"

    const-string v3, "error"

    const-string v4, "ok"

    const-string v5, "PhoneSyncService"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v8, "logger"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    move-object v8, v6

    :goto_0
    invoke-static {v8}, Lcom/ex/auto/PhoneSyncService;->n(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v8

    if-eqz v0, :cond_1

    const-string v6, "telapretacentral"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    :cond_1
    invoke-static {v6}, Lcom/ex/auto/PhoneSyncService;->n(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/PhoneSyncService;->c()Ljava/util/List;

    move-result-object v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/PhoneSyncService;->b()Ljava/util/ArrayList;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v7

    :cond_4
    :goto_2
    if-ge v11, v10, :cond_5

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    move-object v13, v12

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v9, v8}, Ly1/g;->g0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "nenhum log v\u00e1lido escolhido"

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x190

    invoke-static {v1, v6, v0}, Lcom/ex/auto/PhoneSyncService;->D(Ljava/io/OutputStream;ILjava/lang/String;)V

    return-void

    :cond_6
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v9, v8}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move v0, v7

    :goto_3
    const-string v11, "logs_zip: "

    if-ge v0, v10, :cond_7

    :try_start_2
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v0, 0x1

    check-cast v12, Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v14, v9}, La1/b;->r(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v15, v0

    :try_start_6
    throw v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-static {v14, v15}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_4
    :try_start_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " falhou: "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_5
    move v0, v13

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v6, v0

    goto :goto_6

    :cond_7
    :try_start_9
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v8, Lw0/ae;->a:Lw0/ae;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " arquivo(s), "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v0

    div-int/lit16 v6, v6, 0x400

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " KB"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v7}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP/1.1 200 OK\r\nContent-Type: application/zip\r\nContent-Length: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\r\nConnection: close\r\n\r\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v9, "UTF_8"

    invoke-static {v8, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const-string v8, "getBytes(...)"

    invoke-static {v6, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    :goto_6
    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-static {v9, v6}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "servirZipDeLogs: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v5}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :try_start_c
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "falha ao montar o zip"

    :cond_8
    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x1f4

    invoke-static {v1, v2, v0}, Lcom/ex/auto/PhoneSyncService;->D(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    :goto_8
    return-void
.end method

.method public final x(Z)Lorg/json/JSONObject;
    .locals 12

    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    const-string v1, "ok"

    const-string v2, "error"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "sem CarPropertyManager"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "put(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    const-string v4, "trancar"

    goto :goto_0

    :cond_1
    const-string v4, "destrancar"

    :goto_0
    sget v5, Lw0/u;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lx1/a;

    const-string v7, "principal"

    invoke-direct {v6, v5, v7}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget v5, Lw0/u;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v7, Lx1/a;

    const-string v8, "fallback"

    invoke-direct {v7, v5, v8}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v6, v7}, [Lx1/a;

    move-result-object v5

    invoke-static {v5}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lx1/a;

    iget-object v9, v7, Lx1/a;->a:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    iget-object v7, v7, Lx1/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v0, v9, v3, p1}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": escrita falhou ou estourou o prazo"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-wide/16 v10, 0xc8

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {v0, v9, v3}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v7, ""

    move-object v0, v8

    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    const-string v9, "Trava ("

    if-nez v5, :cond_9

    const-string v10, "): nenhuma prop aceitou a escrita ("

    invoke-static {v9, v4, v10}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    instance-of v9, v6, Ljava/util/List;

    if-eqz v9, :cond_6

    move-object v9, v6

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    :goto_4
    move-object v3, v8

    goto :goto_5

    :cond_5
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_5

    :cond_6
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    :goto_5
    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_8

    const-string v3, "?"

    :cond_8
    const/16 v9, 0x29

    invoke-static {v4, v3, v9}, Landroidx/activity/result/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_9
    const/16 v3, 0x3d

    const-string v10, "): escrito "

    if-eqz v0, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rel\u00ea="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " \u2014 confira se o carro respondeu"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (prop n\u00e3o leg\u00edvel) \u2014 confira no carro"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "lock_doors lock="

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " prop="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " wrote="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " readBack="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " errs="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "PhoneSyncService"

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "message"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "wrote"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "prop"

    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "value"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz v0, :cond_b

    const-string v1, "after"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_b
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "; "

    const/16 v1, 0x3e

    invoke-static {v6, v0, v8, v1}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    if-nez v5, :cond_d

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final y(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 13

    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->v:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/ge;

    const-string v1, "put(...)"

    const-string v2, "ok"

    const-string v3, "error"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "chave desconhecida: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    iget-object v5, p0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v5, :cond_1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "sem CarPropertyManager"

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    iget v1, v0, Lw0/ge;->d:I

    goto :goto_0

    :cond_2
    iget v1, v0, Lw0/ge;->e:I

    :goto_0
    iget-object v6, p0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    sget-object v8, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v8, v0, Lw0/ge;->a:I

    iget v9, v0, Lw0/ge;->b:I

    invoke-static {v6, v8, v9}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v7

    :goto_1
    iget v8, v0, Lw0/ge;->a:I

    iget v9, v0, Lw0/ge;->b:I

    invoke-static {v5, v8, v9, v1}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v8, v7

    goto :goto_2

    :cond_4
    const-string v8, "escrita falhou ou estourou o prazo"

    :goto_2
    const-wide/16 v9, 0xc8

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v9, p0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v9, :cond_5

    sget-object v7, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v7, v0, Lw0/ge;->a:I

    iget v10, v0, Lw0/ge;->b:I

    invoke-static {v9, v7, v10}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v7

    :cond_5
    const/4 v9, 0x1

    if-eqz v7, :cond_6

    move v10, v9

    goto :goto_3

    :cond_6
    move v10, v4

    :goto_3
    if-eqz v10, :cond_8

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v1, :cond_8

    move v11, v9

    goto :goto_5

    :cond_8
    :goto_4
    move v11, v4

    :goto_5
    if-eqz v5, :cond_a

    if-nez v11, :cond_9

    if-nez v10, :cond_a

    :cond_9
    move v4, v9

    :cond_a
    if-nez v5, :cond_c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lw0/ge;->c:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": erro ao escrever ("

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_b

    const-string v9, "?"

    goto :goto_6

    :cond_b
    move-object v9, v8

    :goto_6
    const/16 v12, 0x29

    invoke-static {p2, v9, v12}, Landroidx/activity/result/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_c
    if-eqz v11, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lw0/ge;->c:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_d

    const-string p2, "ligado"

    goto :goto_7

    :cond_d
    const-string p2, "desligado"

    :goto_7
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u2713 confirmado"

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_e
    if-nez v10, :cond_f

    iget-object p2, v0, Lw0/ge;->c:Ljava/lang/String;

    const-string v9, ": escrito, mas o carro n\u00e3o exp\u00f5e leitura p/ confirmar"

    invoke-virtual {p2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lw0/ge;->c:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": N\u00c3O persistiu (pedido="

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", carro="

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ") \u2014 VHAL ignorou"

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_8
    const-string v9, "presence "

    const-string v12, " prop="

    invoke-static {v9, p1, v12}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v9, v0, Lw0/ge;->a:I

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " area="

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lw0/ge;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " target="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " before="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " after="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " wrote="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " confirmed="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " err="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneSyncService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "message"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "wrote"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "target"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "readable"

    invoke-virtual {p1, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "confirmed"

    invoke-virtual {p1, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz v6, :cond_10

    const-string v0, "before"

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_10
    if-eqz v7, :cond_11

    const-string v0, "after"

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_11
    if-eqz v8, :cond_12

    invoke-virtual {p1, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    if-nez v4, :cond_13

    if-nez v8, :cond_13

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final z(IF)Z
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget v1, Lw0/u;->d:I

    invoke-static {v0, v1, p1, p2}, Lw0/p1;->j(Landroid/car/hardware/property/CarPropertyManager;IIF)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setZoneTemp area=0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": escrita falhou"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneSyncService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p2
.end method
