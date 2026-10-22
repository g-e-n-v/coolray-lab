.class public final Lw0/wd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw0/wd;

.field public static final b:Ljava/util/List;

.field public static final c:Landroid/content/ComponentName;

.field public static volatile d:Z

.field public static volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lw0/wd;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw0/wd;->a:Lw0/wd;

    const-class v14, Lcom/ex/auto/HomeWidgetsPollService;

    const-class v15, Lcom/ex/auto/VhalProviderService;

    const-class v1, Lcom/ex/auto/QuickAccessFloaterService;

    const-class v2, Lcom/ex/auto/TempBattPillFloaterService;

    const-class v3, Lcom/ex/auto/HomeFloatingWidgetsService;

    const-class v4, Lcom/ex/auto/MediaBarFloaterService;

    const-class v5, Lcom/ex/auto/LyricsFloaterService;

    const-class v6, Lcom/ex/auto/WifiFloaterService;

    const-class v7, Lcom/ex/auto/DpadFloaterService;

    const-class v8, Lcom/ex/auto/SplitFloaterService;

    const-class v9, Lcom/ex/auto/AppPipFloaterService;

    const-class v10, Lcom/ex/auto/ExSapoCastFloaterService;

    const-class v11, Lcom/ex/auto/BlackoutFloaterService;

    const-class v12, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    const-class v13, Lcom/ex/auto/TimerFloaterService;

    filled-new-array/range {v1 .. v15}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ly1/h;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lw0/wd;->b:Ljava/util/List;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.ex.auto"

    const-string v2, "com.ex.auto.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lw0/wd;->c:Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "ctx"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "tela_preta_prefs"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {p0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "modo_oficina"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return v0
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 5

    :try_start_0
    sget-object v0, Lw0/wd;->c:Landroid/content/ComponentName;

    invoke-static {v0}, Lk1/a;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    :goto_1
    invoke-virtual {v2, v1, v4, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lw0/ae;->a:Lw0/ae;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "n\u00e3o consegui mexer no \u00edcone: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ModoOficina"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4

    const-string v0, "ctx"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    const-string v2, "modo_oficina"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "quick_access_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "gestures_enabled"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    const-string v2, "temp_batt_pill_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/TempBattPillFloaterService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_3
    :try_start_2
    sget-object v2, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p0}, Lw0/t1;->z(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    const-string v2, "media_bar_floater_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/MediaBarFloaterService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :cond_4
    const-string v2, "lyrics_floater_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ex/auto/LyricsFloaterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    :cond_5
    :goto_0
    return-void
.end method

.method public static e(Lcom/ex/auto/CentralWatchdogService;)V
    .locals 6

    const-string v0, "\u00edcone fora de sincronia (deveria="

    sget-boolean v1, Lw0/wd;->e:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lw0/wd;->e:Z

    invoke-static {p0}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lw0/wd;->c:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "ModoOficina"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") \u2014 corrigindo"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0, v2}, Lw0/wd;->b(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Lw0/vd;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v3, Lw0/w4;->a:Lw0/w4;

    sget-object v4, Lw0/w4;->e:Lw0/w4;

    sget-object v5, Ly1/p;->a:Ly1/p;

    const-string v6, ": "

    const-string v7, "ModoOficina"

    const-string v0, "tela_preta_prefs"

    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v10, "modo_oficina_restaurando"

    const/4 v11, 0x1

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v12, Ljava/io/File;

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    :cond_0
    const-string v14, "modo_oficina_estado.txt"

    invoke-direct {v12, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v12}, Lf2/d;->g0(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v13

    :goto_0
    move-object v14, v0

    goto :goto_2

    :goto_1
    sget-object v14, Lw0/ae;->a:Lw0/ae;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "snapshot ileg\u00edvel em "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v14, v13

    :goto_2
    if-nez v14, :cond_2

    new-instance v0, Lw0/x4;

    invoke-direct {v0, v5, v8, v8}, Lw0/x4;-><init>(Ljava/util/List;ZZ)V

    move-object/from16 v17, v5

    move-object/from16 v18, v9

    goto/16 :goto_7

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v14}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v15

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    move v13, v8

    :goto_3
    if-ge v13, v15, :cond_3

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v13, v13, 0x1

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v13, :cond_5

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v17, v11

    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_4

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v11, :cond_7

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v17, v5

    move-object v5, v15

    check-cast v5, Ljava/lang/String;

    move-object/from16 v18, v9

    const-string v9, "#"

    invoke-static {v5, v9}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v5, v17

    move-object/from16 v9, v18

    goto :goto_5

    :cond_7
    move-object/from16 v17, v5

    move-object/from16 v18, v9

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v9, 0x0

    :cond_a
    if-ge v9, v5, :cond_8

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Ljava/lang/String;

    const-string v13, "#CONNADAPTOR=custom"

    invoke-static {v11, v13}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v5, 0x1

    :goto_6
    new-instance v8, Lw0/x4;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v5, v9}, Lw0/x4;-><init>(Ljava/util/List;ZZ)V

    move-object v0, v8

    :goto_7
    iget-object v5, v0, Lw0/x4;->a:Ljava/lang/Object;

    iget-boolean v8, v0, Lw0/x4;->c:Z

    const-string v9, "restaurar ("

    if-nez v8, :cond_b

    sget-object v11, Lw0/ae;->a:Lw0/ae;

    const-string v11, "): SEM SNAPSHOT em "

    invoke-static {v9, v2, v11}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " \u2014 n\u00e3o sei quais pacotes devolver"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    invoke-static {v7, v11, v13}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_b
    iget-boolean v11, v0, Lw0/x4;->b:Z

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v15, 0x0

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v5

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v20, v8

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v0, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_9

    :catchall_1
    move/from16 v20, v8

    :catchall_2
    const/4 v0, 0x0

    :goto_9
    :try_start_3
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v8, :cond_c

    const/16 v16, 0x1

    :goto_a
    const/4 v8, 0x1

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object/from16 v21, v12

    goto :goto_c

    :cond_c
    const/16 v16, 0x0

    goto :goto_a

    :goto_b
    xor-int/lit8 v0, v16, 0x1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v21, v12

    const/4 v12, 0x0

    :try_start_4
    invoke-virtual {v8, v5, v12, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    :catchall_4
    move-exception v0

    :goto_c
    sget-object v8, Lw0/ae;->a:Lw0/ae;

    const-string v8, "n\u00e3o consegui ligar "

    invoke-static {v8, v5, v6}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v7, v0, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_d
    const-wide/16 v22, 0x78

    :try_start_5
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-object/from16 v5, v19

    move/from16 v8, v20

    move-object/from16 v12, v21

    goto :goto_8

    :cond_d
    move-object/from16 v19, v5

    move/from16 v20, v8

    move-object/from16 v21, v12

    const/4 v8, 0x1

    invoke-static {v1, v8}, Lw0/wd;->b(Landroid/content/Context;Z)V

    if-eqz v11, :cond_f

    invoke-static/range {v18 .. v18}, Lw0/u;->d(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lx1/a;

    const-string v6, "caApk"

    invoke-direct {v5, v6, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {v18 .. v18}, Lw0/u;->d(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw0/t1;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lx1/a;

    const-string v8, "caMd5"

    invoke-direct {v6, v8, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v6}, [Lx1/a;

    move-result-object v0

    invoke-static {v0}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v0

    const-string v5, "rede.ativarConnAdaptor"

    const/16 v6, 0x8

    invoke-static {v1, v5, v0, v6}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "ativado"

    :goto_e
    move-object v5, v0

    goto :goto_f

    :cond_e
    const-string v0, "sem playbook"

    goto :goto_e

    :cond_f
    const-string v0, ""

    goto :goto_e

    :goto_f
    if-nez v14, :cond_10

    move-object/from16 v14, v17

    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_11

    :cond_11
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "#HVAC=install"

    invoke-static {v8, v12}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v0, "pm install -r -g \'/data/local/hvac-digital/sysui.apk\' 2>&1"

    const v8, 0x1d4c0

    invoke-static {v8, v0}, Lw0/wd;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "Success"

    const/4 v12, 0x0

    invoke-static {v0, v8, v12}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, ", hvac=reinstalado"

    goto :goto_10

    :cond_13
    const-string v0, ", hvac=FALHOU"

    :goto_10
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_14
    :goto_11
    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_12

    :cond_15
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "#HVAC=bind"

    invoke-static {v8, v12}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    const-string v0, "touch \'/data/local/tmp/fixes/hvac_em_bind\'"

    const/16 v8, 0x4e20

    invoke-static {v8, v0}, Lw0/wd;->k(ILjava/lang/String;)Ljava/lang/String;

    const-string v0, ", hvac=marcado_p_remontar"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    :goto_12
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Ljava/lang/String;

    const-string v13, "#CARLOCK_PATH="

    invoke-static {v12, v13}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    move-object v13, v8

    goto :goto_13

    :cond_19
    const/4 v13, 0x0

    :goto_13
    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_1a

    const/16 v0, 0x3d

    invoke-static {v13, v0, v13}, Lo2/k;->x0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1a

    :try_start_6
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v12, "lock_car_audio_path"

    invoke-static {v8, v12, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "lock_car_audio_enable"

    const-string v12, "1"

    invoke-static {v8, v0, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, ", carlock=religado"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_14

    :catchall_5
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, ", carlock=FALHOU("

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    :goto_14
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "toString(...)"

    invoke-static {v0, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_6
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "modo_oficina"

    const/4 v12, 0x0

    invoke-interface {v6, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "modo_oficina_ate"

    const-wide/16 v13, 0x0

    invoke-interface {v6, v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v10, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v6, Lcom/ex/auto/ModoOficinaTriggerService;->f:Lcom/ex/auto/ModoOficinaTriggerService;

    invoke-static {v1}, Lw0/e8;->w(Landroid/content/Context;)V

    invoke-static {v1}, Lw0/wd;->d(Landroid/content/Context;)V

    if-nez v20, :cond_1b

    sget-object v6, Lw0/w4;->d:Lw0/w4;

    goto :goto_15

    :cond_1b
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    move-object v6, v4

    goto :goto_15

    :cond_1c
    if-gtz v15, :cond_1d

    sget-object v6, Lw0/w4;->c:Lw0/w4;

    goto :goto_15

    :cond_1d
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v6

    if-ge v15, v6, :cond_1e

    sget-object v6, Lw0/w4;->b:Lw0/w4;

    goto :goto_15

    :cond_1e
    move-object v6, v3

    :goto_15
    sget-object v8, Lw0/ae;->a:Lw0/ae;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " \u2014 "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pacotes, connAdaptor="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-static {v7, v0, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v8, :cond_20

    if-eq v0, v2, :cond_20

    const/4 v7, 0x3

    if-eq v0, v7, :cond_1f

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v7, 0x7f0f0250

    invoke-virtual {v1, v7, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_1f
    const v0, 0x7f0f0252

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_20
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const v7, 0x7f0f0251

    invoke-virtual {v1, v7, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    if-eq v6, v3, :cond_22

    if-ne v6, v4, :cond_21

    goto :goto_17

    :cond_21
    const/4 v9, 0x1

    goto :goto_18

    :cond_22
    :goto_17
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "modo_oficina_aviso_saida_pendente"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Le/l;

    invoke-direct {v8, v1, v2}, Le/l;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_18
    new-instance v1, Lw0/vd;

    if-eq v6, v3, :cond_24

    if-ne v6, v4, :cond_23

    goto :goto_19

    :cond_23
    move v8, v12

    goto :goto_1a

    :cond_24
    :goto_19
    move v8, v9

    :goto_1a
    invoke-direct {v1, v0, v5, v8}, Lw0/vd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)Lw0/vd;
    .locals 12

    const-string v0, ""

    const-string v1, "ModoOficina"

    const-string v2, "modo_oficina_restaurando"

    const-class v3, Lcom/ex/auto/CentralWatchdogService;

    const-string v4, "restaurar ("

    sget-object v5, Lw0/ee;->a:Lw0/ee;

    invoke-static {p0}, Lw0/ee;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "Check failed."

    if-eqz v8, :cond_2

    :try_start_1
    sget-object v8, Lw0/c6;->a:Ljava/util/List;

    invoke-static {p0}, Lw0/c6;->h(Landroid/content/Context;)V

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p0}, Lw0/c6;->l(Landroid/content/Context;)V

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v8, "modo_oficina"

    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v8, "modo_oficina_ate"

    const-wide/16 v10, 0x0

    invoke-interface {v5, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "modo_oficina_entrada_pendente"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "modo_oficina_aviso_saida_pendente"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p0}, Lw0/c6;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lf2/d;->h0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "services"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, La1/i;

    const/16 v10, 0xd

    invoke-direct {v8, v2, v10, p0}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v5, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {p0}, Lw0/c6;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/ex/auto/ModoOficinaTriggerService;->f:Lcom/ex/auto/ModoOficinaTriggerService;

    invoke-static {p0}, Lw0/e8;->w(Landroid/content/Context;)V

    invoke-static {p0}, Lw0/wd;->d(Landroid/content/Context;)V

    invoke-static {p0}, Lw0/c6;->h(Landroid/content/Context;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): estado completo confirmado"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Le/l;

    const/4 v9, 0x2

    invoke-direct {v8, v2, v9}, Le/l;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Lw0/vd;

    const-string v5, "Configura\u00e7\u00f5es e modifica\u00e7\u00f5es restauradas e conferidas."

    invoke-direct {v2, v5, v0, v7}, Lw0/vd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object p0, Lw0/ae;->a:Lw0/ae;

    const-string p0, ") incompleto: "

    invoke-static {v4, p1, p0}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; registro preservado"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v7}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p0, Lw0/vd;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Restaura\u00e7\u00e3o incompleta: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Tente novamente; o registro foi preservado."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v6}, Lw0/vd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static i(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lw0/wd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {p0, v0}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lw0/c6;->a:Ljava/util/List;

    invoke-static {p0}, Lw0/c6;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    :cond_0
    const-string p0, "modo_oficina_estado.txt"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static k(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lw0/n;

    invoke-direct {v1, v0}, Lw0/n;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {p1, p0, v2, v1}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lw0/ae;->a:Lw0/ae;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "shell indispon\u00edvel (ConnAdaptor n\u00e3o mexido): "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ModoOficina"

    invoke-static {v1, p1, v0}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ADB_INDISPONIVEL: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/content/Context;)V
    .locals 4

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "modo_oficina_restaurando"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "ModoOficina"

    const-string v2, "restaurar tinha ficado pela metade \u2014 retomando no boot"

    invoke-static {v0, v2, v1}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Le/l;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Le/l;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    const-string v2, "modo_oficina"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v2, "modo_oficina_entrada_pendente"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Le/l;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Le/l;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2
    const-string v1, "modo_oficina_ate"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v2, v0

    if-gtz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Le/l;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Le/l;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_3
    invoke-static {p0}, Lw0/wd;->i(Landroid/content/Context;)V

    sget-object v0, Lcom/ex/auto/ModoOficinaTriggerService;->f:Lcom/ex/auto/ModoOficinaTriggerService;

    invoke-static {p0}, Lw0/e8;->w(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized c(Landroid/content/Context;I)Lw0/vd;
    .locals 16

    move-object/from16 v1, p1

    move/from16 v0, p2

    const-string v2, "Modo oficina n\u00e3o foi conclu\u00eddo: "

    const-string v3, "ocultar incompleto: "

    monitor-enter p0

    :try_start_0
    sget-object v4, Lw0/ee;->a:Lw0/ee;

    invoke-static {v1}, Lw0/ee;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "modo_oficina"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Lw0/vd;

    const-string v1, "Modo oficina j\u00e1 est\u00e1 ativo"

    const-string v2, ""

    invoke-direct {v0, v1, v2, v6}, Lw0/vd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    const/4 v5, 0x1

    :try_start_1
    sget-object v7, Lw0/c6;->a:Ljava/util/List;

    invoke-static {v1}, Lw0/c6;->k(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "modo_oficina"

    invoke-interface {v8, v9, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "modo_oficina_ate"

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    int-to-long v12, v0

    const-wide/32 v14, 0x36ee80

    mul-long/2addr v12, v14

    add-long/2addr v12, v10

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_1
    const-wide/16 v12, 0x0

    :goto_0
    invoke-interface {v8, v9, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "modo_oficina_horas"

    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v8, "modo_oficina_entrada_pendente"

    invoke-interface {v0, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Le/l;

    const/4 v9, 0x7

    invoke-direct {v8, v1, v9}, Le/l;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v1}, Lw0/c6;->h(Landroid/content/Context;)V

    invoke-static {v1}, Lw0/wd;->i(Landroid/content/Context;)V

    sget-object v0, Lcom/ex/auto/ModoOficinaTriggerService;->f:Lcom/ex/auto/ModoOficinaTriggerService;

    invoke-static {v1}, Lw0/e8;->w(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-class v8, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {v0, v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v1, v7}, Lw0/c6;->f(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v8, "modo_oficina_entrada_pendente"

    invoke-interface {v0, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v8, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {v0, v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "ModoOficina"

    const-string v8, "ocultar: estado completo confirmado"

    invoke-static {v0, v8, v5}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lw0/vd;

    const-string v8, "packages"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const v8, 0x7f0f024e

    invoke-virtual {v1, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getString(...)"

    invoke-static {v7, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, ""

    invoke-direct {v0, v7, v8, v5}, Lw0/vd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_2
    const-string v0, "Check failed."

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    const-string v0, "Check failed."

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    sget-object v7, Lw0/ae;->a:Lw0/ae;

    const-string v7, "ModoOficina"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; registro preservado"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v5}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "modo_oficina"

    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    new-instance v1, Lw0/vd;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". O registro foi preservado para restaurar."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-direct {v1, v0, v2, v6}, Lw0/vd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    :goto_2
    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)Lw0/vd;
    .locals 5

    const-string v0, "restaurar ("

    monitor-enter p0

    :try_start_0
    const-string v1, "ctx"

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "retomada-boot"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lw0/ee;->a:Lw0/ee;

    invoke-static {p1}, Lw0/ee;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "modo_oficina_restaurando"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lw0/vd;

    const-string p2, "Restaura\u00e7\u00e3o j\u00e1 conclu\u00edda"

    const-string v0, ""

    invoke-direct {p1, p2, v0, v2}, Lw0/vd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v1, Lw0/c6;->a:Ljava/util/List;

    invoke-static {p1}, Lw0/c6;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lw0/wd;->h(Landroid/content/Context;Ljava/lang/String;)Lw0/vd;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    sget-boolean v1, Lw0/wd;->d:Z

    if-eqz v1, :cond_2

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "ModoOficina"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") ignorado \u2014 j\u00e1 h\u00e1 um em andamento"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v3}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p2, Lw0/vd;

    const v0, 0x7f0f024f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-direct {p2, p1, v0, v2}, Lw0/vd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_2
    :try_start_3
    sput-boolean v2, Lw0/wd;->d:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {p1, p2}, Lw0/wd;->g(Landroid/content/Context;Ljava/lang/String;)Lw0/vd;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sput-boolean v3, Lw0/wd;->d:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    :try_start_6
    sput-boolean v3, Lw0/wd;->d:Z

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method
