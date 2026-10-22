.class public final Lw0/ee;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw0/ee;

.field public static final b:Ljava/util/List;

.field public static final c:Ljava/util/LinkedHashMap;

.field public static final d:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

.field public static e:Lw0/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v0, Lw0/ee;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw0/ee;->a:Lw0/ee;

    new-instance v1, Lw0/be;

    const/4 v5, 0x0

    const/16 v6, 0x18

    const-string v2, "hvac_stepper_enabled"

    sget-object v9, Lw0/de;->a:Lw0/de;

    sget-object v10, Lw0/ce;->a:Lw0/ce;

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v1 .. v6}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    new-instance v2, Lw0/be;

    const/4 v11, 0x0

    const/16 v12, 0x18

    const-string v8, "status_temp_ext_enabled"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    new-instance v3, Lw0/be;

    const-string v8, "status_battery_enabled"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    new-instance v4, Lw0/be;

    const-string v8, "rvc_black_bg"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    new-instance v5, Lw0/be;

    const-string v8, "hvac_digital_temp"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    new-instance v6, Lw0/be;

    const-string v8, "hvac_digital_batt"

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    new-instance v7, Lw0/be;

    const-string v8, "auto_route_on_aa_connect"

    invoke-direct/range {v7 .. v12}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    move-object v0, v7

    new-instance v7, Lw0/be;

    const-string v8, "auto_proxy_enabled"

    invoke-direct/range {v7 .. v12}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    move-object/from16 v16, v7

    new-instance v7, Lw0/be;

    const-string v8, "restart_aa_on_hu_boot"

    invoke-direct/range {v7 .. v12}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    move-object/from16 v17, v7

    new-instance v7, Lw0/be;

    const-string v8, "telemetry_autostart"

    invoke-direct/range {v7 .. v12}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    move-object/from16 v18, v7

    new-instance v7, Lw0/be;

    const-string v8, "avas_muted_saved"

    invoke-direct/range {v7 .. v12}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    move-object/from16 v19, v7

    new-instance v7, Lw0/be;

    const-string v8, "quick_access_enabled"

    invoke-direct/range {v7 .. v12}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    move-object/from16 v20, v7

    new-instance v7, Lw0/be;

    const-string v8, "aeb_restore_on_boot"

    invoke-direct/range {v7 .. v12}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    new-instance v14, Lw0/be;

    move-object v13, v10

    move-object v10, v14

    const/4 v14, 0x3

    const/16 v15, 0x8

    const-string v11, "fan_speed"

    sget-object v23, Lw0/de;->b:Lw0/de;

    move-object/from16 v12, v23

    invoke-direct/range {v10 .. v15}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    new-instance v21, Lw0/be;

    const v25, 0x20020502

    const/16 v26, 0x8

    const-string v22, "saved_regen"

    sget-object v24, Lw0/ce;->b:Lw0/ce;

    invoke-direct/range {v21 .. v26}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    move-object/from16 v15, v21

    new-instance v21, Lw0/be;

    const v25, 0x22010102

    const-string v22, "saved_drive"

    invoke-direct/range {v21 .. v26}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    move-object/from16 v8, v21

    new-instance v21, Lw0/be;

    const/16 v25, 0x64

    const-string v22, "floater_alpha"

    invoke-direct/range {v21 .. v26}, Lw0/be;-><init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V

    move-object/from16 v9, v16

    move-object/from16 v16, v8

    move-object v8, v9

    move-object v13, v7

    move-object v14, v10

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v17, v21

    move-object v7, v0

    filled-new-array/range {v1 .. v17}, [Lw0/be;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lw0/ee;->b:Ljava/util/List;

    invoke-static {v0}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v1

    invoke-static {v1}, Ly1/s;->V(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lw0/be;

    iget-object v3, v3, Lw0/be;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sput-object v2, Lw0/ee;->c:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    const-string v1, "newKeySet(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lw0/ee;->d:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    const-string v0, "drive_regen_prefs"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "ctx"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p0, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized b(Landroid/app/Service;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lw0/ee;->e:Lw0/a1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    const-string v0, "phone_sync_meta"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lw0/a1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lw0/a1;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lw0/ee;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    sput-object v1, Lw0/ee;->e:Lw0/a1;

    new-instance v1, Lw0/a1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lw0/a1;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lw0/ee;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
