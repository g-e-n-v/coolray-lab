.class public final Li/i0;
.super Li/t1;
.source "SourceFile"


# instance fields
.field public final synthetic j:Li/q0;

.field public final synthetic k:Li/t0;


# direct methods
.method public constructor <init>(Li/t0;Li/t0;Li/q0;)V
    .locals 0

    iput-object p1, p0, Li/i0;->k:Li/t0;

    iput-object p3, p0, Li/i0;->j:Li/q0;

    invoke-direct {p0, p2}, Li/t1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lh/d0;
    .locals 1

    iget-object v0, p0, Li/i0;->j:Li/q0;

    return-object v0
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Li/i0;->k:Li/t0;

    invoke-virtual {v0}, Li/t0;->getInternalPopup()Li/s0;

    move-result-object v1

    invoke-interface {v1}, Li/s0;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Li/t0;->f:Li/s0;

    invoke-static {v0}, Li/k0;->b(Landroid/view/View;)I

    move-result v2

    invoke-static {v0}, Li/k0;->a(Landroid/view/View;)I

    move-result v0

    invoke-interface {v1, v2, v0}, Li/s0;->k(II)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
