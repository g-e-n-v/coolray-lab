.class public abstract Lc0/e1;
.super Lc0/d1;
.source "SourceFile"


# instance fields
.field public k:Lv/c;


# direct methods
.method public constructor <init>(Lc0/k1;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc0/d1;-><init>(Lc0/k1;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lc0/e1;->k:Lv/c;

    return-void
.end method


# virtual methods
.method public b()Lc0/k1;
    .locals 2

    iget-object v0, p0, Lc0/d1;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc0/k1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lc0/k1;

    move-result-object v0

    return-object v0
.end method

.method public c()Lc0/k1;
    .locals 2

    iget-object v0, p0, Lc0/d1;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc0/k1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lc0/k1;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lv/c;
    .locals 4

    iget-object v0, p0, Lc0/e1;->k:Lv/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc0/d1;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lv/c;->a(IIII)Lv/c;

    move-result-object v0

    iput-object v0, p0, Lc0/e1;->k:Lv/c;

    :cond_0
    iget-object v0, p0, Lc0/e1;->k:Lv/c;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lc0/d1;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public n(Lv/c;)V
    .locals 0

    iput-object p1, p0, Lc0/e1;->k:Lv/c;

    return-void
.end method
