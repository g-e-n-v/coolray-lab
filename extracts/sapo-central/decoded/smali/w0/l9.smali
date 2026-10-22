.class public final synthetic Lw0/l9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/p;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;I)V
    .locals 0

    iput p2, p0, Lw0/l9;->a:I

    iput-object p1, p0, Lw0/l9;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lw0/l9;->a:I

    const-string v1, "c"

    iget-object v2, p0, Lw0/l9;->b:Lcom/ex/auto/MainActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p2, p1}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p2, p1}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget p2, Lcom/ex/auto/MainActivity;->z1:I

    const-string p2, "task"

    invoke-static {p1, p2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
