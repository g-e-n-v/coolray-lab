.class public final Lq0/a1;
.super Lq0/w;
.source "SourceFile"


# instance fields
.field public final synthetic q:Lq0/x;


# direct methods
.method public constructor <init>(Lq0/x;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lq0/a1;->q:Lq0/x;

    invoke-direct {p0, p2}, Lq0/w;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public final f(Landroid/view/View;Lq0/r0;)V
    .locals 6

    iget-object v0, p0, Lq0/a1;->q:Lq0/x;

    iget-object v1, v0, Lq0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lq0/i0;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lq0/x;->a(Lq0/i0;Landroid/view/View;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lq0/w;->c(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-lez v2, :cond_1

    iput v0, p2, Lq0/r0;->a:I

    iput p1, p2, Lq0/r0;->b:I

    iput v2, p2, Lq0/r0;->c:I

    iget-object p1, p0, Lq0/w;->j:Landroid/view/animation/DecelerateInterpolator;

    iput-object p1, p2, Lq0/r0;->e:Landroid/view/animation/Interpolator;

    iput-boolean v1, p2, Lq0/r0;->f:Z

    :cond_1
    :goto_0
    return-void
.end method
