.class public final synthetic Lw0/z6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lw0/z6;->a:I

    iput-boolean p2, p0, Lw0/z6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lw0/z6;->a:I

    const-string v1, "it"

    iget-boolean v2, p0, Lw0/z6;->b:Z

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lw0/v7;->q(Landroid/car/hardware/property/CarPropertyManager;Z)V

    :goto_0
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_0
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lw0/v7;->z(Landroid/car/hardware/property/CarPropertyManager;Z)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lw0/v7;->A(Landroid/car/hardware/property/CarPropertyManager;Z)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lw0/v7;->u(Landroid/car/hardware/property/CarPropertyManager;Z)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lw0/v7;->v(Landroid/car/hardware/property/CarPropertyManager;Z)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lw0/v7;->t(Landroid/car/hardware/property/CarPropertyManager;Z)V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lw0/v7;->v(Landroid/car/hardware/property/CarPropertyManager;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
