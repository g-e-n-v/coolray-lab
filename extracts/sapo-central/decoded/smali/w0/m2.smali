.class public final synthetic Lw0/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/p;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/scheduling/h;

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/scheduling/h;Lcom/ex/auto/CentralWatchdogService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/m2;->a:Lkotlinx/coroutines/scheduling/h;

    iput-object p2, p0, Lw0/m2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput p3, p0, Lw0/m2;->c:I

    iput-object p4, p0, Lw0/m2;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v0, "comando"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw0/m2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, Lw0/m2;->d:Ljava/lang/String;

    iget v2, p0, Lw0/m2;->c:I

    invoke-static {v0, v1, v2}, Lcom/ex/auto/CentralWatchdogService;->q0(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw0/m2;->a:Lkotlinx/coroutines/scheduling/h;

    invoke-virtual {v0, p2, p1}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "runShell(...)"

    invoke-static {p1, p2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "sessao de rede mudou durante o envio"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
