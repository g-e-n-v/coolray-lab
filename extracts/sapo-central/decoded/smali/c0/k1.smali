.class public final Lc0/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lc0/k1;


# instance fields
.field public final a:Lc0/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Lc0/i1;->m:Lc0/k1;

    sput-object v0, Lc0/k1;->b:Lc0/k1;

    return-void

    :cond_0
    sget-object v0, Lc0/j1;->b:Lc0/k1;

    sput-object v0, Lc0/k1;->b:Lc0/k1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lc0/j1;

    invoke-direct {v0, p0}, Lc0/j1;-><init>(Lc0/k1;)V

    iput-object v0, p0, Lc0/k1;->a:Lc0/j1;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lc0/i1;

    invoke-direct {v0, p0, p1}, Lc0/i1;-><init>(Lc0/k1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lc0/k1;->a:Lc0/j1;

    return-void

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Lc0/g1;

    invoke-direct {v0, p0, p1}, Lc0/g1;-><init>(Lc0/k1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lc0/k1;->a:Lc0/j1;

    return-void

    .line 5
    :cond_1
    new-instance v0, Lc0/f1;

    invoke-direct {v0, p0, p1}, Lc0/f1;-><init>(Lc0/k1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lc0/k1;->a:Lc0/j1;

    return-void
.end method

.method public static e(Lv/c;IIII)Lv/c;
    .locals 5

    iget v0, p0, Lv/c;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lv/c;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lv/c;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lv/c;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Lv/c;->a(IIII)Lv/c;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/view/WindowInsets;Landroid/view/View;)Lc0/k1;
    .locals 2

    new-instance v0, Lc0/k1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lc0/k1;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    sget-object p0, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lc0/c0;->b(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lc0/g0;->a(Landroid/view/View;)Lc0/k1;

    move-result-object p0

    iget-object v1, v0, Lc0/k1;->a:Lc0/j1;

    invoke-virtual {v1, p0}, Lc0/j1;->m(Lc0/k1;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, Lc0/j1;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lc0/k1;->a:Lc0/j1;

    invoke-virtual {v0}, Lc0/j1;->h()Lv/c;

    move-result-object v0

    iget v0, v0, Lv/c;->d:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lc0/k1;->a:Lc0/j1;

    invoke-virtual {v0}, Lc0/j1;->h()Lv/c;

    move-result-object v0

    iget v0, v0, Lv/c;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lc0/k1;->a:Lc0/j1;

    invoke-virtual {v0}, Lc0/j1;->h()Lv/c;

    move-result-object v0

    iget v0, v0, Lv/c;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lc0/k1;->a:Lc0/j1;

    invoke-virtual {v0}, Lc0/j1;->h()Lv/c;

    move-result-object v0

    iget v0, v0, Lv/c;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lc0/k1;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lc0/k1;

    iget-object v0, p0, Lc0/k1;->a:Lc0/j1;

    iget-object p1, p1, Lc0/k1;->a:Lc0/j1;

    invoke-static {v0, p1}, Lb0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lc0/k1;->a:Lc0/j1;

    instance-of v1, v0, Lc0/d1;

    if-eqz v1, :cond_0

    check-cast v0, Lc0/d1;

    iget-object v0, v0, Lc0/d1;->c:Landroid/view/WindowInsets;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lc0/k1;->a:Lc0/j1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lc0/j1;->hashCode()I

    move-result v0

    return v0
.end method
