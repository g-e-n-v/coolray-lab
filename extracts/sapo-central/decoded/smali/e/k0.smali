.class public final Le/k0;
.super La1/b;
.source "SourceFile"

# interfaces
.implements Li/d;


# static fields
.field public static final y:Landroid/view/animation/AccelerateInterpolator;

.field public static final z:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public d:Landroidx/appcompat/widget/ActionBarContainer;

.field public e:Li/j1;

.field public f:Landroidx/appcompat/widget/ActionBarContextView;

.field public final g:Landroid/view/View;

.field public h:Z

.field public i:Le/j0;

.field public j:Le/j0;

.field public k:Landroidx/activity/result/c;

.field public l:Z

.field public final m:Ljava/util/ArrayList;

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Lg/k;

.field public t:Z

.field public u:Z

.field public final v:Le/i0;

.field public final w:Le/i0;

.field public final x:Landroidx/emoji2/text/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Le/k0;->y:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Le/k0;->z:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/k0;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Le/k0;->n:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Le/k0;->o:Z

    .line 6
    iput-boolean v0, p0, Le/k0;->r:Z

    .line 7
    new-instance v0, Le/i0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/i0;-><init>(Le/k0;I)V

    iput-object v0, p0, Le/k0;->v:Le/i0;

    .line 8
    new-instance v0, Le/i0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Le/i0;-><init>(Le/k0;I)V

    iput-object v0, p0, Le/k0;->w:Le/i0;

    .line 9
    new-instance v0, Landroidx/emoji2/text/m;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroidx/emoji2/text/m;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Le/k0;->x:Landroidx/emoji2/text/m;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Le/k0;->g0(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Le/k0;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/k0;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Le/k0;->n:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Le/k0;->o:Z

    .line 19
    iput-boolean v0, p0, Le/k0;->r:Z

    .line 20
    new-instance v0, Le/i0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/i0;-><init>(Le/k0;I)V

    iput-object v0, p0, Le/k0;->v:Le/i0;

    .line 21
    new-instance v0, Le/i0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Le/i0;-><init>(Le/k0;I)V

    iput-object v0, p0, Le/k0;->w:Le/i0;

    .line 22
    new-instance v0, Landroidx/emoji2/text/m;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroidx/emoji2/text/m;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Le/k0;->x:Landroidx/emoji2/text/m;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k0;->g0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final e0(Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Le/k0;->q:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Le/k0;->q:Z

    iget-object v2, p0, Le/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Le/k0;->j0(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Le/k0;->q:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Le/k0;->q:Z

    iget-object v1, p0, Le/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_2
    invoke-virtual {p0, v0}, Le/k0;->j0(Z)V

    :cond_3
    :goto_0
    iget-object v1, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v2, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lc0/c0;->c(Landroid/view/View;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-eqz v1, :cond_7

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x64

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/k0;->e:Li/j1;

    check-cast p1, Li/l3;

    iget-object v1, p1, Li/l3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, Lc0/p0;->a(Landroid/view/View;)Lc0/w0;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc0/w0;->a(F)V

    invoke-virtual {v1, v6, v7}, Lc0/w0;->c(J)V

    new-instance v2, Lg/j;

    invoke-direct {v2, p1, v3}, Lg/j;-><init>(Li/l3;I)V

    invoke-virtual {v1, v2}, Lc0/w0;->d(Lc0/x0;)V

    iget-object p1, p0, Le/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)Lc0/w0;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Le/k0;->e:Li/j1;

    check-cast p1, Li/l3;

    iget-object v1, p1, Li/l3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, Lc0/p0;->a(Landroid/view/View;)Lc0/w0;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lc0/w0;->a(F)V

    invoke-virtual {v1, v4, v5}, Lc0/w0;->c(J)V

    new-instance v3, Lg/j;

    invoke-direct {v3, p1, v0}, Lg/j;-><init>(Li/l3;I)V

    invoke-virtual {v1, v3}, Lc0/w0;->d(Lc0/x0;)V

    iget-object p1, p0, Le/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)Lc0/w0;

    move-result-object p1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    :goto_1
    new-instance v0, Lg/k;

    invoke-direct {v0}, Lg/k;-><init>()V

    iget-object v2, v0, Lg/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lc0/w0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v3

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x0

    :goto_2
    iget-object v1, p1, Lc0/w0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_6
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lg/k;->b()V

    return-void

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p0, Le/k0;->e:Li/j1;

    check-cast p1, Li/l3;

    iget-object p1, p1, Li/l3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Le/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void

    :cond_8
    iget-object p1, p0, Le/k0;->e:Li/j1;

    check-cast p1, Li/l3;

    iget-object p1, p1, Li/l3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Le/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

.method public final f0()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Le/k0;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Le/k0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f03000a

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Le/k0;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Le/k0;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/k0;->a:Landroid/content/Context;

    iput-object v0, p0, Le/k0;->b:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object v0, p0, Le/k0;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final g0(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0900ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Le/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Li/d;)V

    :cond_0
    const v0, 0x7f090030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Li/j1;

    if-eqz v1, :cond_1

    check-cast v0, Li/j1;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_8

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Li/j1;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Le/k0;->e:Li/j1;

    const v0, 0x7f090038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Le/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    const v0, 0x7f090032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Le/k0;->e:Li/j1;

    if-eqz v0, :cond_7

    iget-object v1, p0, Le/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    check-cast v0, Li/l3;

    iget-object p1, v0, Li/l3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/k0;->a:Landroid/content/Context;

    iget-object v0, p0, Le/k0;->e:Li/j1;

    check-cast v0, Li/l3;

    iget v0, v0, Li/l3;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iput-boolean v1, p0, Le/k0;->h:Z

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    iget-object v0, p0, Le/k0;->e:Li/j1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f040000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Le/k0;->i0(Z)V

    iget-object p1, p0, Le/k0;->a:Landroid/content/Context;

    sget-object v0, Ld/a;->a:[I

    const v3, 0x7f030005

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Le/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Le/k0;->u:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    iget-object v1, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v2, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v0}, Lc0/f0;->s(Landroid/view/View;F)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-class v0, Le/k0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string v0, "null"

    :goto_3
    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h0(Z)V
    .locals 4

    iget-boolean v0, p0, Le/k0;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Le/k0;->e:Li/j1;

    check-cast v1, Li/l3;

    iget v2, v1, Li/l3;->b:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Le/k0;->h:Z

    and-int/2addr p1, v0

    and-int/lit8 v0, v2, -0x5

    or-int/2addr p1, v0

    invoke-virtual {v1, p1}, Li/l3;->a(I)V

    :cond_1
    return-void
.end method

.method public final i0(Z)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Le/k0;->e:Li/j1;

    check-cast p1, Li/l3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Li/n2;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Li/n2;)V

    iget-object p1, p0, Le/k0;->e:Li/j1;

    check-cast p1, Li/l3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object p1, p0, Le/k0;->e:Li/j1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Le/k0;->e:Li/j1;

    check-cast p1, Li/l3;

    iget-object p1, p1, Li/l3;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    iget-object p1, p0, Le/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public final j0(Z)V
    .locals 11

    iget-boolean v0, p0, Le/k0;->p:Z

    iget-boolean v1, p0, Le/k0;->q:Z

    const-wide/16 v2, 0xfa

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Le/k0;->x:Landroidx/emoji2/text/m;

    iget-object v7, p0, Le/k0;->g:Landroid/view/View;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz v0, :cond_c

    iget-boolean v0, p0, Le/k0;->r:Z

    if-eqz v0, :cond_19

    iput-boolean v9, p0, Le/k0;->r:Z

    iget-object v0, p0, Le/k0;->s:Lg/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/k;->a()V

    :cond_1
    iget v0, p0, Le/k0;->n:I

    iget-object v1, p0, Le/k0;->v:Le/i0;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Le/k0;->t:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_b

    :cond_2
    iget-object v0, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Lg/k;

    invoke-direct {v0}, Lg/k;-><init>()V

    iget-object v5, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    if-eqz p1, :cond_3

    filled-new-array {v9, v9}, [I

    move-result-object p1

    iget-object v9, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v9, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v8

    int-to-float p1, p1

    sub-float/2addr v5, p1

    :cond_3
    iget-object p1, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Lc0/p0;->a(Landroid/view/View;)Lc0/w0;

    move-result-object p1

    invoke-virtual {p1, v5}, Lc0/w0;->e(F)V

    iget-object v8, p1, Lc0/w0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_5

    if-eqz v6, :cond_4

    new-instance v4, Lc0/t0;

    invoke-direct {v4, v6, v8}, Lc0/t0;-><init>(Landroidx/emoji2/text/m;Landroid/view/View;)V

    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-static {v6, v4}, Lc0/v0;->a(Landroid/view/ViewPropertyAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_5
    iget-boolean v4, v0, Lg/k;->e:Z

    iget-object v6, v0, Lg/k;->a:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-boolean p1, p0, Le/k0;->o:Z

    if-eqz p1, :cond_7

    if-eqz v7, :cond_7

    invoke-static {v7}, Lc0/p0;->a(Landroid/view/View;)Lc0/w0;

    move-result-object p1

    invoke-virtual {p1, v5}, Lc0/w0;->e(F)V

    iget-boolean v4, v0, Lg/k;->e:Z

    if-nez v4, :cond_7

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean p1, v0, Lg/k;->e:Z

    if-nez p1, :cond_8

    sget-object v4, Le/k0;->y:Landroid/view/animation/AccelerateInterpolator;

    iput-object v4, v0, Lg/k;->c:Landroid/view/animation/Interpolator;

    :cond_8
    if-nez p1, :cond_9

    iput-wide v2, v0, Lg/k;->b:J

    :cond_9
    if-nez p1, :cond_a

    iput-object v1, v0, Lg/k;->d:Lc0/x0;

    :cond_a
    iput-object v0, p0, Le/k0;->s:Lg/k;

    invoke-virtual {v0}, Lg/k;->b()V

    return-void

    :cond_b
    invoke-virtual {v1}, Le/i0;->b()V

    return-void

    :cond_c
    :goto_0
    iget-boolean v0, p0, Le/k0;->r:Z

    if-nez v0, :cond_19

    iput-boolean v8, p0, Le/k0;->r:Z

    iget-object v0, p0, Le/k0;->s:Lg/k;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lg/k;->a()V

    :cond_d
    iget-object v0, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Le/k0;->n:I

    iget-object v1, p0, Le/k0;->w:Le/i0;

    const/4 v10, 0x0

    if-nez v0, :cond_17

    iget-boolean v0, p0, Le/k0;->t:Z

    if-nez v0, :cond_e

    if-eqz p1, :cond_17

    :cond_e
    iget-object v0, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_f

    filled-new-array {v9, v9}, [I

    move-result-object p1

    iget-object v5, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v8

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_f
    iget-object p1, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, Lg/k;

    invoke-direct {p1}, Lg/k;-><init>()V

    iget-object v5, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v5}, Lc0/p0;->a(Landroid/view/View;)Lc0/w0;

    move-result-object v5

    invoke-virtual {v5, v10}, Lc0/w0;->e(F)V

    iget-object v8, v5, Lc0/w0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_11

    if-eqz v6, :cond_10

    new-instance v4, Lc0/t0;

    invoke-direct {v4, v6, v8}, Lc0/t0;-><init>(Landroidx/emoji2/text/m;Landroid/view/View;)V

    :cond_10
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-static {v6, v4}, Lc0/v0;->a(Landroid/view/ViewPropertyAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_11
    iget-boolean v4, p1, Lg/k;->e:Z

    iget-object v6, p1, Lg/k;->a:Ljava/util/ArrayList;

    if-nez v4, :cond_12

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-boolean v4, p0, Le/k0;->o:Z

    if-eqz v4, :cond_13

    if-eqz v7, :cond_13

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v7}, Lc0/p0;->a(Landroid/view/View;)Lc0/w0;

    move-result-object v0

    invoke-virtual {v0, v10}, Lc0/w0;->e(F)V

    iget-boolean v4, p1, Lg/k;->e:Z

    if-nez v4, :cond_13

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-boolean v0, p1, Lg/k;->e:Z

    if-nez v0, :cond_14

    sget-object v4, Le/k0;->z:Landroid/view/animation/DecelerateInterpolator;

    iput-object v4, p1, Lg/k;->c:Landroid/view/animation/Interpolator;

    :cond_14
    if-nez v0, :cond_15

    iput-wide v2, p1, Lg/k;->b:J

    :cond_15
    if-nez v0, :cond_16

    iput-object v1, p1, Lg/k;->d:Lc0/x0;

    :cond_16
    iput-object p1, p0, Le/k0;->s:Lg/k;

    invoke-virtual {p1}, Lg/k;->b()V

    goto :goto_1

    :cond_17
    iget-object p1, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Le/k0;->o:Z

    if-eqz p1, :cond_18

    if-eqz v7, :cond_18

    invoke-virtual {v7, v10}, Landroid/view/View;->setTranslationY(F)V

    :cond_18
    invoke-virtual {v1}, Le/i0;->b()V

    :goto_1
    iget-object p1, p0, Le/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_19

    sget-object v0, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lc0/d0;->c(Landroid/view/View;)V

    :cond_19
    return-void
.end method
