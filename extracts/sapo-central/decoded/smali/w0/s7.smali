.class public final synthetic Lw0/s7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/HomeFloatingWidgetsService;

.field public final synthetic b:J

.field public final synthetic c:Li2/m;

.field public final synthetic d:Li2/m;

.field public final synthetic e:Li2/m;

.field public final synthetic f:Li2/m;

.field public final synthetic g:Li2/m;

.field public final synthetic h:Li2/m;

.field public final synthetic i:Li2/m;

.field public final synthetic j:Li2/m;

.field public final synthetic k:Li2/m;

.field public final synthetic l:Li2/m;

.field public final synthetic m:Li2/m;

.field public final synthetic n:Li2/m;

.field public final synthetic o:Li2/m;

.field public final synthetic p:Ljava/util/ArrayList;

.field public final synthetic q:Lw0/t7;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;JLi2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Ljava/util/ArrayList;Lw0/t7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/s7;->a:Lcom/ex/auto/HomeFloatingWidgetsService;

    iput-wide p2, p0, Lw0/s7;->b:J

    iput-object p4, p0, Lw0/s7;->c:Li2/m;

    iput-object p5, p0, Lw0/s7;->d:Li2/m;

    iput-object p6, p0, Lw0/s7;->e:Li2/m;

    iput-object p7, p0, Lw0/s7;->f:Li2/m;

    iput-object p8, p0, Lw0/s7;->g:Li2/m;

    iput-object p9, p0, Lw0/s7;->h:Li2/m;

    iput-object p10, p0, Lw0/s7;->i:Li2/m;

    iput-object p11, p0, Lw0/s7;->j:Li2/m;

    iput-object p12, p0, Lw0/s7;->k:Li2/m;

    iput-object p13, p0, Lw0/s7;->l:Li2/m;

    iput-object p14, p0, Lw0/s7;->m:Li2/m;

    iput-object p15, p0, Lw0/s7;->n:Li2/m;

    move-object/from16 p1, p16

    iput-object p1, p0, Lw0/s7;->o:Li2/m;

    move-object/from16 p1, p17

    iput-object p1, p0, Lw0/s7;->p:Ljava/util/ArrayList;

    move-object/from16 p1, p18

    iput-object p1, p0, Lw0/s7;->q:Lw0/t7;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lw0/s7;->a:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-wide v2, v0, Lw0/s7;->b:J

    iget-object v4, v0, Lw0/s7;->c:Li2/m;

    iget-object v5, v0, Lw0/s7;->d:Li2/m;

    iget-object v6, v0, Lw0/s7;->e:Li2/m;

    iget-object v7, v0, Lw0/s7;->f:Li2/m;

    iget-object v8, v0, Lw0/s7;->g:Li2/m;

    iget-object v9, v0, Lw0/s7;->h:Li2/m;

    iget-object v10, v0, Lw0/s7;->i:Li2/m;

    iget-object v11, v0, Lw0/s7;->j:Li2/m;

    iget-object v12, v0, Lw0/s7;->k:Li2/m;

    iget-object v13, v0, Lw0/s7;->l:Li2/m;

    iget-object v14, v0, Lw0/s7;->m:Li2/m;

    iget-object v15, v0, Lw0/s7;->n:Li2/m;

    move-wide/from16 v16, v2

    iget-object v2, v0, Lw0/s7;->o:Li2/m;

    iget-object v3, v0, Lw0/s7;->p:Ljava/util/ArrayList;

    move-object/from16 v18, v3

    iget-object v3, v0, Lw0/s7;->q:Lw0/t7;

    iget-boolean v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v19

    cmp-long v0, v16, v19

    if-nez v0, :cond_1

    iget-object v0, v4, Li2/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->o:Ljava/lang/Integer;

    iget-object v0, v5, Li2/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->p:Ljava/lang/Integer;

    iget-object v0, v6, Li2/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Integer;

    iget-object v0, v7, Li2/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->r:Ljava/lang/Float;

    iget-object v0, v8, Li2/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    iget-object v0, v9, Li2/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    iget-object v0, v10, Li2/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Ljava/lang/Boolean;

    iget-object v0, v11, Li2/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Ljava/lang/Boolean;

    iget-object v0, v12, Li2/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Ljava/lang/Boolean;

    iget-object v0, v13, Li2/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Ljava/lang/Boolean;

    iget-object v0, v14, Li2/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Ljava/lang/Integer;

    iget-object v0, v15, Li2/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Ljava/lang/Integer;

    iget-object v0, v2, Li2/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->A:Ljava/lang/Boolean;

    iget-object v0, v4, Li2/m;->a:Ljava/lang/Object;

    iget-object v4, v5, Li2/m;->a:Ljava/lang/Object;

    iget-object v5, v6, Li2/m;->a:Ljava/lang/Object;

    iget-object v6, v7, Li2/m;->a:Ljava/lang/Object;

    iget-object v7, v8, Li2/m;->a:Ljava/lang/Object;

    iget-object v8, v9, Li2/m;->a:Ljava/lang/Object;

    iget-object v9, v10, Li2/m;->a:Ljava/lang/Object;

    iget-object v10, v11, Li2/m;->a:Ljava/lang/Object;

    iget-object v11, v12, Li2/m;->a:Ljava/lang/Object;

    iget-object v12, v13, Li2/m;->a:Ljava/lang/Object;

    iget-object v13, v14, Li2/m;->a:Ljava/lang/Object;

    iget-object v14, v15, Li2/m;->a:Ljava/lang/Object;

    iget-object v2, v2, Li2/m;->a:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v31, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    filled-new-array/range {v19 .. v31}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-static {v0, v2}, Ly1/g;->g0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->I()V

    invoke-virtual {v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->J()V

    invoke-virtual {v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->L()V

    invoke-virtual {v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->N()V

    invoke-virtual {v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->M()V

    invoke-virtual {v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->K()V

    :cond_1
    iget-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
