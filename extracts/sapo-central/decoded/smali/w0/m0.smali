.class public final synthetic Lw0/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lw0/m0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/m0;->b:Landroid/content/Context;

    iput-object p2, p0, Lw0/m0;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lw0/m0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/m0;->c:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lw0/m0;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Lw0/m0;->a:I

    const-string v2, "check: "

    const-string v3, ""

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v6, v1, Lw0/m0;->b:Landroid/content/Context;

    iget-object v7, v1, Lw0/m0;->c:Landroid/content/SharedPreferences;

    :try_start_0
    sget-boolean v0, Lw0/sd;->a:Z

    invoke-static {v6}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v6}, Lw0/sd;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ly1/g;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/q6;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    sput-boolean v4, Lw0/sd;->a:Z

    goto/16 :goto_4

    :cond_1
    :try_start_1
    sget-object v3, Lw0/sd;->c:Landroid/os/Handler;

    new-instance v5, Lw0/pd;

    invoke-direct {v5, v6, v0, v4}, Lw0/pd;-><init>(Landroid/content/Context;Lw0/q6;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_2
    invoke-static {}, Lw0/sd;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "messages"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v5, Lw0/k5;->a:Lw0/k5;

    invoke-static {}, Lw0/k5;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lw0/k5;->g(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "toUpperCase(...)"

    invoke-static {v8, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v8}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v5, "ALL"

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-string v8, "iterator(...)"

    invoke-static {v5, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "next(...)"

    invoke-static {v8, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_8

    goto :goto_1

    :cond_8
    const-string v10, "id"

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "msg_seen_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-gt v10, v11, :cond_9

    goto :goto_1

    :cond_9
    const-string v11, "enc"

    invoke-virtual {v9, v11, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v11}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-static {v11}, Lw0/e8;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_a
    const-string v11, "body"

    invoke-virtual {v9, v11, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-static {v11}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v11}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v0, "title"

    const v3, 0x7f0f0274

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lw0/sd;->c:Landroid/os/Handler;

    new-instance v5, Lw0/qd;

    move v9, v10

    move-object v10, v0

    invoke-direct/range {v5 .. v11}, Lw0/qd;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :goto_3
    :try_start_2
    const-string v3, "MsgMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :goto_4
    return-void

    :goto_5
    sput-boolean v4, Lw0/sd;->a:Z

    throw v0

    :pswitch_0
    iget-object v0, v1, Lw0/m0;->c:Landroid/content/SharedPreferences;

    iget-object v5, v1, Lw0/m0;->b:Landroid/content/Context;

    const-string v6, "device_banned"

    const-string v7, "BanChecker"

    :try_start_3
    sget-object v8, Lw0/k5;->a:Lw0/k5;

    invoke-static {}, Lw0/k5;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v9, :cond_b

    :goto_6
    sput-boolean v4, Lw0/n0;->a:Z

    goto/16 :goto_d

    :cond_b
    :try_start_4
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v10, "device_ban_avisado"

    const/4 v11, 0x1

    if-eqz v9, :cond_d

    :try_start_5
    invoke-static {v5, v0, v8}, Lw0/k5;->q(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "aviso de ban (pendente) entregue por e-mail"

    invoke-static {v7, v0, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    :catchall_1
    move-exception v0

    move/from16 v16, v4

    goto/16 :goto_e

    :catch_1
    move-exception v0

    goto/16 :goto_c

    :cond_c
    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "aviso de ban pendente N\u00c3O saiu (sem rede?) \u2014 tenta de novo"

    invoke-static {v7, v0, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :cond_d
    :try_start_6
    invoke-static {}, Lw0/n0;->c()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_e

    goto :goto_6

    :cond_e
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "entries"

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-nez v12, :cond_f

    goto :goto_a

    :cond_f
    invoke-static {v8}, Lw0/n0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    move v14, v4

    :goto_7
    if-ge v14, v13, :cond_12

    invoke-virtual {v9, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v4, "hash"

    invoke-virtual {v15, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v4}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_11

    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v6, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v3, Lw0/ae;->a:Lw0/ae;

    const-string v3, "dispositivo BANIDO \u2014 XDSN confere com a banlist"

    const/4 v4, 0x0

    invoke-static {v7, v3, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lw0/k5;->a:Lw0/k5;

    invoke-static {v5, v0, v8}, Lw0/k5;->q(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v3, :cond_10

    const-string v0, "aviso de ban entregue por e-mail"

    :goto_8
    const/4 v4, 0x0

    goto :goto_9

    :catchall_2
    move-exception v0

    const/16 v16, 0x0

    goto :goto_e

    :cond_10
    const-string v0, "aviso de ban N\u00c3O saiu (sem rede?) \u2014 tenta na pr\u00f3xima checagem"

    goto :goto_8

    :goto_9
    invoke-static {v7, v0, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/16 v16, 0x0

    goto :goto_b

    :cond_11
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_7

    :cond_12
    :goto_a
    move/from16 v16, v4

    :goto_b
    sput-boolean v16, Lw0/n0;->a:Z

    goto :goto_d

    :goto_c
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/16 v16, 0x0

    goto :goto_b

    :goto_d
    return-void

    :goto_e
    sput-boolean v16, Lw0/n0;->a:Z

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
