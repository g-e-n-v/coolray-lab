.class public final synthetic Lw0/b7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lw0/b7;->a:I

    iput p1, p0, Lw0/b7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lw0/b7;->a:I

    const-string v1, "it"

    iget v2, p0, Lw0/b7;->b:I

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v0, "manager"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/high16 v1, 0x1000000

    const/4 v3, 0x0

    filled-new-array {v3, v0, v1}, [I

    move-result-object v0

    :goto_0
    const/4 v1, 0x3

    if-ge v3, v1, :cond_0

    aget v1, v0, v3

    const v4, 0x22010100

    invoke-static {p1, v4, v1, v2}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_0
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lw0/v7;->y(Landroid/car/hardware/property/CarPropertyManager;I)V

    :goto_1
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_1
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lw0/v7;->s(Landroid/car/hardware/property/CarPropertyManager;I)V

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lw0/v7;->y(Landroid/car/hardware/property/CarPropertyManager;I)V

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lw0/v7;->s(Landroid/car/hardware/property/CarPropertyManager;I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
