.class public final synthetic Lw0/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:Landroid/car/hardware/property/CarPropertyManager;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Landroid/car/hardware/property/CarPropertyManager;IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/o1;->a:Landroid/car/hardware/property/CarPropertyManager;

    iput p2, p0, Lw0/o1;->b:I

    iput p3, p0, Lw0/o1;->c:I

    iput p4, p0, Lw0/o1;->d:F

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lw0/o1;->c:I

    iget v1, p0, Lw0/o1;->d:F

    iget-object v2, p0, Lw0/o1;->a:Landroid/car/hardware/property/CarPropertyManager;

    iget v3, p0, Lw0/o1;->b:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0
.end method
