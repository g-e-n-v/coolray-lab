.class public final synthetic Lw0/ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lw0/ea;->a:I

    iput-object p1, p0, Lw0/ea;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/ea;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lw0/ea;->a:I

    const-string v1, "result"

    iget-object v2, p0, Lw0/ea;->c:Ljava/lang/String;

    iget-object v3, p0, Lw0/ea;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1, v2}, Lcom/ex/auto/MainActivity;->l2(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1, v2}, Lcom/ex/auto/MainActivity;->l2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1, v2}, Lcom/ex/auto/MainActivity;->l2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1, v2}, Lcom/ex/auto/MainActivity;->l2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
