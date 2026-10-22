.class public final synthetic Lw0/ya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lw0/ya;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lw0/ya;->a:I

    const-string v1, "FALHOU"

    const-string v2, "MONITOR_"

    const-string v3, "RUNNING:"

    const/4 v4, 0x0

    const-string v5, "%02x"

    const/4 v6, 0x1

    const-string v7, "it"

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lw0/yf;

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lw0/yf;->a:Ljava/lang/String;

    return-object p1

    :pswitch_0
    check-cast p1, Lw0/yf;

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lw0/yf;->b:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lo2/k;->r0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    sget-object v0, Lcom/ex/auto/Politica;->a:Lcom/ex/auto/Politica;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Landroid/media/session/MediaController$TransportControls;

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->pause()V

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_9
    check-cast p1, Landroid/media/session/MediaController$TransportControls;

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_a
    check-cast p1, Landroid/media/session/MediaController$TransportControls;

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->rewind()V

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_b
    check-cast p1, Landroid/media/session/MediaController$TransportControls;

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->stop()V

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_c
    check-cast p1, Landroid/media/session/MediaController$TransportControls;

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_d
    check-cast p1, Landroid/media/session/MediaController$TransportControls;

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->fastForward()V

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_e
    check-cast p1, Landroid/media/session/MediaController$TransportControls;

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->rewind()V

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_f
    check-cast p1, Landroid/media/session/MediaController$TransportControls;

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->play()V

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_10
    check-cast p1, Landroid/media/session/MediaController$TransportControls;

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->play()V

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_11
    check-cast p1, Landroid/media/session/MediaController$TransportControls;

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->fastForward()V

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_12
    check-cast p1, Landroid/media/session/MediaController$TransportControls;

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->play()V

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_13
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_14
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_15
    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, v1, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ERRO"

    invoke-static {p1, v0, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v4, v6

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_16
    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_17
    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SEM_"

    invoke-static {p1, v0}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, v1, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move v4, v6

    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_18
    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_19
    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jit-cache"

    invoke-static {p1, v0, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "dalvik-jit-code-cache"

    invoke-static {p1, v0, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move v4, v6

    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1a
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1b
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_1c
    check-cast p1, Lw0/gc;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u2022 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lw0/gc;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
