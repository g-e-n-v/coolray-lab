.class public abstract Lw0/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:J = 0x0L

.field public static volatile b:Lw0/s1; = null

.field public static final c:[I

.field public static final d:[I

.field public static final e:Ljava/lang/Object;

.field public static f:Landroid/app/AlertDialog; = null

.field public static volatile g:Z = false

.field public static volatile h:Ljava/lang/String; = "/data/local/tmp/fixes/central_boot.log"


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    sget-object v0, Lw0/s1;->c:Lw0/s1;

    sput-object v0, Lw0/t1;->b:Lw0/s1;

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lw0/t1;->c:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lw0/t1;->d:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw0/t1;->e:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        -0xe246ac
        -0x1
        -0x14c5
        -0xff1a01
        -0xadae
        -0x58da
    .end array-data

    :array_1
    .array-data 4
        -0xedebe9
        -0x1000000
        -0xe5dc82
        -0xcee46e
        -0xc1d8dd
        -0xffb2c0
    .end array-data
.end method

.method public static final A(ILw0/n4;)Lw0/m4;
    .locals 1

    const-string v0, "exib"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lw0/n4;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p0, :cond_1

    :goto_0
    sget-object p0, Lw0/m4;->c:Lw0/m4;

    return-object p0

    :cond_1
    iget-boolean p0, p1, Lw0/n4;->b:Z

    if-eqz p0, :cond_2

    sget-object p0, Lw0/m4;->a:Lw0/m4;

    return-object p0

    :cond_2
    sget-object p0, Lw0/m4;->b:Lw0/m4;

    return-object p0
.end method

.method public static final B(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Set;)Lw0/n4;
    .locals 2

    const-string v0, "validos"

    invoke-static {p2, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    new-instance p1, Lw0/n4;

    invoke-direct {p1, p0, p2, p2}, Lw0/n4;-><init>(Ljava/lang/Integer;ZZ)V

    return-object p1

    :cond_1
    new-instance v0, Lw0/n4;

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    move p2, v1

    :cond_2
    invoke-direct {v0, p1, v1, p2}, Lw0/n4;-><init>(Ljava/lang/Integer;ZZ)V

    return-object v0
.end method

.method public static C(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v7, p1

    const/4 v1, 0x1

    if-eqz v7, :cond_1

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    :goto_0
    new-instance p1, Lw0/o6;

    invoke-direct {p1, p0}, Lw0/o6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method public static final D(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/Notification;
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/NotificationChannel;

    invoke-direct {v1, p1, p2, p6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    new-instance p2, Landroid/app/Notification$Builder;

    invoke-direct {p2, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string p1, "setSmallIcon(...)"

    invoke-static {p0, p1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    invoke-virtual {p0, p5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic E(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/Notification;
    .locals 7

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lw0/t1;->D(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static F(Landroid/os/IBinder;)Ljava/util/List;
    .locals 14

    const-string v1, "CarplayDeviceBinder"

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v0, "obtain(...)"

    invoke-static {v2, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v3, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    const-string v0, "com.njda.carplay.connection.devicelist.ICarplayDeviceManager"

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v0, 0x8

    const/4 v5, 0x0

    invoke-interface {p0, v0, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "transact(getDeviceList) devolveu false"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-gez p0, :cond_1

    sget-object p0, Ly1/p;->a:Ly1/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v5, p0, :cond_3

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    new-instance v7, Lw0/r1;

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/os/Parcel;->readByte()B

    move-result v11

    invoke-virtual {v3}, Landroid/os/Parcel;->readByte()B

    move-result v12

    invoke-virtual {v3}, Landroid/os/Parcel;->readByte()B

    move-result v13

    invoke-direct/range {v7 .. v13}, Lw0/r1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BBB)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :goto_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceList(txn 8): "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static G(Landroid/os/IBinder;)Ljava/util/List;
    .locals 12

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v0, "obtain(...)"

    invoke-static {v1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {v2, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "com.njda.adapter.androidauto.connection.devicelist.IDeviceManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v0, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-gez p0, :cond_0

    sget-object p0, Ly1/p;->a:Ly1/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v3, p0, :cond_2

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    new-instance v5, Lw0/a;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {v2}, Landroid/os/Parcel;->readByte()B

    move-result v11

    invoke-direct/range {v5 .. v11}, Lw0/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :goto_1
    :try_start_2
    const-string v0, "AaDeviceBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceList(txn 6): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static H(Lcom/ex/auto/LyricsFloaterService;)I
    .locals 2

    const-string v0, "lyrics_style_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "font"

    const v1, -0xe246ac

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static I(Lcom/ex/auto/LyricsFloaterService;)F
    .locals 2

    const-string v0, "lyrics_style_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    const v0, 0x3f19999a    # 0.6f

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v0, v1}, Lk1/a;->j(FFF)F

    move-result p0

    return p0
.end method

.method public static J(Ljava/io/File;Z)V
    .locals 6

    const-string v0, "getAbsolutePath(...)"

    const-string v1, "/data/local/tmp/fixes"

    const-string v2, "chown system:system "

    :try_start_0
    invoke-static {p1}, Lw0/t1;->u(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lf2/d;->i0(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "grava\u00e7\u00e3o direta falhou ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") \u2014 apagando o arquivo alheio e recriando"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BootScript"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    new-instance v3, Lkotlinx/coroutines/scheduling/h;

    const/16 v5, 0x15b3

    invoke-direct {v3, v5}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lw0/e8;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lw0/e8;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null; chmod 775 "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lw0/e8;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 2>/dev/null; chmod 664 "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lw0/e8;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>/dev/null; echo perms_ok"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f40

    invoke-virtual {v3, v1, v0}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canal root indispon\u00edvel pra corrigir permiss\u00f5es: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {p1}, Lw0/t1;->u(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lf2/d;->i0(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static K(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "ip"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "^[0-9]{1,3}(\\.[0-9]{1,3}){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    new-array v2, v0, [C

    const/16 v3, 0x2e

    aput-char v3, v2, v1

    invoke-static {p0, v2}, Lo2/k;->u0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x100

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-ltz v2, :cond_3

    if-ge v2, v3, :cond_3

    goto :goto_0

    :cond_2
    :goto_2
    return v0

    :cond_3
    return v1
.end method

.method public static final L(Ljava/lang/Long;Ljava/lang/Integer;)Lw0/i5;
    .locals 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-nez p0, :cond_0

    sget-object p0, Lw0/i5;->b:Lw0/i5;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lw0/i5;->c:Lw0/i5;

    return-object p0

    :cond_1
    sget-object p0, Lw0/i5;->a:Lw0/i5;

    return-object p0
.end method

.method public static final M(Lw0/u3;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "executadoDeVerdade"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SOMBRA] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lw0/t3;->a:Lw0/t3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lw0/r3;->a:Lw0/r3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \u2192 teria "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw0/u3;->a:Lw0/q3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lw0/u3;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") \u00b7 de fato: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static N(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    const-string v0, "background_keep_alive_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "packages"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ly1/p;->a:Ly1/p;

    return-object p0

    :cond_0
    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2}, Lo2/k;->v0(Ljava/lang/String;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_2
    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public static O(Landroid/content/Context;I)Lw0/k;
    .locals 10

    const-string v0, "ctx"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ac_programs_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "program_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "steps"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lw0/l;

    const-string v7, "type"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getString(...)"

    invoke-static {v7, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "value"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lw0/l;-><init>(Ljava/lang/String;D)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lw0/k;

    const-string v3, "repeat"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "restaurarAnterior"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {v2, p0, v3, p1}, Lw0/k;-><init>(Ljava/util/ArrayList;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    :goto_1
    return-object v0
.end method

.method public static P(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    const-string v0, "ctx"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "close_apps_whitelist_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "packages"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ly1/p;->a:Ly1/p;

    return-object p0

    :cond_0
    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2}, Lo2/k;->v0(Ljava/lang/String;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_2
    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public static Q(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    const-string v0, "favorite_apps_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "packages"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ly1/p;->a:Ly1/p;

    return-object p0

    :cond_0
    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2}, Lo2/k;->v0(Ljava/lang/String;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_2
    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public static final R(I)Ljava/lang/Integer;
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static S(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Ly1/r;->a:Ly1/r;

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-class v6, Landroid/bluetooth/BluetoothDevice;

    const-string v7, "isConnected"

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    check-cast v5, Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_4
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v4

    :cond_7
    if-ge v3, v1, :cond_8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lo2/t;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x1

    :cond_8
    :goto_2
    if-eqz v4, :cond_9

    const-string v0, "o alvo j\u00e1 tem link Bluetooth"

    goto :goto_3

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "outro aparelho no Bluetooth ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lw0/o;

    const/16 v3, 0x13

    invoke-direct {v1, v3}, Lw0/o;-><init>(I)V

    const/16 v3, 0x1f

    invoke-static {v2, v0, v1, v3}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") \u2014 a vaga do HFP \u00e9 uma s\u00f3"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_a
    :goto_3
    return-object v0
.end method

.method public static varargs T([Lw0/x0;)Ljava/lang/Integer;
    .locals 9

    const-string v0, "readings"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ly1/f;->Y([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    check-cast v4, Lw0/x0;

    iget-boolean v5, v4, Lw0/x0;->c:Z

    if-eqz v5, :cond_0

    iget-wide v5, v4, Lw0/x0;->b:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    sget-object v5, Lw0/y0;->b:Ljava/util/Set;

    iget v4, v4, Lw0/x0;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v0

    check-cast v2, Lw0/x0;

    iget-wide v2, v2, Lw0/x0;->b:J

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lw0/x0;

    iget-wide v5, v5, Lw0/x0;->b:J

    cmp-long v7, v2, v5

    if-gez v7, :cond_5

    move-object v0, v4

    move-wide v2, v5

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_1
    check-cast v0, Lw0/x0;

    if-eqz v0, :cond_6

    iget p0, v0, Lw0/x0;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v1
.end method

.method public static U(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->b0:Lcom/ex/auto/HomeFloatingWidgetsService;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    new-instance v2, Lw0/m7;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, v3}, Lw0/m7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static V(Ljava/lang/String;Lh2/l;)V
    .locals 4

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, La1/g;

    const/4 v3, 0x5

    invoke-direct {v2, v0, p0, p1, v3}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    iget-object p0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v0, La1/r;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, La1/r;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static W()V
    .locals 4

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/v2;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static X(Lw0/s3;Ljava/lang/String;)Lw0/u3;
    .locals 2

    iget-object p0, p0, Lw0/s3;->d:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lw0/u3;

    sget-object v0, Lw0/q3;->h:Lw0/q3;

    invoke-direct {p0, v0, p1}, Lw0/u3;-><init>(Lw0/q3;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lw0/u3;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "n\u00e3o sei se h\u00e1 sess\u00e3o ativa \u2014 n\u00e3o reinicio por ignor\u00e2ncia ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lw0/q3;->b:Lw0/q3;

    invoke-direct {p0, v0, p1}, Lw0/u3;-><init>(Lw0/q3;Ljava/lang/String;)V

    return-object p0
.end method

.method public static Y(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    sget-boolean v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_2

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    const-string v2, "condu\u00e7\u00e3o/regenera\u00e7\u00e3o ("

    const-string v3, "): recusado \u2014 sem floater e sem CarPropertyManager; quem chamou escreve direto"

    const-string v4, "CentralWatchdog"

    invoke-static {v2, p0, v3, v4, v1}, Landroidx/activity/result/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/v2;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_2
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/a2;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v0, v3}, Lw0/a2;-><init>(Ljava/lang/String;Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static Z(Lcom/ex/auto/QuickAccessFloaterService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "ctx"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object p1
.end method

.method public static final a(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 2

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    new-instance p1, Lw0/o6;

    invoke-direct {p1, p0}, Lw0/o6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method public static a0()Ljava/lang/String;
    .locals 23

    sget-object v0, Lw0/u;->y:Ljava/lang/String;

    new-instance v1, Lw0/o;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lw0/o;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n            echo \"-- CarplayMonitor (bind ef\u00eamero, refazer sempre) --\"\n            if [ ! -f "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ]; then echo \"SEM_MONITOR\"; exit 0; fi\n            echo \"SELINUX_ANTES=$(getenforce 2>/dev/null)\"\n            setenforce 0 2>/dev/null || true\n            if grep -F "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " /proc/mounts >/dev/null 2>&1; then\n              _MM=$(md5sum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | awk \'{print $1}\')\n              case \"$_MM\" in\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lw0/u;->x:Ljava/util/List;

    new-instance v6, Lw0/r;

    const/4 v7, 0x0

    const-string v8, "_EXP"

    invoke-direct {v6, v7, v8}, Lw0/r;-><init>(ILjava/lang/String;)V

    const-string v9, "\n"

    const/16 v10, 0x1e

    invoke-static {v3, v9, v6, v10}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v6

    sget-object v11, Lw0/w1;->a:Ljava/util/List;

    const-string v11, "\n  77d40d3b4cb19b29796e3ebcb82c4560) _EXP=77d40d3b4cb19b29796e3ebcb82c4560; echo \"MONITOR_BUILD=1111_USB_GUARD\" ;;\n  1aaec42940be4f8d5a09384c04f5f109) _EXP=1aaec42940be4f8d5a09384c04f5f109; echo \"MONITOR_BUILD=1114_USB_GUARD\" ;;\n  *) _EXP= ;;"

    invoke-virtual {v6, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "              "

    invoke-static {v6, v11}, Lo2/m;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n              esac\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_EXP_WIFI=$_EXP\ncase \"$_EXP\" in\n  2c019dfb1d38ee6e5c3b20a876ae73fb) _EXP=77d40d3b4cb19b29796e3ebcb82c4560 ;;\n  3c1c4d714d1810373b0b0728b68ec648) _EXP=1aaec42940be4f8d5a09384c04f5f109 ;;\nesac"

    invoke-static {v6, v11}, Lo2/m;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n              if [ -n \"$_EXP\" ] && [ \"$_MM\" = \"$_EXP\" ]; then\n                echo \"MONITOR_JA_MONTADO\"\n              else\n                echo \"MONITOR_MONTADO_DESCONHECIDO=$_MM (desmontando p/ refazer)\"\n                _N=0\n                while grep -F "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " /proc/mounts >/dev/null 2>&1 && [ $_N -lt 8 ]; do\n                  umount "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " 2>/dev/null || umount -l "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " 2>/dev/null\n                  _N=$((_N+1))\n                done\n                if grep -F "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " /proc/mounts >/dev/null 2>&1; then\n                  echo \"MONITOR_DESMONTE_FALHOU\"; exit 1\n                fi\n              fi\n            fi\n            if ! grep -F "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " /proc/mounts >/dev/null 2>&1; then\n              LBL=$(ls -Z "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " | awk \'{print $1}\')\n              MD=$(md5sum "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " | awk \'{print $1}\')\n              echo \"MONITOR_ORIG_MD5=$MD LABEL=$LBL\"\n              case \"$MD\" in\n"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Lw0/q;

    const-string v13, "_SEEK"

    const-string v14, "_TAIL"

    invoke-direct {v12, v13, v14, v8}, Lw0/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v9, v12, v10}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "\n  *) echo \"MONITOR_MD5_INESPERADO=$MD\"; exit 1 ;;"

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lo2/m;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n                *) echo \"MONITOR_MD5_INESPERADO:$MD\"; exit 1 ;;\n              esac\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v11}, Lo2/m;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n              MDS=$([ -f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/data/local/tmp/fixes/CarplayMonitor"

    invoke-virtual {v1, v3}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ] && md5sum "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " 2>/dev/null | awk \'{print $1}\')\n              if [ \"$MDS\" = \"$_EXP\" ]; then\n                echo \"MONITOR_REUSA_PATCH_PRONTO\"\n              else\n                echo \"MONITOR_GERANDO_PATCH (tinha: $MDS)\"\n                rm -f "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n                head -c $_SEEK "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " > "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n                printf \'ap0\\000\\000\\000\' >> "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n                tail -c +$_TAIL "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " >> "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n                MD2=$(md5sum "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " | awk \'{print $1}\')\n                echo \"MONITOR_PATCH_MD5=$MD2\"\n                if [ \"$MD2\" != \"$_EXP_WIFI\" ]; then\n                  echo \"PATCH_MD5_ERRADO\"; exit 1\n                fi\n"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ".usb-guard"

    invoke-virtual {v3, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".$$.tmp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".result"

    invoke-static {v13, v14}, Ln/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "\n            if [ \"$_EXP_WIFI\" = \"2c019dfb1d38ee6e5c3b20a876ae73fb\" ] || [ \"$_EXP_WIFI\" = \"3c1c4d714d1810373b0b0728b68ec648\" ]; then\n              head -c 3332400 "

    const-string v7, " || exit 1\n              dd if=/dev/zero bs=4096 count=1 >> "

    invoke-static {v15, v12, v6, v13, v7}, Landroidx/activity/result/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " 2>/dev/null || exit 1\n              tail -c +3332401 "

    invoke-static {v6, v13, v7, v12, v8}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " || exit 1\n        "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lw0/w1;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/16 v17, 0x1

    if-eqz v16, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lx1/a;

    iget-object v5, v10, Lx1/a;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object v10, v10, Lx1/a;->b:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object/from16 v18, v8

    if-le v5, v15, :cond_1

    const-string v8, "head -c "

    if-nez v15, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_0
    move/from16 v19, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " | tail -c "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v8, v5, v19

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_1
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v8, "<this>"

    invoke-static {v10, v8}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x2

    invoke-static {v8, v8}, Lk1/a;->h(II)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    div-int/lit8 v19, v15, 0x2

    rem-int/lit8 v20, v15, 0x2

    if-nez v20, :cond_2

    const/16 v17, 0x0

    :cond_2
    move/from16 v20, v8

    add-int v8, v19, v17

    move/from16 v21, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    :goto_2
    if-ltz v8, :cond_5

    if-ge v8, v15, :cond_5

    move-object/from16 v22, v11

    add-int/lit8 v11, v8, 0x2

    if-ltz v11, :cond_4

    if-le v11, v15, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v17, v11

    goto :goto_4

    :cond_4
    :goto_3
    move/from16 v17, v11

    move v11, v15

    :goto_4
    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v11, "it"

    invoke-static {v8, v11}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v8, v17

    move-object/from16 v11, v22

    goto :goto_2

    :cond_5
    move-object/from16 v22, v11

    new-instance v8, Lw0/o;

    const/16 v11, 0x14

    invoke-direct {v8, v11}, Lw0/o;-><init>(I)V

    const-string v11, ""

    const/16 v15, 0x1e

    invoke-static {v5, v11, v8, v15}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "printf \'"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x27

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v5, v5, v21

    move v10, v15

    move-object/from16 v8, v18

    move-object/from16 v11, v22

    move v15, v5

    const/16 v5, 0x20

    goto/16 :goto_0

    :cond_6
    move-object/from16 v22, v11

    move/from16 v19, v15

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "tail -c +"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v19, 0x1

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "{\n"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v10, 0x3e

    invoke-static {v7, v9, v8, v10}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n} > "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " || exit 1"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\n              _GUARD_MD=$(md5sum "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " | awk \'{print $1}\')\n              if [ \"$_GUARD_MD\" != \"$_EXP\" ]; then\n                rm -f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; echo \"MONITOR_USB_GUARD_HASH_INVALIDO\"; exit 1\n              fi\n              mv "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " || exit 1\n              rm -f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n              echo \"MONITOR_USB_GUARD_OK\"\n            fi\n        "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "                "

    invoke-static {v5, v6}, Lo2/m;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n              fi\n              chown root:root "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; chmod 755 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n              chcon \"$LBL\" "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " || { echo \"CHCON_FALHOU\"; exit 1; }\n              mount --bind "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n              grep -F "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " /proc/mounts >/dev/null 2>&1 || { echo \"MONITOR_BIND_FALHOU\"; exit 1; }\n              echo \"MONITOR_BIND_OK\"\n            fi\n\n            _pid=$(pidof CarplayMonitor 2>/dev/null | awk \'{print $1}\')\n            _run=$([ -n \"$_pid\" ] && md5sum /proc/$_pid/exe 2>/dev/null | awk \'{print $1}\')\n            echo \"MONITOR_RUNNING_MD5=$_run\"\n            if [ -n \"$_EXP\" ] && [ \"$_run\" = \"$_EXP\" ]; then\n              echo \"MONITOR_JA_PATCHADO_EM_EXECUCAO\"\n            else\n              echo \"MONITOR_REINICIO_UNICO\"\n              setprop ctl.stop CarplayMonitor; sleep 2\n              setprop ctl.start CarplayMonitor\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    const-string v1, "MONITOR"

    const-string v3, "CarplayMonitor"

    invoke-static {v3, v0, v1}, Lw0/e8;->T(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lo2/m;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              if [ \"${_STA_ANTES:-}\" = \"1\" ] || grep -qE \"[[:space:]]ap0$\" /proc/net/arp 2>/dev/null; then\n                echo \"CARPLAY_APP_MANTIDO (celular associado no ap0)\"\n              else\n                am force-stop com.njda.carplay 2>/dev/null || true\n                echo \"CARPLAY_APP_REINICIADO\"\n              fi\n\n            fi\n        "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static b0(Lw0/k;)Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lw0/k;->a:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lw0/l;

    iget-object v5, v4, Lw0/l;->a:Ljava/lang/String;

    iget-wide v6, v4, Lw0/l;->b:D

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v4, "wait"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    double-to-int v4, v6

    div-int/lit8 v5, v4, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    const/16 v6, 0x73

    const-string v7, "min"

    if-lez v5, :cond_1

    if-lez v4, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_1
    if-lez v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :sswitch_1
    const-string v4, "temp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    double-to-long v8, v6

    long-to-double v10, v8

    cmpg-double v5, v6, v10

    if-nez v5, :cond_4

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u00b0C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :sswitch_2
    const-string v4, "fan"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "vento "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    double-to-long v8, v6

    long-to-double v10, v8

    cmpg-double v5, v6, v10

    if-nez v5, :cond_6

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_6
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :sswitch_3
    const-string v4, "recirc"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :goto_3
    const-string v4, "?"

    goto :goto_4

    :cond_7
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v6, v4

    if-nez v4, :cond_8

    const-string v4, "ar interno"

    goto :goto_4

    :cond_8
    const-string v4, "ar externo"

    :goto_4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    const/16 v2, 0x3e

    const-string v3, " \u00b7 "

    invoke-static {v1, v3, v0, v2}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lw0/k;->b:Z

    if-eqz v1, :cond_a

    const-string v1, " \u00b7 repete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    iget-boolean p0, p0, Lw0/k;->c:Z

    if-eqz p0, :cond_b

    const-string p0, " \u00b7 volta ao anterior"

    invoke-static {v0, p0}, Ln/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x37b9aa36 -> :sswitch_3
        0x18b13 -> :sswitch_2
        0x3643d4 -> :sswitch_1
        0x379175 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final c(Ljava/lang/String;Ljava/util/Set;)Lw0/d5;
    .locals 1

    const-string v0, "semReserva"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lw0/d5;->b:Lw0/d5;

    return-object p0

    :cond_0
    sget-object p0, Lw0/d5;->a:Lw0/d5;

    return-object p0
.end method

.method public static c0(JJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr p2, p0

    cmp-long p0, v0, p2

    if-gtz p0, :cond_1

    const-wide/16 p0, 0x4e20

    cmp-long p0, p2, p0

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    invoke-static {p0}, Lw0/t1;->K(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PHONE=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, "PHONE=$(ip neigh show dev ap0 2>/dev/null | awk \'BEGIN{b=9} /lladdr/ {p=9; if (/REACHABLE/) p=1; else if (/DELAY/) p=2; else if (/PROBE/) p=3; else if (/STALE/) p=4; if(p<b){b=p;a=$1}} END{print a}\')"

    :goto_1
    if-eqz p1, :cond_3

    const-string p1, ""

    goto :goto_2

    :cond_3
    const-string p1, "settings delete global http_proxy 2>/dev/null\nsettings delete global global_http_proxy_host 2>/dev/null\nsettings delete global global_http_proxy_port 2>/dev/null"

    :goto_2
    const-string v0, "\n            echo \"PHONE=$PHONE\"\n            if [ -z \"$PHONE\" ] || ! ip link show dev ap0 | grep -qE \'<([^>]*,)?UP(,|>)\'; then\n              echo ROTA_PADRAO=nao; exit 1\n            fi\n            # O awk de f\u00e1brica cai (SIGSEGV) no filtro composto de vizinhos.\n            # read/case mant\u00e9m a compara\u00e7\u00e3o exata do IP sem depender desse awk.\n            NEIGH_OK=$(ip neigh show dev ap0 2>/dev/null | while read -r ADDR REST; do\n              [ \"$ADDR\" = \"$PHONE\" ] || continue\n              case \"$REST\" in *FAILED*|*INCOMPLETE*) continue ;; esac\n              case \"$REST\" in *\"lladdr \"*) echo sim; break ;; esac\n            done)\n            if [ \"$NEIGH_OK\" != sim ]; then\n              echo ROTA_ETAPA=vizinho; echo ROTA_PADRAO=nao; exit 1\n            fi\n            R=$(ip rule show 2>/dev/null)\nTBOX_TABLE=$(printf \'%s\\n\' \"$R\" | awk \'/(^|[[:space:]])oif tbox0([[:space:]]|$)/ {for(i=1;i<=NF;i++)if($i==\"lookup\"){print $(i+1);exit}}\')\n[ -n \"$TBOX_TABLE\" ] || TBOX_TABLE=tbox0\nTBOX_IMPLICIT=$(printf \'%s\\n\' \"$R\" | awk -v tab=\"$TBOX_TABLE\" \'/^19[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}\')\nTBOX_REF=$(printf \'%s\\n\' \"$R\" | awk -v tab=\"$TBOX_TABLE\" \'/^13[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}\')\n# Sem tbox0, a marca fixa 100 pode divergir da rede que o netd usa para DNS/socket.\n# A rede padr\u00e3o pode continuar registrada ap\u00f3s a STA cair; seguir seu netId real.\nif [ -z \"$TBOX_IMPLICIT\" ]; then\n  ROUTE_DEFAULT=$(dumpsys netd 2>/dev/null | sed -n \'s/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p\')\n  case \"$ROUTE_DEFAULT\" in\n    \'\'|*[!0-9]*) ;;\n    *) if [ \"$ROUTE_DEFAULT\" -gt 0 ] && [ \"$ROUTE_DEFAULT\" -le 65535 ]; then\n         TBOX_IMPLICIT=$(printf \'0x%x/0x1ffff\' \"$ROUTE_DEFAULT\")\n       fi ;;\n  esac\nfi\n            FWMARK=\"$TBOX_IMPLICIT\"\n            [ -n \"$FWMARK\" ] || FWMARK=0x64/0x1ffff\n            NETID=$(printf \'%d\' \"${FWMARK%/*}\")\n            EXPLICIT_FWMARK=\"$TBOX_REF\"\n            [ -n \"$EXPLICIT_FWMARK\" ] || EXPLICIT_FWMARK=$(printf \'0x%x/0x1ffff\' $((NETID | 65536)))\n            # Instala a rota antes de desviar pacotes. onlink evita depender da tabela main.\n            ip route replace default via \"$PHONE\" dev ap0 onlink table 200 || exit 1\n            for P in 12500 18500 21000; do\n              while ip rule del prio $P lookup 200 2>/dev/null; do :; done\n            done\n            if ! ip rule add prio 12500 from all fwmark \"$EXPLICIT_FWMARK\" iif lo lookup 200 ||\n               ! ip rule add prio 18500 from all fwmark \"$FWMARK\" iif lo lookup 200 ||\n               ! ip rule add prio 21000 from all fwmark 0x0/0xffff iif lo lookup 200; then\n              for P in 12500 18500 21000; do\n  while ip rule del prio $P lookup 200 2>/dev/null; do :; done\ndone\nip route flush table 200 2>/dev/null\nif [ \"$(settings get global exsapo_route_dns_zero_owned)\" = 1 ]; then\n  ndc resolver clearnetdns 0\n  settings delete global exsapo_route_dns_zero_owned\nfi\n              echo ROTA_PADRAO=nao; exit 1\n            fi\n            settings put global captive_portal_mode 0\n            "

    const-string v1, "\n            DNS_DEFAULT=$(dumpsys netd 2>/dev/null | sed -n \'s/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p\')\nDNS_RC=sim\nsetprop net.dns1 8.8.8.8; setprop net.dns2 8.8.4.4\nDNS_OUT=$(ndc resolver setnetdns \"$NETID\" \'\' 8.8.8.8 8.8.4.4 2>&1)\necho \"$DNS_OUT\"\ncase \"$DNS_OUT\" in \"200 \"*) ;; *) DNS_RC=nao ;; esac\nif [ \"$DNS_DEFAULT\" = 0 ]; then\n  DNS_OUT=$(ndc resolver setnetdns 0 \'\' 8.8.8.8 8.8.4.4 2>&1)\n  echo \"$DNS_OUT\"\n  case \"$DNS_OUT\" in\n    \"200 \"*) settings put global exsapo_route_dns_zero_owned 1 ;;\n    *) DNS_RC=nao ;;\n  esac\nfi\necho \"ROTA_DNS_OK=$DNS_RC\"\necho \"DNS_DEFAULT_NETID=$DNS_DEFAULT\"\n            "

    const-string v2, "\n            "

    invoke-static {v2, p0, v0, p1, v1}, Landroidx/activity/result/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n        R=$(ip rule show 2>/dev/null)\nTBOX_TABLE=$(printf \'%s\\n\' \"$R\" | awk \'/(^|[[:space:]])oif tbox0([[:space:]]|$)/ {for(i=1;i<=NF;i++)if($i==\"lookup\"){print $(i+1);exit}}\')\n[ -n \"$TBOX_TABLE\" ] || TBOX_TABLE=tbox0\nTBOX_IMPLICIT=$(printf \'%s\\n\' \"$R\" | awk -v tab=\"$TBOX_TABLE\" \'/^19[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}\')\nTBOX_REF=$(printf \'%s\\n\' \"$R\" | awk -v tab=\"$TBOX_TABLE\" \'/^13[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}\')\n# Sem tbox0, a marca fixa 100 pode divergir da rede que o netd usa para DNS/socket.\n# A rede padr\u00e3o pode continuar registrada ap\u00f3s a STA cair; seguir seu netId real.\nif [ -z \"$TBOX_IMPLICIT\" ]; then\n  ROUTE_DEFAULT=$(dumpsys netd 2>/dev/null | sed -n \'s/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p\')\n  case \"$ROUTE_DEFAULT\" in\n    \'\'|*[!0-9]*) ;;\n    *) if [ \"$ROUTE_DEFAULT\" -gt 0 ] && [ \"$ROUTE_DEFAULT\" -le 65535 ]; then\n         TBOX_IMPLICIT=$(printf \'0x%x/0x1ffff\' \"$ROUTE_DEFAULT\")\n       fi ;;\n  esac\nfi\n        D=$(ip route show table 200 2>/dev/null | grep \'^default \')\n        echo \"GATEWAY=$(printf \'%s\\n\' \"$D\" | awk \'{for(i=1;i<=NF;i++)if($i==\"via\"){print $(i+1);exit}}\')\"\n        echo \"INTERFACE=$(printf \'%s\\n\' \"$D\" | awk \'{for(i=1;i<=NF;i++)if($i==\"dev\"){print $(i+1);exit}}\')\"\n        ip link show dev ap0 2>/dev/null | grep -qE \'<([^>]*,)?UP(,|>)\' && echo AP_UP=sim || echo AP_UP=nao\n        echo \"REGRAS_VALIDAS=$(printf \'%s\\n\' \"$R\" | awk \'/^(12500|18500|21000):/ && /fwmark/ && /iif lo([[:space:]]|$)/ && /lookup 200([[:space:]]|$)/ {seen[$1]=1} END{for(p in seen)n++; print n+0}\')\"\n        echo \"DNS_DEFAULT_NETID=$(dumpsys netd 2>/dev/null | sed -n \'s/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p\')\"\n        echo \"NETD_PID=$(pidof netd)\"\n        echo \"TBOX_TABLE=$TBOX_TABLE\"\n        echo \"TBOX_IMPLICIT=$TBOX_IMPLICIT\"\n        echo \"OUR_18500=$(printf \'%s\\n\' \"$R\" | awk \'/^18500:.*fwmark/{print $5; exit}\')\"\n        echo \"OUR_21000=$(printf \'%s\\n\' \"$R\" | awk \'/^21000:.*fwmark/{print $5; exit}\')\"\n        echo \"TBOX_REF=$TBOX_REF\"\n        echo \"OUR_12500=$(printf \'%s\\n\' \"$R\" | awk \'/^12500:.*fwmark/{print $5; exit}\')\"\n        echo \"REGRAS=$(printf \'%s\\n\' \"$R\" | grep -cE \'^(12500|18500|21000):\')\"\n        [ -n \"$D\" ] && echo \"ROTA_PADRAO=sim\" || echo \"ROTA_PADRAO=nao\"\n    "

    invoke-static {p1}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n        "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d0(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 16

    move-object/from16 v2, p0

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    const-string v0, "error"

    const-string v7, "put(...)"

    const-string v8, "ok"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "watchdog n\u00e3o ativo"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "auto_proxy_enabled"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v9, "auto_route_on_aa_connect"

    invoke-interface {v5, v9, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "automa\u00e7\u00e3o de internet desligada"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v9, "down"

    move-object/from16 v10, p2

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "message"

    const/4 v11, 0x1

    if-eqz v9, :cond_2

    iget-object v0, v1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/h2;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v1, v2, v4}, Lw0/h2;-><init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "proxy limpo"

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string v9, "^\\d{1,3}(\\.\\d{1,3}){3}$"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    const-string v12, "compile(...)"

    invoke-static {v9, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "ip inv\u00e1lido: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_3
    :try_start_0
    new-instance v9, Lkotlinx/coroutines/scheduling/h;

    const/16 v12, 0x15b3

    invoke-direct {v9, v12}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    const-string v12, "ip neigh show dev ap0 2>/dev/null"

    const/16 v13, 0xbb8

    invoke-virtual {v9, v13, v12}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v9}, Lo2/k;->o0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-static {v12}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v12, :cond_5

    :cond_6
    iget-object v9, v1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v0, Lw0/w2;

    move v3, v4

    move/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lw0/w2;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;ZIZ)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v3, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "proxy solicitado "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    const-string v1, "celular indicado para rotas: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :catch_0
    :cond_8
    :goto_1
    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "ip fora do ap0: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)Lw0/c4;
    .locals 9

    const-wide/32 v0, 0x1ffff

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "saida"

    invoke-static {p0, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lw0/c4;->c:Lw0/c4;

    const-string v2, "sim"

    if-eqz p1, :cond_1

    const-string v3, "GATEWAY"

    invoke-static {p0, v3}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "INTERFACE"

    invoke-static {p0, v3}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ap0"

    invoke-static {v3, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "AP_UP"

    invoke-static {p0, v3}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "REGRAS_VALIDAS"

    invoke-static {p0, v3}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-static {v3, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-object v1

    :cond_1
    const-string v3, "OUR_12500"

    const-string v4, "TBOX_REF"

    if-eqz p1, :cond_5

    const-string p1, "TBOX_IMPLICIT"

    invoke-static {p0, p1}, Lw0/t1;->f(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    move-result-object p1

    if-nez p1, :cond_2

    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance v5, Lx1/a;

    invoke-direct {v5, p1, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v5

    :cond_2
    invoke-static {p0, v4}, Lw0/t1;->f(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p1, Lx1/a;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const-wide/32 v7, 0x10000

    or-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lx1/a;

    invoke-direct {v6, v5, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    :cond_3
    const-string v0, "OUR_18500"

    invoke-static {p0, v0}, Lw0/t1;->f(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    move-result-object v0

    invoke-static {v0, p1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0, v3}, Lw0/t1;->f(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    move-result-object p1

    invoke-static {p1, v5}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "OUR_21000"

    invoke-static {p0, p1}, Lw0/t1;->f(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    move-result-object p1

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v5, 0xffff

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lx1/a;

    invoke-direct {v6, v0, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v6}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    return-object v1

    :cond_5
    const-string p1, "REGRAS"

    invoke-static {p0, p1}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-static {p1}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_6
    move p1, v0

    :goto_0
    const-string v5, "ROTA_PADRAO"

    invoke-static {p0, v5}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    move v0, v5

    :cond_7
    const/4 v2, 0x3

    if-lt p1, v2, :cond_f

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {p0, v4}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-static {p1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {p0, v3}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-static {p0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    move-object v2, p0

    :cond_b
    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    sget-object p0, Lw0/c4;->a:Lw0/c4;

    return-object p0

    :cond_d
    :goto_2
    return-object v1

    :cond_e
    :goto_3
    sget-object p0, Lw0/c4;->b:Lw0/c4;

    return-object p0

    :cond_f
    :goto_4
    return-object v1
.end method

.method public static e0(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 9

    const-string v0, "\'"

    const-string v1, "/data/local/tmp/fixes/central_boot.sh"

    const-string v2, "echo \'OBSOLETO - o log de boot agora fica em "

    const-string v3, "script gravado em /data/local/tmp/fixes/central_boot.sh ("

    sget-boolean v4, Lw0/t1;->g:Z

    const-string v5, "BootScript"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p0, v7

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v8, "central_boot.log"

    invoke-direct {v4, p0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lw0/t1;->h:Ljava/lang/String;

    sput-boolean v6, Lw0/t1;->g:Z

    sget-object p0, Lw0/ae;->a:Lw0/ae;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "log de boot promovido pro armazenamento externo: "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lw0/t1;->h:Ljava/lang/String;

    invoke-static {p0, v4, v5, v6}, Landroidx/activity/result/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    :try_start_1
    new-instance p0, Ljava/io/File;

    const-string v4, "/data/local/tmp/fixes"

    invoke-direct {p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    :cond_2
    :goto_2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lw0/t1;->J(Ljava/io/File;Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p0, p1, v6}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "/data/local/tmp/fixes/central_boot.log"

    sget-object p1, Lw0/t1;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, ""

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lw0/t1;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' > "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\'\\\'\'"

    invoke-static {p0, v0, v3}, Lo2/t;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " 2>/dev/null; "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " sh "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lw0/e8;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " > "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lw0/t1;->h:Ljava/lang/String;

    invoke-static {p0}, Lw0/e8;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " 2>&1; cat "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lw0/t1;->h:Ljava/lang/String;

    invoke-static {p0}, Lw0/e8;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "n\u00e3o consegui gravar /data/local/tmp/fixes/central_boot.sh: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lw0/ae;->a:Lw0/ae;

    const-string p1, "n\u00e3o consegui gravar /data/local/tmp/fixes/central_boot.sh \u2014 "

    const-string v0, " (dono/modo do arquivo?)"

    invoke-static {p1, p0, v0, v5, v6}, Landroidx/activity/result/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_5
    return-object v7
.end method

.method public static final f(Ljava/lang/String;Ljava/lang/String;)Lx1/a;
    .locals 5

    invoke-static {p0, p1}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    new-array v0, p1, [C

    const/16 v1, 0x2f

    const/4 v2, 0x0

    aput-char v1, v0, v2

    invoke-static {p0, v0}, Lo2/k;->u0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "0x"

    invoke-static {v0, v2}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_1

    invoke-static {v1, v0}, Lo2/k;->g0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lo2/s;->X(ILjava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lo2/s;->Y(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v2}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1, p0}, Lo2/k;->g0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lo2/s;->X(ILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lo2/s;->Y(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    new-instance p1, Lx1/a;

    invoke-direct {p1, v0, p0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f0(Lcom/ex/auto/CentralWatchdogService;)Ljava/lang/String;
    .locals 5

    const-string v0, "\'"

    const-string v1, "sh "

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "carplay-monitor-bind.sh"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "carplay-monitor-"

    const-string v4, ".tmp"

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-static {v3, v4, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lw0/t1;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lf2/d;->i0(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAbsolutePath(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\'\\\'\'"

    invoke-static {v1, v0, v3}, Lo2/t;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :cond_0
    :try_start_3
    const-string v0, "n\u00e3o consegui substituir o script do monitor"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "BootScript"

    const-string v1, "n\u00e3o consegui gravar o script do monitor"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/Integer;)Landroid/widget/RemoteViews;
    .locals 5

    const v0, 0x7f0700c9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0078

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v2, "setBackgroundResource"

    invoke-static {p0}, Lw0/v7;->a(Landroid/content/Context;)I

    move-result v3

    const v4, 0x7f090330

    invoke-virtual {v1, v4, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x22010101

    if-ne v2, v3, :cond_1

    const p1, 0x7f0700cc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lx1/a;

    const-string v2, "Eco"

    invoke-direct {v0, p1, v2}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x22010102

    if-ne v2, v3, :cond_3

    new-instance p1, Lx1/a;

    const-string v2, "Conf."

    invoke-direct {p1, v0, v2}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    move-object v0, p1

    goto :goto_4

    :cond_3
    :goto_2
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v2, 0x22010103

    if-ne p1, v2, :cond_5

    const p1, 0x7f0700d3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lx1/a;

    const-string v2, "Sport"

    invoke-direct {v0, p1, v2}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    :goto_3
    new-instance p1, Lx1/a;

    const-string v2, "\u2014"

    invoke-direct {p1, v0, v2}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :goto_4
    iget-object p1, v0, Lx1/a;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, v0, Lx1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const v2, 0x7f0900f7

    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const p1, 0x7f0902fc

    invoke-virtual {v1, p1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p0}, Lw0/v7;->o(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f02ad

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0902fb

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string p1, "com.ex.auto.widget.DRIVE_NEXT"

    invoke-static {p0, p1}, Lw0/e8;->z(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    const v0, 0x7f090065

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p1, "com.ex.auto.widget.DRIVE_PREV"

    invoke-static {p0, p1}, Lw0/e8;->z(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    const p1, 0x7f090066

    invoke-virtual {v1, p1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v1
.end method

.method public static h(Landroid/content/Context;Ljava/lang/Integer;I)Landroid/widget/RemoteViews;
    .locals 7

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Lw0/v7;->a(Landroid/content/Context;)I

    move-result p2

    const v1, 0x7f090330

    const-string v2, "setBackgroundResource"

    invoke-virtual {v0, v1, v2, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-static {p0}, Lw0/v7;->o(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "\u2014"

    :cond_1
    const v3, 0x7f0902fe

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0f039c

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f0902fd

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget-object p2, Lcom/ex/auto/FanSpeedWidgetProvider;->a:[I

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    const/4 v4, 0x7

    if-ge v1, v4, :cond_3

    aget v4, p2, v1

    add-int/lit8 v5, v3, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v3, v6, :cond_2

    const v3, 0x7f070114

    goto :goto_1

    :cond_2
    const v3, 0x7f070113

    :goto_1
    invoke-virtual {v0, v4, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_0

    :cond_3
    const-string p1, "com.ex.auto.widget.FAN_MINUS"

    invoke-static {p0, p1}, Lw0/e8;->z(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    const p2, 0x7f090068

    invoke-virtual {v0, p2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p1, "com.ex.auto.widget.FAN_PLUS"

    invoke-static {p0, p1}, Lw0/e8;->z(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    const p1, 0x7f090069

    invoke-virtual {v0, p1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/widget/RemoteViews;
    .locals 11

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0079

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v1, "setBackgroundResource"

    invoke-static {p0}, Lw0/v7;->a(Landroid/content/Context;)I

    move-result v2

    const v3, 0x7f090330

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-static {p0}, Lw0/v7;->o(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f039a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09030e

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0f03a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090315

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v2, "Eco"

    const v3, 0x7f09030d

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v2, "Conf."

    const v4, 0x7f09030c

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v2, "Sport"

    const v5, 0x7f09030f

    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0f03a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f090317

    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0f03a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v7, 0x7f090318

    invoke-virtual {v0, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0f03a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090316

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const v10, 0x22010101

    if-ne v9, v10, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v1

    :goto_1
    const v10, 0x7f090084

    invoke-static {v0, p0, v10, v3, v9}, Lw0/t1;->k(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v9, 0x22010102

    if-ne v3, v9, :cond_3

    move v3, v8

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    const v9, 0x7f090083

    invoke-static {v0, p0, v9, v4, v3}, Lw0/t1;->k(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v3, 0x22010103

    if-ne p1, v3, :cond_5

    move p1, v8

    goto :goto_5

    :cond_5
    :goto_4
    move p1, v1

    :goto_5
    const v3, 0x7f090085

    invoke-static {v0, p0, v3, v5, p1}, Lw0/t1;->k(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v4, 0x20020501

    if-ne p1, v4, :cond_7

    move p1, v8

    goto :goto_7

    :cond_7
    :goto_6
    move p1, v1

    :goto_7
    const v4, 0x7f09008d

    invoke-static {v0, p0, v4, v6, p1}, Lw0/t1;->k(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v5, 0x20020502

    if-ne p1, v5, :cond_9

    move p1, v8

    goto :goto_9

    :cond_9
    :goto_8
    move p1, v1

    :goto_9
    const v5, 0x7f09008e

    invoke-static {v0, p0, v5, v7, p1}, Lw0/t1;->k(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p2, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p2, 0x20020503

    if-ne p1, p2, :cond_b

    move v1, v8

    :cond_b
    :goto_a
    const p1, 0x7f09008c

    invoke-static {v0, p0, p1, v2, v1}, Lw0/t1;->k(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    const-string p2, "com.ex.auto.widget.DRIVE_ECO"

    invoke-static {p0, p2}, Lw0/e8;->z(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v10, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "com.ex.auto.widget.DRIVE_COMFORT"

    invoke-static {p0, p2}, Lw0/e8;->z(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v9, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "com.ex.auto.widget.DRIVE_SPORT"

    invoke-static {p0, p2}, Lw0/e8;->z(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "com.ex.auto.widget.REGEN_LOW"

    invoke-static {p0, p2}, Lw0/e8;->z(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v4, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "com.ex.auto.widget.REGEN_MID"

    invoke-static {p0, p2}, Lw0/e8;->z(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v5, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "com.ex.auto.widget.REGEN_HIGH"

    invoke-static {p0, p2}, Lw0/e8;->z(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static j(Landroid/content/Context;Lw0/v6;)Landroid/widget/RemoteViews;
    .locals 10

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c007e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v1, "setBackgroundResource"

    invoke-static {p0}, Lw0/v7;->a(Landroid/content/Context;)I

    move-result v2

    const v3, 0x7f090330

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-static {p0}, Lw0/v7;->o(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v7

    const v1, 0x7f0f039f

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090312

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p1, Lw0/v6;->a:Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v8}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const v1, 0x7f0f03a2

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "getString(...)"

    invoke-static {v5, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "com.ex.auto.widget.WHEEL_HEAT_TOGGLE"

    const v2, 0x7f090096

    const v3, 0x7f090321

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lw0/t1;->m(Landroid/widget/RemoteViews;Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lw0/v6;->b:Ljava/lang/Boolean;

    invoke-static {p0, v8}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const p0, 0x7f0f03a4

    invoke-virtual {v7, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "com.ex.auto.widget.REAR_DEFROST_TOGGLE"

    const v2, 0x7f090088

    const v3, 0x7f090311

    invoke-static/range {v0 .. v6}, Lw0/t1;->m(Landroid/widget/RemoteViews;Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lw0/v6;->c:Ljava/lang/Boolean;

    invoke-static {p0, v8}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const p0, 0x7f0f039e

    invoke-virtual {v7, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "com.ex.auto.widget.FRONT_MAX_DEFROST_TOGGLE"

    const v2, 0x7f090087

    const v3, 0x7f090310

    invoke-static/range {v0 .. v6}, Lw0/t1;->m(Landroid/widget/RemoteViews;Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lw0/v6;->d:Ljava/lang/Boolean;

    invoke-static {p0, v8}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const p0, 0x7f0f03a3

    invoke-virtual {v7, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "com.ex.auto.widget.WINDSHIELD_HEAT_TOGGLE"

    const v2, 0x7f090097

    const v3, 0x7f090323

    invoke-static/range {v0 .. v6}, Lw0/t1;->m(Landroid/widget/RemoteViews;Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/String;)V

    iget-object v5, p1, Lw0/v6;->e:Ljava/lang/Integer;

    const p0, 0x7f0f03a0

    invoke-virtual {v7, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v7

    const-string v7, "com.ex.auto.widget.SEAT_HEAT_DRIVER_CYCLE"

    const v3, 0x7f09008f

    const v4, 0x7f090319

    invoke-static/range {v0 .. v7}, Lw0/t1;->l(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p1, Lw0/v6;->f:Ljava/lang/Integer;

    const p0, 0x7f0f03a1

    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "com.ex.auto.widget.SEAT_HEAT_PASSENGER_CYCLE"

    const v3, 0x7f090090

    const v4, 0x7f09031a

    invoke-static/range {v0 .. v7}, Lw0/t1;->l(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final k(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V
    .locals 2

    if-eqz p4, :cond_0

    const v0, 0x7f070111

    goto :goto_0

    :cond_0
    const v0, 0x7f070112

    :goto_0
    const-string v1, "setBackgroundResource"

    invoke-virtual {p0, p2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    if-eqz p4, :cond_1

    const p2, 0x7f050038

    goto :goto_1

    :cond_1
    const p2, 0x7f050041

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method

.method public static final l(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    const v1, 0x7f070111

    goto :goto_1

    :cond_2
    const v1, 0x7f070112

    :goto_1
    const-string v2, "setBackgroundResource"

    invoke-virtual {p0, p3, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    if-eqz v0, :cond_3

    const v0, 0x7f050038

    goto :goto_2

    :cond_3
    const v0, 0x7f050041

    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p4, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    if-nez p5, :cond_4

    const-string p2, "\u2014"

    goto :goto_3

    :cond_4
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    const p5, 0x7f0f039d

    invoke-virtual {p2, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p5, "getString(...)"

    invoke-static {p2, p5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_3
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p6, 0x20

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance p2, Landroid/content/Intent;

    const-class p4, Lcom/ex/auto/HomeWidgetsPollService;

    invoke-direct {p2, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string p4, "setAction(...)"

    invoke-static {p2, p4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p4, 0xc000000

    invoke-virtual {p7}, Ljava/lang/String;->hashCode()I

    move-result p5

    invoke-static {p1, p5, p2, p4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getService(...)"

    invoke-static {p1, p2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public static final m(Landroid/widget/RemoteViews;Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p4, :cond_0

    const v0, 0x7f070111

    goto :goto_0

    :cond_0
    const v0, 0x7f070112

    :goto_0
    const-string v1, "setBackgroundResource"

    invoke-virtual {p0, p2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    if-eqz p4, :cond_1

    const p4, 0x7f050038

    goto :goto_1

    :cond_1
    const p4, 0x7f050041

    :goto_1
    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p4

    invoke-virtual {p0, p3, p4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, p3, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance p3, Landroid/content/Intent;

    const-class p4, Lcom/ex/auto/HomeWidgetsPollService;

    invoke-direct {p3, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p3, p6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string p4, "setAction(...)"

    invoke-static {p3, p4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p4, 0xc000000

    invoke-virtual {p6}, Ljava/lang/String;->hashCode()I

    move-result p5

    invoke-static {p1, p5, p3, p4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p3, "getService(...)"

    invoke-static {p1, p3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public static final n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "saida"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object p0

    invoke-interface {p0}, Ln2/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "it"

    invoke-static {v0, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const/16 p0, 0x3d

    invoke-static {v0, p0, v0}, Lo2/k;->x0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static final o(Ljava/util/ArrayList;)Lw0/j;
    .locals 11

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v0, :cond_7

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lw0/l;

    iget-object v7, v6, Lw0/l;->a:Ljava/lang/String;

    iget-wide v8, v6, Lw0/l;->b:D

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v10, -0x37b9aa36

    if-eq v6, v10, :cond_4

    const v10, 0x18b13

    if-eq v6, v10, :cond_2

    const v10, 0x3643d4

    if-eq v6, v10, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "temp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    double-to-float v1, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v6, "fan"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    double-to-int v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string v6, "recirc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v8, v6

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    move v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_7
    new-instance p0, Lw0/j;

    invoke-direct {p0, v1, v3, v4}, Lw0/j;-><init>(Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public static p()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lw0/t1;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object v0

    new-instance v1, Lw0/o;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lw0/o;-><init>(I)V

    new-instance v2, Ln2/c;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance v0, Lw0/o;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lw0/o;-><init>(I)V

    new-instance v1, Ln2/d;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Ln2/d;-><init>(Ln2/f;ZLh2/l;)V

    const-string v0, "\n"

    invoke-static {v1, v0}, Ln2/g;->V(Ln2/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\necho \"== fim ==\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q(Ljava/lang/String;)Lw0/a5;
    .locals 10

    sget-object v0, Lw0/a5;->b:Lw0/a5;

    sget-object v1, Lw0/a5;->a:Lw0/a5;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v6, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->u()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    const/4 v4, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    sget-wide v6, Lcom/ex/auto/CentralWatchdogService;->Y2:J

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_4

    sub-long v6, v2, v6

    const-wide/16 v8, 0x2ee0

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    const-string v6, "CentralWatchdog"

    if-ne v1, v0, :cond_5

    sput-wide v2, Lcom/ex/auto/CentralWatchdogService;->Y2:J

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, ": N\u00c3O reiniciei \u2014 h\u00e1 proje\u00e7\u00e3o no ap0 (sess\u00e3o em curso). Toque de novo pra reiniciar assim mesmo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, ": reiniciando mesmo com sess\u00e3o no ap0 (confirmado pelo 2\u00ba toque)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "guarda ap0 ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "): sess\u00e3o="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " \u2192 "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;)Lw0/s1;
    .locals 12

    sget-object v0, Lw0/s1;->c:Lw0/s1;

    const-string v1, ": "

    const-string v2, "bindService lan\u00e7ou: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lw0/t1;->a:J

    sub-long/2addr v3, v5

    sget-wide v5, Lw0/t1;->a:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const-string v6, "CarplayDeviceBinder"

    if-lez v5, :cond_0

    const-wide/16 v7, 0x2710

    cmp-long v5, v3, v7

    if-gez v5, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "connect ignorado \u2014 outra tentativa h\u00e1 "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms (devolvendo "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lw0/t1;->b:Lw0/s1;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lw0/t1;->b:Lw0/s1;

    return-object p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lw0/t1;->a:J

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Lw0/c;

    const/4 v8, 0x1

    invoke-direct {v7, v4, v8}, Lw0/c;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v8, Landroid/content/Intent;

    const-string v9, "carplay.devices.service"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.njda.carplay"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "setPackage(...)"

    invoke-static {v8, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {p0, v8, v7, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v9

    :goto_0
    if-nez v2, :cond_1

    const-string p1, "bindService recusou (carplay.devices.service em com.njda.carplay)"

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sput-object v0, Lw0/t1;->b:Lw0/s1;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v0

    :catchall_1
    move-exception p1

    goto/16 :goto_6

    :catchall_2
    move-exception p1

    move-object v3, v7

    goto/16 :goto_6

    :cond_1
    :try_start_5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1770

    invoke-virtual {v4, v10, v11, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    if-nez v2, :cond_2

    const-string p1, "servi\u00e7o n\u00e3o conectou em 6000ms"

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v0, Lw0/t1;->b:Lw0/s1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {p0, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    return-object v0

    :cond_2
    :try_start_7
    invoke-static {v2}, Lw0/t1;->F(Landroid/os/IBinder;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    sput-object v0, Lw0/t1;->b:Lw0/s1;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {p0, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    return-object v0

    :cond_3
    :try_start_9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string p1, "getDeviceList vazio \u2014 nenhum iPhone pareado/conhecido; nada a conectar"

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lw0/s1;->b:Lw0/s1;

    sput-object p1, Lw0/t1;->b:Lw0/s1;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {p0, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    return-object p1

    :cond_4
    :try_start_b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lw0/r1;

    if-eqz p1, :cond_6

    iget-object v11, v11, Lw0/r1;->b:Ljava/lang/String;

    invoke-static {v11, p1}, Lo2/t;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    move v11, v5

    goto :goto_1

    :cond_6
    move v11, v9

    :goto_1
    if-eqz v11, :cond_5

    move-object v3, v10

    :cond_7
    check-cast v3, Lw0/r1;

    if-nez v3, :cond_8

    invoke-static {v4}, Ly1/g;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw0/r1;

    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "conectando \'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lw0/r1;->a:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lw0/r1;->b:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") \u2014 "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " na lista, preferido="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_9

    const-string p1, "(qualquer)"

    :cond_9
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v3, Lw0/r1;->b:Ljava/lang/String;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v9, v5

    :cond_b
    if-eqz v9, :cond_c

    const-string v4, "alvo sem MAC"

    goto :goto_2

    :cond_c
    invoke-static {p1}, Lw0/t1;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-nez v4, :cond_f

    if-nez p1, :cond_d

    goto :goto_3

    :cond_d
    new-instance v4, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v4, v5}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v5, Lw0/q1;

    const/4 v8, 0x0

    invoke-direct {v5, v8, v4}, Lw0/q1;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, p1, v5}, Lw0/m;->i(Landroid/content/Context;Ljava/lang/String;Lh2/l;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x9c4

    invoke-virtual {v4, v8, v9, v5}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HFP-Client de "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_e

    const-string v4, "sem resposta a tempo"

    :cond_e
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_f
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pulando o connect direto de BT de "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_10

    const-string p1, "?"

    :cond_10
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-static {v2, v3}, Lw0/t1;->t(Landroid/os/IBinder;Lw0/r1;)Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p1, Lw0/s1;->a:Lw0/s1;

    goto :goto_5

    :cond_11
    move-object p1, v0

    :goto_5
    sput-object p1, Lw0/t1;->b:Lw0/s1;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual {p0, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    return-object p1

    :goto_6
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect falhou: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v0, Lw0/t1;->b:Lw0/s1;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-eqz v3, :cond_12

    :try_start_e
    invoke-virtual {p0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catchall_7
    :cond_12
    return-object v0

    :catchall_8
    move-exception p1

    if-eqz v3, :cond_13

    :try_start_f
    invoke-virtual {p0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    :cond_13
    throw p1
.end method

.method public static s(Landroid/os/IBinder;Lw0/a;)Z
    .locals 6

    const-string v0, "connectDevice(txn 3): "

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "obtain(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v3, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "com.njda.adapter.androidauto.connection.devicelist.IDeviceManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v5, p1, Lw0/a;->a:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, p1, Lw0/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v5, p1, Lw0/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v5, p1, Lw0/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p1, p1, Lw0/a;->e:I

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeByte(B)V

    const/4 p1, 0x3

    invoke-interface {p0, p1, v1, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p0

    :try_start_1
    const-string p1, "AaDeviceBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static t(Landroid/os/IBinder;Lw0/r1;)Z
    .locals 6

    const-string v0, "connectDevice(txn 5): "

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "obtain(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v3, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "com.njda.carplay.connection.devicelist.ICarplayDeviceManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, p1, Lw0/r1;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v5, p1, Lw0/r1;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v5, p1, Lw0/r1;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-byte v5, p1, Lw0/r1;->d:B

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v5, p1, Lw0/r1;->e:B

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p1, p1, Lw0/r1;->f:B

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByte(B)V

    const/4 p1, 0x5

    invoke-interface {p0, p1, v1, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p0

    :try_start_1
    const-string p1, "CarplayDeviceBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static u(Z)Ljava/lang/String;
    .locals 7

    sget v0, Lw0/u;->a:I

    new-instance v0, Lw0/o;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lw0/o;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n            #!/system/bin/sh\n            # Gerado pelo EX Sapo Central \u2014 regravado a cada boot. Editar aqui n\u00e3o adianta.\n            echo \"== central_boot $(date) ==\"\n            echo \"-- por que o boot anterior terminou --\"\n            echo \"BOOTREASON=$(getprop ro.boot.bootreason) / $(getprop sys.boot.reason)\"\n            echo \"UPTIME=$(cut -d. -f1 /proc/uptime)s\"\n            if [ -s /proc/last_kmsg ]; then\n              echo \"LAST_KMSG (fim do boot anterior):\"\n              tail -n 25 /proc/last_kmsg 2>/dev/null | sed \'s/^/  | /\'\n            else\n              echo \"LAST_KMSG=vazio (sem panic de kernel registrado)\"\n            fi\n            echo \"DMESG_RESET=$(dmesg 2>/dev/null | grep -icE \'kernel panic|watchdog reset|hardware reset\')\"\n            # /proc/last_kmsg \u00e9 sempre vazio neste kernel (4.4, pstore). O que este aparelho GRAVA e\n            # persiste \u00e9 o AEE da MediaTek (db.NN.KE = exce\u00e7\u00e3o de kernel, NE = nativa, ANR) e o dropbox\n            # do framework (SYSTEM_RESTART, system_server_watchdog/wtf) \u2014 sem eles o reboot do carro em\n            # 08/09/2026 (bootreason=reboot / kernel_panic) ficou sem causa. S\u00f3 leitura.\n            echo \"BOOTREASON_PERSIST=$(getprop persist.sys.boot.reason)\"\n            echo \"-- AEE (\u00faltimas exce\u00e7\u00f5es; KE=kernel, NE=nativa) --\"\n            tail -n 6 /data/aee_exp/db_history 2>/dev/null | sed \'s/^/  | /\'\n            echo \"-- dropbox (mais recentes) --\"\n            ls -t /data/system/dropbox 2>/dev/null | head -n 8 | sed \'s/^/  | /\'\n            # Listar o NOME do crash nao diz o que caiu. Em 25/09/2026 o dono relatou o AA caindo\n            # no meio da sessao; o pacote trazia \"6 excecoes nativas\" e nenhuma causa \u2014 o tombstone\n            # fica no dropbox e nao era lido. Na bancada, este trecho nomeia o culpado na hora:\n            #   pid: 23465, name: AAutoMonitor  >>> /system/bin/AAutoMonitor <<<\n            #   signal 11 (SIGSEGV)\n            # Compacto de proposito: cabecalho do mais recente de cada tipo, nao o backtrace todo.\n            echo \"-- o que caiu (conteudo do dropbox mais recente) --\"\n            for _k in TOMBSTONE RESTART wtf watchdog ANR; do\n              _f=$(ls -t /data/system/dropbox 2>/dev/null | grep \"$_k\" | head -n 1)\n              [ -z \"$_f\" ] && continue\n              echo \"  | [$_k] $_f\"\n              case \"$_f\" in\n                *.gz) zcat \"/data/system/dropbox/$_f\" 2>/dev/null ;;\n                *)    cat  \"/data/system/dropbox/$_f\" 2>/dev/null ;;\n              esac | grep -aE \'^(Process|Cmdline|Subject|pid|signal)|>>> \' | head -n 4 | sed \'s/^/  |   /\'\n            done\n            echo \"-- buffer de crash do logcat (sobrevive ao restart do framework) --\"\n            logcat -b crash -d -t 120 2>/dev/null | tail -n 40 | sed \'s/^/  | /\'\n            echo \"-- pstore (s\u00f3 o que parece queda) --\"\n            for f in /sys/fs/pstore/console-ramoops*; do\n              [ -r \"$f\" ] && grep -a -iE \'kernel panic|Oops|BUG:|watchdog|Unable to handle\' \"$f\" 2>/dev/null | tail -n 5 | sed \"s#^#  | $f: #\"\n            done\n\n            echo \"-- ConnAdaptor --\"\n            _p=$(pm path com.njda.adapter 2>/dev/null)\n            echo \"PM_PATH=$_p\"\n            case \"$_p\" in\n              *\"/data/app/\"*) echo \"CONNADAPTOR=ATIVO\" ;;\n              *)\n                # O ConnAdaptor N\u00c3O volta por bind. O bind sobre /system \u00e9 o mecanismo do Ar\n                # Digital e dos outros patches de sistema; para o ConnAdaptor ele produzia um estado\n                # meio-funcionando \u2014 APK montado, tela dizendo \"ativado\", CarplayMonitor sem\n                # trabalhar. Ativar \u00e9 `pm install`.\n                #\n                # Se sobrou bind de uma instala\u00e7\u00e3o antiga, DESFAZ e apaga o marcador: melhor a\n                # central voltar limpa ao estado de f\u00e1brica (e a pessoa reativar) do que carregar\n                # para sempre uma montagem que aparenta funcionar e n\u00e3o funciona.\n                if [ -f "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/data/local/tmp/fixes/connadaptor_em_bind"

    invoke-virtual {v0, v2}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ]; then\n                  echo \"CONNADAPTOR=LIMPANDO_BIND_LEGADO\"\n                  # Bind EMPILHA: montar duas vezes sobre o mesmo alvo deixa duas entradas em\n                  # /proc/mounts, e um `umount` sozinho descobre a de baixo em vez de limpar. Por\n                  # isso o la\u00e7o, igual ao `unmountAllLoop` do ShellSnippets.\n                  _i=0\n                  while grep -F \" "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lw0/u;->w:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \" /proc/mounts >/dev/null 2>&1 && [ $_i -lt 8 ]; do\n                    umount "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " 2>/dev/null || break\n                    _i=$((_i+1))\n                  done\n                  # S\u00f3 apaga o marcador se a montagem REALMENTE saiu. Apagar antes de conferir perde\n                  # a \u00fanica pista de que ainda h\u00e1 bind vivo, e o boot seguinte nem tentaria de novo.\n                  if grep -F \" "

    const-string v6, " \" /proc/mounts >/dev/null 2>&1; then\n                    echo \"CONNADAPTOR=LIMPEZA_FALHOU (bind ainda montado apos $_i tentativas)\"\n                  else\n                    rm -f "

    invoke-static {v1, v4, v5, v3, v6}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null || true\n                    echo \"CONNADAPTOR=STOCK (bind legado desfeito)\"\n                  fi\n                else\n                  echo \"CONNADAPTOR=STOCK\"\n                fi\n                ;;\n            esac\n\n            # Ar Digital \u00e9 restaurado por HvacDigital.restaurarNoBoot: montar aqui antes\n            # da recarga fazia o watchdog confundir bind presente com plugin carregado.\n            echo \"-- Ar Digital (restaura\u00e7\u00e3o pelo watchdog) --\"\n            if [ -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/local/tmp/fixes/hvac_em_bind"

    invoke-virtual {v0, v2}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ]; then echo HVAC_MARCADOR_LEGADO; fi\n            if [ -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/local/hvac-digital/sysui.apk"

    invoke-virtual {v0, v2}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ]; then echo HVAC_FONTE_PRESENTE; else echo HVAC_SEM_FONTE; fi\n\n            # -- Volante (patch do KeyServer) --\n            # Este bloco \u00e9 o irm\u00e3o que faltava. O Ar Digital acima e o CarplayMonitor abaixo j\u00e1\n            # refaziam o bind a cada boot; o KeyServer n\u00e3o, e por isso o duplo-toque=Ar e o\n            # segurar=Condu\u00e7\u00e3o morriam em todo desligamento sem aviso nenhum \u2014 o dono achava o\n            # volante mudo e reativava na m\u00e3o (relato + central_events.log de 24/09/2026).\n            #\n            # O marcador \u00e9 a vontade registrada, n\u00e3o o estado: a pref do app \u00e9 reescrita com o\n            # /proc/mounts e por isso n\u00e3o serve de mem\u00f3ria. Ver DecisaoPatchVolante.\n            if [ -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/local/tmp/fixes/keyserver_em_bind"

    invoke-virtual {v0, v2}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] && [ -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk"

    invoke-virtual {v0, v2}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ]; then\n              echo \"-- Volante (KeyServer em bind: refazer) --\"\n              _ks="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lw0/u;->z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n              if grep -F \" $_ks \" /proc/mounts >/dev/null 2>&1; then\n                echo \"VOLANTE=JA_MONTADO\"\n              elif [ ! -f \"$_ks\" ]; then\n                echo \"VOLANTE_SEM_ALVO ($_ks)\"\n              else\n                setenforce 0 2>/dev/null || true\n                chown root:root "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; chmod 644 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n                # O alvo do bind herda o label do inode de ORIGEM: sem o chcon aqui o KeyServer\n                # sobe com r\u00f3tulo errado e o init recusa o apk depois de montado.\n                chcon u:object_r:system_app_file:s0 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>/dev/null || echo \"VOLANTE_CHCON_FALHOU\"\n                mount --bind "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lw0/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \"$_ks\"\n                restorecon -v \"$_ks\" 2>/dev/null || true\n                if grep -F \" $_ks \" /proc/mounts >/dev/null 2>&1; then\n                  # O dalvik-cache guarda o odex do apk ANTIGO; sem limpar, o boot carrega o\n                  # c\u00f3digo de f\u00e1brica por cima do apk novo e o bind n\u00e3o muda nada.\n                  rm -rf /data/dalvik-cache/*/system@app@GeelyAutoKeyServer* 2>/dev/null || true\n                  am force-stop com.flyme.auto.keyserver 2>/dev/null || true\n                  am startservice com.flyme.auto.keyserver/com.flyme.auto.keyserver.service.AutoKeyService >/dev/null 2>&1 || true\n                  echo \"VOLANTE=ATIVO_POR_BIND\"\n                else\n                  echo \"VOLANTE_BIND_FALHOU\"\n                fi\n              fi\n            fi\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    invoke-static {}, Lw0/t1;->a0()Ljava/lang/String;

    move-result-object p0

    const-string v0, "            "

    invoke-static {p0, v0}, Lo2/m;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "            echo \"-- CarplayMonitor: fora deste script de proposito, roda por comando proprio --\""

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n            echo \"== fim ==\"\n        "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final v(Lw0/s3;IJ)Lw0/u3;
    .locals 4

    iget-object v0, p0, Lw0/s3;->d:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lw0/u3;

    sget-object p1, Lw0/q3;->a:Lw0/q3;

    const-string p2, "sess\u00e3o ativa \u2014 protegida"

    invoke-direct {p0, p1, p2}, Lw0/u3;-><init>(Lw0/q3;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    new-instance p0, Lw0/u3;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "or\u00e7amento gasto ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/3)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lw0/q3;->i:Lw0/q3;

    invoke-direct {p0, p2, p1}, Lw0/u3;-><init>(Lw0/q3;Ljava/lang/String;)V

    return-object p0

    :cond_1
    iget-object p1, p0, Lw0/s3;->a:Ljava/lang/Boolean;

    sget-object v0, Lw0/q3;->b:Lw0/q3;

    if-nez p1, :cond_2

    new-instance p0, Lw0/u3;

    const-string p1, "n\u00e3o sei se o alvo est\u00e1 presente"

    invoke-direct {p0, v0, p1}, Lw0/u3;-><init>(Lw0/q3;Ljava/lang/String;)V

    return-object p0

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p0, Lw0/u3;

    sget-object p1, Lw0/q3;->c:Lw0/q3;

    const-string p2, "alvo ausente"

    invoke-direct {p0, p1, p2}, Lw0/u3;-><init>(Lw0/q3;Ljava/lang/String;)V

    return-object p0

    :cond_3
    iget-boolean p1, p0, Lw0/s3;->e:Z

    if-eqz p1, :cond_4

    new-instance p0, Lw0/u3;

    sget-object p1, Lw0/q3;->e:Lw0/q3;

    const-string p2, "Wi-Fi cliente ocupa o r\u00e1dio"

    invoke-direct {p0, p1, p2}, Lw0/u3;-><init>(Lw0/q3;Ljava/lang/String;)V

    return-object p0

    :cond_4
    iget-object p1, p0, Lw0/s3;->b:Ljava/lang/Boolean;

    if-nez p1, :cond_5

    new-instance p0, Lw0/u3;

    const-string p1, "n\u00e3o sei o estado do AP"

    invoke-direct {p0, v0, p1}, Lw0/u3;-><init>(Lw0/q3;Ljava/lang/String;)V

    return-object p0

    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p0, Lw0/u3;

    sget-object p1, Lw0/q3;->d:Lw0/q3;

    const-string p2, "AP n\u00e3o est\u00e1 pronto"

    invoke-direct {p0, p1, p2}, Lw0/u3;-><init>(Lw0/q3;Ljava/lang/String;)V

    return-object p0

    :cond_6
    iget-object p1, p0, Lw0/s3;->c:Ljava/lang/Boolean;

    if-nez p1, :cond_7

    new-instance p0, Lw0/u3;

    const-string p1, "n\u00e3o sei o estado do transporte"

    invoke-direct {p0, v0, p1}, Lw0/u3;-><init>(Lw0/q3;Ljava/lang/String;)V

    return-object p0

    :cond_7
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    sget-object v0, Lw0/q3;->g:Lw0/q3;

    const-wide/32 v1, 0xa410

    if-eqz p1, :cond_9

    cmp-long p1, p2, v1

    if-ltz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "transporte ausente h\u00e1 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms, sem avan\u00e7o"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lw0/t1;->X(Lw0/s3;Ljava/lang/String;)Lw0/u3;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Lw0/u3;

    const-string p1, "esperando o transporte subir"

    invoke-direct {p0, v0, p1}, Lw0/u3;-><init>(Lw0/q3;Ljava/lang/String;)V

    return-object p0

    :cond_9
    sget-object p1, Lw0/v3;->a:[I

    const/4 v3, 0x1

    aget p1, p1, v3

    if-ne p1, v3, :cond_b

    cmp-long p1, p2, v1

    if-ltz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "convite sem progresso h\u00e1 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lw0/t1;->X(Lw0/s3;Ljava/lang/String;)Lw0/u3;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p0, Lw0/u3;

    const-string p1, "negocia\u00e7\u00e3o em andamento"

    invoke-direct {p0, v0, p1}, Lw0/u3;-><init>(Lw0/q3;Ljava/lang/String;)V

    return-object p0

    :cond_b
    new-instance p0, Lw0/u3;

    sget-object p1, Lw0/q3;->f:Lw0/q3;

    const-string p2, "pr\u00e9-requisitos prontos"

    invoke-direct {p0, p1, p2}, Lw0/u3;-><init>(Lw0/q3;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final w(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "caminho"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/high16 v1, 0x10000

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v1, "digest(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lw0/o;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lw0/o;-><init>(I)V

    invoke-static {v0, v1}, Ly1/f;->b0([BLh2/l;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v0

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {p0, v0}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method public static final x(Ljava/lang/String;Ljava/lang/String;Z)Lw0/g4;
    .locals 4

    if-nez p2, :cond_0

    sget-object p0, Lw0/g4;->c:Lw0/g4;

    return-object p0

    :cond_0
    invoke-static {p1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lw0/g4;->d:Lw0/g4;

    if-eqz p1, :cond_6

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_6

    invoke-static {p0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    move-object v3, p0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lw0/g4;->a:Lw0/g4;

    return-object p0

    :cond_5
    sget-object p0, Lw0/g4;->b:Lw0/g4;

    return-object p0

    :cond_6
    :goto_1
    return-object p2
.end method

.method public static y(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ex/auto/HomeWidgetsPollService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static z(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/wd;->a:Lw0/wd;

    invoke-static {p0}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lw0/t1;->b(Landroid/content/Context;)Z

    move-result v1

    const-class v2, Lcom/ex/auto/HomeFloatingWidgetsService;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b0:Lcom/ex/auto/HomeFloatingWidgetsService;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    new-instance v1, Lw0/j7;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lw0/j7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
