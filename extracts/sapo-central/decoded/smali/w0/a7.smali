.class public final synthetic Lw0/a7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/HomeFloatingWidgetsService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V
    .locals 0

    iput p2, p0, Lw0/a7;->a:I

    iput-object p1, p0, Lw0/a7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lw0/a7;->a:I

    const/4 v1, 0x0

    const-string v2, "manager"

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/a7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v3, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->A:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lw0/v7;->d(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lw0/v7;->q(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->A:Ljava/lang/Boolean;

    new-instance p1, Lw0/x6;

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Lw0/x6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->r(Lh2/a;)V

    :goto_2
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lw0/a7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v3, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4

    :cond_2
    invoke-static {p1}, Lw0/v7;->m(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    :goto_4
    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lw0/v7;->z(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Ljava/lang/Boolean;

    new-instance p1, Lw0/x6;

    const/16 v1, 0x9

    invoke-direct {p1, v0, v1}, Lw0/x6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->r(Lh2/a;)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lw0/a7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v3, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_6

    :cond_4
    invoke-static {p1}, Lw0/v7;->n(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    :goto_6
    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lw0/v7;->A(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Ljava/lang/Boolean;

    new-instance p1, Lw0/x6;

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Lw0/x6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->r(Lh2/a;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lw0/a7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v3, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    :goto_7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_8

    :cond_6
    invoke-static {p1}, Lw0/v7;->h(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    :goto_8
    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lw0/v7;->u(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Ljava/lang/Boolean;

    new-instance p1, Lw0/x6;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lw0/x6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->r(Lh2/a;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v0, p0, Lw0/a7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v3, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    :goto_9
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_a

    :cond_8
    invoke-static {p1}, Lw0/v7;->i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_9

    goto :goto_9

    :cond_9
    :goto_a
    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lw0/v7;->v(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    new-instance p1, Lw0/x6;

    const/16 v1, 0xc

    invoke-direct {p1, v0, v1}, Lw0/x6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->r(Lh2/a;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Lw0/a7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v3, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Ljava/lang/Boolean;

    if-eqz v2, :cond_a

    :goto_b
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_c

    :cond_a
    invoke-static {p1}, Lw0/v7;->f(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_b

    goto :goto_b

    :cond_b
    :goto_c
    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lw0/v7;->t(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Ljava/lang/Boolean;

    new-instance p1, Lw0/x6;

    const/4 v1, 0x6

    invoke-direct {p1, v0, v1}, Lw0/x6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->r(Lh2/a;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, p0, Lw0/a7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v3, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    if-eqz v2, :cond_c

    :goto_d
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_e

    :cond_c
    invoke-static {p1}, Lw0/v7;->i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_d

    goto :goto_d

    :cond_d
    :goto_e
    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lw0/v7;->v(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    new-instance p1, Lw0/x6;

    const/16 v1, 0x8

    invoke-direct {p1, v0, v1}, Lw0/x6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->r(Lh2/a;)V

    goto/16 :goto_2

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
