.class public final Lw0/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    iput p2, p0, Lw0/b3;->a:I

    iput-object p1, p0, Lw0/b3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(II)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lw0/b3;->a:I

    const/4 v5, 0x2

    const-string v6, "CentralWatchdog"

    const/4 v7, 0x0

    const-string v8, "value"

    const/4 v10, 0x1

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lw0/t4;->b:Lw0/t4;

    invoke-static {v1, v8}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    instance-of v11, v8, Ljava/lang/Integer;

    if-eqz v11, :cond_0

    check-cast v8, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_25

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v12, v8, v13}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v12, 0x3

    invoke-static {v8, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v12, "DOOR_POS \u00e1rea=0x%x val=%d status=%d"

    invoke-static {v12, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lw0/b3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v12

    sget-object v13, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v8}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "window_driver_on_door"

    invoke-interface {v13, v14, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_1

    goto/16 :goto_f

    :cond_1
    sget-object v13, Lw0/u;->t:Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-eqz v13, :cond_1e

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v11, v10, :cond_3

    if-eq v11, v5, :cond_2

    goto/16 :goto_f

    :cond_2
    move v15, v7

    goto :goto_1

    :cond_3
    move v15, v10

    :goto_1
    iget-object v3, v8, Lcom/ex/auto/CentralWatchdogService;->n:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v9, v8, Lcom/ex/auto/CentralWatchdogService;->n:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_1e

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_f

    :cond_4
    iget-object v3, v8, Lcom/ex/auto/CentralWatchdogService;->m:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_5

    goto/16 :goto_f

    :cond_5
    invoke-virtual {v8}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v9, "window_opposite_on_door"

    invoke-interface {v4, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lw0/u;->u:Ljava/lang/Object;

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    :cond_6
    move v4, v14

    :goto_2
    if-eqz v15, :cond_16

    sget-object v9, Lw0/u;->s:[I

    new-instance v10, Ljava/util/LinkedHashMap;

    array-length v13, v9

    invoke-static {v13}, Ly1/s;->V(I)I

    move-result v13

    const/16 v15, 0x10

    if-ge v13, v15, :cond_7

    move v13, v15

    :cond_7
    invoke-direct {v10, v13}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length v13, v9

    move v15, v7

    :goto_3
    if-ge v15, v13, :cond_8

    aget v7, v9, v15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v16, v9

    const v9, 0x13400bc0

    invoke-static {v3, v9, v7}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v10, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v16

    const/4 v5, 0x2

    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    iget-object v5, v8, Lcom/ex/auto/CentralWatchdogService;->o:Ljava/lang/Integer;

    const/4 v7, 0x7

    if-eqz v5, :cond_9

    :goto_4
    move-object v5, v2

    goto :goto_6

    :cond_9
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_5

    :cond_a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v7, :cond_b

    goto :goto_4

    :cond_c
    :goto_5
    sget-object v5, Lw0/t4;->a:Lw0/t4;

    :goto_6
    const-string v9, " "

    if-ne v5, v2, :cond_10

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v7, :cond_d

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v7, "0x%x=%d"

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    const/4 v5, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x3e

    const/4 v7, 0x0

    invoke-static {v3, v9, v7, v4}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "janela: porta 0x%x abriu, mas j\u00e1 h\u00e1 janela aberta (%s) \u2014 a press\u00e3o j\u00e1 sai por ela, n\u00e3o abro outra"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_10
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_11

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v10, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_12
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v7, Lw0/n2;

    const/4 v10, 0x1

    invoke-direct {v7, v10}, Lw0/n2;-><init>(I)V

    const/16 v10, 0x1e

    invoke-static {v2, v9, v7, v10}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v5, "janela: %d leitura(s) falharam (%s) \u2014 n\u00e3o s\u00e3o prova de janela aberta, sigo com o filete"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    if-eq v4, v14, :cond_14

    const/4 v2, 0x1

    :goto_a
    const/4 v10, 0x1

    goto :goto_b

    :cond_14
    const/4 v2, 0x0

    goto :goto_a

    :goto_b
    invoke-static {v3, v4, v10, v12, v2}, Lcom/ex/auto/CentralWatchdogService;->k0(Landroid/car/hardware/property/CarPropertyManager;IZIZ)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v8, Lcom/ex/auto/CentralWatchdogService;->o:Ljava/lang/Integer;

    iget-object v2, v8, Lcom/ex/auto/CentralWatchdogService;->v2:Lw0/x1;

    if-eqz v2, :cond_15

    iget-object v3, v8, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_15
    const/4 v7, 0x0

    iput-object v7, v8, Lcom/ex/auto/CentralWatchdogService;->v2:Lw0/x1;

    goto :goto_f

    :cond_16
    invoke-virtual {v8, v3, v12}, Lcom/ex/auto/CentralWatchdogService;->q(Landroid/car/hardware/property/CarPropertyManager;I)Z

    move-result v2

    iget-object v5, v8, Lcom/ex/auto/CentralWatchdogService;->o:Ljava/lang/Integer;

    if-eqz v5, :cond_18

    if-eqz v2, :cond_17

    sget-object v2, Lw0/r4;->b:Lw0/r4;

    goto :goto_c

    :cond_17
    sget-object v2, Lw0/r4;->a:Lw0/r4;

    goto :goto_c

    :cond_18
    sget-object v2, Lw0/r4;->c:Lw0/r4;

    :goto_c
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v10, 0x1

    if-eq v2, v10, :cond_1b

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1a

    if-eq v4, v14, :cond_19

    const/4 v2, 0x1

    :goto_d
    const/4 v5, 0x0

    goto :goto_e

    :cond_19
    const/4 v2, 0x0

    goto :goto_d

    :goto_e
    invoke-static {v3, v4, v5, v12, v2}, Lcom/ex/auto/CentralWatchdogService;->k0(Landroid/car/hardware/property/CarPropertyManager;IZIZ)Z

    goto :goto_f

    :cond_1a
    new-instance v1, Landroidx/fragment/app/q;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    :cond_1b
    const/4 v7, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "janela: porta 0x%x fechou, mas ainda h\u00e1 porta aberta \u2014 o filete em 0x%x fica at\u00e9 a \u00faltima fechar"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v8, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v3, v8, Lcom/ex/auto/CentralWatchdogService;->v2:Lw0/x1;

    if-eqz v3, :cond_1c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1c
    new-instance v3, Lw0/x1;

    const/16 v4, 0xd

    invoke-direct {v3, v8, v4}, Lw0/x1;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    iput-object v3, v8, Lcom/ex/auto/CentralWatchdogService;->v2:Lw0/x1;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f

    :cond_1d
    invoke-static {v5}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v3, v2, v12}, Lcom/ex/auto/CentralWatchdogService;->T(Landroid/car/hardware/property/CarPropertyManager;II)V

    :cond_1e
    :goto_f
    iget-object v2, v0, Lw0/b3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v1

    iget-object v3, v2, Lcom/ex/auto/CentralWatchdogService;->p:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "pause_audio_on_door"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_11

    :cond_1f
    const/4 v10, 0x1

    if-eq v1, v10, :cond_20

    goto :goto_11

    :cond_20
    if-eq v11, v10, :cond_22

    const/4 v5, 0x2

    if-eq v11, v5, :cond_21

    goto :goto_11

    :cond_21
    const/4 v7, 0x0

    goto :goto_10

    :cond_22
    const/4 v7, 0x1

    :goto_10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_25

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_11

    :cond_23
    if-nez v7, :cond_24

    goto :goto_11

    :cond_24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v10, 0x1

    invoke-static {v1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "doorAudioPause: porta 0x%x abriu \u2014 pausando m\u00eddia (keyevent 127)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/r0;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lw0/r0;-><init>(I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_25
    :goto_11
    return-void

    :pswitch_0
    iget-object v2, v0, Lw0/b3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v1, v8}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_13

    :cond_26
    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_27

    move-object v9, v3

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_12

    :cond_27
    const/4 v9, 0x0

    :goto_12
    if-eqz v9, :cond_2b

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    const v4, 0x10200c00

    if-eq v1, v4, :cond_2a

    const v4, 0x15200507

    if-eq v1, v4, :cond_29

    const v4, 0x15200510

    if-eq v1, v4, :cond_28

    goto :goto_13

    :cond_28
    iget-object v1, v2, Lcom/ex/auto/CentralWatchdogService;->w:Ljava/lang/Boolean;

    iput-object v9, v2, Lcom/ex/auto/CentralWatchdogService;->w:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    if-nez v3, :cond_2b

    const-string v1, "HVAC_POWER_ON\u2192false"

    invoke-static {v2, v1}, Lcom/ex/auto/CentralWatchdogService;->i(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    goto :goto_13

    :cond_29
    iget-object v1, v2, Lcom/ex/auto/CentralWatchdogService;->x:Ljava/lang/Boolean;

    iput-object v9, v2, Lcom/ex/auto/CentralWatchdogService;->x:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v10, 0x1

    if-ne v3, v10, :cond_2b

    const-string v1, "frontMaxDefrost\u2192true"

    invoke-static {v2, v1}, Lcom/ex/auto/CentralWatchdogService;->i(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    goto :goto_13

    :cond_2a
    const/4 v10, 0x1

    iget-object v1, v2, Lcom/ex/auto/CentralWatchdogService;->y:Ljava/lang/Boolean;

    iput-object v9, v2, Lcom/ex/auto/CentralWatchdogService;->y:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    if-ne v3, v10, :cond_2b

    const-string v1, "windshieldHeat\u2192true"

    invoke-static {v2, v1}, Lcom/ex/auto/CentralWatchdogService;->i(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    :cond_2b
    :goto_13
    return-void

    :pswitch_1
    iget-object v2, v0, Lw0/b3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v3, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    invoke-static {v1, v8}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rearCamTurnSignal: onChangeEvent prop=0x%x status="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v10, 0x1

    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_2c

    move-object v7, v1

    check-cast v7, Ljava/lang/Integer;

    goto :goto_14

    :cond_2c
    const/4 v7, 0x0

    :goto_14
    if-eqz v7, :cond_36

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, v2, Lcom/ex/auto/CentralWatchdogService;->J:Ljava/lang/Integer;

    iput-object v7, v2, Lcom/ex/auto/CentralWatchdogService;->J:Ljava/lang/Integer;

    if-nez v4, :cond_2d

    const/4 v10, 0x1

    goto :goto_15

    :cond_2d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v10, 0x1

    if-eq v5, v10, :cond_30

    :goto_15
    if-nez v4, :cond_2e

    const/4 v5, 0x2

    goto :goto_16

    :cond_2e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2f

    goto :goto_17

    :cond_2f
    :goto_16
    const/4 v4, 0x0

    goto :goto_18

    :cond_30
    const/4 v5, 0x2

    :goto_17
    move v4, v10

    :goto_18
    if-eq v1, v10, :cond_32

    if-ne v1, v5, :cond_31

    goto :goto_19

    :cond_31
    const/4 v1, 0x0

    goto :goto_1a

    :cond_32
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    if-eqz v1, :cond_34

    if-nez v4, :cond_34

    iget-object v1, v2, Lcom/ex/auto/CentralWatchdogService;->z2:Lw0/v2;

    if-eqz v1, :cond_33

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/ex/auto/CentralWatchdogService;->z2:Lw0/v2;

    :cond_33
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/ex/auto/CentralWatchdogService;->L0(Z)V

    goto :goto_1b

    :cond_34
    if-nez v1, :cond_36

    if-eqz v4, :cond_36

    invoke-virtual {v2}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "rear_cam_hold_open_5s"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v1, Lw0/v2;

    const/16 v4, 0x12

    invoke-direct {v1, v2, v4}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    iput-object v1, v2, Lcom/ex/auto/CentralWatchdogService;->z2:Lw0/v2;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "rearCamTurnSignal: seta desligou, segurando o PiP aberto por 5000ms (\u00edcone 5s)"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_35
    invoke-virtual {v2, v5}, Lcom/ex/auto/CentralWatchdogService;->L0(Z)V

    :cond_36
    :goto_1b
    return-void

    :pswitch_2
    move v5, v7

    const/4 v7, 0x0

    iget-object v2, v0, Lw0/b3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v1, v8}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v3

    if-eqz v3, :cond_37

    goto/16 :goto_20

    :cond_37
    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_38

    move-object v9, v3

    check-cast v9, Ljava/lang/Integer;

    goto :goto_1c

    :cond_38
    move-object v9, v7

    :goto_1c
    if-eqz v9, :cond_3c

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    move v7, v5

    goto :goto_1f

    :pswitch_3
    iget v4, v2, Lcom/ex/auto/CentralWatchdogService;->L:I

    if-eq v3, v4, :cond_39

    const/4 v7, 0x1

    goto :goto_1d

    :cond_39
    move v7, v5

    :goto_1d
    iput v3, v2, Lcom/ex/auto/CentralWatchdogService;->L:I

    goto :goto_1f

    :pswitch_4
    iget v4, v2, Lcom/ex/auto/CentralWatchdogService;->K:I

    if-eq v3, v4, :cond_3a

    const/4 v7, 0x1

    goto :goto_1e

    :cond_3a
    move v7, v5

    :goto_1e
    iput v3, v2, Lcom/ex/auto/CentralWatchdogService;->K:I

    :goto_1f
    if-eqz v7, :cond_3c

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "troca de marcha (prop="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " val="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") \u2014 reaplicar drive/regen"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/ex/auto/CentralWatchdogService;->D2:Lw0/p2;

    iget-object v2, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    sget-boolean v3, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-eqz v3, :cond_3b

    goto :goto_20

    :cond_3b
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x258

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3c
    :goto_20
    return-void

    :pswitch_5
    move v5, v7

    const/4 v7, 0x0

    invoke-static {v1, v8}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v2

    if-eqz v2, :cond_3d

    goto/16 :goto_23

    :cond_3d
    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_3e

    move-object v9, v1

    check-cast v9, Ljava/lang/Integer;

    goto :goto_21

    :cond_3e
    move-object v9, v7

    :goto_21
    if-eqz v9, :cond_41

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v7, 0x1

    goto :goto_22

    :cond_3f
    move v7, v5

    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aebObserver: AEB int="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u2192 on="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lw0/b3;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v1}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "aeb_state_saved"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, v0, Lw0/b3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v2, v1, Lcom/ex/auto/CentralWatchdogService;->E:Z

    if-nez v2, :cond_40

    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/ex/auto/CentralWatchdogService;->E:Z

    goto :goto_23

    :cond_40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lw0/b3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v3, v3, Lcom/ex/auto/CentralWatchdogService;->F:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7530

    cmp-long v1, v1, v3

    if-lez v1, :cond_41

    iget-object v1, v0, Lw0/b3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "aeb_desired"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v1, v7, :cond_41

    iget-object v1, v0, Lw0/b3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aebObserver: usu\u00e1rio mudou o AEB pelo carro \u2192 desejado="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    :goto_23
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11400400
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final onErrorEvent(II)V
    .locals 2

    iget v0, p0, Lw0/b3;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "windowDriver: onErrorEvent prop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u00e1rea=0x%x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CentralWatchdog"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recircGuard: onErrorEvent prop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u00e1rea=0x%x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CentralWatchdog"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rearCamTurnSignal: onErrorEvent prop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u00e1rea=0x%x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CentralWatchdog"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_2
    return-void

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aebObserver: onErrorEvent prop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u00e1rea=0x%x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CentralWatchdog"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
