.class public final Lw0/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw0/u0;

.field public static final b:Ljava/util/UUID;

.field public static final c:Ljava/util/UUID;

.field public static final d:Ljava/util/UUID;

.field public static final e:Landroid/os/Handler;

.field public static volatile f:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field public static volatile g:Lw0/s0;

.field public static volatile h:Landroid/bluetooth/BluetoothGattServer;

.field public static volatile i:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public static final j:Ljava/util/Set;

.field public static volatile k:Le/l;

.field public static volatile l:Landroid/content/Context;

.field public static volatile m:Z

.field public static volatile n:J

.field public static o:Lw0/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw0/u0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw0/u0;->a:Lw0/u0;

    const-string v0, "7ea9c1d4-3f62-4b18-9d5a-0c8e6f21ab70"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "fromString(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lw0/u0;->b:Ljava/util/UUID;

    const-string v0, "7ea9c1d4-3f62-4b18-9d5a-0c8e6f21ab71"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lw0/u0;->c:Ljava/util/UUID;

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lw0/u0;->d:Ljava/util/UUID;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lw0/u0;->e:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lw0/u0;->j:Ljava/util/Set;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    sget-object v0, Lw0/u0;->k:Le/l;

    if-eqz v0, :cond_0

    sget-object v1, Lw0/u0;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    mul-long/2addr v4, v2

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x3e8

    add-long/2addr v4, v0

    new-instance v2, Le/l;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Le/l;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lw0/u0;->k:Le/l;

    sget-object p0, Lw0/u0;->e:Landroid/os/Handler;

    cmp-long v3, v4, v0

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v4

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 5

    new-instance v0, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v0

    new-instance v2, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v2

    new-instance v3, Landroid/os/ParcelUuid;

    sget-object v4, Lw0/u0;->b:Ljava/util/UUID;

    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-static {p0}, Lw0/u0;->f(Landroid/content/Context;)[B

    move-result-object p0

    invoke-static {p0}, Lw0/m;->B([B)[B

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object p0

    :try_start_0
    invoke-virtual {p1, v0, p0, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lw0/ae;->a:Lw0/ae;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "startAdvertising: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BleCarro"

    invoke-static {p1, p0, v1}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static c()[B
    .locals 10

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/ex/auto/VhalProviderService;->b(J)Lw0/wg;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "getBytes(...)"

    const-string v3, "toString(...)"

    const-string v4, "vivo"

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo2/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v4, v0, Lw0/wg;->d:Ljava/lang/Float;

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    const/high16 v7, 0x41200000    # 10.0f

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-double v8, v4

    div-double/2addr v8, v5

    const-string v4, "soc"

    invoke-virtual {v1, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1
    iget-object v4, v0, Lw0/wg;->a:Ljava/lang/Float;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const-string v8, "kmh"

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    iget-object v4, v0, Lw0/wg;->c:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v8, "g"

    invoke-virtual {v1, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v4, v0, Lw0/wg;->g:Ljava/lang/Float;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-double v7, v4

    div-double/2addr v7, v5

    const-string v4, "kw"

    invoke-virtual {v1, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_4
    iget-object v4, v0, Lw0/wg;->f:Ljava/lang/Float;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const-string v5, "odo"

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    iget-object v0, v0, Lw0/wg;->e:Ljava/lang/Float;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const-string v4, "rng"

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo2/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e()V
    .locals 6

    sget-object v0, Lw0/u0;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lw0/u0;->i:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lw0/u0;->h:Landroid/bluetooth/BluetoothGattServer;

    if-nez v2, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lw0/u0;->c()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Ly1/g;->m0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catchall_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v4, v1, v5}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public static f(Landroid/content/Context;)[B
    .locals 6

    const-string v0, "context"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "ble_carro"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    const-string v2, "segredo_hex"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    new-array p0, v3, [B

    :goto_0
    if-ge v1, v3, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "substring(...)"

    invoke-static {v2, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lk1/a;->f(I)V

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-array v0, v3, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Lw0/o;

    const/16 v3, 0xd

    invoke-direct {v1, v3}, Lw0/o;-><init>(I)V

    invoke-static {v0, v1}, Ly1/f;->b0([BLh2/l;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized d(Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-object v0, Lw0/u0;->l:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-wide v1, Lw0/u0;->n:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lw0/u0;->n:J

    sub-long/2addr v1, v3

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    sget-object v5, Lw0/u0;->o:Lw0/r0;

    if-eqz v5, :cond_2

    sget-object v6, Lw0/u0;->e:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v5, Lw0/ae;->a:Lw0/ae;

    const-string v5, "BleCarro"

    const-string v6, "farol: retomada agendada cancelada \u2014 a proje\u00e7\u00e3o voltou"

    invoke-static {v5, v6, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    :goto_1
    sput-object v3, Lw0/u0;->o:Lw0/r0;

    :cond_3
    sget-boolean v5, Lw0/u0;->m:Z

    if-eqz p1, :cond_4

    if-nez v5, :cond_4

    sget-object v5, Lw0/q4;->a:Lw0/q4;

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    sget-object v5, Lw0/q4;->c:Lw0/q4;

    goto :goto_2

    :cond_5
    if-nez v5, :cond_6

    sget-object v5, Lw0/q4;->c:Lw0/q4;

    goto :goto_2

    :cond_6
    const-wide/16 v5, 0x3a98

    cmp-long v5, v1, v5

    if-ltz v5, :cond_7

    sget-object v5, Lw0/q4;->b:Lw0/q4;

    goto :goto_2

    :cond_7
    sget-object v5, Lw0/q4;->c:Lw0/q4;

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_c

    if-eq v5, v6, :cond_9

    const/4 v0, 0x2

    if-ne v5, v0, :cond_8

    if-nez p1, :cond_10

    sget-boolean p1, Lw0/u0;->m:Z

    if-eqz p1, :cond_10

    sget-object p1, Lw0/u0;->o:Lw0/r0;

    if-nez p1, :cond_10

    new-instance p1, Lw0/r0;

    invoke-direct {p1, v4}, Lw0/r0;-><init>(I)V

    sput-object p1, Lw0/u0;->o:Lw0/r0;

    sget-object v0, Lw0/u0;->e:Landroid/os/Handler;

    const-wide/16 v3, 0x3b92

    sub-long/2addr v3, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_8
    new-instance p1, Landroidx/fragment/app/q;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_9
    sput-boolean v4, Lw0/u0;->m:Z

    sget-object p1, Lw0/u0;->o:Lw0/r0;

    if-eqz p1, :cond_a

    sget-object v1, Lw0/u0;->e:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a
    sput-object v3, Lw0/u0;->o:Lw0/r0;

    sget-object p1, Lw0/u0;->f:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    sget-object v1, Lw0/u0;->g:Lw0/s0;

    if-eqz p1, :cond_b

    if-eqz v1, :cond_b

    invoke-static {v0, p1, v1}, Lw0/u0;->b(Landroid/content/Context;Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;)V

    invoke-static {v0}, Lw0/u0;->a(Landroid/content/Context;)V

    :cond_b
    sget-object p1, Lw0/ae;->a:Lw0/ae;

    const-string p1, "BleCarro"

    const-string v0, "farol retomado: proje\u00e7\u00e3o encerrada h\u00e1 15s"

    invoke-static {p1, v0, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_c
    sput-boolean v6, Lw0/u0;->m:Z

    sget-object p1, Lw0/u0;->o:Lw0/r0;

    if-eqz p1, :cond_d

    sget-object v0, Lw0/u0;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d
    sput-object v3, Lw0/u0;->o:Lw0/r0;

    sget-object p1, Lw0/u0;->f:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    sget-object v0, Lw0/u0;->g:Lw0/s0;

    sget-object v1, Lw0/u0;->k:Le/l;

    if-eqz v1, :cond_e

    sget-object v2, Lw0/u0;->e:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_e
    sput-object v3, Lw0/u0;->k:Le/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_f

    if-eqz v0, :cond_f

    :try_start_2
    invoke-virtual {p1, v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_f
    :try_start_3
    sget-object p1, Lw0/ae;->a:Lw0/ae;

    const-string p1, "BleCarro"

    const-string v0, "farol pausado: proje\u00e7\u00e3o ativa (h\u00e1 rede em comum, o an\u00fancio n\u00e3o serve)"

    invoke-static {p1, v0, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_10
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
