.class public final synthetic Lw0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/p;
.implements Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lw0/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Service;I)V
    .locals 0

    .line 2
    iput p2, p0, Lw0/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lw0/n;->a:I

    const-string v1, "runShell(...)"

    const/16 v2, 0x15b3

    const-string v3, "ADB_FAIL: "

    const-string v4, "c"

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lw0/ih;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lw0/ih;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lw0/ih;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lw0/ih;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lkotlinx/coroutines/scheduling/h;

    invoke-direct {v0, v2}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    invoke-virtual {v0, p2, p1}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_5
    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lw0/eg;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lw0/eg;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lw0/eg;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/ex/auto/QuickAccessFloaterService;->I(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    invoke-static {p2, p1}, Lw0/m;->y(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_a
    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_2
    invoke-static {p2, p1}, Lw0/m;->y(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :pswitch_b
    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_3
    invoke-static {p2, p1}, Lw0/m;->y(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1

    :pswitch_c
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_4
    new-instance v0, Lkotlinx/coroutines/scheduling/h;

    invoke-direct {v0, v2}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    invoke-virtual {v0, p2, p1}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    return-object p1

    :pswitch_d
    const-string v0, "cmd"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/d8;->a:Lw0/d8;

    invoke-static {p2, p1}, Lw0/d8;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_e
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_f
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/coroutines/scheduling/h;

    invoke-direct {v0, v2}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    invoke-virtual {v0, p2, p1}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_10
    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lw0/m;->a:I

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_5
    new-instance v4, Lkotlinx/coroutines/scheduling/h;

    invoke-direct {v4, v0}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    invoke-virtual {v4, p2, p1}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    sput v3, Lw0/m;->a:I

    :cond_0
    const v0, 0xfdf2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x2

    if-ge v3, v2, :cond_1

    aget v1, v0, v3

    :try_start_6
    new-instance v2, Lkotlinx/coroutines/scheduling/h;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    invoke-virtual {v2, p2, p1}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput v1, Lw0/m;->a:I

    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v0, v2

    :goto_6
    return-object v0

    :catch_6
    move-exception v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_7

    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string p1, "adbd local indispon\u00edvel"

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_7
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
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
    .end packed-switch
.end method

.method public onAPIReady(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAPIReady: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lw0/od;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lw0/od;->k:Landroid/os/Handler;

    if-eqz p1, :cond_2

    new-instance v0, Lw0/r0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lw0/r0;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    sget-object p1, Lw0/od;->k:Landroid/os/Handler;

    if-eqz p1, :cond_2

    new-instance v0, Lw0/r0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lw0/r0;-><init>(I)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
