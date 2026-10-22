.class public Lc0/g1;
.super Lc0/f1;
.source "SourceFile"


# instance fields
.field public l:Lv/c;


# direct methods
.method public constructor <init>(Lc0/k1;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc0/f1;-><init>(Lc0/k1;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lc0/g1;->l:Lv/c;

    return-void
.end method


# virtual methods
.method public f()Lv/c;
    .locals 4

    iget-object v0, p0, Lc0/g1;->l:Lv/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc0/d1;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/lifecycle/y;->c(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/y;->a(Landroid/graphics/Insets;)I

    move-result v1

    invoke-static {v0}, Landroidx/lifecycle/y;->o(Landroid/graphics/Insets;)I

    move-result v2

    invoke-static {v0}, Landroidx/lifecycle/y;->r(Landroid/graphics/Insets;)I

    move-result v3

    invoke-static {v0}, Landroidx/lifecycle/y;->t(Landroid/graphics/Insets;)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lv/c;->a(IIII)Lv/c;

    move-result-object v0

    iput-object v0, p0, Lc0/g1;->l:Lv/c;

    :cond_0
    iget-object v0, p0, Lc0/g1;->l:Lv/c;

    return-object v0
.end method

.method public i(IIII)Lc0/k1;
    .locals 1

    iget-object v0, p0, Lc0/d1;->c:Landroid/view/WindowInsets;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/lifecycle/y;->g(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lc0/k1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lc0/k1;

    move-result-object p1

    return-object p1
.end method

.method public n(Lv/c;)V
    .locals 0

    return-void
.end method
