.class public final synthetic Lw0/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:Landroid/car/hardware/property/CarPropertyManager;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroid/car/hardware/property/CarPropertyManager;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/h1;->a:Landroid/car/hardware/property/CarPropertyManager;

    iput p2, p0, Lw0/h1;->b:I

    iput p3, p0, Lw0/h1;->c:I

    iput-boolean p4, p0, Lw0/h1;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lw0/h1;->c:I

    iget-boolean v1, p0, Lw0/h1;->d:Z

    iget-object v2, p0, Lw0/h1;->a:Landroid/car/hardware/property/CarPropertyManager;

    iget v3, p0, Lw0/h1;->b:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0
.end method
