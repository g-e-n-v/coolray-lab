.class public final synthetic Lw0/d7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw0/d7;->a:F

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const-string v0, "it"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lw0/d7;->a:F

    invoke-static {p1, v0}, Lw0/v7;->x(Landroid/car/hardware/property/CarPropertyManager;F)V

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1
.end method
