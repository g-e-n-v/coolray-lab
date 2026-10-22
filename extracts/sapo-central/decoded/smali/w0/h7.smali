.class public final synthetic Lw0/h7;
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw0/h7;->a:I

    iput p2, p0, Lw0/h7;->b:I

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const-string v0, "it"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/v7;->a:[I

    const v0, 0x1540050b

    iget v1, p0, Lw0/h7;->a:I

    iget v2, p0, Lw0/h7;->b:I

    invoke-static {p1, v0, v1, v2}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1
.end method
