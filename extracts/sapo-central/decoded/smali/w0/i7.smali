.class public final synthetic Lw0/i7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/ex/auto/HomeFloatingWidgetsService;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ZLcom/ex/auto/HomeFloatingWidgetsService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw0/i7;->a:Z

    iput-object p2, p0, Lw0/i7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iput p3, p0, Lw0/i7;->c:I

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-boolean v0, p0, Lw0/i7;->a:Z

    iget-object v1, p0, Lw0/i7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget v2, p0, Lw0/i7;->c:I

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v3, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const-string v3, "manager"

    invoke-static {p1, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v3, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Ljava/lang/Integer;

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_1
    invoke-static {p1, v2}, Lw0/v7;->j(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x4

    if-le v3, v4, :cond_3

    const/4 v3, 0x0

    :cond_3
    sget-object v4, Lw0/v7;->a:[I

    const v4, 0x1540050b

    invoke-static {p1, v4, v2, v3}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz v0, :cond_4

    iput-object p1, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Ljava/lang/Integer;

    goto :goto_3

    :cond_4
    iput-object p1, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Ljava/lang/Integer;

    :goto_3
    new-instance p1, Lw0/x6;

    const/4 v0, 0x2

    invoke-direct {p1, v1, v0}, Lw0/x6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->r(Lh2/a;)V

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1
.end method
