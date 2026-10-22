.class public Lc0/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lc0/k1;


# instance fields
.field public final a:Lc0/k1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lc0/b1;

    invoke-direct {v0}, Lc0/b1;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Lc0/a1;

    invoke-direct {v0}, Lc0/a1;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lc0/z0;

    invoke-direct {v0}, Lc0/z0;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lc0/c1;->b()Lc0/k1;

    move-result-object v0

    iget-object v0, v0, Lc0/k1;->a:Lc0/j1;

    invoke-virtual {v0}, Lc0/j1;->a()Lc0/k1;

    move-result-object v0

    iget-object v0, v0, Lc0/k1;->a:Lc0/j1;

    invoke-virtual {v0}, Lc0/j1;->b()Lc0/k1;

    move-result-object v0

    iget-object v0, v0, Lc0/k1;->a:Lc0/j1;

    invoke-virtual {v0}, Lc0/j1;->c()Lc0/k1;

    move-result-object v0

    sput-object v0, Lc0/j1;->b:Lc0/k1;

    return-void
.end method

.method public constructor <init>(Lc0/k1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0/j1;->a:Lc0/k1;

    return-void
.end method


# virtual methods
.method public a()Lc0/k1;
    .locals 1

    iget-object v0, p0, Lc0/j1;->a:Lc0/k1;

    return-object v0
.end method

.method public b()Lc0/k1;
    .locals 1

    iget-object v0, p0, Lc0/j1;->a:Lc0/k1;

    return-object v0
.end method

.method public c()Lc0/k1;
    .locals 1

    iget-object v0, p0, Lc0/j1;->a:Lc0/k1;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public e()Lc0/i;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc0/j1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc0/j1;

    invoke-virtual {p0}, Lc0/j1;->k()Z

    move-result v1

    invoke-virtual {p1}, Lc0/j1;->k()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lc0/j1;->j()Z

    move-result v1

    invoke-virtual {p1}, Lc0/j1;->j()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lc0/j1;->h()Lv/c;

    move-result-object v1

    invoke-virtual {p1}, Lc0/j1;->h()Lv/c;

    move-result-object v3

    invoke-static {v1, v3}, Lb0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lc0/j1;->g()Lv/c;

    move-result-object v1

    invoke-virtual {p1}, Lc0/j1;->g()Lv/c;

    move-result-object v3

    invoke-static {v1, v3}, Lb0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lc0/j1;->e()Lc0/i;

    move-result-object v1

    invoke-virtual {p1}, Lc0/j1;->e()Lc0/i;

    move-result-object p1

    invoke-static {v1, p1}, Lb0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public f()Lv/c;
    .locals 1

    invoke-virtual {p0}, Lc0/j1;->h()Lv/c;

    move-result-object v0

    return-object v0
.end method

.method public g()Lv/c;
    .locals 1

    sget-object v0, Lv/c;->e:Lv/c;

    return-object v0
.end method

.method public h()Lv/c;
    .locals 1

    sget-object v0, Lv/c;->e:Lv/c;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    invoke-virtual {p0}, Lc0/j1;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lc0/j1;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lc0/j1;->h()Lv/c;

    move-result-object v2

    invoke-virtual {p0}, Lc0/j1;->g()Lv/c;

    move-result-object v3

    invoke-virtual {p0}, Lc0/j1;->e()Lc0/i;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lb0/b;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i(IIII)Lc0/k1;
    .locals 0

    sget-object p1, Lc0/j1;->b:Lc0/k1;

    return-object p1
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l([Lv/c;)V
    .locals 0

    return-void
.end method

.method public m(Lc0/k1;)V
    .locals 0

    return-void
.end method

.method public n(Lv/c;)V
    .locals 0

    return-void
.end method
