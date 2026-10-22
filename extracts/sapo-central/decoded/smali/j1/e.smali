.class public final Lj1/e;
.super Ls1/g;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Ln1/g;


# static fields
.field public static final F0:[I

.field public static final G0:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field public A:F

.field public A0:Ljava/lang/ref/WeakReference;

.field public B:Landroid/content/res/ColorStateList;

.field public B0:Landroid/text/TextUtils$TruncateAt;

.field public C:F

.field public C0:Z

.field public D:Landroid/content/res/ColorStateList;

.field public D0:I

.field public E:Ljava/lang/CharSequence;

.field public E0:Z

.field public F:Z

.field public G:Landroid/graphics/drawable/Drawable;

.field public H:Landroid/content/res/ColorStateList;

.field public I:F

.field public J:Z

.field public K:Z

.field public L:Landroid/graphics/drawable/Drawable;

.field public M:Landroid/graphics/drawable/RippleDrawable;

.field public N:Landroid/content/res/ColorStateList;

.field public O:F

.field public P:Landroid/text/SpannableStringBuilder;

.field public Q:Z

.field public R:Z

.field public S:Landroid/graphics/drawable/Drawable;

.field public T:Landroid/content/res/ColorStateList;

.field public U:Lc1/b;

.field public V:Lc1/b;

.field public W:F

.field public X:F

.field public Y:F

.field public Z:F

.field public a0:F

.field public b0:F

.field public c0:F

.field public d0:F

.field public final e0:Landroid/content/Context;

.field public final f0:Landroid/graphics/Paint;

.field public final g0:Landroid/graphics/Paint$FontMetrics;

.field public final h0:Landroid/graphics/RectF;

.field public final i0:Landroid/graphics/PointF;

.field public final j0:Landroid/graphics/Path;

.field public final k0:Ln1/h;

.field public l0:I

.field public m0:I

.field public n0:I

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:Z

.field public s0:I

.field public t0:I

.field public u0:Landroid/graphics/ColorFilter;

.field public v0:Landroid/graphics/PorterDuffColorFilter;

.field public w0:Landroid/content/res/ColorStateList;

.field public x:Landroid/content/res/ColorStateList;

.field public x0:Landroid/graphics/PorterDuff$Mode;

.field public y:Landroid/content/res/ColorStateList;

.field public y0:[I

.field public z:F

.field public z0:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lj1/e;->F0:[I

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lj1/e;->G0:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f03009e

    const v1, 0x7f100299

    invoke-direct {p0, p1, p2, v0, v1}, Ls1/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lj1/e;->A:F

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lj1/e;->f0:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lj1/e;->g0:Landroid/graphics/Paint$FontMetrics;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lj1/e;->h0:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lj1/e;->i0:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lj1/e;->j0:Landroid/graphics/Path;

    const/16 p2, 0xff

    iput p2, p0, Lj1/e;->t0:I

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lj1/e;->x0:Landroid/graphics/PorterDuff$Mode;

    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lj1/e;->A0:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Ls1/g;->g(Landroid/content/Context;)V

    iput-object p1, p0, Lj1/e;->e0:Landroid/content/Context;

    new-instance p2, Ln1/h;

    invoke-direct {p2, p0}, Ln1/h;-><init>(Lj1/e;)V

    iput-object p2, p0, Lj1/e;->k0:Ln1/h;

    const-string v1, ""

    iput-object v1, p0, Lj1/e;->E:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget-object p2, p2, Ln1/h;->a:Landroid/text/TextPaint;

    iput p1, p2, Landroid/text/TextPaint;->density:F

    sget-object p1, Lj1/e;->F0:[I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object p2, p0, Lj1/e;->y0:[I

    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p2

    if-nez p2, :cond_0

    iput-object p1, p0, Lj1/e;->y0:[I

    invoke-virtual {p0}, Lj1/e;->S()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lj1/e;->u([I[I)Z

    :cond_0
    iput-boolean v0, p0, Lj1/e;->C0:Z

    sget-object p1, Lj1/e;->G0:Landroid/graphics/drawable/ShapeDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public static T(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public static r(Landroid/content/res/ColorStateList;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static s(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final A(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lw/e;

    if-eqz v2, :cond_1

    check-cast v0, Lw/e;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_4

    invoke-virtual {p0}, Lj1/e;->o()F

    move-result v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lj1/e;->o()F

    move-result p1

    invoke-static {v0}, Lj1/e;->T(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lj1/e;->R()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lj1/e;->m(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lj1/e;->t()V

    :cond_4
    return-void
.end method

.method public final B(F)V
    .locals 1

    iget v0, p0, Lj1/e;->I:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj1/e;->o()F

    move-result v0

    iput p1, p0, Lj1/e;->I:F

    invoke-virtual {p0}, Lj1/e;->o()F

    move-result p1

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lj1/e;->t()V

    :cond_0
    return-void
.end method

.method public final C(Landroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj1/e;->J:Z

    iget-object v0, p0, Lj1/e;->H:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lj1/e;->H:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lj1/e;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lw/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lj1/e;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final D(Z)V
    .locals 1

    iget-boolean v0, p0, Lj1/e;->F:Z

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lj1/e;->R()Z

    move-result v0

    iput-boolean p1, p0, Lj1/e;->F:Z

    invoke-virtual {p0}, Lj1/e;->R()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lj1/e;->m(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lj1/e;->T(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    invoke-virtual {p0}, Lj1/e;->t()V

    :cond_1
    return-void
.end method

.method public final E(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lj1/e;->B:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lj1/e;->B:Landroid/content/res/ColorStateList;

    iget-boolean v0, p0, Lj1/e;->E0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/g;->a:Ls1/f;

    iget-object v1, v0, Ls1/f;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Ls1/f;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lj1/e;->onStateChange([I)Z

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lj1/e;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final F(F)V
    .locals 1

    iget v0, p0, Lj1/e;->C:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Lj1/e;->C:F

    iget-object v0, p0, Lj1/e;->f0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean v0, p0, Lj1/e;->E0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/g;->a:Ls1/f;

    iput p1, v0, Ls1/f;->j:F

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    :cond_0
    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final G(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    iget-object v0, p0, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lw/e;

    if-eqz v2, :cond_1

    check-cast v0, Lw/e;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_5

    invoke-virtual {p0}, Lj1/e;->p()F

    move-result v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lj1/e;->D:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lj1/e;->G0:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, v1, v3, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lj1/e;->M:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Lj1/e;->p()F

    move-result p1

    invoke-static {v0}, Lj1/e;->T(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lj1/e;->S()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lj1/e;->m(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lj1/e;->t()V

    :cond_5
    return-void
.end method

.method public final H(F)V
    .locals 1

    iget v0, p0, Lj1/e;->c0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lj1/e;->c0:F

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    invoke-virtual {p0}, Lj1/e;->S()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lj1/e;->t()V

    :cond_0
    return-void
.end method

.method public final I(F)V
    .locals 1

    iget v0, p0, Lj1/e;->O:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lj1/e;->O:F

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    invoke-virtual {p0}, Lj1/e;->S()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lj1/e;->t()V

    :cond_0
    return-void
.end method

.method public final J(F)V
    .locals 1

    iget v0, p0, Lj1/e;->b0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lj1/e;->b0:F

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    invoke-virtual {p0}, Lj1/e;->S()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lj1/e;->t()V

    :cond_0
    return-void
.end method

.method public final K(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lj1/e;->N:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lj1/e;->N:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lj1/e;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lw/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lj1/e;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final L(Z)V
    .locals 1

    iget-boolean v0, p0, Lj1/e;->K:Z

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lj1/e;->S()Z

    move-result v0

    iput-boolean p1, p0, Lj1/e;->K:Z

    invoke-virtual {p0}, Lj1/e;->S()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lj1/e;->m(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lj1/e;->T(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    invoke-virtual {p0}, Lj1/e;->t()V

    :cond_1
    return-void
.end method

.method public final M(F)V
    .locals 1

    iget v0, p0, Lj1/e;->Y:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj1/e;->o()F

    move-result v0

    iput p1, p0, Lj1/e;->Y:F

    invoke-virtual {p0}, Lj1/e;->o()F

    move-result p1

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lj1/e;->t()V

    :cond_0
    return-void
.end method

.method public final N(F)V
    .locals 1

    iget v0, p0, Lj1/e;->X:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj1/e;->o()F

    move-result v0

    iput p1, p0, Lj1/e;->X:F

    invoke-virtual {p0}, Lj1/e;->o()F

    move-result p1

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lj1/e;->t()V

    :cond_0
    return-void
.end method

.method public final O(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lj1/e;->D:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lj1/e;->D:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    iput-object p1, p0, Lj1/e;->z0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lj1/e;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final P(Lp1/d;)V
    .locals 5

    iget-object v0, p0, Lj1/e;->k0:Ln1/h;

    iget-object v1, v0, Ln1/h;->b:Lj1/a;

    iget-object v2, v0, Ln1/h;->a:Landroid/text/TextPaint;

    iget-object v3, v0, Ln1/h;->f:Lp1/d;

    if-eq v3, p1, :cond_2

    iput-object p1, v0, Ln1/h;->f:Lp1/d;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lp1/d;->a()V

    iget-object v3, p1, Lp1/d;->l:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2, v3}, Lp1/d;->d(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    new-instance v3, Lp1/c;

    invoke-direct {v3, p1, v2, v1}, Lp1/c;-><init>(Lp1/d;Landroid/text/TextPaint;Lk1/a;)V

    iget-object v4, p0, Lj1/e;->e0:Landroid/content/Context;

    invoke-virtual {p1, v4, v3}, Lp1/d;->b(Landroid/content/Context;Lk1/a;)V

    iget-object v3, v0, Ln1/h;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln1/g;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ln1/g;->getState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    :cond_0
    invoke-virtual {p1, v4, v2, v1}, Lp1/d;->c(Landroid/content/Context;Landroid/text/TextPaint;Lk1/a;)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Ln1/h;->d:Z

    :cond_1
    iget-object p1, v0, Ln1/h;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln1/g;

    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Lj1/e;

    invoke-virtual {v0}, Lj1/e;->t()V

    invoke-virtual {v0}, Ls1/g;->invalidateSelf()V

    invoke-interface {p1}, Ln1/g;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lj1/e;->onStateChange([I)Z

    :cond_2
    return-void
.end method

.method public final Q()Z
    .locals 1

    iget-boolean v0, p0, Lj1/e;->R:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj1/e;->r0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final R()Z
    .locals 1

    iget-boolean v0, p0, Lj1/e;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final S()Z
    .locals 1

    iget-boolean v0, p0, Lj1/e;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v6, v0, Lj1/e;->t0:I

    if-nez v6, :cond_1

    :cond_0
    move-object v13, v0

    goto/16 :goto_c

    :cond_1
    const/16 v8, 0xff

    const/4 v9, 0x0

    if-ge v6, v8, :cond_2

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v7, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v2

    move v10, v2

    goto :goto_0

    :cond_2
    move-object/from16 v1, p1

    move v10, v9

    :goto_0
    iget-boolean v2, v0, Lj1/e;->E0:Z

    move v3, v2

    iget-object v2, v0, Lj1/e;->f0:Landroid/graphics/Paint;

    iget-object v11, v0, Lj1/e;->h0:Landroid/graphics/RectF;

    if-nez v3, :cond_3

    iget v3, v0, Lj1/e;->l0:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v11, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lj1/e;->q()F

    move-result v3

    invoke-virtual {v0}, Lj1/e;->q()F

    move-result v4

    invoke-virtual {v1, v11, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    iget-boolean v3, v0, Lj1/e;->E0:Z

    if-nez v3, :cond_5

    iget v3, v0, Lj1/e;->m0:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lj1/e;->u0:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lj1/e;->v0:Landroid/graphics/PorterDuffColorFilter;

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v11, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lj1/e;->q()F

    move-result v3

    invoke-virtual {v0}, Lj1/e;->q()F

    move-result v4

    invoke-virtual {v1, v11, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5
    iget-boolean v3, v0, Lj1/e;->E0:Z

    if-eqz v3, :cond_6

    invoke-super/range {p0 .. p1}, Ls1/g;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    iget v3, v0, Lj1/e;->C:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    const/high16 v12, 0x40000000    # 2.0f

    if-lez v3, :cond_9

    iget-boolean v3, v0, Lj1/e;->E0:Z

    if-nez v3, :cond_9

    iget v3, v0, Lj1/e;->o0:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v3, v0, Lj1/e;->E0:Z

    if-nez v3, :cond_8

    iget-object v3, v0, Lj1/e;->u0:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    iget-object v3, v0, Lj1/e;->v0:Landroid/graphics/PorterDuffColorFilter;

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_8
    iget v3, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Lj1/e;->C:F

    div-float/2addr v4, v12

    add-float/2addr v3, v4

    iget v5, v7, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    iget v13, v7, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v13, v4

    iget v14, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    sub-float/2addr v14, v4

    invoke-virtual {v11, v3, v5, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    iget v3, v0, Lj1/e;->A:F

    iget v4, v0, Lj1/e;->C:F

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    invoke-virtual {v1, v11, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_9
    iget v3, v0, Lj1/e;->p0:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v11, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-boolean v3, v0, Lj1/e;->E0:Z

    if-nez v3, :cond_a

    invoke-virtual {v0}, Lj1/e;->q()F

    move-result v3

    invoke-virtual {v0}, Lj1/e;->q()F

    move-result v4

    invoke-virtual {v1, v11, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_3
    move-object v13, v0

    goto :goto_4

    :cond_a
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, v0, Ls1/g;->a:Ls1/f;

    iget-object v14, v4, Ls1/f;->a:Ls1/k;

    iget v15, v4, Ls1/f;->i:F

    iget-object v4, v0, Ls1/g;->q:Landroidx/emoji2/text/m;

    iget-object v13, v0, Ls1/g;->r:Ls1/l;

    iget-object v5, v0, Lj1/e;->j0:Landroid/graphics/Path;

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-virtual/range {v13 .. v18}, Ls1/l;->a(Ls1/k;FLandroid/graphics/RectF;Landroidx/emoji2/text/m;Landroid/graphics/Path;)V

    invoke-virtual {v0}, Ls1/g;->e()Landroid/graphics/RectF;

    move-result-object v5

    iget-object v3, v0, Ls1/g;->a:Ls1/f;

    iget-object v4, v3, Ls1/f;->a:Ls1/k;

    move-object/from16 v3, v18

    invoke-virtual/range {v0 .. v5}, Ls1/g;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Ls1/k;Landroid/graphics/RectF;)V

    goto :goto_3

    :goto_4
    invoke-virtual {v13}, Lj1/e;->R()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11}, Lj1/e;->n(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget v0, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v13, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v13, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_b
    invoke-virtual {v13}, Lj1/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v13, v7, v11}, Lj1/e;->n(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget v0, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v13, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v13, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_c
    iget-boolean v0, v13, Lj1/e;->C0:Z

    if-eqz v0, :cond_17

    iget-object v0, v13, Lj1/e;->E:Ljava/lang/CharSequence;

    if-eqz v0, :cond_17

    iget-object v0, v13, Lj1/e;->i0:Landroid/graphics/PointF;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/PointF;->set(FF)V

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, v13, Lj1/e;->E:Ljava/lang/CharSequence;

    iget-object v4, v13, Lj1/e;->k0:Ln1/h;

    if-eqz v3, :cond_e

    iget v3, v13, Lj1/e;->W:F

    invoke-virtual {v13}, Lj1/e;->o()F

    move-result v5

    add-float/2addr v5, v3

    iget v3, v13, Lj1/e;->Z:F

    add-float/2addr v5, v3

    invoke-static {v13}, Lw/c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    if-nez v3, :cond_d

    iget v3, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/PointF;->x:F

    goto :goto_5

    :cond_d
    iget v2, v7, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v5

    iput v2, v0, Landroid/graphics/PointF;->x:F

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_5
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v4, Ln1/h;->a:Landroid/text/TextPaint;

    iget-object v14, v13, Lj1/e;->g0:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v5, v14, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v14, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v5, v14

    div-float/2addr v5, v12

    sub-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/PointF;->y:F

    :cond_e
    invoke-virtual {v11}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v3, v13, Lj1/e;->E:Ljava/lang/CharSequence;

    if-eqz v3, :cond_10

    iget v3, v13, Lj1/e;->W:F

    invoke-virtual {v13}, Lj1/e;->o()F

    move-result v5

    add-float/2addr v5, v3

    iget v3, v13, Lj1/e;->Z:F

    add-float/2addr v5, v3

    iget v3, v13, Lj1/e;->d0:F

    invoke-virtual {v13}, Lj1/e;->p()F

    move-result v14

    add-float/2addr v14, v3

    iget v3, v13, Lj1/e;->a0:F

    add-float/2addr v14, v3

    invoke-static {v13}, Lw/c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    if-nez v3, :cond_f

    iget v3, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v5

    iput v3, v11, Landroid/graphics/RectF;->left:F

    iget v3, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v14

    iput v3, v11, Landroid/graphics/RectF;->right:F

    goto :goto_6

    :cond_f
    iget v3, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v14

    iput v3, v11, Landroid/graphics/RectF;->left:F

    iget v3, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    iput v3, v11, Landroid/graphics/RectF;->right:F

    :goto_6
    iget v3, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v11, Landroid/graphics/RectF;->top:F

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, v11, Landroid/graphics/RectF;->bottom:F

    :cond_10
    iget-object v3, v4, Ln1/h;->f:Lp1/d;

    move v5, v6

    iget-object v6, v4, Ln1/h;->a:Landroid/text/TextPaint;

    if-eqz v3, :cond_11

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    iput-object v3, v6, Landroid/text/TextPaint;->drawableState:[I

    iget-object v3, v4, Ln1/h;->f:Lp1/d;

    iget-object v14, v4, Ln1/h;->b:Lj1/a;

    iget-object v15, v13, Lj1/e;->e0:Landroid/content/Context;

    invoke-virtual {v3, v15, v6, v14}, Lp1/d;->c(Landroid/content/Context;Landroid/text/TextPaint;Lk1/a;)V

    :cond_11
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, v13, Lj1/e;->E:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v4, Ln1/h;->d:Z

    if-nez v3, :cond_12

    iget v2, v4, Ln1/h;->c:F

    goto :goto_8

    :cond_12
    if-nez v2, :cond_13

    move v2, v5

    goto :goto_7

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v6, v2, v9, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    :goto_7
    iput v2, v4, Ln1/h;->c:F

    iput-boolean v9, v4, Ln1/h;->d:Z

    :goto_8
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-le v2, v3, :cond_14

    const/4 v2, 0x1

    move v14, v2

    goto :goto_9

    :cond_14
    move v14, v9

    :goto_9
    if-eqz v14, :cond_15

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move v15, v2

    goto :goto_a

    :cond_15
    move v15, v9

    :goto_a
    iget-object v2, v13, Lj1/e;->E:Ljava/lang/CharSequence;

    if-eqz v14, :cond_16

    iget-object v3, v13, Lj1/e;->B0:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_16

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, v13, Lj1/e;->B0:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v6, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move-object v1, v0

    if-eqz v14, :cond_17

    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_17
    invoke-virtual {v13}, Lj1/e;->S()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v11}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {v13}, Lj1/e;->S()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, v13, Lj1/e;->d0:F

    iget v2, v13, Lj1/e;->c0:F

    add-float/2addr v0, v2

    invoke-static {v13}, Lw/c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_18

    iget v2, v7, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, v11, Landroid/graphics/RectF;->right:F

    iget v0, v13, Lj1/e;->O:F

    sub-float/2addr v2, v0

    iput v2, v11, Landroid/graphics/RectF;->left:F

    goto :goto_b

    :cond_18
    iget v2, v7, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, v11, Landroid/graphics/RectF;->left:F

    iget v0, v13, Lj1/e;->O:F

    add-float/2addr v2, v0

    iput v2, v11, Landroid/graphics/RectF;->right:F

    :goto_b
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    iget v2, v13, Lj1/e;->O:F

    div-float v3, v2, v12

    sub-float/2addr v0, v3

    iput v0, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    iput v0, v11, Landroid/graphics/RectF;->bottom:F

    :cond_19
    iget v0, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v13, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v13, Lj1/e;->M:Landroid/graphics/drawable/RippleDrawable;

    iget-object v4, v13, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, v13, Lj1/e;->M:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-object v3, v13, Lj1/e;->M:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1a
    iget v0, v13, Lj1/e;->t0:I

    if-ge v0, v8, :cond_1b

    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1b
    :goto_c
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget v0, p0, Lj1/e;->t0:I

    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lj1/e;->u0:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lj1/e;->z:F

    float-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 6

    iget v0, p0, Lj1/e;->W:F

    invoke-virtual {p0}, Lj1/e;->o()F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lj1/e;->Z:F

    add-float/2addr v1, v0

    iget-object v0, p0, Lj1/e;->E:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lj1/e;->k0:Ln1/h;

    iget-boolean v3, v2, Ln1/h;->d:Z

    if-nez v3, :cond_0

    iget v0, v2, Ln1/h;->c:F

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, v2, Ln1/h;->a:Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v0, v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    :goto_0
    iput v0, v2, Ln1/h;->c:F

    iput-boolean v3, v2, Ln1/h;->d:Z

    :goto_1
    add-float/2addr v0, v1

    iget v1, p0, Lj1/e;->a0:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lj1/e;->p()F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lj1/e;->d0:F

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lj1/e;->D0:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 8

    iget-boolean v0, p0, Lj1/e;->E0:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ls1/g;->getOutline(Landroid/graphics/Outline;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lj1/e;->A:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    move-object v2, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lj1/e;->getIntrinsicWidth()I

    move-result v5

    iget v0, p0, Lj1/e;->z:F

    float-to-int v6, v0

    iget v7, p0, Lj1/e;->A:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :goto_0
    iget p1, p0, Lj1/e;->t0:I

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final isStateful()Z
    .locals 1

    iget-object v0, p0, Lj1/e;->x:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lj1/e;->r(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lj1/e;->y:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lj1/e;->r(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lj1/e;->B:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lj1/e;->r(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lj1/e;->k0:Ln1/h;

    iget-object v0, v0, Ln1/h;->f:Lp1/d;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lp1/d;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lj1/e;->R:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lj1/e;->Q:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lj1/e;->s(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lj1/e;->s(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lj1/e;->w0:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lj1/e;->r(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final m(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-static {p0}, Lw/c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Lw/c;->b(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj1/e;->y0:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget-object v0, p0, Lj1/e;->N:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lw/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    iget-object v0, p0, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lj1/e;->J:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lj1/e;->H:Landroid/content/res/ColorStateList;

    invoke-static {v0, p1}, Lw/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final n(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lj1/e;->R()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj1/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget v0, p0, Lj1/e;->W:F

    iget v1, p0, Lj1/e;->X:F

    add-float/2addr v0, v1

    invoke-static {p0}, Lw/c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lj1/e;->I:F

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lj1/e;->I:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v0, p0, Lj1/e;->I:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final o()F
    .locals 2

    invoke-virtual {p0}, Lj1/e;->R()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj1/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget v0, p0, Lj1/e;->X:F

    iget v1, p0, Lj1/e;->I:F

    add-float/2addr v0, v1

    iget v1, p0, Lj1/e;->Y:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final onLayoutDirectionChanged(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    invoke-virtual {p0}, Lj1/e;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lw/c;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lj1/e;->Q()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lw/c;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lj1/e;->S()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lw/c;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final onLevelChange(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    invoke-virtual {p0}, Lj1/e;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lj1/e;->Q()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lj1/e;->S()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public final onStateChange([I)Z
    .locals 1

    iget-boolean v0, p0, Lj1/e;->E0:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ls1/g;->onStateChange([I)Z

    :cond_0
    iget-object v0, p0, Lj1/e;->y0:[I

    invoke-virtual {p0, p1, v0}, Lj1/e;->u([I[I)Z

    move-result p1

    return p1
.end method

.method public final p()F
    .locals 2

    invoke-virtual {p0}, Lj1/e;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lj1/e;->b0:F

    iget v1, p0, Lj1/e;->O:F

    add-float/2addr v0, v1

    iget v1, p0, Lj1/e;->c0:F

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()F
    .locals 2

    iget-boolean v0, p0, Lj1/e;->E0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/g;->a:Ls1/f;

    iget-object v0, v0, Ls1/f;->a:Ls1/k;

    iget-object v0, v0, Ls1/k;->e:Ls1/c;

    invoke-virtual {p0}, Ls1/g;->e()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Ls1/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lj1/e;->A:F

    return v0
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget v0, p0, Lj1/e;->t0:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lj1/e;->t0:I

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lj1/e;->u0:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lj1/e;->u0:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lj1/e;->w0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lj1/e;->w0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lj1/e;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    iget-object v0, p0, Lj1/e;->x0:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lj1/e;->x0:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lj1/e;->w0:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lj1/e;->v0:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    invoke-virtual {p0}, Lj1/e;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lj1/e;->Q()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lj1/e;->S()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lj1/e;->A0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj1/d;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iget v1, v0, Lcom/google/android/material/chip/Chip;->p:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->b(I)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public final u([I[I)Z
    .locals 11

    invoke-super {p0, p1}, Ls1/g;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lj1/e;->x:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lj1/e;->l0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lj1/e;->l0:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    iput v1, p0, Lj1/e;->l0:I

    move v0, v4

    :cond_1
    iget-object v3, p0, Lj1/e;->y:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget v5, p0, Lj1/e;->m0:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iget v5, p0, Lj1/e;->m0:I

    if-eq v5, v3, :cond_3

    iput v3, p0, Lj1/e;->m0:I

    move v0, v4

    :cond_3
    invoke-static {v3, v1}, Lv/a;->b(II)I

    move-result v1

    iget v3, p0, Lj1/e;->n0:I

    if-eq v3, v1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    iget-object v5, p0, Ls1/g;->a:Ls1/f;

    iget-object v5, v5, Ls1/f;->c:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_6

    iput v1, p0, Lj1/e;->n0:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls1/g;->i(Landroid/content/res/ColorStateList;)V

    move v0, v4

    :cond_6
    iget-object v1, p0, Lj1/e;->B:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    iget v3, p0, Lj1/e;->o0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    iget v3, p0, Lj1/e;->o0:I

    if-eq v3, v1, :cond_8

    iput v1, p0, Lj1/e;->o0:I

    move v0, v4

    :cond_8
    iget-object v1, p0, Lj1/e;->z0:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_f

    array-length v1, p1

    const/4 v3, 0x0

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_5
    const/4 v8, 0x1

    if-ge v5, v1, :cond_d

    aget v9, p1, v5

    const v10, 0x101009e

    if-ne v9, v10, :cond_9

    move v6, v8

    goto :goto_7

    :cond_9
    const v10, 0x101009c

    if-ne v9, v10, :cond_a

    :goto_6
    move v7, v8

    goto :goto_7

    :cond_a
    const v10, 0x10100a7

    if-ne v9, v10, :cond_b

    goto :goto_6

    :cond_b
    const v10, 0x1010367

    if-ne v9, v10, :cond_c

    goto :goto_6

    :cond_c
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_d
    if-eqz v6, :cond_e

    if-eqz v7, :cond_e

    move v3, v8

    :cond_e
    if-eqz v3, :cond_f

    iget-object v1, p0, Lj1/e;->z0:Landroid/content/res/ColorStateList;

    iget v3, p0, Lj1/e;->p0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_8

    :cond_f
    move v1, v2

    :goto_8
    iget v3, p0, Lj1/e;->p0:I

    if-eq v3, v1, :cond_10

    iput v1, p0, Lj1/e;->p0:I

    :cond_10
    iget-object v1, p0, Lj1/e;->k0:Ln1/h;

    iget-object v1, v1, Ln1/h;->f:Lp1/d;

    if-eqz v1, :cond_11

    iget-object v1, v1, Lp1/d;->b:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_11

    iget v3, p0, Lj1/e;->q0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_9

    :cond_11
    move v1, v2

    :goto_9
    iget v3, p0, Lj1/e;->q0:I

    if-eq v3, v1, :cond_12

    iput v1, p0, Lj1/e;->q0:I

    move v0, v4

    :cond_12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_b

    :cond_13
    array-length v3, v1

    move v5, v2

    :goto_a
    if-ge v5, v3, :cond_15

    aget v6, v1, v5

    const v7, 0x10100a0

    if-ne v6, v7, :cond_14

    iget-boolean v1, p0, Lj1/e;->Q:Z

    if-eqz v1, :cond_15

    move v1, v4

    goto :goto_c

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_15
    :goto_b
    move v1, v2

    :goto_c
    iget-boolean v3, p0, Lj1/e;->r0:Z

    if-eq v3, v1, :cond_17

    iget-object v3, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_17

    invoke-virtual {p0}, Lj1/e;->o()F

    move-result v0

    iput-boolean v1, p0, Lj1/e;->r0:Z

    invoke-virtual {p0}, Lj1/e;->o()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_16

    move v0, v4

    move v1, v0

    goto :goto_d

    :cond_16
    move v1, v2

    move v0, v4

    goto :goto_d

    :cond_17
    move v1, v2

    :goto_d
    iget-object v3, p0, Lj1/e;->w0:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_18

    iget v5, p0, Lj1/e;->s0:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_e

    :cond_18
    move v3, v2

    :goto_e
    iget v5, p0, Lj1/e;->s0:I

    if-eq v5, v3, :cond_1b

    iput v3, p0, Lj1/e;->s0:I

    iget-object v0, p0, Lj1/e;->w0:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lj1/e;->x0:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1a

    if-nez v3, :cond_19

    goto :goto_f

    :cond_19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v5, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_10

    :cond_1a
    :goto_f
    const/4 v5, 0x0

    :goto_10
    iput-object v5, p0, Lj1/e;->v0:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_11

    :cond_1b
    move v4, v0

    :goto_11
    iget-object v0, p0, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lj1/e;->s(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lj1/e;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_1c
    iget-object v0, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lj1/e;->s(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_1d
    iget-object v0, p0, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lj1/e;->s(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1e

    array-length v0, p1

    array-length v3, p2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lj1/e;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_1e
    iget-object p1, p0, Lj1/e;->M:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Lj1/e;->s(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lj1/e;->M:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_1f
    if-eqz v4, :cond_20

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    :cond_20
    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lj1/e;->t()V

    :cond_21
    return v4
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final v(Z)V
    .locals 1

    iget-boolean v0, p0, Lj1/e;->Q:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lj1/e;->Q:Z

    invoke-virtual {p0}, Lj1/e;->o()F

    move-result v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lj1/e;->r0:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj1/e;->r0:Z

    :cond_0
    invoke-virtual {p0}, Lj1/e;->o()F

    move-result p1

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lj1/e;->t()V

    :cond_1
    return-void
.end method

.method public final w(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lj1/e;->o()F

    move-result v0

    iput-object p1, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lj1/e;->o()F

    move-result p1

    iget-object v1, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lj1/e;->T(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lj1/e;->m(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lj1/e;->t()V

    :cond_0
    return-void
.end method

.method public final x(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lj1/e;->T:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lj1/e;->T:Landroid/content/res/ColorStateList;

    iget-boolean v0, p0, Lj1/e;->R:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lj1/e;->Q:Z

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Lw/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lj1/e;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final y(Z)V
    .locals 1

    iget-boolean v0, p0, Lj1/e;->R:Z

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lj1/e;->Q()Z

    move-result v0

    iput-boolean p1, p0, Lj1/e;->R:Z

    invoke-virtual {p0}, Lj1/e;->Q()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lj1/e;->m(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lj1/e;->S:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lj1/e;->T(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Ls1/g;->invalidateSelf()V

    invoke-virtual {p0}, Lj1/e;->t()V

    :cond_1
    return-void
.end method

.method public final z(F)V
    .locals 1

    iget v0, p0, Lj1/e;->A:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lj1/e;->A:F

    iget-object v0, p0, Ls1/g;->a:Ls1/f;

    iget-object v0, v0, Ls1/f;->a:Ls1/k;

    invoke-virtual {v0, p1}, Ls1/k;->f(F)Ls1/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls1/g;->setShapeAppearanceModel(Ls1/k;)V

    :cond_0
    return-void
.end method
