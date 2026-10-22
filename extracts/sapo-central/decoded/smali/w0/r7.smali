.class public final synthetic Lw0/r7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/HomeFloatingWidgetsService;

.field public final synthetic b:Landroid/car/hardware/property/CarPropertyManager;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Z

.field public final synthetic j:J

.field public final synthetic k:Ljava/util/ArrayList;

.field public final synthetic l:Lw0/t7;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/car/hardware/property/CarPropertyManager;ZZZZZZZJLjava/util/ArrayList;Lw0/t7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/r7;->a:Lcom/ex/auto/HomeFloatingWidgetsService;

    iput-object p2, p0, Lw0/r7;->b:Landroid/car/hardware/property/CarPropertyManager;

    iput-boolean p3, p0, Lw0/r7;->c:Z

    iput-boolean p4, p0, Lw0/r7;->d:Z

    iput-boolean p5, p0, Lw0/r7;->e:Z

    iput-boolean p6, p0, Lw0/r7;->f:Z

    iput-boolean p7, p0, Lw0/r7;->g:Z

    iput-boolean p8, p0, Lw0/r7;->h:Z

    iput-boolean p9, p0, Lw0/r7;->i:Z

    iput-wide p10, p0, Lw0/r7;->j:J

    iput-object p12, p0, Lw0/r7;->k:Ljava/util/ArrayList;

    iput-object p13, p0, Lw0/r7;->l:Lw0/t7;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v2, v0, Lw0/r7;->a:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v1, v0, Lw0/r7;->b:Landroid/car/hardware/property/CarPropertyManager;

    iget-boolean v3, v0, Lw0/r7;->c:Z

    iget-boolean v4, v0, Lw0/r7;->d:Z

    iget-boolean v5, v0, Lw0/r7;->e:Z

    iget-boolean v6, v0, Lw0/r7;->f:Z

    iget-boolean v7, v0, Lw0/r7;->g:Z

    iget-boolean v8, v0, Lw0/r7;->h:Z

    iget-boolean v9, v0, Lw0/r7;->i:Z

    move v10, v3

    move v11, v4

    iget-wide v3, v0, Lw0/r7;->j:J

    iget-object v12, v0, Lw0/r7;->k:Ljava/util/ArrayList;

    iget-object v13, v0, Lw0/r7;->l:Lw0/t7;

    move v14, v5

    new-instance v5, Li2/m;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v15, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->o:Ljava/lang/Integer;

    iput-object v15, v5, Li2/m;->a:Ljava/lang/Object;

    move v15, v6

    new-instance v6, Li2/m;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->p:Ljava/lang/Integer;

    iput-object v0, v6, Li2/m;->a:Ljava/lang/Object;

    move v0, v7

    new-instance v7, Li2/m;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move/from16 v16, v0

    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Integer;

    iput-object v0, v7, Li2/m;->a:Ljava/lang/Object;

    move v0, v8

    new-instance v8, Li2/m;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move/from16 v17, v0

    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->r:Ljava/lang/Float;

    iput-object v0, v8, Li2/m;->a:Ljava/lang/Object;

    move v0, v9

    new-instance v9, Li2/m;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move/from16 v18, v0

    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    iput-object v0, v9, Li2/m;->a:Ljava/lang/Object;

    move v0, v10

    new-instance v10, Li2/m;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    move/from16 v19, v0

    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    iput-object v0, v10, Li2/m;->a:Ljava/lang/Object;

    move v0, v11

    new-instance v11, Li2/m;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    move/from16 v20, v0

    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Ljava/lang/Boolean;

    iput-object v0, v11, Li2/m;->a:Ljava/lang/Object;

    move/from16 v0, v18

    move-object/from16 v18, v12

    new-instance v12, Li2/m;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    move/from16 v21, v0

    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Ljava/lang/Boolean;

    iput-object v0, v12, Li2/m;->a:Ljava/lang/Object;

    move/from16 v0, v19

    move-object/from16 v19, v13

    new-instance v13, Li2/m;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    move/from16 v22, v0

    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Ljava/lang/Boolean;

    iput-object v0, v13, Li2/m;->a:Ljava/lang/Object;

    move v0, v14

    new-instance v14, Li2/m;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    move/from16 v23, v0

    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Ljava/lang/Boolean;

    iput-object v0, v14, Li2/m;->a:Ljava/lang/Object;

    move v0, v15

    new-instance v15, Li2/m;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    move/from16 v24, v0

    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Ljava/lang/Integer;

    iput-object v0, v15, Li2/m;->a:Ljava/lang/Object;

    new-instance v0, Li2/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v25, v3

    iget-object v3, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Ljava/lang/Integer;

    iput-object v3, v0, Li2/m;->a:Ljava/lang/Object;

    new-instance v3, Li2/m;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-object v4, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->A:Ljava/lang/Boolean;

    iput-object v4, v3, Li2/m;->a:Ljava/lang/Object;

    if-eqz v1, :cond_7

    if-eqz v22, :cond_0

    sget-object v4, Lw0/v7;->a:[I

    sget-object v4, Lw0/v7;->f:[I

    move-object/from16 v22, v2

    sget-object v2, Lw0/v7;->h:Ljava/util/Set;

    move-object/from16 v27, v3

    const v3, 0x22010100

    invoke-static {v1, v3, v4, v2}, Lw0/v7;->g(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v5, Li2/m;->a:Ljava/lang/Object;

    sget-object v2, Lw0/v7;->e:[I

    sget-object v3, Lw0/v7;->i:Ljava/util/Set;

    const v4, 0x20020500

    invoke-static {v1, v4, v2, v3}, Lw0/v7;->g(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v6, Li2/m;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v27, v3

    :goto_0
    if-eqz v20, :cond_1

    invoke-static {v1}, Lw0/v7;->e(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v7, Li2/m;->a:Ljava/lang/Object;

    :cond_1
    if-eqz v23, :cond_2

    invoke-static {v1}, Lw0/v7;->k(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v8, Li2/m;->a:Ljava/lang/Object;

    :cond_2
    if-eqz v24, :cond_3

    invoke-static {v1}, Lw0/v7;->l(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v9, Li2/m;->a:Ljava/lang/Object;

    :cond_3
    if-eqz v16, :cond_4

    invoke-static {v1}, Lw0/v7;->i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v10, Li2/m;->a:Ljava/lang/Object;

    :cond_4
    if-eqz v17, :cond_5

    invoke-static {v1}, Lw0/v7;->h(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v11, Li2/m;->a:Ljava/lang/Object;

    invoke-static {v1}, Lw0/v7;->m(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v12, Li2/m;->a:Ljava/lang/Object;

    invoke-static {v1}, Lw0/v7;->f(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v13, Li2/m;->a:Ljava/lang/Object;

    invoke-static {v1}, Lw0/v7;->n(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v14, Li2/m;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lw0/v7;->j(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v15, Li2/m;->a:Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lw0/v7;->j(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Li2/m;->a:Ljava/lang/Object;

    :cond_5
    if-eqz v21, :cond_6

    invoke-static {v1}, Lw0/v7;->d(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v2, v27

    iput-object v1, v2, Li2/m;->a:Ljava/lang/Object;

    :goto_1
    move-object/from16 v1, v22

    goto :goto_2

    :cond_6
    move-object/from16 v2, v27

    goto :goto_1

    :cond_7
    move-object/from16 v22, v2

    move-object v2, v3

    goto :goto_1

    :goto_2
    iget-object v3, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    move-object/from16 v22, v1

    new-instance v1, Lw0/s7;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object v0, v3

    move-object/from16 v2, v22

    move-wide/from16 v3, v25

    invoke-direct/range {v1 .. v19}, Lw0/s7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;JLi2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Li2/m;Ljava/util/ArrayList;Lw0/t7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
