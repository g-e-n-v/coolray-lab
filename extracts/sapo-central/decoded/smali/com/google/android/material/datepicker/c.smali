.class public final Lcom/google/android/material/datepicker/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILs1/k;Landroid/graphics/Rect;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, La1/b;->k(I)V

    .line 7
    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, La1/b;->k(I)V

    .line 8
    iget v0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, La1/b;->k(I)V

    .line 9
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, La1/b;->k(I)V

    .line 10
    iput-object p6, p0, Lcom/google/android/material/datepicker/c;->b:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Lcom/google/android/material/datepicker/c;->c:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/google/android/material/datepicker/c;->d:Ljava/lang/Object;

    .line 13
    iput-object p3, p0, Lcom/google/android/material/datepicker/c;->e:Ljava/lang/Object;

    .line 14
    iput p4, p0, Lcom/google/android/material/datepicker/c;->a:I

    .line 15
    iput-object p5, p0, Lcom/google/android/material/datepicker/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/material/datepicker/c;->a:I

    .line 3
    iput-object p1, p0, Lcom/google/android/material/datepicker/c;->b:Ljava/lang/Object;

    .line 4
    invoke-static {}, Li/t;->a()Li/t;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/content/Context;I)Lcom/google/android/material/datepicker/c;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Cannot create a CalendarItemStyle with a styleResId of 0"

    invoke-static {v3, v2}, La1/b;->j(Ljava/lang/String;Z)V

    sget-object v2, Lb1/a;->k:[I

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v2, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lk1/a;->z(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/16 v0, 0x9

    invoke-static {p0, p1, v0}, Lk1/a;->z(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    const/4 v0, 0x7

    invoke-static {p0, p1, v0}, Lk1/a;->z(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    new-instance v3, Ls1/a;

    int-to-float v1, v1

    invoke-direct {v3, v1}, Ls1/a;-><init>(F)V

    invoke-static {p0, v0, v2, v3}, Ls1/k;->a(Landroid/content/Context;IILs1/a;)Ls1/j;

    move-result-object p0

    invoke-virtual {p0}, Ls1/j;->a()Ls1/k;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v5, Lcom/google/android/material/datepicker/c;

    invoke-direct/range {v5 .. v11}, Lcom/google/android/material/datepicker/c;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILs1/k;Landroid/graphics/Rect;)V

    return-object v5
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/google/android/material/datepicker/c;->d:Ljava/lang/Object;

    check-cast v2, Li/b3;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/material/datepicker/c;->f:Ljava/lang/Object;

    check-cast v2, Li/b3;

    if-nez v2, :cond_0

    new-instance v2, Li/b3;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/datepicker/c;->f:Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/datepicker/c;->f:Ljava/lang/Object;

    check-cast v2, Li/b3;

    const/4 v3, 0x0

    iput-object v3, v2, Li/b3;->a:Landroid/content/res/ColorStateList;

    const/4 v4, 0x0

    iput-boolean v4, v2, Li/b3;->d:Z

    iput-object v3, v2, Li/b3;->b:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v4, v2, Li/b3;->c:Z

    sget-object v3, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lc0/f0;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iput-boolean v4, v2, Li/b3;->d:Z

    iput-object v3, v2, Li/b3;->a:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-static {v0}, Lc0/f0;->h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    if-eqz v3, :cond_2

    iput-boolean v4, v2, Li/b3;->c:Z

    iput-object v3, v2, Li/b3;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    iget-boolean v3, v2, Li/b3;->d:Z

    if-nez v3, :cond_3

    iget-boolean v3, v2, Li/b3;->c:Z

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v1, v2, v0}, Li/t;->e(Landroid/graphics/drawable/Drawable;Li/b3;[I)V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/google/android/material/datepicker/c;->e:Ljava/lang/Object;

    check-cast v2, Li/b3;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v1, v2, v0}, Li/t;->e(Landroid/graphics/drawable/Drawable;Li/b3;[I)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/google/android/material/datepicker/c;->d:Ljava/lang/Object;

    check-cast v2, Li/b3;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v1, v2, v0}, Li/t;->e(Landroid/graphics/drawable/Drawable;Li/b3;[I)V

    :cond_6
    return-void
.end method

.method public c()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->e:Ljava/lang/Object;

    check-cast v0, Li/b3;

    if-eqz v0, :cond_0

    iget-object v0, v0, Li/b3;->a:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->e:Ljava/lang/Object;

    check-cast v0, Li/b3;

    if-eqz v0, :cond_0

    iget-object v0, v0, Li/b3;->b:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Landroid/util/AttributeSet;I)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Ld/a;->z:[I

    invoke-static {v1, p1, v4, p2}, Landroidx/fragment/app/f;->v(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/fragment/app/f;

    move-result-object v1

    iget-object v2, v1, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/google/android/material/datepicker/c;->b:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, v1, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroid/content/res/TypedArray;

    move-object v5, p1

    move v7, p2

    invoke-static/range {v2 .. v7}, Lc0/p0;->h(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v2, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {v8, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/datepicker/c;->a:I

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->c:Ljava/lang/Object;

    check-cast p1, Li/t;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v3, p0, Lcom/google/android/material/datepicker/c;->a:I

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p1, Li/t;->a:Li/k2;

    invoke-virtual {v4, p2, v3}, Li/k2;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/c;->h(Landroid/content/res/ColorStateList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p2

    :cond_0
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/f;->j(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Lc0/f0;->q(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v8, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Li/k1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-static {v0, p1}, Lc0/f0;->r(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/f;->x()V

    return-void

    :goto_1
    invoke-virtual {v1}, Landroidx/fragment/app/f;->x()V

    throw p1
.end method

.method public f()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/datepicker/c;->a:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/c;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/c;->a()V

    return-void
.end method

.method public g(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/datepicker/c;->a:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->c:Ljava/lang/Object;

    check-cast v0, Li/t;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/datepicker/c;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Li/t;->a:Li/k2;

    invoke-virtual {v2, v1, p1}, Li/k2;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/c;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/c;->a()V

    return-void
.end method

.method public h(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->d:Ljava/lang/Object;

    check-cast v0, Li/b3;

    if-nez v0, :cond_0

    new-instance v0, Li/b3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/c;->d:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->d:Ljava/lang/Object;

    check-cast v0, Li/b3;

    iput-object p1, v0, Li/b3;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Li/b3;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/datepicker/c;->d:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/c;->a()V

    return-void
.end method

.method public i(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->e:Ljava/lang/Object;

    check-cast v0, Li/b3;

    if-nez v0, :cond_0

    new-instance v0, Li/b3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/c;->e:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->e:Ljava/lang/Object;

    check-cast v0, Li/b3;

    iput-object p1, v0, Li/b3;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Li/b3;->d:Z

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/c;->a()V

    return-void
.end method

.method public j(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->e:Ljava/lang/Object;

    check-cast v0, Li/b3;

    if-nez v0, :cond_0

    new-instance v0, Li/b3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/c;->e:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->e:Ljava/lang/Object;

    check-cast v0, Li/b3;

    iput-object p1, v0, Li/b3;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Li/b3;->c:Z

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/c;->a()V

    return-void
.end method
