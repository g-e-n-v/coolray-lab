.class public final Lq/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lq/k;

.field public final c:Lq/j;

.field public final d:Lq/i;

.field public final e:Lq/l;

.field public f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lq/k;->a:I

    iput v1, v0, Lq/k;->b:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lq/k;->c:F

    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, v0, Lq/k;->d:F

    iput-object v0, p0, Lq/h;->b:Lq/k;

    new-instance v0, Lq/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x1

    iput v4, v0, Lq/j;->a:I

    iput v4, v0, Lq/j;->b:I

    iput v3, v0, Lq/j;->c:F

    iput v3, v0, Lq/j;->d:F

    iput-object v0, p0, Lq/h;->c:Lq/j;

    new-instance v0, Lq/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, Lq/i;->a:Z

    iput v4, v0, Lq/i;->d:I

    iput v4, v0, Lq/i;->e:I

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v0, Lq/i;->f:F

    iput v4, v0, Lq/i;->g:I

    iput v4, v0, Lq/i;->h:I

    iput v4, v0, Lq/i;->i:I

    iput v4, v0, Lq/i;->j:I

    iput v4, v0, Lq/i;->k:I

    iput v4, v0, Lq/i;->l:I

    iput v4, v0, Lq/i;->m:I

    iput v4, v0, Lq/i;->n:I

    iput v4, v0, Lq/i;->o:I

    iput v4, v0, Lq/i;->p:I

    iput v4, v0, Lq/i;->q:I

    iput v4, v0, Lq/i;->r:I

    iput v4, v0, Lq/i;->s:I

    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v0, Lq/i;->t:F

    iput v6, v0, Lq/i;->u:F

    const/4 v6, 0x0

    iput-object v6, v0, Lq/i;->v:Ljava/lang/String;

    iput v4, v0, Lq/i;->w:I

    iput v1, v0, Lq/i;->x:I

    const/4 v6, 0x0

    iput v6, v0, Lq/i;->y:F

    iput v4, v0, Lq/i;->z:I

    iput v4, v0, Lq/i;->A:I

    iput v4, v0, Lq/i;->B:I

    iput v4, v0, Lq/i;->C:I

    iput v4, v0, Lq/i;->D:I

    iput v4, v0, Lq/i;->E:I

    iput v4, v0, Lq/i;->F:I

    iput v4, v0, Lq/i;->G:I

    iput v4, v0, Lq/i;->H:I

    iput v4, v0, Lq/i;->I:I

    iput v4, v0, Lq/i;->J:I

    iput v4, v0, Lq/i;->K:I

    iput v4, v0, Lq/i;->L:I

    iput v4, v0, Lq/i;->M:I

    iput v4, v0, Lq/i;->N:I

    iput v5, v0, Lq/i;->O:F

    iput v5, v0, Lq/i;->P:F

    iput v1, v0, Lq/i;->Q:I

    iput v1, v0, Lq/i;->R:I

    iput v1, v0, Lq/i;->S:I

    iput v1, v0, Lq/i;->T:I

    iput v4, v0, Lq/i;->U:I

    iput v4, v0, Lq/i;->V:I

    iput v4, v0, Lq/i;->W:I

    iput v4, v0, Lq/i;->X:I

    iput v2, v0, Lq/i;->Y:F

    iput v2, v0, Lq/i;->Z:F

    iput v4, v0, Lq/i;->a0:I

    iput v1, v0, Lq/i;->b0:I

    iput v4, v0, Lq/i;->c0:I

    iput-boolean v1, v0, Lq/i;->g0:Z

    iput-boolean v1, v0, Lq/i;->h0:Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Lq/i;->i0:Z

    iput-object v0, p0, Lq/h;->d:Lq/i;

    new-instance v0, Lq/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v6, v0, Lq/l;->a:F

    iput v6, v0, Lq/l;->b:F

    iput v6, v0, Lq/l;->c:F

    iput v2, v0, Lq/l;->d:F

    iput v2, v0, Lq/l;->e:F

    iput v3, v0, Lq/l;->f:F

    iput v3, v0, Lq/l;->g:F

    iput v6, v0, Lq/l;->h:F

    iput v6, v0, Lq/l;->i:F

    iput v6, v0, Lq/l;->j:F

    iput-boolean v1, v0, Lq/l;->k:Z

    iput v6, v0, Lq/l;->l:F

    iput-object v0, p0, Lq/h;->e:Lq/l;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq/h;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lq/e;)V
    .locals 2

    iget-object v0, p0, Lq/h;->d:Lq/i;

    iget v1, v0, Lq/i;->g:I

    iput v1, p1, Lq/e;->d:I

    iget v1, v0, Lq/i;->h:I

    iput v1, p1, Lq/e;->e:I

    iget v1, v0, Lq/i;->i:I

    iput v1, p1, Lq/e;->f:I

    iget v1, v0, Lq/i;->j:I

    iput v1, p1, Lq/e;->g:I

    iget v1, v0, Lq/i;->k:I

    iput v1, p1, Lq/e;->h:I

    iget v1, v0, Lq/i;->l:I

    iput v1, p1, Lq/e;->i:I

    iget v1, v0, Lq/i;->m:I

    iput v1, p1, Lq/e;->j:I

    iget v1, v0, Lq/i;->n:I

    iput v1, p1, Lq/e;->k:I

    iget v1, v0, Lq/i;->o:I

    iput v1, p1, Lq/e;->l:I

    iget v1, v0, Lq/i;->p:I

    iput v1, p1, Lq/e;->p:I

    iget v1, v0, Lq/i;->q:I

    iput v1, p1, Lq/e;->q:I

    iget v1, v0, Lq/i;->r:I

    iput v1, p1, Lq/e;->r:I

    iget v1, v0, Lq/i;->s:I

    iput v1, p1, Lq/e;->s:I

    iget v1, v0, Lq/i;->C:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v0, Lq/i;->D:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v0, Lq/i;->E:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v0, Lq/i;->F:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v0, Lq/i;->N:I

    iput v1, p1, Lq/e;->x:I

    iget v1, v0, Lq/i;->M:I

    iput v1, p1, Lq/e;->y:I

    iget v1, v0, Lq/i;->J:I

    iput v1, p1, Lq/e;->u:I

    iget v1, v0, Lq/i;->L:I

    iput v1, p1, Lq/e;->w:I

    iget v1, v0, Lq/i;->t:F

    iput v1, p1, Lq/e;->z:F

    iget v1, v0, Lq/i;->u:F

    iput v1, p1, Lq/e;->A:F

    iget v1, v0, Lq/i;->w:I

    iput v1, p1, Lq/e;->m:I

    iget v1, v0, Lq/i;->x:I

    iput v1, p1, Lq/e;->n:I

    iget v1, v0, Lq/i;->y:F

    iput v1, p1, Lq/e;->o:F

    iget-object v1, v0, Lq/i;->v:Ljava/lang/String;

    iput-object v1, p1, Lq/e;->B:Ljava/lang/String;

    iget v1, v0, Lq/i;->z:I

    iput v1, p1, Lq/e;->P:I

    iget v1, v0, Lq/i;->A:I

    iput v1, p1, Lq/e;->Q:I

    iget v1, v0, Lq/i;->O:F

    iput v1, p1, Lq/e;->E:F

    iget v1, v0, Lq/i;->P:F

    iput v1, p1, Lq/e;->D:F

    iget v1, v0, Lq/i;->R:I

    iput v1, p1, Lq/e;->G:I

    iget v1, v0, Lq/i;->Q:I

    iput v1, p1, Lq/e;->F:I

    iget-boolean v1, v0, Lq/i;->g0:Z

    iput-boolean v1, p1, Lq/e;->S:Z

    iget-boolean v1, v0, Lq/i;->h0:Z

    iput-boolean v1, p1, Lq/e;->T:Z

    iget v1, v0, Lq/i;->S:I

    iput v1, p1, Lq/e;->H:I

    iget v1, v0, Lq/i;->T:I

    iput v1, p1, Lq/e;->I:I

    iget v1, v0, Lq/i;->U:I

    iput v1, p1, Lq/e;->L:I

    iget v1, v0, Lq/i;->V:I

    iput v1, p1, Lq/e;->M:I

    iget v1, v0, Lq/i;->W:I

    iput v1, p1, Lq/e;->J:I

    iget v1, v0, Lq/i;->X:I

    iput v1, p1, Lq/e;->K:I

    iget v1, v0, Lq/i;->Y:F

    iput v1, p1, Lq/e;->N:F

    iget v1, v0, Lq/i;->Z:F

    iput v1, p1, Lq/e;->O:F

    iget v1, v0, Lq/i;->B:I

    iput v1, p1, Lq/e;->R:I

    iget v1, v0, Lq/i;->f:F

    iput v1, p1, Lq/e;->c:F

    iget v1, v0, Lq/i;->d:I

    iput v1, p1, Lq/e;->a:I

    iget v1, v0, Lq/i;->e:I

    iput v1, p1, Lq/e;->b:I

    iget v1, v0, Lq/i;->b:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v1, v0, Lq/i;->c:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, v0, Lq/i;->f0:Ljava/lang/String;

    if-eqz v1, :cond_0

    iput-object v1, p1, Lq/e;->U:Ljava/lang/String;

    :cond_0
    iget v1, v0, Lq/i;->H:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v0, v0, Lq/i;->G:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Lq/e;->a()V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lq/h;

    invoke-direct {v0}, Lq/h;-><init>()V

    iget-object v1, v0, Lq/h;->d:Lq/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lq/h;->d:Lq/i;

    iget-boolean v3, v2, Lq/i;->a:Z

    iput-boolean v3, v1, Lq/i;->a:Z

    iget v3, v2, Lq/i;->b:I

    iput v3, v1, Lq/i;->b:I

    iget v3, v2, Lq/i;->c:I

    iput v3, v1, Lq/i;->c:I

    iget v3, v2, Lq/i;->d:I

    iput v3, v1, Lq/i;->d:I

    iget v3, v2, Lq/i;->e:I

    iput v3, v1, Lq/i;->e:I

    iget v3, v2, Lq/i;->f:F

    iput v3, v1, Lq/i;->f:F

    iget v3, v2, Lq/i;->g:I

    iput v3, v1, Lq/i;->g:I

    iget v3, v2, Lq/i;->h:I

    iput v3, v1, Lq/i;->h:I

    iget v3, v2, Lq/i;->i:I

    iput v3, v1, Lq/i;->i:I

    iget v3, v2, Lq/i;->j:I

    iput v3, v1, Lq/i;->j:I

    iget v3, v2, Lq/i;->k:I

    iput v3, v1, Lq/i;->k:I

    iget v3, v2, Lq/i;->l:I

    iput v3, v1, Lq/i;->l:I

    iget v3, v2, Lq/i;->m:I

    iput v3, v1, Lq/i;->m:I

    iget v3, v2, Lq/i;->n:I

    iput v3, v1, Lq/i;->n:I

    iget v3, v2, Lq/i;->o:I

    iput v3, v1, Lq/i;->o:I

    iget v3, v2, Lq/i;->p:I

    iput v3, v1, Lq/i;->p:I

    iget v3, v2, Lq/i;->q:I

    iput v3, v1, Lq/i;->q:I

    iget v3, v2, Lq/i;->r:I

    iput v3, v1, Lq/i;->r:I

    iget v3, v2, Lq/i;->s:I

    iput v3, v1, Lq/i;->s:I

    iget v3, v2, Lq/i;->t:F

    iput v3, v1, Lq/i;->t:F

    iget v3, v2, Lq/i;->u:F

    iput v3, v1, Lq/i;->u:F

    iget-object v3, v2, Lq/i;->v:Ljava/lang/String;

    iput-object v3, v1, Lq/i;->v:Ljava/lang/String;

    iget v3, v2, Lq/i;->w:I

    iput v3, v1, Lq/i;->w:I

    iget v3, v2, Lq/i;->x:I

    iput v3, v1, Lq/i;->x:I

    iget v3, v2, Lq/i;->y:F

    iput v3, v1, Lq/i;->y:F

    iget v3, v2, Lq/i;->z:I

    iput v3, v1, Lq/i;->z:I

    iget v3, v2, Lq/i;->A:I

    iput v3, v1, Lq/i;->A:I

    iget v3, v2, Lq/i;->B:I

    iput v3, v1, Lq/i;->B:I

    iget v3, v2, Lq/i;->C:I

    iput v3, v1, Lq/i;->C:I

    iget v3, v2, Lq/i;->D:I

    iput v3, v1, Lq/i;->D:I

    iget v3, v2, Lq/i;->E:I

    iput v3, v1, Lq/i;->E:I

    iget v3, v2, Lq/i;->F:I

    iput v3, v1, Lq/i;->F:I

    iget v3, v2, Lq/i;->G:I

    iput v3, v1, Lq/i;->G:I

    iget v3, v2, Lq/i;->H:I

    iput v3, v1, Lq/i;->H:I

    iget v3, v2, Lq/i;->I:I

    iput v3, v1, Lq/i;->I:I

    iget v3, v2, Lq/i;->J:I

    iput v3, v1, Lq/i;->J:I

    iget v3, v2, Lq/i;->K:I

    iput v3, v1, Lq/i;->K:I

    iget v3, v2, Lq/i;->L:I

    iput v3, v1, Lq/i;->L:I

    iget v3, v2, Lq/i;->M:I

    iput v3, v1, Lq/i;->M:I

    iget v3, v2, Lq/i;->N:I

    iput v3, v1, Lq/i;->N:I

    iget v3, v2, Lq/i;->O:F

    iput v3, v1, Lq/i;->O:F

    iget v3, v2, Lq/i;->P:F

    iput v3, v1, Lq/i;->P:F

    iget v3, v2, Lq/i;->Q:I

    iput v3, v1, Lq/i;->Q:I

    iget v3, v2, Lq/i;->R:I

    iput v3, v1, Lq/i;->R:I

    iget v3, v2, Lq/i;->S:I

    iput v3, v1, Lq/i;->S:I

    iget v3, v2, Lq/i;->T:I

    iput v3, v1, Lq/i;->T:I

    iget v3, v2, Lq/i;->U:I

    iput v3, v1, Lq/i;->U:I

    iget v3, v2, Lq/i;->V:I

    iput v3, v1, Lq/i;->V:I

    iget v3, v2, Lq/i;->W:I

    iput v3, v1, Lq/i;->W:I

    iget v3, v2, Lq/i;->X:I

    iput v3, v1, Lq/i;->X:I

    iget v3, v2, Lq/i;->Y:F

    iput v3, v1, Lq/i;->Y:F

    iget v3, v2, Lq/i;->Z:F

    iput v3, v1, Lq/i;->Z:F

    iget v3, v2, Lq/i;->a0:I

    iput v3, v1, Lq/i;->a0:I

    iget v3, v2, Lq/i;->b0:I

    iput v3, v1, Lq/i;->b0:I

    iget v3, v2, Lq/i;->c0:I

    iput v3, v1, Lq/i;->c0:I

    iget-object v3, v2, Lq/i;->f0:Ljava/lang/String;

    iput-object v3, v1, Lq/i;->f0:Ljava/lang/String;

    iget-object v3, v2, Lq/i;->d0:[I

    if-eqz v3, :cond_0

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v1, Lq/i;->d0:[I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v1, Lq/i;->d0:[I

    :goto_0
    iget-object v3, v2, Lq/i;->e0:Ljava/lang/String;

    iput-object v3, v1, Lq/i;->e0:Ljava/lang/String;

    iget-boolean v3, v2, Lq/i;->g0:Z

    iput-boolean v3, v1, Lq/i;->g0:Z

    iget-boolean v3, v2, Lq/i;->h0:Z

    iput-boolean v3, v1, Lq/i;->h0:Z

    iget-boolean v2, v2, Lq/i;->i0:Z

    iput-boolean v2, v1, Lq/i;->i0:Z

    iget-object v1, v0, Lq/h;->c:Lq/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lq/h;->c:Lq/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lq/j;->a:I

    iput v3, v1, Lq/j;->a:I

    iget v3, v2, Lq/j;->b:I

    iput v3, v1, Lq/j;->b:I

    iget v3, v2, Lq/j;->d:F

    iput v3, v1, Lq/j;->d:F

    iget v2, v2, Lq/j;->c:F

    iput v2, v1, Lq/j;->c:F

    iget-object v1, p0, Lq/h;->b:Lq/k;

    iget v2, v1, Lq/k;->a:I

    iget-object v3, v0, Lq/h;->b:Lq/k;

    iput v2, v3, Lq/k;->a:I

    iget v2, v1, Lq/k;->c:F

    iput v2, v3, Lq/k;->c:F

    iget v2, v1, Lq/k;->d:F

    iput v2, v3, Lq/k;->d:F

    iget v1, v1, Lq/k;->b:I

    iput v1, v3, Lq/k;->b:I

    iget-object v1, v0, Lq/h;->e:Lq/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lq/h;->e:Lq/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lq/l;->a:F

    iput v3, v1, Lq/l;->a:F

    iget v3, v2, Lq/l;->b:F

    iput v3, v1, Lq/l;->b:F

    iget v3, v2, Lq/l;->c:F

    iput v3, v1, Lq/l;->c:F

    iget v3, v2, Lq/l;->d:F

    iput v3, v1, Lq/l;->d:F

    iget v3, v2, Lq/l;->e:F

    iput v3, v1, Lq/l;->e:F

    iget v3, v2, Lq/l;->f:F

    iput v3, v1, Lq/l;->f:F

    iget v3, v2, Lq/l;->g:F

    iput v3, v1, Lq/l;->g:F

    iget v3, v2, Lq/l;->h:F

    iput v3, v1, Lq/l;->h:F

    iget v3, v2, Lq/l;->i:F

    iput v3, v1, Lq/l;->i:F

    iget v3, v2, Lq/l;->j:F

    iput v3, v1, Lq/l;->j:F

    iget-boolean v3, v2, Lq/l;->k:Z

    iput-boolean v3, v1, Lq/l;->k:Z

    iget v2, v2, Lq/l;->l:F

    iput v2, v1, Lq/l;->l:F

    iget v1, p0, Lq/h;->a:I

    iput v1, v0, Lq/h;->a:I

    return-object v0
.end method
