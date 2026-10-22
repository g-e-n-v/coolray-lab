.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lo/e;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:Lq/m;

.field public k:Landroidx/activity/result/c;

.field public final l:I

.field public m:Ljava/util/HashMap;

.field public final n:Landroid/util/SparseArray;

.field public final o:Lq/f;

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    new-instance v0, Lo/e;

    invoke-direct {v0}, Lo/d;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lo/e;->j0:Ljava/util/ArrayList;

    new-instance v2, Landroidx/fragment/app/f;

    invoke-direct {v2, v0}, Landroidx/fragment/app/f;-><init>(Lo/e;)V

    iput-object v2, v0, Lo/e;->k0:Landroidx/fragment/app/f;

    new-instance v2, Lp/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lp/e;->b:Z

    iput-boolean v3, v2, Lp/e;->c:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lp/e;->e:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v2, Lp/e;->f:Lq/f;

    new-instance v5, Lp/b;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v2, Lp/e;->g:Lp/b;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lp/e;->h:Ljava/util/ArrayList;

    iput-object v0, v2, Lp/e;->a:Lo/e;

    iput-object v0, v2, Lp/e;->d:Lo/e;

    iput-object v2, v0, Lo/e;->l0:Lp/e;

    iput-object v4, v0, Lo/e;->m0:Lq/f;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lo/e;->n0:Z

    new-instance v6, Ln/c;

    invoke-direct {v6}, Ln/c;-><init>()V

    iput-object v6, v0, Lo/e;->o0:Ln/c;

    iput v5, v0, Lo/e;->r0:I

    iput v5, v0, Lo/e;->s0:I

    new-array v6, v1, [Lo/b;

    iput-object v6, v0, Lo/e;->t0:[Lo/b;

    new-array v1, v1, [Lo/b;

    iput-object v1, v0, Lo/e;->u0:[Lo/b;

    const/16 v1, 0x101

    iput v1, v0, Lo/e;->v0:I

    iput-boolean v5, v0, Lo/e;->w0:Z

    iput-boolean v5, v0, Lo/e;->x0:Z

    iput-object v4, v0, Lo/e;->y0:Ljava/lang/ref/WeakReference;

    iput-object v4, v0, Lo/e;->z0:Ljava/lang/ref/WeakReference;

    iput-object v4, v0, Lo/e;->A0:Ljava/lang/ref/WeakReference;

    iput-object v4, v0, Lo/e;->B0:Ljava/lang/ref/WeakReference;

    new-instance v6, Lp/b;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lo/e;->C0:Lp/b;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/e;

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const v6, 0x7fffffff

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lq/m;

    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/activity/result/c;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    new-instance v1, Lq/f;

    invoke-direct {v1, p0, p0}, Lq/f;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lq/f;

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    iput-object p0, v0, Lo/d;->Y:Landroid/view/View;

    iput-object v1, v0, Lo/e;->m0:Lq/f;

    iput-object v1, v2, Lp/e;->f:Lq/f;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lq/m;

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lq/q;->b:[I

    invoke-virtual {p1, p2, v1, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v1, v5

    :goto_0
    if-ge v1, p2, :cond_7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    goto :goto_2

    :cond_0
    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    goto :goto_2

    :cond_1
    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    goto :goto_2

    :cond_3
    const/16 v3, 0x5a

    if-ne v2, v3, :cond_4

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    goto :goto_2

    :cond_4
    const/16 v3, 0x27

    if-ne v2, v3, :cond_5

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_6

    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/activity/result/c;

    goto :goto_2

    :cond_5
    const/16 v3, 0x12

    if-ne v2, v3, :cond_6

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    :try_start_1
    new-instance v3, Lq/m;

    invoke-direct {v3}, Lq/m;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lq/m;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Lq/m;->d(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lq/m;

    :goto_1
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    iput p1, v0, Lo/e;->v0:I

    const/16 p1, 0x200

    invoke-virtual {v0, p1}, Lo/e;->M(I)Z

    move-result p1

    sput-boolean p1, Ln/c;->p:Z

    return-void
.end method

.method public static a()Lq/e;
    .locals 7

    new-instance v0, Lq/e;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, -0x1

    iput v1, v0, Lq/e;->a:I

    iput v1, v0, Lq/e;->b:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lq/e;->c:F

    iput v1, v0, Lq/e;->d:I

    iput v1, v0, Lq/e;->e:I

    iput v1, v0, Lq/e;->f:I

    iput v1, v0, Lq/e;->g:I

    iput v1, v0, Lq/e;->h:I

    iput v1, v0, Lq/e;->i:I

    iput v1, v0, Lq/e;->j:I

    iput v1, v0, Lq/e;->k:I

    iput v1, v0, Lq/e;->l:I

    iput v1, v0, Lq/e;->m:I

    const/4 v3, 0x0

    iput v3, v0, Lq/e;->n:I

    const/4 v4, 0x0

    iput v4, v0, Lq/e;->o:F

    iput v1, v0, Lq/e;->p:I

    iput v1, v0, Lq/e;->q:I

    iput v1, v0, Lq/e;->r:I

    iput v1, v0, Lq/e;->s:I

    iput v1, v0, Lq/e;->t:I

    iput v1, v0, Lq/e;->u:I

    iput v1, v0, Lq/e;->v:I

    iput v1, v0, Lq/e;->w:I

    iput v1, v0, Lq/e;->x:I

    iput v1, v0, Lq/e;->y:I

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v0, Lq/e;->z:F

    iput v4, v0, Lq/e;->A:F

    const/4 v5, 0x0

    iput-object v5, v0, Lq/e;->B:Ljava/lang/String;

    const/4 v6, 0x1

    iput v6, v0, Lq/e;->C:I

    iput v2, v0, Lq/e;->D:F

    iput v2, v0, Lq/e;->E:F

    iput v3, v0, Lq/e;->F:I

    iput v3, v0, Lq/e;->G:I

    iput v3, v0, Lq/e;->H:I

    iput v3, v0, Lq/e;->I:I

    iput v3, v0, Lq/e;->J:I

    iput v3, v0, Lq/e;->K:I

    iput v3, v0, Lq/e;->L:I

    iput v3, v0, Lq/e;->M:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lq/e;->N:F

    iput v2, v0, Lq/e;->O:F

    iput v1, v0, Lq/e;->P:I

    iput v1, v0, Lq/e;->Q:I

    iput v1, v0, Lq/e;->R:I

    iput-boolean v3, v0, Lq/e;->S:Z

    iput-boolean v3, v0, Lq/e;->T:Z

    iput-object v5, v0, Lq/e;->U:Ljava/lang/String;

    iput-boolean v6, v0, Lq/e;->V:Z

    iput-boolean v6, v0, Lq/e;->W:Z

    iput-boolean v3, v0, Lq/e;->X:Z

    iput-boolean v3, v0, Lq/e;->Y:Z

    iput-boolean v3, v0, Lq/e;->Z:Z

    iput v1, v0, Lq/e;->a0:I

    iput v1, v0, Lq/e;->b0:I

    iput v1, v0, Lq/e;->c0:I

    iput v1, v0, Lq/e;->d0:I

    iput v1, v0, Lq/e;->e0:I

    iput v1, v0, Lq/e;->f0:I

    iput v4, v0, Lq/e;->g0:F

    new-instance v1, Lo/d;

    invoke-direct {v1}, Lo/d;-><init>()V

    iput-object v1, v0, Lq/e;->k0:Lo/d;

    return-object v0
.end method

.method private getPaddingWidth()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    if-lez v1, :cond_0

    return v1

    :cond_0
    return v2
.end method


# virtual methods
.method public final b(Landroid/view/View;)Lo/d;
    .locals 0

    if-ne p1, p0, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/e;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lq/e;

    iget-object p1, p1, Lq/e;->k0:Lo/d;

    return-object p1
.end method

.method public final c(I)V
    .locals 7

    new-instance v0, Landroidx/activity/result/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    if-eqz v2, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "Variant"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v2, Lq/g;

    invoke-direct {v2, v1, p1}, Lq/g;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    if-eqz v3, :cond_3

    iget-object v4, v3, Ld1/b;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :sswitch_1
    const-string v4, "layoutDescription"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :sswitch_2
    const-string v4, "StateSet"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :sswitch_3
    const-string v4, "State"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Ld1/b;

    invoke-direct {v3, v1, p1}, Ld1/b;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    iget-object v2, v0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    iget v4, v3, Ld1/b;->a:I

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :sswitch_4
    const-string v4, "ConstraintSet"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v1, p1}, Landroidx/activity/result/c;->B(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_2

    :cond_1
    :goto_1
    const-string v4, "ConstraintLayoutStates"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :cond_3
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :goto_4
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_4
    :goto_5
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/activity/result/c;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lq/e;

    return p1
.end method

.method public final d(IIIIZZ)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lq/f;

    iget v1, v0, Lq/f;->e:I

    iget v0, v0, Lq/f;->d:I

    add-int/2addr p3, v0

    add-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {p4, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    const p3, 0xffffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 p3, 0x1000000

    if-eqz p5, :cond_0

    or-int/2addr p1, p3

    :cond_0
    if-eqz p6, :cond_1

    or-int/2addr p2, p3

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/c;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move v5, v1

    :goto_1
    if-ge v5, v2, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v7, v7

    const/high16 v10, 0x44870000    # 1080.0f

    div-float/2addr v7, v10

    mul-float/2addr v7, v3

    float-to-int v7, v7

    int-to-float v8, v8

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v8, v11

    mul-float/2addr v8, v4

    float-to-int v8, v8

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float/2addr v9, v3

    float-to-int v9, v9

    int-to-float v6, v6

    div-float/2addr v6, v11

    mul-float/2addr v6, v4

    float-to-int v6, v6

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v10, -0x10000

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v11, v7

    int-to-float v12, v8

    add-int/2addr v7, v9

    int-to-float v13, v7

    move v14, v12

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v7, v11

    add-int/2addr v8, v6

    int-to-float v14, v8

    move v11, v13

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v6, v12

    move v12, v14

    move v13, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v7, v11

    move v11, v13

    move v14, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v16, v14

    move v14, v12

    move/from16 v12, v16

    const v6, -0xff0100

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    move v13, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v16, v14

    move v14, v12

    move/from16 v12, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public final e(Lo/e;III)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int v10, v7, v9

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v11

    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lq/f;

    iput v7, v12, Lq/f;->b:I

    iput v9, v12, Lq/f;->c:I

    iput v11, v12, Lq/f;->d:I

    iput v10, v12, Lq/f;->e:I

    move/from16 v9, p3

    iput v9, v12, Lq/f;->f:I

    move/from16 v9, p4

    iput v9, v12, Lq/f;->g:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v14, 0x1

    if-gtz v9, :cond_1

    if-lez v13, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v16, 0x400000

    and-int v15, v15, v16

    if-eqz v15, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v15

    if-ne v14, v15, :cond_2

    move v9, v13

    :cond_2
    :goto_1
    sub-int/2addr v4, v11

    sub-int/2addr v6, v10

    iget v10, v12, Lq/f;->e:I

    iget v11, v12, Lq/f;->d:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/high16 v15, 0x40000000    # 2.0f

    const/high16 v13, -0x80000000

    if-eq v3, v13, :cond_6

    if-eqz v3, :cond_4

    if-eq v3, v15, :cond_3

    move/from16 v17, v8

    goto :goto_4

    :cond_3
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr v14, v11

    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    move/from16 v17, v14

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    if-nez v12, :cond_5

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_2
    move/from16 v17, v14

    :goto_3
    const/4 v14, 0x2

    goto :goto_4

    :cond_5
    move/from16 v17, v8

    goto :goto_3

    :cond_6
    if-nez v12, :cond_7

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_2

    :cond_7
    move/from16 v17, v4

    goto :goto_3

    :goto_4
    if-eq v5, v13, :cond_b

    if-eqz v5, :cond_9

    if-eq v5, v15, :cond_8

    move v13, v8

    :goto_5
    const/4 v12, 0x1

    goto :goto_8

    :cond_8
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v12, v10

    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v13, v12

    goto :goto_5

    :cond_9
    if-nez v12, :cond_a

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_6
    move v13, v12

    :goto_7
    const/4 v12, 0x2

    goto :goto_8

    :cond_a
    move v13, v8

    goto :goto_7

    :cond_b
    if-nez v12, :cond_c

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_6

    :cond_c
    move v13, v6

    goto :goto_7

    :goto_8
    invoke-virtual {v1}, Lo/d;->l()I

    move-result v15

    iget-object v8, v1, Lo/e;->l0:Lp/e;

    move/from16 v19, v10

    iget-object v10, v1, Lo/d;->w:[I

    move-object/from16 v20, v10

    move/from16 v10, v17

    if-ne v10, v15, :cond_d

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v15

    if-eq v13, v15, :cond_e

    :cond_d
    const/4 v15, 0x1

    goto :goto_a

    :cond_e
    const/16 p4, 0x1

    :goto_9
    const/4 v15, 0x0

    goto :goto_b

    :goto_a
    iput-boolean v15, v8, Lp/e;->c:Z

    move/from16 p4, v15

    goto :goto_9

    :goto_b
    iput v15, v1, Lo/d;->R:I

    iput v15, v1, Lo/d;->S:I

    move/from16 v18, v15

    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr v15, v11

    aput v15, v20, v18

    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int v15, v15, v19

    aput v15, v20, p4

    move/from16 v15, v18

    iput v15, v1, Lo/d;->U:I

    iput v15, v1, Lo/d;->V:I

    invoke-virtual {v1, v14}, Lo/d;->B(I)V

    invoke-virtual {v1, v10}, Lo/d;->D(I)V

    invoke-virtual {v1, v12}, Lo/d;->C(I)V

    invoke-virtual {v1, v13}, Lo/d;->A(I)V

    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    sub-int/2addr v10, v11

    if-gez v10, :cond_f

    iput v15, v1, Lo/d;->U:I

    goto :goto_c

    :cond_f
    iput v10, v1, Lo/d;->U:I

    :goto_c
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    sub-int v10, v10, v19

    if-gez v10, :cond_10

    iput v15, v1, Lo/d;->V:I

    goto :goto_d

    :cond_10
    iput v10, v1, Lo/d;->V:I

    :goto_d
    iput v9, v1, Lo/e;->p0:I

    iput v7, v1, Lo/e;->q0:I

    iget-object v7, v1, Lo/e;->k0:Landroidx/fragment/app/f;

    iget-object v9, v7, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    check-cast v9, Lo/e;

    iget-object v10, v7, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    iget-object v11, v1, Lo/e;->m0:Lq/f;

    iget-object v12, v1, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v13

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v14

    const/16 v15, 0x80

    invoke-static {v2, v15}, Lo/g;->c(II)Z

    move-result v15

    const/16 v0, 0x40

    if-nez v15, :cond_12

    invoke-static {v2, v0}, Lo/g;->c(II)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_e

    :cond_11
    const/4 v2, 0x0

    goto :goto_f

    :cond_12
    :goto_e
    const/4 v2, 0x1

    :goto_f
    const/16 v17, 0x0

    if-eqz v2, :cond_1a

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v12, :cond_1a

    move/from16 v21, v2

    iget-object v2, v1, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/d;

    move/from16 v22, v0

    iget-object v0, v2, Lo/d;->i0:[I

    move-object/from16 v23, v0

    const/16 v18, 0x0

    aget v0, v23, v18

    move/from16 v24, v12

    const/4 v12, 0x3

    if-ne v0, v12, :cond_13

    const/16 v26, 0x1

    :goto_11
    const/16 v25, 0x1

    goto :goto_12

    :cond_13
    const/16 v26, 0x0

    goto :goto_11

    :goto_12
    aget v0, v23, v25

    if-ne v0, v12, :cond_14

    const/4 v0, 0x1

    goto :goto_13

    :cond_14
    const/4 v0, 0x0

    :goto_13
    if-eqz v26, :cond_15

    if-eqz v0, :cond_15

    iget v0, v2, Lo/d;->P:F

    cmpl-float v0, v0, v17

    if-lez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_14

    :cond_15
    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v2}, Lo/d;->r()Z

    move-result v12

    if-eqz v12, :cond_17

    if-eqz v0, :cond_17

    :cond_16
    :goto_15
    const/high16 v0, 0x40000000    # 2.0f

    const/16 v21, 0x0

    goto :goto_16

    :cond_17
    invoke-virtual {v2}, Lo/d;->s()Z

    move-result v12

    if-eqz v12, :cond_18

    if-eqz v0, :cond_18

    goto :goto_15

    :cond_18
    invoke-virtual {v2}, Lo/d;->r()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v2}, Lo/d;->s()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_15

    :cond_19
    add-int/lit8 v0, v22, 0x1

    move/from16 v2, v21

    move/from16 v12, v24

    goto :goto_10

    :cond_1a
    move/from16 v21, v2

    move/from16 v24, v12

    const/high16 v0, 0x40000000    # 2.0f

    :goto_16
    if-ne v3, v0, :cond_1b

    if-eq v5, v0, :cond_1c

    :cond_1b
    if-eqz v15, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    goto :goto_17

    :cond_1d
    const/4 v0, 0x0

    :goto_17
    and-int v0, v21, v0

    if-eqz v0, :cond_3e

    const/16 v18, 0x0

    aget v12, v20, v18

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v12, 0x1

    aget v2, v20, v12

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v6, :cond_1f

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v6

    if-eq v6, v4, :cond_1e

    invoke-virtual {v1, v4}, Lo/d;->D(I)V

    iput-boolean v12, v8, Lp/e;->b:Z

    :cond_1e
    const/high16 v6, 0x40000000    # 2.0f

    :cond_1f
    if-ne v5, v6, :cond_20

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v4

    if-eq v4, v2, :cond_20

    invoke-virtual {v1, v2}, Lo/d;->A(I)V

    iput-boolean v12, v8, Lp/e;->b:Z

    :cond_20
    if-ne v3, v6, :cond_37

    if-ne v5, v6, :cond_37

    iget-object v2, v8, Lp/e;->e:Ljava/util/ArrayList;

    iget-object v4, v8, Lp/e;->a:Lo/e;

    iget-boolean v6, v8, Lp/e;->b:Z

    if-nez v6, :cond_22

    iget-boolean v6, v8, Lp/e;->c:Z

    if-eqz v6, :cond_21

    goto :goto_18

    :cond_21
    move/from16 v20, v0

    const/4 v6, 0x0

    goto :goto_1a

    :cond_22
    :goto_18
    iget-object v6, v4, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v20, v0

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v12, :cond_23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    add-int/lit8 v0, v0, 0x1

    move/from16 v23, v0

    move-object/from16 v0, v22

    check-cast v0, Lo/d;

    invoke-virtual {v0}, Lo/d;->f()V

    move-object/from16 v22, v6

    const/4 v6, 0x0

    iput-boolean v6, v0, Lo/d;->a:Z

    iget-object v6, v0, Lo/d;->d:Lp/k;

    invoke-virtual {v6}, Lp/k;->n()V

    iget-object v0, v0, Lo/d;->e:Lp/m;

    invoke-virtual {v0}, Lp/m;->m()V

    move-object/from16 v6, v22

    move/from16 v0, v23

    goto :goto_19

    :cond_23
    invoke-virtual {v4}, Lo/d;->f()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lo/d;->a:Z

    iget-object v0, v4, Lo/d;->d:Lp/k;

    invoke-virtual {v0}, Lp/k;->n()V

    iget-object v0, v4, Lo/d;->e:Lp/m;

    invoke-virtual {v0}, Lp/m;->m()V

    iput-boolean v6, v8, Lp/e;->c:Z

    :goto_1a
    iget-object v0, v8, Lp/e;->d:Lo/e;

    invoke-virtual {v8, v0}, Lp/e;->b(Lo/e;)V

    iput v6, v4, Lo/d;->R:I

    iget-object v0, v4, Lo/d;->i0:[I

    iput v6, v4, Lo/d;->S:I

    invoke-virtual {v4, v6}, Lo/d;->h(I)I

    move-result v12

    move-object/from16 v22, v0

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lo/d;->h(I)I

    move-result v0

    iget-boolean v6, v8, Lp/e;->b:Z

    if-eqz v6, :cond_24

    invoke-virtual {v8}, Lp/e;->c()V

    :cond_24
    invoke-virtual {v4}, Lo/d;->m()I

    move-result v6

    move-object/from16 v23, v11

    invoke-virtual {v4}, Lo/d;->n()I

    move-result v11

    move-object/from16 v25, v10

    iget-object v10, v4, Lo/d;->d:Lp/k;

    iget-object v10, v10, Lp/o;->h:Lp/f;

    invoke-virtual {v10, v6}, Lp/f;->d(I)V

    iget-object v10, v4, Lo/d;->e:Lp/m;

    iget-object v10, v10, Lp/o;->h:Lp/f;

    invoke-virtual {v10, v11}, Lp/f;->d(I)V

    invoke-virtual {v8}, Lp/e;->g()V

    const/4 v10, 0x2

    if-eq v12, v10, :cond_27

    if-ne v0, v10, :cond_25

    goto :goto_1c

    :cond_25
    move/from16 v26, v6

    :cond_26
    const/4 v6, 0x1

    :goto_1b
    const/16 v18, 0x0

    goto :goto_1e

    :cond_27
    :goto_1c
    if-eqz v15, :cond_29

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    move/from16 v26, v6

    const/4 v6, 0x0

    :cond_28
    if-ge v6, v10, :cond_2a

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    add-int/lit8 v6, v6, 0x1

    check-cast v27, Lp/o;

    invoke-virtual/range {v27 .. v27}, Lp/o;->k()Z

    move-result v27

    if-nez v27, :cond_28

    const/4 v15, 0x0

    goto :goto_1d

    :cond_29
    move/from16 v26, v6

    :cond_2a
    :goto_1d
    if-eqz v15, :cond_2b

    const/4 v10, 0x2

    if-ne v12, v10, :cond_2b

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lo/d;->B(I)V

    const/4 v6, 0x0

    invoke-virtual {v8, v4, v6}, Lp/e;->d(Lo/e;I)I

    move-result v10

    invoke-virtual {v4, v10}, Lo/d;->D(I)V

    iget-object v6, v4, Lo/d;->d:Lp/k;

    iget-object v6, v6, Lp/o;->e:Lp/g;

    invoke-virtual {v4}, Lo/d;->l()I

    move-result v10

    invoke-virtual {v6, v10}, Lp/g;->d(I)V

    :cond_2b
    if-eqz v15, :cond_26

    const/4 v10, 0x2

    if-ne v0, v10, :cond_26

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lo/d;->C(I)V

    invoke-virtual {v8, v4, v6}, Lp/e;->d(Lo/e;I)I

    move-result v10

    invoke-virtual {v4, v10}, Lo/d;->A(I)V

    iget-object v10, v4, Lo/d;->e:Lp/m;

    iget-object v10, v10, Lp/o;->e:Lp/g;

    invoke-virtual {v4}, Lo/d;->i()I

    move-result v15

    invoke-virtual {v10, v15}, Lp/g;->d(I)V

    goto :goto_1b

    :goto_1e
    aget v10, v22, v18

    if-eq v10, v6, :cond_2d

    const/4 v6, 0x4

    if-ne v10, v6, :cond_2c

    goto :goto_1f

    :cond_2c
    const/4 v6, 0x0

    goto :goto_20

    :cond_2d
    :goto_1f
    invoke-virtual {v4}, Lo/d;->l()I

    move-result v6

    add-int v6, v6, v26

    iget-object v10, v4, Lo/d;->d:Lp/k;

    iget-object v10, v10, Lp/o;->i:Lp/f;

    invoke-virtual {v10, v6}, Lp/f;->d(I)V

    iget-object v10, v4, Lo/d;->d:Lp/k;

    iget-object v10, v10, Lp/o;->e:Lp/g;

    sub-int v6, v6, v26

    invoke-virtual {v10, v6}, Lp/g;->d(I)V

    invoke-virtual {v8}, Lp/e;->g()V

    const/4 v6, 0x1

    aget v10, v22, v6

    if-eq v10, v6, :cond_2e

    const/4 v6, 0x4

    if-ne v10, v6, :cond_2f

    :cond_2e
    invoke-virtual {v4}, Lo/d;->i()I

    move-result v6

    add-int/2addr v6, v11

    iget-object v10, v4, Lo/d;->e:Lp/m;

    iget-object v10, v10, Lp/o;->i:Lp/f;

    invoke-virtual {v10, v6}, Lp/f;->d(I)V

    iget-object v10, v4, Lo/d;->e:Lp/m;

    iget-object v10, v10, Lp/o;->e:Lp/g;

    sub-int/2addr v6, v11

    invoke-virtual {v10, v6}, Lp/g;->d(I)V

    :cond_2f
    invoke-virtual {v8}, Lp/e;->g()V

    const/4 v6, 0x1

    :goto_20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_21
    if-ge v10, v8, :cond_31

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lp/o;

    iget-object v15, v11, Lp/o;->b:Lo/d;

    if-ne v15, v4, :cond_30

    iget-boolean v15, v11, Lp/o;->g:Z

    if-nez v15, :cond_30

    goto :goto_21

    :cond_30
    invoke-virtual {v11}, Lp/o;->e()V

    goto :goto_21

    :cond_31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x0

    :cond_32
    :goto_22
    if-ge v10, v8, :cond_36

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lp/o;

    if-nez v6, :cond_33

    iget-object v15, v11, Lp/o;->b:Lo/d;

    if-ne v15, v4, :cond_33

    goto :goto_22

    :cond_33
    iget-object v15, v11, Lp/o;->h:Lp/f;

    iget-boolean v15, v15, Lp/f;->j:Z

    if-nez v15, :cond_34

    :goto_23
    const/4 v2, 0x0

    goto :goto_24

    :cond_34
    iget-object v15, v11, Lp/o;->i:Lp/f;

    iget-boolean v15, v15, Lp/f;->j:Z

    if-nez v15, :cond_35

    instance-of v15, v11, Lp/i;

    if-nez v15, :cond_35

    goto :goto_23

    :cond_35
    iget-object v15, v11, Lp/o;->e:Lp/g;

    iget-boolean v15, v15, Lp/f;->j:Z

    if-nez v15, :cond_32

    instance-of v15, v11, Lp/c;

    if-nez v15, :cond_32

    instance-of v11, v11, Lp/i;

    if-nez v11, :cond_32

    goto :goto_23

    :cond_36
    const/4 v2, 0x1

    :goto_24
    invoke-virtual {v4, v12}, Lo/d;->B(I)V

    invoke-virtual {v4, v0}, Lo/d;->C(I)V

    const/4 v0, 0x2

    const/high16 v6, 0x40000000    # 2.0f

    goto/16 :goto_28

    :cond_37
    move/from16 v20, v0

    move-object/from16 v25, v10

    move-object/from16 v23, v11

    iget-object v0, v8, Lp/e;->a:Lo/e;

    iget-boolean v2, v8, Lp/e;->b:Z

    if-eqz v2, :cond_39

    iget-object v2, v0, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_25
    if-ge v6, v4, :cond_38

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v6, v6, 0x1

    check-cast v10, Lo/d;

    invoke-virtual {v10}, Lo/d;->f()V

    const/4 v11, 0x0

    iput-boolean v11, v10, Lo/d;->a:Z

    iget-object v12, v10, Lo/d;->d:Lp/k;

    move-object/from16 v18, v2

    iget-object v2, v12, Lp/o;->e:Lp/g;

    iput-boolean v11, v2, Lp/f;->j:Z

    iput-boolean v11, v12, Lp/o;->g:Z

    invoke-virtual {v12}, Lp/k;->n()V

    iget-object v2, v10, Lo/d;->e:Lp/m;

    iget-object v10, v2, Lp/o;->e:Lp/g;

    iput-boolean v11, v10, Lp/f;->j:Z

    iput-boolean v11, v2, Lp/o;->g:Z

    invoke-virtual {v2}, Lp/m;->m()V

    move-object/from16 v2, v18

    goto :goto_25

    :cond_38
    const/4 v11, 0x0

    invoke-virtual {v0}, Lo/d;->f()V

    iput-boolean v11, v0, Lo/d;->a:Z

    iget-object v2, v0, Lo/d;->d:Lp/k;

    iget-object v4, v2, Lp/o;->e:Lp/g;

    iput-boolean v11, v4, Lp/f;->j:Z

    iput-boolean v11, v2, Lp/o;->g:Z

    invoke-virtual {v2}, Lp/k;->n()V

    iget-object v2, v0, Lo/d;->e:Lp/m;

    iget-object v4, v2, Lp/o;->e:Lp/g;

    iput-boolean v11, v4, Lp/f;->j:Z

    iput-boolean v11, v2, Lp/o;->g:Z

    invoke-virtual {v2}, Lp/m;->m()V

    invoke-virtual {v8}, Lp/e;->c()V

    goto :goto_26

    :cond_39
    const/4 v11, 0x0

    :goto_26
    iget-object v2, v8, Lp/e;->d:Lo/e;

    invoke-virtual {v8, v2}, Lp/e;->b(Lo/e;)V

    iput v11, v0, Lo/d;->R:I

    iput v11, v0, Lo/d;->S:I

    iget-object v2, v0, Lo/d;->d:Lp/k;

    iget-object v2, v2, Lp/o;->h:Lp/f;

    invoke-virtual {v2, v11}, Lp/f;->d(I)V

    iget-object v0, v0, Lo/d;->e:Lp/m;

    iget-object v0, v0, Lp/o;->h:Lp/f;

    invoke-virtual {v0, v11}, Lp/f;->d(I)V

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v6, :cond_3a

    invoke-virtual {v1, v11, v15}, Lo/e;->J(IZ)Z

    move-result v0

    move v2, v0

    const/4 v0, 0x1

    goto :goto_27

    :cond_3a
    const/4 v0, 0x0

    const/4 v2, 0x1

    :goto_27
    if-ne v5, v6, :cond_3b

    const/4 v12, 0x1

    invoke-virtual {v1, v12, v15}, Lo/e;->J(IZ)Z

    move-result v4

    and-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    :cond_3b
    :goto_28
    if-eqz v2, :cond_3f

    if-ne v3, v6, :cond_3c

    const/4 v3, 0x1

    goto :goto_29

    :cond_3c
    const/4 v3, 0x0

    :goto_29
    if-ne v5, v6, :cond_3d

    const/4 v4, 0x1

    goto :goto_2a

    :cond_3d
    const/4 v4, 0x0

    :goto_2a
    invoke-virtual {v1, v3, v4}, Lo/e;->E(ZZ)V

    goto :goto_2b

    :cond_3e
    move/from16 v20, v0

    move-object/from16 v25, v10

    move-object/from16 v23, v11

    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_3f
    :goto_2b
    if-eqz v2, :cond_41

    const/4 v10, 0x2

    if-eq v0, v10, :cond_40

    goto :goto_2c

    :cond_40
    return-void

    :cond_41
    :goto_2c
    iget v0, v1, Lo/e;->v0:I

    if-lez v24, :cond_4e

    iget-object v2, v1, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Lo/e;->M(I)Z

    move-result v3

    iget-object v4, v1, Lo/e;->m0:Lq/f;

    const/4 v15, 0x0

    :goto_2d
    if-ge v15, v2, :cond_4c

    iget-object v5, v1, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/d;

    instance-of v6, v5, Lo/f;

    if-eqz v6, :cond_42

    :goto_2e
    const/4 v12, 0x3

    goto/16 :goto_31

    :cond_42
    instance-of v6, v5, Lo/a;

    if-eqz v6, :cond_43

    goto :goto_2e

    :cond_43
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_44

    iget-object v6, v5, Lo/d;->d:Lp/k;

    if-eqz v6, :cond_44

    iget-object v8, v5, Lo/d;->e:Lp/m;

    if-eqz v8, :cond_44

    iget-object v6, v6, Lp/o;->e:Lp/g;

    iget-boolean v6, v6, Lp/f;->j:Z

    if-eqz v6, :cond_44

    iget-object v6, v8, Lp/o;->e:Lp/g;

    iget-boolean v6, v6, Lp/f;->j:Z

    if-eqz v6, :cond_44

    goto :goto_2e

    :cond_44
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lo/d;->h(I)I

    move-result v8

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lo/d;->h(I)I

    move-result v10

    const/4 v12, 0x3

    if-ne v8, v12, :cond_45

    iget v11, v5, Lo/d;->l:I

    if-eq v11, v6, :cond_45

    if-ne v10, v12, :cond_45

    iget v11, v5, Lo/d;->m:I

    if-eq v11, v6, :cond_45

    move v11, v6

    goto :goto_2f

    :cond_45
    const/4 v11, 0x0

    :goto_2f
    if-nez v11, :cond_49

    invoke-virtual {v1, v6}, Lo/e;->M(I)Z

    move-result v12

    if-eqz v12, :cond_49

    const/4 v12, 0x3

    if-ne v8, v12, :cond_46

    iget v6, v5, Lo/d;->l:I

    if-nez v6, :cond_46

    if-eq v10, v12, :cond_46

    invoke-virtual {v5}, Lo/d;->r()Z

    move-result v6

    if-nez v6, :cond_46

    const/4 v11, 0x1

    :cond_46
    if-ne v10, v12, :cond_47

    iget v6, v5, Lo/d;->m:I

    if-nez v6, :cond_47

    if-eq v8, v12, :cond_47

    invoke-virtual {v5}, Lo/d;->r()Z

    move-result v6

    if-nez v6, :cond_47

    const/4 v11, 0x1

    :cond_47
    if-eq v8, v12, :cond_48

    if-ne v10, v12, :cond_4a

    :cond_48
    iget v6, v5, Lo/d;->P:F

    cmpl-float v6, v6, v17

    if-lez v6, :cond_4a

    const/4 v11, 0x1

    goto :goto_30

    :cond_49
    const/4 v12, 0x3

    :cond_4a
    :goto_30
    if-eqz v11, :cond_4b

    goto :goto_31

    :cond_4b
    const/4 v6, 0x0

    invoke-virtual {v7, v4, v5, v6}, Landroidx/fragment/app/f;->u(Lq/f;Lo/d;I)Z

    :goto_31
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2d

    :cond_4c
    iget-object v2, v4, Lq/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget-object v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    const/4 v15, 0x0

    :goto_32
    if-ge v15, v3, :cond_4d

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v15, v15, 0x1

    goto :goto_32

    :cond_4d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4e

    const/4 v15, 0x0

    :goto_33
    if-ge v15, v2, :cond_4e

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v15, v15, 0x1

    goto :goto_33

    :cond_4e
    invoke-virtual {v7, v1}, Landroidx/fragment/app/f;->A(Lo/e;)V

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v24, :cond_4f

    invoke-virtual {v7, v1, v13, v14}, Landroidx/fragment/app/f;->y(Lo/e;II)V

    :cond_4f
    if-lez v2, :cond_62

    iget-object v3, v1, Lo/d;->i0:[I

    const/16 v18, 0x0

    aget v4, v3, v18

    const/4 v10, 0x2

    if-ne v4, v10, :cond_50

    const/4 v15, 0x1

    :goto_34
    const/4 v6, 0x1

    goto :goto_35

    :cond_50
    move/from16 v15, v18

    goto :goto_34

    :goto_35
    aget v3, v3, v6

    if-ne v3, v10, :cond_51

    const/4 v3, 0x1

    goto :goto_36

    :cond_51
    move/from16 v3, v18

    :goto_36
    invoke-virtual {v1}, Lo/d;->l()I

    move-result v4

    iget v5, v9, Lo/d;->U:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v5

    iget v6, v9, Lo/d;->V:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v6, v18

    :goto_37
    if-ge v6, v2, :cond_52

    move-object/from16 v10, v25

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/d;

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_52
    move-object/from16 v10, v25

    move/from16 v6, v18

    :goto_38
    const/4 v8, 0x2

    if-ge v6, v8, :cond_5f

    move/from16 v9, v18

    move v11, v9

    :goto_39
    if-ge v9, v2, :cond_5d

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/d;

    instance-of v8, v12, Lo/a;

    if-eqz v8, :cond_53

    :goto_3a
    move/from16 p2, v2

    goto :goto_3b

    :cond_53
    instance-of v8, v12, Lo/f;

    if-eqz v8, :cond_54

    goto :goto_3a

    :cond_54
    iget v8, v12, Lo/d;->Z:I

    move/from16 p2, v2

    const/16 v2, 0x8

    if-ne v8, v2, :cond_55

    goto :goto_3b

    :cond_55
    if-eqz v20, :cond_56

    iget-object v2, v12, Lo/d;->d:Lp/k;

    iget-object v2, v2, Lp/o;->e:Lp/g;

    iget-boolean v2, v2, Lp/f;->j:Z

    if-eqz v2, :cond_56

    iget-object v2, v12, Lo/d;->e:Lp/m;

    iget-object v2, v2, Lp/o;->e:Lp/g;

    iget-boolean v2, v2, Lp/f;->j:Z

    if-eqz v2, :cond_56

    :goto_3b
    move/from16 v16, v3

    move/from16 v19, v6

    move/from16 v17, v9

    move v9, v11

    const/4 v11, 0x4

    goto/16 :goto_3e

    :cond_56
    invoke-virtual {v12}, Lo/d;->l()I

    move-result v2

    invoke-virtual {v12}, Lo/d;->i()I

    move-result v8

    move/from16 v16, v3

    iget v3, v12, Lo/d;->T:I

    move/from16 v17, v9

    const/4 v9, 0x1

    if-ne v6, v9, :cond_57

    const/4 v9, 0x2

    :cond_57
    move/from16 v19, v6

    move-object/from16 v6, v23

    invoke-virtual {v7, v6, v12, v9}, Landroidx/fragment/app/f;->u(Lq/f;Lo/d;I)Z

    move-result v9

    or-int/2addr v9, v11

    invoke-virtual {v12}, Lo/d;->l()I

    move-result v11

    move-object/from16 v23, v6

    invoke-virtual {v12}, Lo/d;->i()I

    move-result v6

    if-eq v11, v2, :cond_59

    invoke-virtual {v12, v11}, Lo/d;->D(I)V

    if-eqz v15, :cond_58

    invoke-virtual {v12}, Lo/d;->m()I

    move-result v2

    iget v9, v12, Lo/d;->N:I

    add-int/2addr v2, v9

    if-le v2, v4, :cond_58

    invoke-virtual {v12}, Lo/d;->m()I

    move-result v2

    iget v9, v12, Lo/d;->N:I

    add-int/2addr v2, v9

    const/4 v11, 0x4

    invoke-virtual {v12, v11}, Lo/d;->g(I)Lo/c;

    move-result-object v9

    invoke-virtual {v9}, Lo/c;->d()I

    move-result v9

    add-int/2addr v9, v2

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_3c

    :cond_58
    const/4 v11, 0x4

    :goto_3c
    const/4 v9, 0x1

    goto :goto_3d

    :cond_59
    const/4 v11, 0x4

    :goto_3d
    if-eq v6, v8, :cond_5b

    invoke-virtual {v12, v6}, Lo/d;->A(I)V

    if-eqz v16, :cond_5a

    invoke-virtual {v12}, Lo/d;->n()I

    move-result v2

    iget v6, v12, Lo/d;->O:I

    add-int/2addr v2, v6

    if-le v2, v5, :cond_5a

    invoke-virtual {v12}, Lo/d;->n()I

    move-result v2

    iget v6, v12, Lo/d;->O:I

    add-int/2addr v2, v6

    const/4 v6, 0x5

    invoke-virtual {v12, v6}, Lo/d;->g(I)Lo/c;

    move-result-object v6

    invoke-virtual {v6}, Lo/c;->d()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_5a
    const/4 v9, 0x1

    :cond_5b
    iget-boolean v2, v12, Lo/d;->y:Z

    if-eqz v2, :cond_5c

    iget v2, v12, Lo/d;->T:I

    if-eq v3, v2, :cond_5c

    const/4 v9, 0x1

    :cond_5c
    :goto_3e
    add-int/lit8 v2, v17, 0x1

    move v11, v9

    move/from16 v3, v16

    move/from16 v6, v19

    const/4 v8, 0x2

    move v9, v2

    move/from16 v2, p2

    goto/16 :goto_39

    :cond_5d
    move/from16 p2, v2

    move/from16 v16, v3

    move/from16 v19, v6

    const/16 v21, 0x4

    if-eqz v11, :cond_5e

    invoke-virtual {v7, v1, v13, v14}, Landroidx/fragment/app/f;->y(Lo/e;II)V

    add-int/lit8 v6, v19, 0x1

    move/from16 v2, p2

    move/from16 v3, v16

    goto/16 :goto_38

    :cond_5e
    move v15, v11

    goto :goto_3f

    :cond_5f
    move/from16 v15, v18

    :goto_3f
    if-eqz v15, :cond_62

    invoke-virtual {v7, v1, v13, v14}, Landroidx/fragment/app/f;->y(Lo/e;II)V

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v2

    if-ge v2, v4, :cond_60

    invoke-virtual {v1, v4}, Lo/d;->D(I)V

    const/4 v8, 0x1

    goto :goto_40

    :cond_60
    move/from16 v8, v18

    :goto_40
    invoke-virtual {v1}, Lo/d;->i()I

    move-result v2

    if-ge v2, v5, :cond_61

    invoke-virtual {v1, v5}, Lo/d;->A(I)V

    const/4 v8, 0x1

    :cond_61
    if-eqz v8, :cond_62

    invoke-virtual {v7, v1, v13, v14}, Landroidx/fragment/app/f;->y(Lo/e;II)V

    :cond_62
    iput v0, v1, Lo/e;->v0:I

    const/16 v0, 0x200

    invoke-virtual {v1, v0}, Lo/e;->M(I)Z

    move-result v0

    sput-boolean v0, Ln/c;->p:Z

    return-void
.end method

.method public final forceLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    invoke-super {p0}, Landroid/view/View;->forceLayout()V

    return-void
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->a()Lq/e;

    move-result-object v0

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 12

    .line 1
    new-instance v0, Lq/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, -0x1

    .line 3
    iput v2, v0, Lq/e;->a:I

    .line 4
    iput v2, v0, Lq/e;->b:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 5
    iput v3, v0, Lq/e;->c:F

    .line 6
    iput v2, v0, Lq/e;->d:I

    .line 7
    iput v2, v0, Lq/e;->e:I

    .line 8
    iput v2, v0, Lq/e;->f:I

    .line 9
    iput v2, v0, Lq/e;->g:I

    .line 10
    iput v2, v0, Lq/e;->h:I

    .line 11
    iput v2, v0, Lq/e;->i:I

    .line 12
    iput v2, v0, Lq/e;->j:I

    .line 13
    iput v2, v0, Lq/e;->k:I

    .line 14
    iput v2, v0, Lq/e;->l:I

    .line 15
    iput v2, v0, Lq/e;->m:I

    const/4 v4, 0x0

    .line 16
    iput v4, v0, Lq/e;->n:I

    const/4 v5, 0x0

    .line 17
    iput v5, v0, Lq/e;->o:F

    .line 18
    iput v2, v0, Lq/e;->p:I

    .line 19
    iput v2, v0, Lq/e;->q:I

    .line 20
    iput v2, v0, Lq/e;->r:I

    .line 21
    iput v2, v0, Lq/e;->s:I

    .line 22
    iput v2, v0, Lq/e;->t:I

    .line 23
    iput v2, v0, Lq/e;->u:I

    .line 24
    iput v2, v0, Lq/e;->v:I

    .line 25
    iput v2, v0, Lq/e;->w:I

    .line 26
    iput v2, v0, Lq/e;->x:I

    .line 27
    iput v2, v0, Lq/e;->y:I

    const/high16 v6, 0x3f000000    # 0.5f

    .line 28
    iput v6, v0, Lq/e;->z:F

    .line 29
    iput v6, v0, Lq/e;->A:F

    const/4 v7, 0x0

    .line 30
    iput-object v7, v0, Lq/e;->B:Ljava/lang/String;

    const/4 v8, 0x1

    .line 31
    iput v8, v0, Lq/e;->C:I

    .line 32
    iput v3, v0, Lq/e;->D:F

    .line 33
    iput v3, v0, Lq/e;->E:F

    .line 34
    iput v4, v0, Lq/e;->F:I

    .line 35
    iput v4, v0, Lq/e;->G:I

    .line 36
    iput v4, v0, Lq/e;->H:I

    .line 37
    iput v4, v0, Lq/e;->I:I

    .line 38
    iput v4, v0, Lq/e;->J:I

    .line 39
    iput v4, v0, Lq/e;->K:I

    .line 40
    iput v4, v0, Lq/e;->L:I

    .line 41
    iput v4, v0, Lq/e;->M:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 42
    iput v3, v0, Lq/e;->N:F

    .line 43
    iput v3, v0, Lq/e;->O:F

    .line 44
    iput v2, v0, Lq/e;->P:I

    .line 45
    iput v2, v0, Lq/e;->Q:I

    .line 46
    iput v2, v0, Lq/e;->R:I

    .line 47
    iput-boolean v4, v0, Lq/e;->S:Z

    .line 48
    iput-boolean v4, v0, Lq/e;->T:Z

    .line 49
    iput-object v7, v0, Lq/e;->U:Ljava/lang/String;

    .line 50
    iput-boolean v8, v0, Lq/e;->V:Z

    .line 51
    iput-boolean v8, v0, Lq/e;->W:Z

    .line 52
    iput-boolean v4, v0, Lq/e;->X:Z

    .line 53
    iput-boolean v4, v0, Lq/e;->Y:Z

    .line 54
    iput-boolean v4, v0, Lq/e;->Z:Z

    .line 55
    iput v2, v0, Lq/e;->a0:I

    .line 56
    iput v2, v0, Lq/e;->b0:I

    .line 57
    iput v2, v0, Lq/e;->c0:I

    .line 58
    iput v2, v0, Lq/e;->d0:I

    .line 59
    iput v2, v0, Lq/e;->e0:I

    .line 60
    iput v2, v0, Lq/e;->f0:I

    .line 61
    iput v6, v0, Lq/e;->g0:F

    .line 62
    new-instance v3, Lo/d;

    invoke-direct {v3}, Lo/d;-><init>()V

    iput-object v3, v0, Lq/e;->k0:Lo/d;

    .line 63
    sget-object v3, Lq/q;->b:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_6

    .line 65
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 66
    sget-object v7, Lq/d;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 67
    const-string v9, "ConstraintLayout"

    const/4 v10, 0x2

    const/4 v11, -0x2

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_3

    .line 68
    :pswitch_0
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lq/e;->U:Ljava/lang/String;

    goto/16 :goto_3

    .line 69
    :pswitch_1
    iget v7, v0, Lq/e;->Q:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v0, Lq/e;->Q:I

    goto/16 :goto_3

    .line 70
    :pswitch_2
    iget v7, v0, Lq/e;->P:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v0, Lq/e;->P:I

    goto/16 :goto_3

    .line 71
    :pswitch_3
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->G:I

    goto/16 :goto_3

    .line 72
    :pswitch_4
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->F:I

    goto/16 :goto_3

    .line 73
    :pswitch_5
    iget v7, v0, Lq/e;->E:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v0, Lq/e;->E:F

    goto/16 :goto_3

    .line 74
    :pswitch_6
    iget v7, v0, Lq/e;->D:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v0, Lq/e;->D:F

    goto/16 :goto_3

    .line 75
    :pswitch_7
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lq/e;->B:Ljava/lang/String;

    .line 76
    iput v2, v0, Lq/e;->C:I

    if-eqz v6, :cond_5

    .line 77
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 78
    iget-object v7, v0, Lq/e;->B:Ljava/lang/String;

    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_2

    add-int/lit8 v9, v6, -0x1

    if-ge v7, v9, :cond_2

    .line 79
    iget-object v9, v0, Lq/e;->B:Ljava/lang/String;

    invoke-virtual {v9, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 80
    const-string v10, "W"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 81
    iput v4, v0, Lq/e;->C:I

    goto :goto_1

    .line 82
    :cond_0
    const-string v10, "H"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 83
    iput v8, v0, Lq/e;->C:I

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move v7, v4

    .line 84
    :goto_2
    iget-object v9, v0, Lq/e;->B:Ljava/lang/String;

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_4

    add-int/lit8 v6, v6, -0x1

    if-ge v9, v6, :cond_4

    .line 85
    iget-object v6, v0, Lq/e;->B:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 86
    iget-object v7, v0, Lq/e;->B:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 88
    :try_start_0
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 89
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    cmpl-float v9, v6, v5

    if-lez v9, :cond_5

    cmpl-float v9, v7, v5

    if-lez v9, :cond_5

    .line 90
    iget v9, v0, Lq/e;->C:I

    if-ne v9, v8, :cond_3

    div-float/2addr v7, v6

    .line 91
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    goto/16 :goto_3

    :cond_3
    div-float/2addr v6, v7

    .line 92
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_3

    .line 93
    :cond_4
    iget-object v6, v0, Lq/e;->B:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 95
    :try_start_1
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_3

    .line 96
    :pswitch_8
    iget v7, v0, Lq/e;->O:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lq/e;->O:F

    .line 97
    iput v10, v0, Lq/e;->I:I

    goto/16 :goto_3

    .line 98
    :pswitch_9
    :try_start_2
    iget v7, v0, Lq/e;->M:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lq/e;->M:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 99
    :catch_0
    iget v7, v0, Lq/e;->M:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ne v6, v11, :cond_5

    .line 100
    iput v11, v0, Lq/e;->M:I

    goto/16 :goto_3

    .line 101
    :pswitch_a
    :try_start_3
    iget v7, v0, Lq/e;->K:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lq/e;->K:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 102
    :catch_1
    iget v7, v0, Lq/e;->K:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ne v6, v11, :cond_5

    .line 103
    iput v11, v0, Lq/e;->K:I

    goto/16 :goto_3

    .line 104
    :pswitch_b
    iget v7, v0, Lq/e;->N:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lq/e;->N:F

    .line 105
    iput v10, v0, Lq/e;->H:I

    goto/16 :goto_3

    .line 106
    :pswitch_c
    :try_start_4
    iget v7, v0, Lq/e;->L:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lq/e;->L:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 107
    :catch_2
    iget v7, v0, Lq/e;->L:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ne v6, v11, :cond_5

    .line 108
    iput v11, v0, Lq/e;->L:I

    goto/16 :goto_3

    .line 109
    :pswitch_d
    :try_start_5
    iget v7, v0, Lq/e;->J:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lq/e;->J:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 110
    :catch_3
    iget v7, v0, Lq/e;->J:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ne v6, v11, :cond_5

    .line 111
    iput v11, v0, Lq/e;->J:I

    goto/16 :goto_3

    .line 112
    :pswitch_e
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->I:I

    if-ne v6, v8, :cond_5

    .line 113
    const-string v6, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 114
    :pswitch_f
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->H:I

    if-ne v6, v8, :cond_5

    .line 115
    const-string v6, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 116
    :pswitch_10
    iget v7, v0, Lq/e;->A:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v0, Lq/e;->A:F

    goto/16 :goto_3

    .line 117
    :pswitch_11
    iget v7, v0, Lq/e;->z:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v0, Lq/e;->z:F

    goto/16 :goto_3

    .line 118
    :pswitch_12
    iget-boolean v7, v0, Lq/e;->T:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Lq/e;->T:Z

    goto/16 :goto_3

    .line 119
    :pswitch_13
    iget-boolean v7, v0, Lq/e;->S:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Lq/e;->S:Z

    goto/16 :goto_3

    .line 120
    :pswitch_14
    iget v7, v0, Lq/e;->y:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lq/e;->y:I

    goto/16 :goto_3

    .line 121
    :pswitch_15
    iget v7, v0, Lq/e;->x:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lq/e;->x:I

    goto/16 :goto_3

    .line 122
    :pswitch_16
    iget v7, v0, Lq/e;->w:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lq/e;->w:I

    goto/16 :goto_3

    .line 123
    :pswitch_17
    iget v7, v0, Lq/e;->v:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lq/e;->v:I

    goto/16 :goto_3

    .line 124
    :pswitch_18
    iget v7, v0, Lq/e;->u:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lq/e;->u:I

    goto/16 :goto_3

    .line 125
    :pswitch_19
    iget v7, v0, Lq/e;->t:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lq/e;->t:I

    goto/16 :goto_3

    .line 126
    :pswitch_1a
    iget v7, v0, Lq/e;->s:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lq/e;->s:I

    if-ne v7, v2, :cond_5

    .line 127
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->s:I

    goto/16 :goto_3

    .line 128
    :pswitch_1b
    iget v7, v0, Lq/e;->r:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lq/e;->r:I

    if-ne v7, v2, :cond_5

    .line 129
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->r:I

    goto/16 :goto_3

    .line 130
    :pswitch_1c
    iget v7, v0, Lq/e;->q:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lq/e;->q:I

    if-ne v7, v2, :cond_5

    .line 131
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->q:I

    goto/16 :goto_3

    .line 132
    :pswitch_1d
    iget v7, v0, Lq/e;->p:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lq/e;->p:I

    if-ne v7, v2, :cond_5

    .line 133
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->p:I

    goto/16 :goto_3

    .line 134
    :pswitch_1e
    iget v7, v0, Lq/e;->l:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lq/e;->l:I

    if-ne v7, v2, :cond_5

    .line 135
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->l:I

    goto/16 :goto_3

    .line 136
    :pswitch_1f
    iget v7, v0, Lq/e;->k:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lq/e;->k:I

    if-ne v7, v2, :cond_5

    .line 137
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->k:I

    goto/16 :goto_3

    .line 138
    :pswitch_20
    iget v7, v0, Lq/e;->j:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lq/e;->j:I

    if-ne v7, v2, :cond_5

    .line 139
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->j:I

    goto/16 :goto_3

    .line 140
    :pswitch_21
    iget v7, v0, Lq/e;->i:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lq/e;->i:I

    if-ne v7, v2, :cond_5

    .line 141
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->i:I

    goto/16 :goto_3

    .line 142
    :pswitch_22
    iget v7, v0, Lq/e;->h:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lq/e;->h:I

    if-ne v7, v2, :cond_5

    .line 143
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->h:I

    goto/16 :goto_3

    .line 144
    :pswitch_23
    iget v7, v0, Lq/e;->g:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lq/e;->g:I

    if-ne v7, v2, :cond_5

    .line 145
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->g:I

    goto/16 :goto_3

    .line 146
    :pswitch_24
    iget v7, v0, Lq/e;->f:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lq/e;->f:I

    if-ne v7, v2, :cond_5

    .line 147
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->f:I

    goto/16 :goto_3

    .line 148
    :pswitch_25
    iget v7, v0, Lq/e;->e:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lq/e;->e:I

    if-ne v7, v2, :cond_5

    .line 149
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->e:I

    goto :goto_3

    .line 150
    :pswitch_26
    iget v7, v0, Lq/e;->d:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lq/e;->d:I

    if-ne v7, v2, :cond_5

    .line 151
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->d:I

    goto :goto_3

    .line 152
    :pswitch_27
    iget v7, v0, Lq/e;->c:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v0, Lq/e;->c:F

    goto :goto_3

    .line 153
    :pswitch_28
    iget v7, v0, Lq/e;->b:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v0, Lq/e;->b:I

    goto :goto_3

    .line 154
    :pswitch_29
    iget v7, v0, Lq/e;->a:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v0, Lq/e;->a:I

    goto :goto_3

    .line 155
    :pswitch_2a
    iget v7, v0, Lq/e;->o:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    const/high16 v7, 0x43b40000    # 360.0f

    rem-float/2addr v6, v7

    iput v6, v0, Lq/e;->o:F

    cmpg-float v9, v6, v5

    if-gez v9, :cond_5

    sub-float v6, v7, v6

    rem-float/2addr v6, v7

    .line 156
    iput v6, v0, Lq/e;->o:F

    goto :goto_3

    .line 157
    :pswitch_2b
    iget v7, v0, Lq/e;->n:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lq/e;->n:I

    goto :goto_3

    .line 158
    :pswitch_2c
    iget v7, v0, Lq/e;->m:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lq/e;->m:I

    if-ne v7, v2, :cond_5

    .line 159
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->m:I

    goto :goto_3

    .line 160
    :pswitch_2d
    iget v7, v0, Lq/e;->R:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lq/e;->R:I

    :catch_4
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 161
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    invoke-virtual {v0}, Lq/e;->a()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .line 163
    new-instance v0, Lq/e;

    .line 164
    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 165
    iput p1, v0, Lq/e;->a:I

    .line 166
    iput p1, v0, Lq/e;->b:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 167
    iput v1, v0, Lq/e;->c:F

    .line 168
    iput p1, v0, Lq/e;->d:I

    .line 169
    iput p1, v0, Lq/e;->e:I

    .line 170
    iput p1, v0, Lq/e;->f:I

    .line 171
    iput p1, v0, Lq/e;->g:I

    .line 172
    iput p1, v0, Lq/e;->h:I

    .line 173
    iput p1, v0, Lq/e;->i:I

    .line 174
    iput p1, v0, Lq/e;->j:I

    .line 175
    iput p1, v0, Lq/e;->k:I

    .line 176
    iput p1, v0, Lq/e;->l:I

    .line 177
    iput p1, v0, Lq/e;->m:I

    const/4 v2, 0x0

    .line 178
    iput v2, v0, Lq/e;->n:I

    const/4 v3, 0x0

    .line 179
    iput v3, v0, Lq/e;->o:F

    .line 180
    iput p1, v0, Lq/e;->p:I

    .line 181
    iput p1, v0, Lq/e;->q:I

    .line 182
    iput p1, v0, Lq/e;->r:I

    .line 183
    iput p1, v0, Lq/e;->s:I

    .line 184
    iput p1, v0, Lq/e;->t:I

    .line 185
    iput p1, v0, Lq/e;->u:I

    .line 186
    iput p1, v0, Lq/e;->v:I

    .line 187
    iput p1, v0, Lq/e;->w:I

    .line 188
    iput p1, v0, Lq/e;->x:I

    .line 189
    iput p1, v0, Lq/e;->y:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 190
    iput v3, v0, Lq/e;->z:F

    .line 191
    iput v3, v0, Lq/e;->A:F

    const/4 v4, 0x0

    .line 192
    iput-object v4, v0, Lq/e;->B:Ljava/lang/String;

    const/4 v5, 0x1

    .line 193
    iput v5, v0, Lq/e;->C:I

    .line 194
    iput v1, v0, Lq/e;->D:F

    .line 195
    iput v1, v0, Lq/e;->E:F

    .line 196
    iput v2, v0, Lq/e;->F:I

    .line 197
    iput v2, v0, Lq/e;->G:I

    .line 198
    iput v2, v0, Lq/e;->H:I

    .line 199
    iput v2, v0, Lq/e;->I:I

    .line 200
    iput v2, v0, Lq/e;->J:I

    .line 201
    iput v2, v0, Lq/e;->K:I

    .line 202
    iput v2, v0, Lq/e;->L:I

    .line 203
    iput v2, v0, Lq/e;->M:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 204
    iput v1, v0, Lq/e;->N:F

    .line 205
    iput v1, v0, Lq/e;->O:F

    .line 206
    iput p1, v0, Lq/e;->P:I

    .line 207
    iput p1, v0, Lq/e;->Q:I

    .line 208
    iput p1, v0, Lq/e;->R:I

    .line 209
    iput-boolean v2, v0, Lq/e;->S:Z

    .line 210
    iput-boolean v2, v0, Lq/e;->T:Z

    .line 211
    iput-object v4, v0, Lq/e;->U:Ljava/lang/String;

    .line 212
    iput-boolean v5, v0, Lq/e;->V:Z

    .line 213
    iput-boolean v5, v0, Lq/e;->W:Z

    .line 214
    iput-boolean v2, v0, Lq/e;->X:Z

    .line 215
    iput-boolean v2, v0, Lq/e;->Y:Z

    .line 216
    iput-boolean v2, v0, Lq/e;->Z:Z

    .line 217
    iput p1, v0, Lq/e;->a0:I

    .line 218
    iput p1, v0, Lq/e;->b0:I

    .line 219
    iput p1, v0, Lq/e;->c0:I

    .line 220
    iput p1, v0, Lq/e;->d0:I

    .line 221
    iput p1, v0, Lq/e;->e0:I

    .line 222
    iput p1, v0, Lq/e;->f0:I

    .line 223
    iput v3, v0, Lq/e;->g0:F

    .line 224
    new-instance p1, Lo/d;

    invoke-direct {p1}, Lo/d;-><init>()V

    iput-object p1, v0, Lq/e;->k0:Lo/d;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/e;

    iget v0, v0, Lo/e;->v0:I

    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lq/e;

    iget-object v1, v0, Lq/e;->k0:Lo/d;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lq/e;->Y:Z

    if-nez v2, :cond_0

    iget-boolean v0, v0, Lq/e;->Z:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lo/d;->m()I

    move-result v0

    invoke-virtual {v1}, Lo/d;->n()I

    move-result v2

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    :goto_2
    if-ge p3, p2, :cond_2

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lq/c;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final onMeasure(II)V
    .locals 34

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    iget-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_1

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isLayoutRequested()Z

    move-result v7

    if-eqz v7, :cond_0

    iput-boolean v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    iget-object v6, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/e;

    if-nez v0, :cond_3

    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    if-ne v0, v2, :cond_2

    iget v7, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    if-ne v7, v3, :cond_2

    invoke-virtual {v6}, Lo/d;->l()I

    move-result v4

    invoke-virtual {v6}, Lo/d;->i()I

    move-result v5

    iget-boolean v0, v6, Lo/e;->w0:Z

    iget-boolean v7, v6, Lo/e;->x0:Z

    move v6, v0

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(IIIIZZ)V

    return-void

    :cond_2
    if-ne v0, v2, :cond_3

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v0, v7, :cond_3

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v7, -0x80000000

    if-ne v0, v7, :cond_3

    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v7, :cond_3

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {v6}, Lo/d;->i()I

    move-result v7

    if-lt v0, v7, :cond_3

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    invoke-virtual {v6}, Lo/d;->l()I

    move-result v4

    invoke-virtual {v6}, Lo/d;->i()I

    move-result v5

    iget-boolean v0, v6, Lo/e;->w0:Z

    iget-boolean v7, v6, Lo/e;->x0:Z

    move v6, v0

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(IIIIZZ)V

    return-void

    :cond_3
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x400000

    and-int/2addr v0, v7

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v4, v0, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    move v0, v5

    :goto_2
    iput-boolean v0, v6, Lo/e;->n0:Z

    iget-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    if-eqz v0, :cond_69

    iput-boolean v5, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v7, v5

    :goto_3
    if-ge v7, v0, :cond_6

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->isLayoutRequested()Z

    move-result v8

    if-eqz v8, :cond_5

    move v7, v4

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    move v7, v5

    :goto_4
    if-eqz v7, :cond_67

    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v8

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v0, v5

    :goto_5
    if-ge v0, v9, :cond_8

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lo/d;

    move-result-object v10

    if-nez v10, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v10}, Lo/d;->w()V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    iget-object v10, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    const/4 v12, -0x1

    if-eqz v8, :cond_11

    move v0, v5

    :goto_7
    if-ge v0, v9, :cond_11

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    if-eqz v14, :cond_b

    iget-object v11, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    if-nez v11, :cond_9

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    :cond_9
    const-string v11, "/"

    invoke-virtual {v14, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-eq v11, v12, :cond_a

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v14, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :cond_a
    move-object v11, v14

    :goto_8
    iget-object v5, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    invoke-virtual {v5, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const/16 v5, 0x2f

    invoke-virtual {v14, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v12, :cond_c

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v14, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    :cond_c
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v5

    if-nez v5, :cond_d

    :goto_9
    move-object v5, v6

    goto :goto_a

    :cond_d
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-nez v11, :cond_e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_e

    if-eq v11, v1, :cond_e

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-ne v5, v1, :cond_e

    invoke-virtual {v1, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_e
    if-ne v11, v1, :cond_f

    goto :goto_9

    :cond_f
    if-nez v11, :cond_10

    const/4 v5, 0x0

    goto :goto_a

    :cond_10
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lq/e;

    iget-object v5, v5, Lq/e;->k0:Lo/d;

    :goto_a
    iput-object v14, v5, Lo/d;->a0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x0

    goto :goto_7

    :cond_11
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    if-eq v0, v12, :cond_12

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v9, :cond_12

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_12
    iget-object v5, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lq/m;

    if-eqz v5, :cond_27

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    new-instance v14, Ljava/util/HashSet;

    iget-object v15, v5, Lq/m;->c:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v11, 0x0

    :goto_c
    if-ge v11, v13, :cond_21

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    move/from16 v18, v7

    const-string v7, "ConstraintSet"

    if-nez v12, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "id unknown "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    const-string v4, "UNKNOWN"

    :goto_d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    move-object/from16 v19, v5

    move/from16 v20, v8

    move/from16 v26, v9

    move-object/from16 v29, v10

    move/from16 v21, v11

    move/from16 v22, v13

    move-object/from16 v23, v14

    goto/16 :goto_18

    :cond_13
    iget-boolean v12, v5, Lq/m;->b:Z

    if-eqz v12, :cond_15

    const/4 v12, -0x1

    if-eq v0, v12, :cond_14

    goto :goto_f

    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v12, -0x1

    :goto_f
    if-ne v0, v12, :cond_16

    goto :goto_e

    :cond_16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq/h;

    instance-of v12, v4, Lq/a;

    if-eqz v12, :cond_17

    iget-object v12, v7, Lq/h;->d:Lq/i;

    move-object/from16 v19, v5

    const/4 v5, 0x1

    iput v5, v12, Lq/i;->c0:I

    goto :goto_10

    :cond_17
    move-object/from16 v19, v5

    const/4 v5, 0x1

    :goto_10
    iget-object v12, v7, Lq/h;->d:Lq/i;

    iget-object v5, v7, Lq/h;->b:Lq/k;

    move/from16 v20, v8

    iget-object v8, v7, Lq/h;->e:Lq/l;

    move/from16 v21, v11

    iget v11, v12, Lq/i;->c0:I

    move/from16 v22, v13

    const/4 v13, -0x1

    if-eq v11, v13, :cond_1a

    const/4 v13, 0x1

    if-eq v11, v13, :cond_18

    goto :goto_11

    :cond_18
    move-object v11, v4

    check-cast v11, Lq/a;

    invoke-virtual {v11, v0}, Landroid/view/View;->setId(I)V

    iget v0, v12, Lq/i;->a0:I

    invoke-virtual {v11, v0}, Lq/a;->setType(I)V

    iget v0, v12, Lq/i;->b0:I

    invoke-virtual {v11, v0}, Lq/a;->setMargin(I)V

    iget-boolean v0, v12, Lq/i;->i0:Z

    invoke-virtual {v11, v0}, Lq/a;->setAllowsGoneWidget(Z)V

    iget-object v0, v12, Lq/i;->d0:[I

    if-eqz v0, :cond_19

    invoke-virtual {v11, v0}, Lq/c;->setReferencedIds([I)V

    goto :goto_11

    :cond_19
    iget-object v0, v12, Lq/i;->e0:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-static {v11, v0}, Lq/m;->b(Lq/a;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, v12, Lq/i;->d0:[I

    invoke-virtual {v11, v0}, Lq/c;->setReferencedIds([I)V

    :cond_1a
    :goto_11
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lq/e;

    invoke-virtual {v11}, Lq/e;->a()V

    invoke-virtual {v7, v11}, Lq/h;->a(Lq/e;)V

    iget-object v7, v7, Lq/h;->f:Ljava/util/HashMap;

    const-string v12, "\" not found on "

    const-string v13, " Custom Attribute \""

    move-object/from16 v23, v14

    const-string v14, "TransitionLayout"

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_12
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/b;

    move-object/from16 v25, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move/from16 v26, v9

    const-string v9, "set"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_2
    iget v9, v0, Lq/b;->a:I

    invoke-static {v9}, Ln/g;->b(I)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v28, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    packed-switch v9, :pswitch_data_0

    :goto_13
    move-object/from16 v29, v10

    goto/16 :goto_17

    :pswitch_0
    :try_start_3
    filled-new-array/range {v28 .. v28}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iget v0, v0, Lq/b;->c:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :catch_2
    move-exception v0

    move-object/from16 v29, v10

    goto/16 :goto_14

    :catch_3
    move-exception v0

    move-object/from16 v29, v10

    goto/16 :goto_15

    :catch_4
    move-exception v0

    move-object/from16 v29, v10

    goto/16 :goto_16

    :pswitch_1
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iget-boolean v0, v0, Lq/b;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :pswitch_2
    const-class v9, Ljava/lang/CharSequence;

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iget-object v0, v0, Lq/b;->d:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :pswitch_3
    const-class v9, Landroid/graphics/drawable/Drawable;

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v29, v10

    :try_start_4
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iget v0, v0, Lq/b;->f:I

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    :catch_5
    move-exception v0

    goto :goto_14

    :catch_6
    move-exception v0

    goto :goto_15

    :catch_7
    move-exception v0

    goto/16 :goto_16

    :pswitch_4
    move-object/from16 v29, v10

    filled-new-array/range {v27 .. v27}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iget v0, v0, Lq/b;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    :pswitch_5
    move-object/from16 v29, v10

    filled-new-array/range {v28 .. v28}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iget v0, v0, Lq/b;->c:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    :pswitch_6
    move-object/from16 v29, v10

    filled-new-array/range {v27 .. v27}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iget v0, v0, Lq/b;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_17

    :goto_14
    invoke-static {v13, v3, v12}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_17

    :goto_15
    invoke-static {v13, v3, v12}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_17

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must have a method "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    move/from16 v3, p2

    move-object/from16 v7, v25

    move/from16 v9, v26

    move-object/from16 v10, v29

    goto/16 :goto_12

    :cond_1b
    move/from16 v26, v9

    move-object/from16 v29, v10

    invoke-virtual {v4, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v5, Lq/k;->b:I

    if-nez v0, :cond_1c

    iget v0, v5, Lq/k;->a:I

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    iget v0, v5, Lq/k;->c:F

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    iget v0, v8, Lq/l;->a:F

    invoke-virtual {v4, v0}, Landroid/view/View;->setRotation(F)V

    iget v0, v8, Lq/l;->b:F

    invoke-virtual {v4, v0}, Landroid/view/View;->setRotationX(F)V

    iget v0, v8, Lq/l;->c:F

    invoke-virtual {v4, v0}, Landroid/view/View;->setRotationY(F)V

    iget v0, v8, Lq/l;->d:F

    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleX(F)V

    iget v0, v8, Lq/l;->e:F

    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleY(F)V

    iget v0, v8, Lq/l;->f:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1d

    iget v0, v8, Lq/l;->f:F

    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotX(F)V

    :cond_1d
    iget v0, v8, Lq/l;->g:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1e

    iget v0, v8, Lq/l;->g:F

    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotY(F)V

    :cond_1e
    iget v0, v8, Lq/l;->h:F

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    iget v0, v8, Lq/l;->i:F

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationY(F)V

    iget v0, v8, Lq/l;->j:F

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationZ(F)V

    iget-boolean v0, v8, Lq/l;->k:Z

    if-eqz v0, :cond_20

    iget v0, v8, Lq/l;->l:F

    invoke-virtual {v4, v0}, Landroid/view/View;->setElevation(F)V

    goto :goto_18

    :cond_1f
    move-object/from16 v19, v5

    move/from16 v20, v8

    move/from16 v26, v9

    move-object/from16 v29, v10

    move/from16 v21, v11

    move/from16 v22, v13

    move-object/from16 v23, v14

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WARNING NO CONSTRAINTS for view "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_18
    add-int/lit8 v11, v21, 0x1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v7, v18

    move-object/from16 v5, v19

    move/from16 v8, v20

    move/from16 v13, v22

    move-object/from16 v14, v23

    move/from16 v9, v26

    move-object/from16 v10, v29

    const/4 v4, 0x1

    const/4 v12, -0x1

    goto/16 :goto_c

    :cond_21
    move/from16 v18, v7

    move/from16 v20, v8

    move/from16 v26, v9

    move-object/from16 v29, v10

    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/h;

    iget-object v4, v3, Lq/h;->d:Lq/i;

    iget v5, v4, Lq/i;->c0:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_26

    const/4 v13, 0x1

    if-eq v5, v13, :cond_23

    goto :goto_1b

    :cond_23
    new-instance v5, Lq/a;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x20

    new-array v8, v8, [I

    iput-object v8, v5, Lq/c;->a:[I

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v5, Lq/c;->g:Ljava/util/HashMap;

    iput-object v7, v5, Lq/c;->c:Landroid/content/Context;

    new-instance v7, Lo/a;

    invoke-direct {v7}, Lo/d;-><init>()V

    const/4 v8, 0x4

    new-array v9, v8, [Lo/d;

    iput-object v9, v7, Lo/a;->j0:[Lo/d;

    const/4 v8, 0x0

    iput v8, v7, Lo/a;->k0:I

    iput v8, v7, Lo/a;->l0:I

    const/4 v13, 0x1

    iput-boolean v13, v7, Lo/a;->m0:Z

    iput v8, v7, Lo/a;->n0:I

    iput-boolean v8, v7, Lo/a;->o0:Z

    iput-object v7, v5, Lq/a;->j:Lo/a;

    iput-object v7, v5, Lq/c;->d:Lo/a;

    invoke-virtual {v5}, Lq/c;->e()V

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setId(I)V

    iget-object v7, v4, Lq/i;->d0:[I

    if-eqz v7, :cond_24

    invoke-virtual {v5, v7}, Lq/c;->setReferencedIds([I)V

    goto :goto_1a

    :cond_24
    iget-object v7, v4, Lq/i;->e0:Ljava/lang/String;

    if-eqz v7, :cond_25

    invoke-static {v5, v7}, Lq/m;->b(Lq/a;Ljava/lang/String;)[I

    move-result-object v7

    iput-object v7, v4, Lq/i;->d0:[I

    invoke-virtual {v5, v7}, Lq/c;->setReferencedIds([I)V

    :cond_25
    :goto_1a
    iget v7, v4, Lq/i;->a0:I

    invoke-virtual {v5, v7}, Lq/a;->setType(I)V

    iget v7, v4, Lq/i;->b0:I

    invoke-virtual {v5, v7}, Lq/a;->setMargin(I)V

    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->a()Lq/e;

    move-result-object v7

    invoke-virtual {v5}, Lq/c;->e()V

    invoke-virtual {v3, v7}, Lq/h;->a(Lq/e;)V

    invoke-virtual {v1, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_26
    :goto_1b
    iget-boolean v4, v4, Lq/i;->a:Z

    if-eqz v4, :cond_22

    new-instance v4, Lq/o;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lq/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setId(I)V

    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->a()Lq/e;

    move-result-object v2

    invoke-virtual {v3, v2}, Lq/h;->a(Lq/e;)V

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_19

    :cond_27
    move/from16 v18, v7

    move/from16 v20, v8

    move/from16 v26, v9

    move-object/from16 v29, v10

    :cond_28
    iget-object v0, v6, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lez v2, :cond_30

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v2, :cond_30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/c;

    iget-object v7, v5, Lq/c;->g:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/view/View;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_29

    iget-object v8, v5, Lq/c;->e:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lq/c;->setIds(Ljava/lang/String;)V

    :cond_29
    iget-object v8, v5, Lq/c;->d:Lo/a;

    if-nez v8, :cond_2a

    move-object/from16 v11, v29

    const/4 v9, 0x0

    goto/16 :goto_1f

    :cond_2a
    const/4 v9, 0x0

    iput v9, v8, Lo/a;->k0:I

    iget-object v8, v8, Lo/a;->j0:[Lo/d;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    :goto_1d
    iget v10, v5, Lq/c;->b:I

    if-ge v8, v10, :cond_2f

    iget-object v10, v5, Lq/c;->a:[I

    aget v10, v10, v8

    move-object/from16 v11, v29

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-nez v12, :cond_2b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v1, v10}, Lq/c;->d(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_2b

    iget-object v12, v5, Lq/c;->a:[I

    aput v13, v12, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroid/view/View;

    :cond_2b
    if-eqz v12, :cond_2e

    iget-object v10, v5, Lq/c;->d:Lo/a;

    invoke-virtual {v1, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lo/d;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v12, v10, :cond_2e

    if-nez v12, :cond_2c

    goto :goto_1e

    :cond_2c
    iget v13, v10, Lo/a;->k0:I

    const/16 v17, 0x1

    add-int/lit8 v13, v13, 0x1

    iget-object v14, v10, Lo/a;->j0:[Lo/d;

    array-length v15, v14

    if-le v13, v15, :cond_2d

    array-length v13, v14

    mul-int/2addr v13, v3

    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lo/d;

    iput-object v13, v10, Lo/a;->j0:[Lo/d;

    :cond_2d
    iget-object v13, v10, Lo/a;->j0:[Lo/d;

    iget v14, v10, Lo/a;->k0:I

    aput-object v12, v13, v14

    const/16 v17, 0x1

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Lo/a;->k0:I

    :cond_2e
    :goto_1e
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v29, v11

    goto :goto_1d

    :cond_2f
    move-object/from16 v11, v29

    iget-object v5, v5, Lq/c;->d:Lo/a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v29, v11

    goto/16 :goto_1c

    :cond_30
    move-object/from16 v11, v29

    move/from16 v2, v26

    const/4 v0, 0x0

    :goto_20
    if-ge v0, v2, :cond_31

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_31
    iget-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v2, :cond_32

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lo/d;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_32
    const/4 v8, 0x0

    :goto_22
    if-ge v8, v2, :cond_68

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lo/d;

    move-result-object v5

    if-nez v5, :cond_34

    :cond_33
    :goto_23
    move/from16 v29, v2

    move v2, v3

    const/4 v3, 0x4

    const/4 v13, -0x1

    :goto_24
    const/16 v16, 0x0

    const/16 v17, 0x1

    goto/16 :goto_3a

    :cond_34
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lq/e;

    iget-object v9, v6, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v5, Lo/d;->M:Lo/d;

    if-eqz v9, :cond_35

    check-cast v9, Lo/e;

    iget-object v9, v9, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lo/d;->w()V

    :cond_35
    iput-object v6, v5, Lo/d;->M:Lo/d;

    invoke-virtual {v7}, Lq/e;->a()V

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v9

    iput v9, v5, Lo/d;->Z:I

    iput-object v4, v5, Lo/d;->Y:Landroid/view/View;

    instance-of v9, v4, Lq/c;

    const/4 v10, 0x6

    if-eqz v9, :cond_3a

    check-cast v4, Lq/c;

    iget-boolean v9, v6, Lo/e;->n0:Z

    check-cast v4, Lq/a;

    iget v12, v4, Lq/a;->h:I

    iput v12, v4, Lq/a;->i:I

    const/4 v13, 0x5

    if-eqz v9, :cond_37

    if-ne v12, v13, :cond_36

    const/4 v9, 0x1

    iput v9, v4, Lq/a;->i:I

    goto :goto_25

    :cond_36
    const/4 v9, 0x1

    if-ne v12, v10, :cond_39

    const/4 v14, 0x0

    iput v14, v4, Lq/a;->i:I

    goto :goto_25

    :cond_37
    const/4 v9, 0x1

    const/4 v14, 0x0

    if-ne v12, v13, :cond_38

    iput v14, v4, Lq/a;->i:I

    goto :goto_25

    :cond_38
    if-ne v12, v10, :cond_39

    iput v9, v4, Lq/a;->i:I

    :cond_39
    :goto_25
    instance-of v9, v5, Lo/a;

    if-eqz v9, :cond_3a

    move-object v9, v5

    check-cast v9, Lo/a;

    iget v4, v4, Lq/a;->i:I

    iput v4, v9, Lo/a;->l0:I

    :cond_3a
    iget-boolean v4, v7, Lq/e;->Y:Z

    if-eqz v4, :cond_3e

    check-cast v5, Lo/f;

    iget v4, v7, Lq/e;->h0:I

    iget v9, v7, Lq/e;->i0:I

    iget v7, v7, Lq/e;->j0:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v12, v7, v10

    if-eqz v12, :cond_3b

    if-lez v12, :cond_33

    iput v7, v5, Lo/f;->j0:F

    const/4 v13, -0x1

    iput v13, v5, Lo/f;->k0:I

    iput v13, v5, Lo/f;->l0:I

    goto :goto_26

    :cond_3b
    const/4 v13, -0x1

    if-eq v4, v13, :cond_3d

    if-le v4, v13, :cond_3c

    iput v10, v5, Lo/f;->j0:F

    iput v4, v5, Lo/f;->k0:I

    iput v13, v5, Lo/f;->l0:I

    :cond_3c
    :goto_26
    move/from16 v29, v2

    move v2, v3

    const/4 v3, 0x4

    goto/16 :goto_24

    :cond_3d
    if-eq v9, v13, :cond_3c

    if-le v9, v13, :cond_3c

    iput v10, v5, Lo/f;->j0:F

    iput v13, v5, Lo/f;->k0:I

    iput v9, v5, Lo/f;->l0:I

    goto/16 :goto_23

    :cond_3e
    iget v4, v7, Lq/e;->a0:I

    iget v9, v7, Lq/e;->b0:I

    iget v12, v7, Lq/e;->c0:I

    iget v13, v7, Lq/e;->d0:I

    iget v14, v7, Lq/e;->e0:I

    iget v15, v7, Lq/e;->f0:I

    iget v3, v7, Lq/e;->g0:F

    iget v10, v7, Lq/e;->m:I

    const/16 v27, 0x4

    const/16 v28, 0x2

    move/from16 v29, v2

    const/16 v30, 0x5

    const/16 v31, 0x3

    const/4 v2, -0x1

    const/16 v32, 0x0

    if-eq v10, v2, :cond_40

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lo/d;

    if-eqz v26, :cond_3f

    iget v2, v7, Lq/e;->o:F

    iget v3, v7, Lq/e;->n:I

    const/16 v22, 0x7

    const/16 v25, 0x0

    move/from16 v23, v22

    move/from16 v24, v3

    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v26}, Lo/d;->p(IIIILo/d;)V

    iput v2, v5, Lo/d;->x:F

    :cond_3f
    move-object v9, v5

    move/from16 v10, v30

    move/from16 v2, v31

    goto/16 :goto_2f

    :cond_40
    if-eq v4, v2, :cond_43

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v26, v4

    check-cast v26, Lo/d;

    if-eqz v26, :cond_41

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v23, v28

    move/from16 v24, v4

    move-object/from16 v21, v5

    move/from16 v25, v14

    move/from16 v22, v28

    invoke-virtual/range {v21 .. v26}, Lo/d;->p(IIIILo/d;)V

    goto :goto_27

    :cond_41
    move-object/from16 v21, v5

    move/from16 v22, v28

    :cond_42
    :goto_27
    move/from16 v23, v22

    move/from16 v22, v27

    goto :goto_28

    :cond_43
    move-object/from16 v21, v5

    move/from16 v25, v14

    move/from16 v22, v28

    if-eq v9, v2, :cond_42

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v26, v4

    check-cast v26, Lo/d;

    if-eqz v26, :cond_42

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v4

    move/from16 v23, v27

    invoke-virtual/range {v21 .. v26}, Lo/d;->p(IIIILo/d;)V

    move/from16 v33, v23

    move/from16 v23, v22

    move/from16 v22, v33

    :goto_28
    if-eq v12, v2, :cond_46

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v26, v4

    check-cast v26, Lo/d;

    if-eqz v26, :cond_44

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v24, v4

    move/from16 v25, v15

    invoke-virtual/range {v21 .. v26}, Lo/d;->p(IIIILo/d;)V

    :cond_44
    move/from16 v4, v23

    :cond_45
    :goto_29
    move/from16 v5, v22

    goto :goto_2a

    :cond_46
    move/from16 v25, v15

    move/from16 v4, v23

    if-eq v13, v2, :cond_45

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v26, v5

    check-cast v26, Lo/d;

    if-eqz v26, :cond_45

    iget v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v23, v22

    move/from16 v24, v5

    invoke-virtual/range {v21 .. v26}, Lo/d;->p(IIIILo/d;)V

    goto :goto_29

    :goto_2a
    iget v9, v7, Lq/e;->h:I

    if-eq v9, v2, :cond_48

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lo/d;

    if-eqz v26, :cond_47

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v9, v7, Lq/e;->u:I

    move/from16 v23, v31

    move/from16 v24, v2

    move/from16 v25, v9

    move/from16 v22, v31

    invoke-virtual/range {v21 .. v26}, Lo/d;->p(IIIILo/d;)V

    goto :goto_2b

    :cond_47
    move/from16 v22, v31

    :goto_2b
    move/from16 v23, v22

    move/from16 v22, v30

    const/4 v13, -0x1

    goto :goto_2c

    :cond_48
    move/from16 v22, v31

    iget v2, v7, Lq/e;->i:I

    const/4 v13, -0x1

    if-eq v2, v13, :cond_49

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lo/d;

    if-eqz v26, :cond_49

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v9, v7, Lq/e;->u:I

    move/from16 v24, v2

    move/from16 v25, v9

    move/from16 v23, v30

    invoke-virtual/range {v21 .. v26}, Lo/d;->p(IIIILo/d;)V

    move/from16 v33, v23

    move/from16 v23, v22

    move/from16 v22, v33

    goto :goto_2c

    :cond_49
    move/from16 v23, v22

    move/from16 v22, v30

    :goto_2c
    iget v2, v7, Lq/e;->j:I

    if-eq v2, v13, :cond_4c

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lo/d;

    if-eqz v26, :cond_4a

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v9, v7, Lq/e;->w:I

    move/from16 v24, v2

    move/from16 v25, v9

    invoke-virtual/range {v21 .. v26}, Lo/d;->p(IIIILo/d;)V

    :cond_4a
    move/from16 v2, v23

    :cond_4b
    :goto_2d
    move-object/from16 v9, v21

    move/from16 v10, v22

    goto :goto_2e

    :cond_4c
    move/from16 v2, v23

    iget v9, v7, Lq/e;->k:I

    if-eq v9, v13, :cond_4b

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v26, v9

    check-cast v26, Lo/d;

    if-eqz v26, :cond_4b

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v10, v7, Lq/e;->w:I

    move/from16 v23, v22

    move/from16 v24, v9

    move/from16 v25, v10

    invoke-virtual/range {v21 .. v26}, Lo/d;->p(IIIILo/d;)V

    goto :goto_2d

    :goto_2e
    iget v12, v7, Lq/e;->l:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4d

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    iget v13, v7, Lq/e;->l:I

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo/d;

    if-eqz v13, :cond_4d

    if-eqz v12, :cond_4d

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    instance-of v14, v14, Lq/e;

    if-eqz v14, :cond_4d

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lq/e;

    const/4 v14, 0x1

    iput-boolean v14, v7, Lq/e;->X:Z

    iput-boolean v14, v12, Lq/e;->X:Z

    const/4 v15, 0x6

    invoke-virtual {v9, v15}, Lo/d;->g(I)Lo/c;

    move-result-object v5

    invoke-virtual {v13, v15}, Lo/d;->g(I)Lo/c;

    move-result-object v13

    const/4 v4, -0x1

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v15, v4}, Lo/c;->a(Lo/c;II)V

    iput-boolean v14, v9, Lo/d;->y:Z

    iget-object v4, v12, Lq/e;->k0:Lo/d;

    iput-boolean v14, v4, Lo/d;->y:Z

    invoke-virtual {v9, v2}, Lo/d;->g(I)Lo/c;

    move-result-object v4

    invoke-virtual {v4}, Lo/c;->g()V

    invoke-virtual {v9, v10}, Lo/d;->g(I)Lo/c;

    move-result-object v4

    invoke-virtual {v4}, Lo/c;->g()V

    :cond_4d
    cmpl-float v4, v3, v32

    if-ltz v4, :cond_4e

    iput v3, v9, Lo/d;->W:F

    :cond_4e
    iget v3, v7, Lq/e;->A:F

    cmpl-float v4, v3, v32

    if-ltz v4, :cond_4f

    iput v3, v9, Lo/d;->X:F

    :cond_4f
    :goto_2f
    if-eqz v20, :cond_51

    iget v3, v7, Lq/e;->P:I

    const/4 v13, -0x1

    if-ne v3, v13, :cond_50

    iget v4, v7, Lq/e;->Q:I

    if-eq v4, v13, :cond_51

    :cond_50
    iget v4, v7, Lq/e;->Q:I

    iput v3, v9, Lo/d;->R:I

    iput v4, v9, Lo/d;->S:I

    :cond_51
    iget-boolean v3, v7, Lq/e;->V:Z

    const/4 v4, -0x2

    const/4 v5, 0x3

    if-nez v3, :cond_54

    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v13, -0x1

    if-ne v3, v13, :cond_53

    iget-boolean v3, v7, Lq/e;->S:Z

    if-eqz v3, :cond_52

    invoke-virtual {v9, v5}, Lo/d;->B(I)V

    :goto_30
    const/4 v3, 0x2

    goto :goto_31

    :cond_52
    const/4 v3, 0x4

    invoke-virtual {v9, v3}, Lo/d;->B(I)V

    goto :goto_30

    :goto_31
    invoke-virtual {v9, v3}, Lo/d;->g(I)Lo/c;

    move-result-object v3

    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v12, v3, Lo/c;->g:I

    const/4 v3, 0x4

    invoke-virtual {v9, v3}, Lo/d;->g(I)Lo/c;

    move-result-object v3

    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v12, v3, Lo/c;->g:I

    goto :goto_32

    :cond_53
    invoke-virtual {v9, v5}, Lo/d;->B(I)V

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lo/d;->D(I)V

    goto :goto_32

    :cond_54
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lo/d;->B(I)V

    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v9, v3}, Lo/d;->D(I)V

    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v3, v4, :cond_55

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Lo/d;->B(I)V

    :cond_55
    :goto_32
    iget-boolean v3, v7, Lq/e;->W:Z

    if-nez v3, :cond_58

    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v13, -0x1

    if-ne v3, v13, :cond_57

    iget-boolean v3, v7, Lq/e;->T:Z

    if-eqz v3, :cond_56

    invoke-virtual {v9, v5}, Lo/d;->C(I)V

    const/4 v3, 0x4

    goto :goto_33

    :cond_56
    const/4 v3, 0x4

    invoke-virtual {v9, v3}, Lo/d;->C(I)V

    :goto_33
    invoke-virtual {v9, v2}, Lo/d;->g(I)Lo/c;

    move-result-object v2

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v2, Lo/c;->g:I

    invoke-virtual {v9, v10}, Lo/d;->g(I)Lo/c;

    move-result-object v2

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v4, v2, Lo/c;->g:I

    goto :goto_34

    :cond_57
    const/4 v3, 0x4

    invoke-virtual {v9, v5}, Lo/d;->C(I)V

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lo/d;->A(I)V

    goto :goto_34

    :cond_58
    const/4 v3, 0x4

    const/4 v13, -0x1

    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Lo/d;->C(I)V

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v9, v2}, Lo/d;->A(I)V

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v2, v4, :cond_59

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Lo/d;->C(I)V

    :cond_59
    :goto_34
    iget-object v2, v7, Lq/e;->B:Ljava/lang/String;

    if-eqz v2, :cond_5a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5b

    :cond_5a
    move/from16 v2, v32

    goto/16 :goto_38

    :cond_5b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_5e

    add-int/lit8 v10, v4, -0x1

    if-ge v5, v10, :cond_5e

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v12, "W"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5c

    const/4 v10, 0x0

    goto :goto_35

    :cond_5c
    const-string v12, "H"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5d

    const/4 v10, 0x1

    goto :goto_35

    :cond_5d
    move v10, v13

    :goto_35
    add-int/lit8 v5, v5, 0x1

    move v12, v10

    goto :goto_36

    :cond_5e
    move v12, v13

    const/4 v5, 0x0

    :goto_36
    const/16 v10, 0x3a

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_60

    add-int/lit8 v4, v4, -0x1

    if-ge v10, v4, :cond_60

    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_61

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_61

    :try_start_5
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    cmpl-float v5, v4, v32

    if-lez v5, :cond_61

    cmpl-float v5, v2, v32

    if-lez v5, :cond_61

    const/4 v14, 0x1

    if-ne v12, v14, :cond_5f

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_37

    :cond_5f
    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_37

    :cond_60
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_61

    :try_start_6
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_37

    :catch_8
    :cond_61
    move/from16 v2, v32

    :goto_37
    cmpl-float v4, v2, v32

    if-lez v4, :cond_62

    iput v2, v9, Lo/d;->P:F

    iput v12, v9, Lo/d;->Q:I

    goto :goto_39

    :goto_38
    iput v2, v9, Lo/d;->P:F

    :cond_62
    :goto_39
    iget v2, v7, Lq/e;->D:F

    iget-object v4, v9, Lo/d;->d0:[F

    const/16 v16, 0x0

    aput v2, v4, v16

    iget v2, v7, Lq/e;->E:F

    const/16 v17, 0x1

    aput v2, v4, v17

    iget v2, v7, Lq/e;->F:I

    iput v2, v9, Lo/d;->b0:I

    iget v2, v7, Lq/e;->G:I

    iput v2, v9, Lo/d;->c0:I

    iget v2, v7, Lq/e;->H:I

    iget v4, v7, Lq/e;->J:I

    iget v5, v7, Lq/e;->L:I

    iget v10, v7, Lq/e;->N:F

    iput v2, v9, Lo/d;->l:I

    iput v4, v9, Lo/d;->o:I

    const v4, 0x7fffffff

    if-ne v5, v4, :cond_63

    move/from16 v5, v16

    :cond_63
    iput v5, v9, Lo/d;->p:I

    iput v10, v9, Lo/d;->q:F

    const/16 v32, 0x0

    cmpl-float v5, v10, v32

    const/high16 v12, 0x3f800000    # 1.0f

    if-lez v5, :cond_64

    cmpg-float v5, v10, v12

    if-gez v5, :cond_64

    if-nez v2, :cond_64

    const/4 v2, 0x2

    iput v2, v9, Lo/d;->l:I

    :cond_64
    iget v2, v7, Lq/e;->I:I

    iget v5, v7, Lq/e;->K:I

    iget v10, v7, Lq/e;->M:I

    iget v7, v7, Lq/e;->O:F

    iput v2, v9, Lo/d;->m:I

    iput v5, v9, Lo/d;->r:I

    if-ne v10, v4, :cond_65

    move/from16 v10, v16

    :cond_65
    iput v10, v9, Lo/d;->s:I

    iput v7, v9, Lo/d;->t:F

    const/16 v32, 0x0

    cmpl-float v4, v7, v32

    if-lez v4, :cond_66

    cmpg-float v4, v7, v12

    if-gez v4, :cond_66

    if-nez v2, :cond_66

    const/4 v2, 0x2

    iput v2, v9, Lo/d;->m:I

    goto :goto_3a

    :cond_66
    const/4 v2, 0x2

    :goto_3a
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    move/from16 v2, v29

    goto/16 :goto_22

    :cond_67
    move/from16 v18, v7

    :cond_68
    if-eqz v18, :cond_69

    iget-object v0, v6, Lo/e;->k0:Landroidx/fragment/app/f;

    invoke-virtual {v0, v6}, Landroidx/fragment/app/f;->A(Lo/e;)V

    :cond_69
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v1, v6, v0, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Lo/e;III)V

    invoke-virtual {v6}, Lo/d;->l()I

    move-result v4

    invoke-virtual {v6}, Lo/d;->i()I

    move-result v5

    iget-boolean v0, v6, Lo/e;->w0:Z

    iget-boolean v7, v6, Lo/e;->x0:Z

    move v6, v0

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(IIIIZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lo/d;

    move-result-object v0

    instance-of v1, p1, Lq/o;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    instance-of v0, v0, Lo/f;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lq/e;

    new-instance v1, Lo/f;

    invoke-direct {v1}, Lo/f;-><init>()V

    iput-object v1, v0, Lq/e;->k0:Lo/d;

    iput-boolean v2, v0, Lq/e;->Y:Z

    iget v0, v0, Lq/e;->R:I

    invoke-virtual {v1, v0}, Lo/f;->H(I)V

    :cond_0
    instance-of v0, p1, Lq/c;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lq/c;

    invoke-virtual {v0}, Lq/c;->e()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lq/e;

    iput-boolean v2, v1, Lq/e;->Z:Z

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lo/d;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/e;

    iget-object v1, v1, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lo/d;->w()V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setConstraintSet(Lq/m;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lq/m;

    return-void
.end method

.method public setId(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Lq/n;)V
    .locals 0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/activity/result/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/e;

    iput p1, v0, Lo/e;->v0:I

    const/16 p1, 0x200

    invoke-virtual {v0, p1}, Lo/e;->M(I)Z

    move-result p1

    sput-boolean p1, Ln/c;->p:Z

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
