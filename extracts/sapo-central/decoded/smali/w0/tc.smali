.class public final synthetic Lw0/tc;
.super Li2/e;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p6, p0, Lw0/tc;->i:I

    invoke-direct/range {p0 .. p5}, Li2/e;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lw0/tc;->i:I

    iget-object v1, p0, Li2/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->v1()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    check-cast v1, Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->v1()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_1
    check-cast v1, Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->v1()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_2
    check-cast v1, Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->y1()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_3
    check-cast v1, Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->y1()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_4
    check-cast v1, Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->y1()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_5
    check-cast v1, Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->v1()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_6
    check-cast v1, Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->y1()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_7
    check-cast v1, Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->v1()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_8
    check-cast v1, Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->v1()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
