.class public final synthetic Lw0/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/s2;->a:Lcom/ex/auto/CentralWatchdogService;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object p1, p0, Lw0/s2;->a:Lcom/ex/auto/CentralWatchdogService;

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string p3, "hashCode"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_1
    const-string p1, "equals"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_5

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :sswitch_2
    const-string v1, "onStateChanged"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_5

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3, v2}, Ly1/f;->a0([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p2, v0

    :goto_0
    instance-of p3, p2, Ljava/lang/Integer;

    if-eqz p3, :cond_4

    check-cast p2, Ljava/lang/Integer;

    goto :goto_1

    :cond_4
    move-object p2, v0

    :goto_1
    if-nez p2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 p3, 0xb

    if-ne p2, p3, :cond_c

    iput v2, p1, Lcom/ex/auto/CentralWatchdogService;->o2:I

    return-object v0

    :sswitch_3
    const-string p1, "toString"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    const-string p1, "SoftApCallbackProxy"

    return-object p1

    :sswitch_4
    const-string v1, "onNumClientsChanged"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    if-eqz p3, :cond_7

    invoke-static {p3, v2}, Ly1/f;->a0([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_2

    :cond_7
    move-object p2, v0

    :goto_2
    instance-of p3, p2, Ljava/lang/Integer;

    if-eqz p3, :cond_8

    check-cast p2, Ljava/lang/Integer;

    goto :goto_3

    :cond_8
    move-object p2, v0

    :goto_3
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_4

    :cond_9
    move p2, v2

    :goto_4
    iget p3, p1, Lcom/ex/auto/CentralWatchdogService;->o2:I

    if-eq p2, p3, :cond_a

    sget-object p3, Lw0/ae;->a:Lw0/ae;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "hotspot: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " celular(es) associado(s)"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "CentralWatchdog"

    invoke-static {v1, p3, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_a
    if-nez p2, :cond_b

    iget p3, p1, Lcom/ex/auto/CentralWatchdogService;->o2:I

    if-lez p3, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/ex/auto/CentralWatchdogService;->p2:J

    :cond_b
    iput p2, p1, Lcom/ex/auto/CentralWatchdogService;->o2:I

    :cond_c
    :goto_5
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6c32436d -> :sswitch_4
        -0x69e9ad94 -> :sswitch_3
        -0x545e539e -> :sswitch_2
        -0x4d378041 -> :sswitch_1
        0x8cdac1b -> :sswitch_0
    .end sparse-switch
.end method
