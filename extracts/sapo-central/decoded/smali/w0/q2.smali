.class public final synthetic Lw0/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;ILjava/lang/Runnable;I)V
    .locals 0

    .line 1
    iput p4, p0, Lw0/q2;->a:I

    iput-object p1, p0, Lw0/q2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput p2, p0, Lw0/q2;->c:I

    iput-object p3, p0, Lw0/q2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lw0/q2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/q2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object p2, p0, Lw0/q2;->d:Ljava/lang/Object;

    iput p3, p0, Lw0/q2;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lw0/q2;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v2, p0, Lw0/q2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v5, p0, Lw0/q2;->c:I

    iget-object v0, p0, Lw0/q2;->d:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lw0/a3;

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "grep "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/ex/auto/CentralWatchdogService;->v0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " /proc/interrupts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-static {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/ex/auto/CentralWatchdogService;->C0:Lo2/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "input"

    invoke-static {v0, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ltz v3, :cond_2

    new-instance v3, Lo2/f;

    invoke-direct {v3, v1, v0}, Lo2/f;-><init>(Lo2/h;Ljava/lang/String;)V

    sget-object v0, Lo2/g;->i:Lo2/g;

    new-instance v0, Lf2/f;

    invoke-direct {v0, v3}, Lf2/f;-><init>(Lo2/f;)V

    new-instance v1, Ln2/e;

    invoke-direct {v1, v0}, Ln2/e;-><init>(Lf2/f;)V

    const-wide/16 v3, 0x0

    move-wide v7, v3

    :goto_0
    invoke-virtual {v1}, Ln2/e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ln2/e;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/e;

    iget-object v0, v0, Lo2/e;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string v9, "group(...)"

    invoke-static {v0, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo2/s;->Y(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_1

    :cond_0
    move-wide v9, v7

    :goto_1
    add-long/2addr v3, v9

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v1, Lw0/g3;

    invoke-direct/range {v1 .. v6}, Lw0/g3;-><init>(Lcom/ex/auto/CentralWatchdogService;JILw0/a3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start index out of bounds: 0, input length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v3, p0, Lw0/q2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v4, p0, Lw0/q2;->c:I

    iget-object v0, p0, Lw0/q2;->d:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lw0/a3;

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    :try_start_0
    new-instance v0, Lkotlinx/coroutines/scheduling/h;

    const/16 v1, 0x15b3

    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    const-string v1, "# O ARP STALE do telefone que saiu n\u00e3o pode durar para sempre sem sondagem.\nfor IP in $(ip neigh show dev ap0 2>/dev/null | awk \'/lladdr/ && /STALE/ {print $1}\' | head -n 3); do\n  ping -I ap0 -c 1 -W 1 \"$IP\" >/dev/null 2>&1 || true\ndone\nip neigh show dev ap0 2>/dev/null"

    const/16 v2, 0x1f40

    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v1, v3, Lcom/ex/auto/CentralWatchdogService;->d0:Ljava/lang/String;

    invoke-static {v0, v1}, Lw0/s4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v5, v0

    goto :goto_4

    :catch_0
    const/4 v0, 0x0

    goto :goto_3

    :goto_4
    iget-object v0, v3, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/d1;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lw0/d1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lw0/q2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, Lw0/q2;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lw0/q2;->c:I

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0, v2, v1}, Lcom/ex/auto/CentralWatchdogService;->g0(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
