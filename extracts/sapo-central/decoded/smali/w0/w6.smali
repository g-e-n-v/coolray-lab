.class public final synthetic Lw0/w6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/HomeFloatingWidgetsService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V
    .locals 0

    iput p2, p0, Lw0/w6;->a:I

    iput-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget p1, p0, Lw0/w6;->a:I

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->G(F)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->p()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->p()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->o(Z)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1, v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->o(Z)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->K()V

    new-instance v1, Lw0/z6;

    invoke-direct {v1, v5, v0}, Lw0/z6;-><init>(IZ)V

    invoke-virtual {p1, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lw0/a7;

    invoke-direct {v0, p1, v5}, Lw0/a7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    :goto_0
    return-void

    :pswitch_5
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->K()V

    new-instance v1, Lw0/z6;

    invoke-direct {v1, v6, v0}, Lw0/z6;-><init>(IZ)V

    invoke-virtual {p1, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lw0/a7;

    invoke-direct {v0, p1, v6}, Lw0/a7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    :goto_1
    return-void

    :pswitch_6
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->K()V

    new-instance v1, Lw0/z6;

    invoke-direct {v1, v4, v0}, Lw0/z6;-><init>(IZ)V

    invoke-virtual {p1, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    goto :goto_2

    :cond_5
    new-instance v0, Lw0/a7;

    invoke-direct {v0, p1, v4}, Lw0/a7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    :goto_2
    return-void

    :pswitch_7
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Ljava/lang/Boolean;

    const/4 v1, 0x5

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->K()V

    new-instance v2, Lw0/z6;

    invoke-direct {v2, v1, v0}, Lw0/z6;-><init>(IZ)V

    invoke-virtual {p1, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    goto :goto_3

    :cond_7
    new-instance v0, Lw0/a7;

    invoke-direct {v0, p1, v1}, Lw0/a7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    :goto_3
    return-void

    :pswitch_8
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const v0, 0x20020503

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->A(I)V

    return-void

    :pswitch_9
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const v0, 0x20020502

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->A(I)V

    return-void

    :pswitch_a
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const v0, 0x20020501

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->A(I)V

    return-void

    :pswitch_b
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const v0, 0x22010103

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->z(I)V

    return-void

    :pswitch_c
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const v0, 0x22010102

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->z(I)V

    return-void

    :pswitch_d
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const v0, 0x22010101

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->z(I)V

    return-void

    :pswitch_e
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1, v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->E(I)V

    return-void

    :pswitch_f
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v1, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->E(I)V

    return-void

    :pswitch_10
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->A:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->M()V

    new-instance v1, Lw0/z6;

    invoke-direct {v1, v3, v0}, Lw0/z6;-><init>(IZ)V

    invoke-virtual {p1, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    goto :goto_4

    :cond_9
    new-instance v0, Lw0/a7;

    invoke-direct {v0, p1, v3}, Lw0/a7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    :goto_4
    return-void

    :pswitch_11
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1, v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->F(I)V

    return-void

    :pswitch_12
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v1, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->F(I)V

    return-void

    :pswitch_13
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->M()V

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->N()V

    new-instance v2, Lw0/z6;

    invoke-direct {v2, v1, v0}, Lw0/z6;-><init>(IZ)V

    invoke-virtual {p1, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    goto :goto_5

    :cond_b
    new-instance v0, Lw0/a7;

    invoke-direct {v0, p1, v1}, Lw0/a7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    :goto_5
    return-void

    :pswitch_14
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->C(I)V

    return-void

    :pswitch_15
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->C(I)V

    return-void

    :pswitch_16
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->C(I)V

    return-void

    :pswitch_17
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->C(I)V

    return-void

    :pswitch_18
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1, v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->C(I)V

    return-void

    :pswitch_19
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->N()V

    new-instance v1, Lw0/z6;

    invoke-direct {v1, v2, v0}, Lw0/z6;-><init>(IZ)V

    invoke-virtual {p1, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    goto :goto_6

    :cond_d
    new-instance v0, Lw0/a7;

    invoke-direct {v0, p1, v2}, Lw0/a7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(Lh2/l;)V

    :goto_6
    return-void

    :pswitch_1a
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->B(I)V

    return-void

    :pswitch_1b
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->B(I)V

    return-void

    :pswitch_1c
    iget-object p1, p0, Lw0/w6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p1, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->B(I)V

    return-void

    nop

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
