.class public final synthetic Lw0/c7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lw0/c7;->a:I

    iput-object p1, p0, Lw0/c7;->b:Ljava/lang/Object;

    iput p2, p0, Lw0/c7;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lw0/c7;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "manager"

    const-string v4, "it"

    const/4 v5, 0x7

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/c7;->b:Ljava/lang/Object;

    check-cast v0, [Z

    iget v1, p0, Lw0/c7;->c:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    aput-boolean p1, v0, v1

    :goto_0
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lw0/c7;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget v1, p0, Lw0/c7;->c:I

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v2, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lw0/v7;->r(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lw0/c7;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget v4, p0, Lw0/c7;->c:I

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v6, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lw0/v7;->e(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/2addr v4, v2

    invoke-static {v4, v1, v5}, Lk1/a;->k(III)I

    move-result v1

    if-eq v1, v2, :cond_2

    invoke-static {p1, v1}, Lw0/v7;->s(Landroid/car/hardware/property/CarPropertyManager;I)V

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Integer;

    new-instance p1, Lw0/x6;

    const/16 v1, 0xb

    invoke-direct {p1, v0, v1}, Lw0/x6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->r(Lh2/a;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lw0/c7;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget v1, p0, Lw0/c7;->c:I

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v2, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lw0/v7;->w(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lw0/c7;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget v4, p0, Lw0/c7;->c:I

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v6, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4

    :cond_3
    invoke-static {p1}, Lw0/v7;->e(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    :goto_4
    add-int/2addr v4, v2

    invoke-static {v4, v1, v5}, Lk1/a;->k(III)I

    move-result v1

    if-eq v1, v2, :cond_5

    invoke-static {p1, v1}, Lw0/v7;->s(Landroid/car/hardware/property/CarPropertyManager;I)V

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Integer;

    new-instance p1, Lw0/x6;

    invoke-direct {p1, v0, v5}, Lw0/x6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->r(Lh2/a;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
