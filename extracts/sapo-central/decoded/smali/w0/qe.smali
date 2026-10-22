.class public final Lw0/qe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw0/qe;

.field public static volatile b:Lw0/ie;

.field public static final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lw0/qe;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw0/qe;->a:Lw0/qe;

    const-string v17, "volante.ativarPatch"

    const-string v18, "volante.desativarPatch"

    const-string v1, "audio.aplicarSomTrava"

    const-string v2, "audio.aplicarSomTravaPersistente"

    const-string v3, "audio.restaurarSomTrava"

    const-string v4, "audio.restaurarSomTravaPersistente"

    const-string v5, "carplay.ativar"

    const-string v6, "carplay.desfazerBindMonitor"

    const-string v7, "rede.ativarConnAdaptor"

    const-string v8, "rede.reverterConnAdaptor"

    const-string v9, "rede.trocarArquivoConnAdaptor"

    const-string v10, "rede.reiniciarAa"

    const-string v11, "rede.desativarAa"

    const-string v12, "visual.aplicarGestos"

    const-string v13, "visual.removerGestos"

    const-string v14, "visual.aplicarArDigital"

    const-string v15, "visual.removerArDigital"

    const-string v16, "volante.aplicarPatchKeyServer"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/h;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lw0/qe;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z
    .locals 1

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    sget-object p2, Ly1/q;->a:Ly1/q;

    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lw0/qe;->a:Lw0/qe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lw0/qe;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static f(Landroid/content/ContextWrapper;J)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "playbook_valido_ate"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fatos"

    invoke-static {p3, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lw0/qe;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/ArrayList;)Z

    invoke-static {v0}, Lw0/ne;->f(Ljava/util/ArrayList;)Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/content/Context;)Lw0/ie;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/qe;->b:Lw0/ie;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v0, Lw0/qe;->b:Lw0/ie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lw0/u6;->a:[B

    invoke-static {p1, v0}, Lw0/e8;->l(Landroid/content/Context;[B)Lw0/ie;

    move-result-object p1

    sput-object p1, Lw0/qe;->b:Lw0/ie;

    sget-object p1, Lw0/qe;->b:Lw0/ie;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_6

    :try_start_2
    iget-object p1, p1, Lw0/ie;->e:Lorg/json/JSONObject;

    const-string v0, "trip.periodoMs"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "trip.curvaPontos"

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    cmp-long v0, v3, v1

    if-gtz v0, :cond_2

    if-lez p1, :cond_6

    :cond_2
    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    const-wide/16 v3, -0x1

    :goto_0
    if-lez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    :goto_1
    sget-boolean v0, Lcom/ex/auto/VhalProviderService;->l:Z

    cmp-long v0, v3, v1

    if-lez v0, :cond_5

    sput-wide v3, Lcom/ex/auto/VhalProviderService;->o:J

    :cond_5
    if-lez p1, :cond_6

    const/16 v0, 0x8

    if-lt p1, v0, :cond_6

    const/16 v0, 0x7d0

    if-gt p1, v0, :cond_6

    sput p1, Lw0/ch;->P:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_6
    :try_start_3
    sget-object p1, Lw0/qe;->b:Lw0/ie;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Lcom/ex/auto/MainActivity;)Lx1/a;
    .locals 5

    invoke-virtual {p0, p1}, Lw0/qe;->b(Landroid/content/Context;)Lw0/ie;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lw0/qe;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lw0/ie;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Count overflow has happened."

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lx1/a;

    invoke-direct {v1, p1, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/ArrayList;)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "PlaybookSync"

    const-string v4, "context"

    invoke-static {v0, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "fatos"

    invoke-static {v1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "tela_preta_prefs"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "device_banned"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lw0/qe;->b(Landroid/content/Context;)Lw0/ie;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "acao:"

    move-object/from16 v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lw0/ie;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lw0/he;

    iget-boolean v10, v9, Lw0/he;->c:Z

    if-eqz v10, :cond_2

    iget-object v9, v9, Lw0/he;->b:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    return v5

    :cond_4
    new-instance v4, Lw0/p;

    invoke-direct {v4, v0}, Lw0/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v0, v5

    move v9, v0

    :goto_2
    if-ge v9, v8, :cond_7

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v9, v9, 0x1

    move-object v10, v0

    check-cast v10, Lw0/he;

    const/16 v11, 0x5b

    :try_start_0
    sget-object v0, Lw0/ne;->a:Lo2/h;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v10, v4, v0}, Lw0/ne;->a(Lw0/he;Lw0/p;Ljava/util/LinkedHashMap;)Lw0/me;

    move-result-object v0

    sget-object v12, Lw0/ae;->a:Lw0/ae;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lw0/he;->a:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] \u2192 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lw0/me;->a:Lw0/je;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lw0/me;->b:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " passos, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v0, Lw0/me;->c:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lw0/me;->e:Ljava/lang/String;

    if-eqz v13, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_6

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    const-string v13, ""

    :cond_6
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x29

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12, v5}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v0, Lw0/me;->a:Lw0/je;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    sget-object v12, Lw0/je;->b:Lw0/je;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v12, Lw0/ae;->a:Lw0/ae;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v10, Lw0/he;->a:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] explodiu: "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_7
    return v0
.end method

.method public final g(Landroid/content/ContextWrapper;Landroid/content/SharedPreferences;IJ)V
    .locals 4

    const-string v0, "playbook v"

    const-string v1, "context"

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tela_preta_prefs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "playbook_maior_versao_vista"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez p3, :cond_1

    if-ne p3, v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p4, p5}, Lw0/u6;->c(Landroid/content/Context;Landroid/content/SharedPreferences;J)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lw0/u6;->a:[B

    invoke-static {p1, p2, p3}, Lw0/e8;->L(Landroid/content/Context;Ljava/lang/String;[B)Lw0/ie;

    move-result-object p1

    if-eqz p1, :cond_1

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sput-object p1, Lw0/qe;->b:Lw0/ie;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    sget-object p2, Lw0/ae;->a:Lw0/ae;

    const-string p2, "PlaybookSync"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lw0/ie;->a:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sincronizado (local era v"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    const-string p2, "PlaybookSync"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "sync falhou: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p3, p2}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
