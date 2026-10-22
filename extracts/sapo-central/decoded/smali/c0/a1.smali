.class public Lc0/a1;
.super Lc0/c1;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc0/c1;-><init>()V

    .line 2
    invoke-static {}, Landroidx/lifecycle/y;->d()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Lc0/a1;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lc0/k1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lc0/c1;-><init>(Lc0/k1;)V

    .line 4
    invoke-virtual {p1}, Lc0/k1;->f()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Landroidx/lifecycle/y;->e(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Landroidx/lifecycle/y;->d()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lc0/a1;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()Lc0/k1;
    .locals 3

    invoke-virtual {p0}, Lc0/c1;->a()V

    iget-object v0, p0, Lc0/a1;->a:Landroid/view/WindowInsets$Builder;

    invoke-static {v0}, Landroidx/lifecycle/y;->f(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc0/k1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lc0/k1;

    move-result-object v0

    iget-object v2, v0, Lc0/k1;->a:Lc0/j1;

    invoke-virtual {v2, v1}, Lc0/j1;->l([Lv/c;)V

    return-object v0
.end method

.method public c(Lv/c;)V
    .locals 1

    iget-object v0, p0, Lc0/a1;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lv/c;->b()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/lifecycle/y;->q(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public d(Lv/c;)V
    .locals 1

    iget-object v0, p0, Lc0/a1;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lv/c;->b()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/lifecycle/y;->k(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method
