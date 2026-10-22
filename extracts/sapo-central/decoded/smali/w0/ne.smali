.class public abstract Lw0/ne;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo2/h;

.field public static final b:Lo2/h;

.field public static final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lo2/h;

    const-string v1, "(^|[\\s\'\"=/])(/system|/vendor|/product|/system_ext|/odm)(/|$|[\\s\'\"])|remount|/dev/block/"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lo2/h;-><init>(ILjava/lang/String;)V

    sput-object v0, Lw0/ne;->a:Lo2/h;

    new-instance v0, Lo2/h;

    const-string v1, "^[A-Za-z0-9._:@/-]{1,120}$"

    invoke-direct {v0, v1}, Lo2/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw0/ne;->b:Lo2/h;

    const-string v0, "service.adb.tcp.port"

    const-string v1, "ctl."

    const-string v2, "persist.ex."

    const-string v3, "sys.ex."

    const-string v4, "persist.cpaa."

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lw0/ne;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Lw0/he;Lw0/p;Ljava/util/LinkedHashMap;)Lw0/me;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "pb"

    invoke-static {v1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lw0/he;->a:Ljava/lang/String;

    iget-boolean v0, v1, Lw0/he;->c:Z

    sget-object v5, Lw0/je;->b:Lw0/je;

    if-nez v0, :cond_0

    new-instance v4, Lw0/me;

    const/4 v9, 0x0

    const-string v10, "playbook desligado"

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v4 .. v10}, Lw0/me;-><init>(Lw0/je;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, v1, Lw0/he;->d:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v13, v8

    const/4 v10, 0x0

    :goto_0
    const-string v8, "done"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Lw0/me;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v11, v0, v6

    const/4 v14, 0x0

    sget-object v9, Lw0/je;->a:Lw0/je;

    invoke-direct/range {v8 .. v14}, Lw0/me;-><init>(Lw0/je;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_1
    const-string v8, "abort"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v4, Lw0/me;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v7, v0, v6

    move v6, v10

    const/4 v10, 0x0

    move-object v9, v13

    invoke-direct/range {v4 .. v10}, Lw0/me;-><init>(Lw0/je;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_2
    iget v8, v1, Lw0/he;->e:I

    sget-object v9, Lw0/je;->c:Lw0/je;

    if-lt v10, v8, :cond_3

    new-instance v8, Lw0/me;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v11, v0, v6

    const-string v14, "maxSteps"

    invoke-direct/range {v8 .. v14}, Lw0/me;-><init>(Lw0/je;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v6

    iget-wide v14, v1, Lw0/he;->f:J

    cmp-long v8, v11, v14

    if-ltz v8, :cond_4

    new-instance v8, Lw0/me;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v11, v0, v6

    const-string v14, "maxTotalMs"

    invoke-direct/range {v8 .. v14}, Lw0/me;-><init>(Lw0/je;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_4
    iget-object v8, v1, Lw0/he;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw0/oe;

    if-nez v8, :cond_5

    new-instance v4, Lw0/me;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v7, v1, v6

    const-string v1, "passo \'"

    const-string v2, "\' n\u00e3o existe"

    invoke-static {v1, v0, v2}, Landroidx/activity/result/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v6, v10

    move-object v9, v13

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lw0/me;-><init>(Lw0/je;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_5
    iget-object v13, v8, Lw0/oe;->a:Ljava/lang/String;

    add-int/lit8 v10, v10, 0x1

    iget-object v0, v8, Lw0/oe;->i:Ljava/lang/String;

    const/16 v9, 0x2f

    const-string v11, "["

    if-eqz v0, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "] "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lw0/p;->d(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v12, p2

    const/4 v14, 0x0

    :goto_1
    :try_start_0
    invoke-static {v8, v2, v12}, Lw0/ne;->c(Lw0/oe;Lw0/p;Ljava/util/LinkedHashMap;)Z

    move-result v0
    :try_end_0
    .catch Lw0/le; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lw0/ke; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] erro: "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lw0/p;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    move v4, v10

    goto :goto_4

    :cond_7
    iget v0, v8, Lw0/oe;->e:I

    if-ge v14, v0, :cond_8

    add-int/lit8 v14, v14, 0x1

    move v4, v10

    iget-wide v9, v8, Lw0/oe;->f:J

    int-to-long v0, v14

    mul-long/2addr v9, v0

    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-object/from16 v1, p0

    move v10, v4

    const/16 v9, 0x2f

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :goto_4
    if-eqz v0, :cond_9

    iget-object v0, v8, Lw0/oe;->g:Ljava/lang/String;

    goto :goto_5

    :cond_9
    iget-object v0, v8, Lw0/oe;->h:Ljava/lang/String;

    :goto_5
    move-object/from16 v1, p0

    move v10, v4

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move v4, v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x2f

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] op desconhecida: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lw0/p;->d(Ljava/lang/String;)V

    new-instance v11, Lw0/me;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v14, v1, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    sget-object v12, Lw0/je;->d:Lw0/je;

    move-object/from16 v16, v13

    move v13, v4

    invoke-direct/range {v11 .. v17}, Lw0/me;-><init>(Lw0/je;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v11

    :catch_3
    move-exception v0

    move-object v1, v13

    move v13, v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x2f

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] RECUSADO: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lw0/p;->d(Ljava/lang/String;)V

    new-instance v11, Lw0/me;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    sget-object v12, Lw0/je;->e:Lw0/je;

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v17}, Lw0/me;-><init>(Lw0/je;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public static varargs b([Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Ly1/f;->Y([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lw0/ne;->a:Lo2/h;

    invoke-virtual {v3, v2}, Lo2/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lw0/le;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toca em parti\u00e7\u00e3o de sistema: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lw0/le;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static c(Lw0/oe;Lw0/p;Ljava/util/LinkedHashMap;)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lw0/p;->b:Lh2/l;

    iget-object v4, v0, Lw0/oe;->c:Lorg/json/JSONObject;

    iget-object v5, v0, Lw0/oe;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "\' nao confirmado em /proc/mounts"

    const-string v8, "bind sobre \'"

    const-string v9, "mount --bind "

    const-string v10, "origem fora dos nossos diretorios: "

    const-string v11, "ms"

    const-string v12, "compile(...)"

    const-string v13, "getString(...)"

    const-string v14, "keys(...)"

    const-string v15, "\'\\\'\'"

    move/from16 v17, v6

    const-string v6, "name"

    move-object/from16 v18, v7

    const-string v7, " 2>/dev/null"

    move-object/from16 v19, v8

    const-string v8, "pm path "

    move-object/from16 v20, v9

    const-string v9, " \' /proc/mounts"

    move-object/from16 v21, v10

    const-string v10, "grep -F \' "

    move-object/from16 v22, v11

    const-string v11, "pacote fora da allowlist: "

    move-object/from16 v23, v9

    const-string v9, "package"

    move-object/from16 v24, v10

    const-string v10, "alvo"

    const-string v0, "value"

    move-object/from16 v25, v12

    const-string v12, "\'"

    move-object/from16 v26, v13

    const-string v13, "origem"

    move-object/from16 v27, v13

    const-string v13, "pacote"

    const/16 v28, 0x1

    const/16 v29, 0x0

    move-object/from16 v30, v13

    const-string v13, "path"

    move-object/from16 v31, v13

    const/4 v13, 0x0

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_1f

    :sswitch_0
    const-string v0, "pmUninstall"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {v4, v2, v9}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lw0/p;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "desinstalar fora da allowlist: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    return v13

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x27

    invoke-static {v0, v12, v15, v2, v4}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "pm uninstall "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v4, 0x1d4c0

    invoke-virtual {v1, v4, v2}, Lw0/p;->g(ILjava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f40

    invoke-static {v1, v0}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system"

    invoke-static {v0, v1, v13}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v2, 0x50

    invoke-static {v2, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "(vazio)"

    :cond_1
    const-string v2, "reversao nao vingou: pm path = "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return v1

    :sswitch_1
    const-string v3, "setprop"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-static {v4, v2, v6}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lw0/ne;->c:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lw0/ne;->b([Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setprop "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f40

    invoke-virtual {v1, v2, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_5
    new-instance v0, Lw0/le;

    const-string v1, "setprop fora da allowlist: "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lw0/le;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    const-string v0, "limparDalvikCache"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {v4, v2, v10}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lw0/p;->l:Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v2, "dalvik-cache desconhecido: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    return v13

    :cond_6
    const-string v0, "rm -rf "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    move-result v0

    return v0

    :sswitch_3
    const-string v0, "forceStop"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {v4, v2, v9}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw0/ne;->b([Ljava/lang/String;)V

    invoke-static {v4, v2, v9}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lw0/p;->k:Ljava/util/List;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "am force-stop "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x27

    invoke-static {v0, v12, v15, v3, v4}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v1, v2, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_9
    :goto_0
    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    return v13

    :sswitch_4
    const-string v0, "shellTemplate"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "template"

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "params"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v5, v14}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v26

    invoke-static {v7, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v2}, Lw0/ne;->e(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lw0/ne;->b:Lo2/h;

    invoke-virtual {v9, v7}, Lo2/h;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lw0/ne;->b([Ljava/lang/String;)V

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v26, v8

    goto :goto_1

    :cond_a
    new-instance v0, Lw0/le;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "par\u00e2metro \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' inv\u00e1lido: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lw0/le;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lw0/ne;->b([Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Lw0/p;->i(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0

    :sswitch_5
    const-string v0, "chownFile"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    move-object/from16 v0, v31

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lw0/ne;->b([Ljava/lang/String;)V

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "dono"

    invoke-static {v4, v2, v3}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lw0/p;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v2, "chown fora dos nossos diretorios: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    return v13

    :cond_c
    const-string v3, "^[a-z_]+:[a-z_]+$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    move-object/from16 v6, v25

    invoke-static {v3, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_d

    const-string v0, "dono invalido: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    return v13

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chown "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x27

    invoke-static {v0, v12, v15, v2, v4}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v1, v2, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    move-result v0

    return v0

    :sswitch_6
    const-string v6, "waitFor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const-string v5, "kind"

    invoke-static {v4, v2, v5}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "regex"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    :goto_2
    move-object/from16 v4, p0

    goto :goto_3

    :cond_e
    move-object/from16 v0, v29

    goto :goto_2

    :goto_3
    iget-wide v10, v4, Lw0/oe;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v16, v4, v10

    if-eqz v0, :cond_10

    :try_start_0
    new-instance v4, Lo2/h;

    invoke-direct {v4, v0}, Lo2/h;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    new-instance v4, Lx1/b;

    invoke-direct {v4, v0}, Lx1/b;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    instance-of v0, v4, Lx1/b;

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    move-object/from16 v29, v4

    :goto_5
    check-cast v29, Lo2/h;

    :cond_10
    move-object/from16 v0, v29

    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "running"

    const-string v14, "init.svc."

    sparse-switch v4, :sswitch_data_1

    goto/16 :goto_9

    :sswitch_7
    const-string v4, "initsvc"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_9

    :cond_11
    invoke-virtual {v14, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lw0/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_7
    move-object/from16 v14, v24

    goto/16 :goto_b

    :sswitch_8
    const-string v4, "initsvc_parado"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_9

    :cond_12
    invoke-virtual {v14, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lw0/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v14, v24

    :goto_8
    move/from16 v4, v28

    goto/16 :goto_b

    :cond_13
    move v4, v13

    goto :goto_7

    :sswitch_9
    const-string v4, "iface"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_9

    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ip -4 addr show "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x27

    invoke-static {v2, v12, v15, v5, v14}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f40

    invoke-static {v5, v4}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "inet "

    invoke-static {v4, v5, v13}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    goto :goto_7

    :sswitch_a
    const-string v4, "prop"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto/16 :goto_9

    :cond_15
    invoke-virtual {v1, v2}, Lw0/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_16

    invoke-virtual {v0, v4}, Lo2/h;->a(Ljava/lang/String;)Z

    move-result v4

    goto :goto_7

    :cond_16
    invoke-static {v4}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    move/from16 v4, v28

    goto :goto_7

    :sswitch_b
    const-string v4, "file"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_9

    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ -e "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x27

    invoke-static {v2, v12, v15, v5, v14}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ] && echo SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f40

    invoke-static {v5, v4}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIM"

    invoke-static {v4, v5, v13}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    goto/16 :goto_7

    :sswitch_c
    const-string v4, "bind"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_9

    :cond_18
    sget-object v4, Lw0/p;->f:Ljava/lang/Object;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_19

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v14, v24

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v23

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v13, 0x1f40

    invoke-static {v13, v5}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    invoke-static {v5, v4, v13}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    goto/16 :goto_b

    :cond_19
    move-object/from16 v14, v24

    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_b

    :sswitch_d
    move-object/from16 v14, v24

    const-string v4, "process"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_9

    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pidof "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x27

    invoke-static {v2, v12, v15, v5, v13}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f40

    invoke-static {v5, v4}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a

    goto/16 :goto_8

    :sswitch_e
    move-object/from16 v14, v24

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_9

    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x27

    invoke-static {v2, v12, v15, v5, v13}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f40

    invoke-static {v5, v4}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "package:"

    const/4 v13, 0x0

    invoke-static {v4, v5, v13}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    goto :goto_b

    :sswitch_f
    move-object/from16 v14, v24

    const-string v4, "logcat"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    :goto_9
    const-string v0, "waitFor kind desconhecido: "

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    :goto_a
    const/16 v28, 0x0

    goto/16 :goto_c

    :cond_1d
    const-string v4, "logcat -d -t 300 2>/dev/null"

    const/16 v5, 0x1f40

    invoke-static {v5, v4}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1e

    invoke-virtual {v0, v4}, Lo2/h;->a(Ljava/lang/String;)Z

    move-result v4

    goto :goto_b

    :cond_1e
    const/4 v13, 0x0

    invoke-static {v4, v2, v13}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    :goto_b
    if-eqz v4, :cond_1f

    goto/16 :goto_c

    :cond_1f
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v16

    if-ltz v4, :cond_20

    const-string v0, "=\'"

    const-string v1, "\' estourou "

    const-string v4, "waitFor "

    invoke-static {v4, v6, v0, v2, v1}, Landroidx/activity/result/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v13, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_20
    move-object/from16 v24, v14

    const/4 v13, 0x0

    goto/16 :goto_6

    :sswitch_10
    move-object/from16 v14, v24

    const-string v0, "bindSobrePacote"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    move-object/from16 v0, v27

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lw0/ne;->b([Ljava/lang/String;)V

    move-object/from16 v6, v30

    invoke-static {v4, v2, v6}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lw0/p;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v11, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    const/16 v24, 0x0

    return v24

    :cond_21
    const/16 v24, 0x0

    invoke-static {v0}, Lw0/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v6, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    return v24

    :cond_22
    invoke-virtual {v1, v5}, Lw0/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v0, "sem caminho para o pacote: "

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    return v24

    :cond_23
    const-string v4, "setenforce 0 2>/dev/null || true"

    const/16 v13, 0x1f40

    invoke-virtual {v1, v13, v4}, Lw0/p;->g(ILjava/lang/String;)Z

    invoke-static {v2}, Lw0/e8;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x4e20

    invoke-virtual {v1, v6, v4}, Lw0/p;->g(ILjava/lang/String;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v7, v20

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v13, 0x1f40

    invoke-static {v13, v0}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    invoke-static {v0, v2, v13}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v7, v19

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v18

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return v0

    :sswitch_11
    move-object/from16 v8, v18

    move-object/from16 v7, v20

    move-object/from16 v6, v21

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v0, v27

    const-string v9, "mountBind"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lw0/ne;->b([Ljava/lang/String;)V

    invoke-static {v4, v2, v10}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lw0/p;->f:Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_25

    const-string v0, "bind desconhecido: "

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    const/16 v24, 0x0

    return v24

    :cond_25
    const/16 v24, 0x0

    invoke-static {v0}, Lw0/p;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    return v24

    :cond_26
    invoke-static {v0}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x4e20

    invoke-virtual {v1, v6, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v13, 0x1f40

    invoke-static {v13, v0}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    invoke-static {v0, v2, v13}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bind \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    return v0

    :sswitch_12
    move-object/from16 v13, v22

    const-string v0, "sleep"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-wide/16 v0, 0x3e8

    invoke-virtual {v4, v13, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_c
    return v28

    :sswitch_13
    const-string v0, "check"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "left"

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "op"

    const-string v3, "eq"

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "optString(...)"

    invoke-static {v1, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "right"

    invoke-static {v4, v2, v5}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lo2/s;->Y(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2}, Lo2/s;->Y(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x21d289e1

    if-eq v6, v7, :cond_31

    const/16 v7, 0xcac

    if-eq v6, v7, :cond_2f

    const/16 v3, 0xced

    if-eq v6, v3, :cond_2d

    const/16 v3, 0xd88

    if-eq v6, v3, :cond_2b

    const/16 v3, 0xdb7

    if-eq v6, v3, :cond_29

    :cond_28
    :goto_d
    const/16 v24, 0x0

    goto/16 :goto_17

    :cond_29
    const-string v3, "ne"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_d

    :cond_2a
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_16

    :cond_2b
    const-string v0, "lt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_d

    :cond_2c
    if-eqz v4, :cond_28

    if-eqz v5, :cond_28

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_28

    goto/16 :goto_16

    :cond_2d
    const-string v0, "gt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_d

    :cond_2e
    if-eqz v4, :cond_28

    if-eqz v5, :cond_28

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    goto/16 :goto_16

    :cond_2f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_d

    :cond_30
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_31
    const-string v3, "contains"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_d

    :cond_32
    const/4 v13, 0x0

    invoke-static {v0, v2, v13}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0

    :sswitch_14
    const-string v0, "emit"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "evento="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "event"

    invoke-static {v4, v2, v3}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "data"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_33

    const-string v2, ""

    :cond_33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->d(Ljava/lang/String;)V

    return v28

    :sswitch_15
    const-string v0, "getprop"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {v4, v2, v6}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "into"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_e

    :cond_34
    move-object/from16 v1, v29

    :goto_e
    if-eqz v1, :cond_35

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_16

    :sswitch_16
    move-object/from16 v7, v19

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v6, v30

    const-string v0, "desfazerBindPacote"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {v4, v2, v6}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw0/p;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    const/16 v24, 0x0

    return v24

    :cond_36
    invoke-virtual {v1, v0}, Lw0/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_37

    goto/16 :goto_16

    :cond_37
    invoke-static {v2}, Lw0/e8;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x4e20

    invoke-virtual {v1, v6, v4}, Lw0/p;->g(ILjava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1f40

    invoke-static {v5, v1}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x0

    invoke-static {v1, v2, v13}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    if-eqz v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' resistiu ao umount"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    return v2

    :sswitch_17
    const-string v0, "settingsPut"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "namespace"

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v0, "system"

    :cond_39
    const-string v3, "valor"

    invoke-static {v4, v2, v3}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lw0/ne;->b([Ljava/lang/String;)V

    const-string v5, "chave"

    invoke-static {v4, v2, v5}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v3}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lw0/p;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string v2, "namespace fora da allowlist: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    const/16 v24, 0x0

    return v24

    :cond_3a
    const/16 v24, 0x0

    sget-object v3, Lw0/p;->i:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v0, "setting fora da allowlist: "

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    return v24

    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "settings put "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v1, v2, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    move-result v0

    return v0

    :sswitch_18
    move-object/from16 v6, v30

    move-object/from16 v0, v31

    const-string v9, "pmInstall"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    const-string v5, "md5"

    invoke-static {v4, v2, v5}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_44

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lw0/ne;->b([Ljava/lang/String;)V

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, v6}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lw0/p;->d:Ljava/util/List;

    if-eqz v4, :cond_3c

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3c

    goto/16 :goto_f

    :cond_3c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-static {v2}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, "com.njda.adapter"

    if-eqz v4, :cond_3e

    move-object v2, v6

    :cond_3e
    invoke-static {v2}, Lw0/p;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3f

    invoke-virtual {v11, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    const/16 v24, 0x0

    return v24

    :cond_3f
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    const-string v4, "setenforce 0"

    const/16 v13, 0x1f40

    invoke-virtual {v1, v13, v4}, Lw0/p;->g(ILjava/lang/String;)Z

    const-string v4, "getenforce"

    invoke-static {v13, v4}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "Permissive"

    invoke-static {v4, v9}, Lo2/t;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v0, "ConnAdaptor: n\u00e3o consegui preparar SELinux"

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    const/16 v24, 0x0

    return v24

    :cond_40
    invoke-static {v0}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "md5sum "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " 2>/dev/null | awk \'{print $1}\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v13, 0x1f40

    invoke-static {v13, v9}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lo2/t;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_41

    const-string v2, "md5 nao confere em "

    const-string v3, " (esperado "

    invoke-static {v2, v0, v3}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v2, v5}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u2026, veio "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v9}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2026)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    const/16 v24, 0x0

    return v24

    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "chmod 644 "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v13, 0x1f40

    invoke-virtual {v1, v13, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "pm install -r -g "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1 | tail -n1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v4, 0x2bf20

    invoke-static {v4, v0}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x78

    invoke-static {v4, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "pm install: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v13, 0x1f40

    invoke-static {v13, v0}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "/data/app"

    const/4 v13, 0x0

    invoke-static {v0, v4, v13}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_42

    const-string v5, "RECUSADO instalacao nao vingou: pm path("

    const-string v7, ") = "

    invoke-static {v5, v2, v7}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v9, 0x50

    invoke-static {v9, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    if-eqz v4, :cond_28

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "connadaptorPrepararServico"

    sget-object v2, Ly1/q;->a:Ly1/q;

    invoke-virtual {v1, v0, v2}, Lw0/p;->i(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto/16 :goto_16

    :cond_43
    :goto_f
    const-string v2, "instalar fora dos nossos diretorios: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    const/16 v24, 0x0

    return v24

    :cond_44
    new-instance v0, Lw0/le;

    const-string v1, "pmInstall sem md5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_19
    const-string v0, "copyFile"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "de"

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "para"

    invoke-static {v4, v2, v5}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lw0/ne;->b([Ljava/lang/String;)V

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, v5}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lw0/p;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-static {v2}, Lw0/p;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_45

    goto :goto_10

    :cond_45
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cp -f "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7530

    invoke-virtual {v1, v2, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_46
    :goto_10
    const-string v0, "cp fora dos nossos diretorios"

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    const/16 v24, 0x0

    return v24

    :sswitch_1a
    move-object/from16 v6, v25

    move-object/from16 v0, v31

    const-string v3, "chmodFile"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lw0/ne;->b([Ljava/lang/String;)V

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "modo"

    invoke-static {v4, v2, v3}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lw0/p;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_47

    const-string v2, "chmod fora dos nossos diretorios: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    const/16 v24, 0x0

    return v24

    :cond_47
    const/16 v24, 0x0

    const-string v3, "^[0-7]{3,4}$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {v3, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_48

    const-string v0, "modo invalido: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    return v24

    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x27

    invoke-static {v0, v12, v15, v2, v4}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v1, v2, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    move-result v0

    return v0

    :sswitch_1b
    const-string v0, "amStart"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "component"

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lw0/ne;->b([Ljava/lang/String;)V

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lw0/p;->k:Ljava/util/List;

    if-eqz v2, :cond_49

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_11

    :cond_49
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "am start -n "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x27

    invoke-static {v0, v12, v15, v3, v4}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v1, v2, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_4b
    :goto_11
    const-string v2, "componente fora da allowlist: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    const/16 v24, 0x0

    return v24

    :sswitch_1c
    const-string v1, "setVar"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string v1, "key"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v28

    :sswitch_1d
    move-object/from16 v0, v31

    const-string v3, "rmFile"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lw0/ne;->b([Ljava/lang/String;)V

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw0/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "rm fora dos nossos diretorios: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    const/16 v24, 0x0

    return v24

    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rm -f "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x27

    invoke-static {v0, v12, v15, v3, v4}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v1, v2, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    move-result v0

    return v0

    :sswitch_1e
    move-object/from16 v0, v31

    const-string v3, "chconFile"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lw0/ne;->b([Ljava/lang/String;)V

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "rotulo"

    invoke-static {v4, v2, v3}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "caminho"

    invoke-static {v0, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "rotulo"

    invoke-static {v2, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lw0/p;->b(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4d

    const-string v2, "chcon fora dos nossos diretorios: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    goto :goto_12

    :cond_4d
    sget-object v3, Lw0/p;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    const-string v0, "rotulo fora da allowlist: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    goto :goto_12

    :cond_4e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chcon "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\'\\\'\'"

    const/16 v6, 0x27

    invoke-static {v0, v4, v5, v2, v6}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v1, v2, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    move-result v4

    :goto_12
    return v4

    :sswitch_1f
    const-string v0, "umountBind"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {v4, v2, v10}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "alvo"

    invoke-static {v0, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lw0/p;->f:Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_4f

    const-string v2, "bind desconhecido: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    goto :goto_13

    :cond_4f
    invoke-static {v2}, Lw0/e8;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4e20

    invoke-virtual {v1, v5, v4}, Lw0/p;->g(ILjava/lang/String;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "grep -F \' "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \' /proc/mounts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f40

    invoke-static {v5, v4}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    if-eqz v2, :cond_50

    iget-object v1, v1, Lw0/p;->b:Lh2/l;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "bind \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' resistiu ao umount"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    :goto_13
    return v3

    :sswitch_20
    const-string v0, "getVar"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "key"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_52

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_14

    :cond_51
    const/4 v0, 0x0

    goto :goto_15

    :cond_52
    :goto_14
    move/from16 v0, v28

    :goto_15
    if-nez v0, :cond_28

    :cond_53
    :goto_16
    return v28

    :goto_17
    return v24

    :sswitch_21
    move-object/from16 v0, v31

    const-string v3, "restorecon"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lw0/ne;->b([Ljava/lang/String;)V

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "caminho"

    invoke-static {v0, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lw0/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "restorecon fora dos nossos diretorios: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_18

    :cond_54
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "restorecon -v "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\'\\\'\'"

    const/16 v6, 0x27

    invoke-static {v0, v4, v5, v3, v6}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>/dev/null || true"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v1, v2, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    move-result v0

    :goto_18
    return v0

    :sswitch_22
    const-string v0, "binder"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "service"

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "txn"

    const/4 v3, -0x1

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "args"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_55

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v13, 0x0

    invoke-static {v13, v4}, Lk1/a;->T(II)Ll2/c;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ll2/a;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    move-object v6, v4

    check-cast v6, Ll2/b;

    iget-boolean v7, v6, Ll2/b;->c:Z

    if-eqz v7, :cond_56

    invoke-virtual {v6}, Ll2/b;->nextInt()I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_55
    sget-object v5, Ly1/p;->a:Ly1/p;

    :cond_56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "service"

    invoke-static {v0, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lw0/p;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_57

    const-string v2, "servi\u00e7o fora da allowlist: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    goto :goto_1a

    :cond_57
    const/4 v3, 0x1

    if-ge v2, v3, :cond_58

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "txn inv\u00e1lido: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    goto :goto_1a

    :cond_58
    new-instance v3, Lw0/o;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lw0/o;-><init>(I)V

    const/16 v4, 0x1e

    const-string v6, " "

    invoke-static {v5, v6, v3, v4}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "service call "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v1, v2, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    move-result v4

    :goto_1a
    return v4

    :sswitch_23
    move-object/from16 v6, v30

    const-string v0, "bindPacoteAtivo"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {v4, v2, v6}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "pacote"

    invoke-static {v0, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lw0/p;->e(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_59

    const-string v2, "pacote fora da allowlist: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    goto :goto_1b

    :cond_59
    invoke-virtual {v1, v0}, Lw0/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5a

    goto :goto_1b

    :cond_5a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "grep -F \' "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \' /proc/mounts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f40

    invoke-static {v2, v1}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    :goto_1b
    return v3

    :sswitch_24
    move-object/from16 v8, v26

    const-string v0, "broadcast"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "extras"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v5, v14}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v2}, Lw0/ne;->e(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_5b
    const-string v3, "action"

    invoke-static {v4, v2, v3}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "action"

    invoke-static {v2, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v3, Lw0/o;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lw0/o;-><init>(I)V

    const/16 v4, 0x1e

    const-string v5, " "

    invoke-static {v0, v5, v3, v4}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "am broadcast -a "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\'\\\'\'"

    const/16 v7, 0x27

    invoke-static {v2, v5, v6, v4, v7}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v1, v2, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    move-result v0

    return v0

    :sswitch_25
    const-string v0, "amStartService"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "componente"

    invoke-static {v4, v2, v0}, Lw0/ne;->d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "componente"

    invoke-static {v0, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lw0/p;->k:Ljava/util/List;

    if-eqz v2, :cond_5c

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5c

    goto :goto_1d

    :cond_5c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "am start-foreground-service -n "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\'\\\'\'"

    const/16 v6, 0x27

    invoke-static {v0, v4, v5, v3, v6}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3a98

    invoke-virtual {v1, v2, v0}, Lw0/p;->g(ILjava/lang/String;)Z

    move-result v0

    goto :goto_1e

    :cond_5e
    :goto_1d
    const-string v2, "servico fora da allowlist: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/p;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1e
    return v0

    :cond_5f
    :goto_1f
    new-instance v0, Lw0/ke;

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x652139c1 -> :sswitch_25
        -0x607e173f -> :sswitch_24
        -0x577c855c -> :sswitch_23
        -0x52c9ea56 -> :sswitch_22
        -0x51f203cc -> :sswitch_21
        -0x4a77880f -> :sswitch_20
        -0x3f392cdf -> :sswitch_1f
        -0x3d6c7de7 -> :sswitch_1e
        -0x37561da9 -> :sswitch_1d
        -0x35fd609b -> :sswitch_1c
        -0x35fb7c6a -> :sswitch_1b
        -0x2cfb1867 -> :sswitch_1a
        -0x1e2ea96f -> :sswitch_19
        -0xf489722 -> :sswitch_18
        -0x73b1814 -> :sswitch_17
        -0x5e9553b -> :sswitch_16
        -0x46d6847 -> :sswitch_15
        0x2f8fd3 -> :sswitch_14
        0x5a3e508 -> :sswitch_13
        0x6872ed7 -> :sswitch_12
        0x1b361ff6 -> :sswitch_11
        0x2afce86a -> :sswitch_10
        0x42891314 -> :sswitch_6
        0x4b050e1d -> :sswitch_5
        0x54315eca -> :sswitch_4
        0x5b13998d -> :sswitch_3
        0x64d2aa08 -> :sswitch_2
        0x765d5ec5 -> :sswitch_1
        0x797ba765 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x416819ee -> :sswitch_f
        -0x301acbba -> :sswitch_e
        -0x1272e191 -> :sswitch_d
        0x2e243d -> :sswitch_c
        0x2ff57c -> :sswitch_b
        0x34a363 -> :sswitch_a
        0x5f77a46 -> :sswitch_9
        0x667a9c3a -> :sswitch_8
        0x74217f50 -> :sswitch_7
    .end sparse-switch
.end method

.method public static final d(Lorg/json/JSONObject;Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "optString(...)"

    invoke-static {p0, p2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lw0/ne;->e(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "${"

    invoke-static {p0, v1, v0}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lo2/t;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static f(Ljava/util/ArrayList;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lw0/je;

    sget-object v4, Lw0/je;->a:Lw0/je;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method
