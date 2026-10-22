.class public final synthetic Lw0/e7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:Lcom/ex/auto/HomeFloatingWidgetsService;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/e7;->a:Lcom/ex/auto/HomeFloatingWidgetsService;

    iput p2, p0, Lw0/e7;->b:F

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lw0/e7;->a:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget v1, p0, Lw0/e7;->b:F

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v2, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const-string v2, "manager"

    invoke-static {p1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->r:Ljava/lang/Float;

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lw0/v7;->k(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x41b00000    # 22.0f

    :goto_1
    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v1, v3, v4}, Lk1/a;->j(FFF)F

    move-result v1

    cmpg-float v2, v1, v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1, v1}, Lw0/v7;->x(Landroid/car/hardware/property/CarPropertyManager;F)V

    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->r:Ljava/lang/Float;

    new-instance p1, Lw0/x6;

    const/4 v1, 0x5

    invoke-direct {p1, v0, v1}, Lw0/x6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->r(Lh2/a;)V

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1
.end method
