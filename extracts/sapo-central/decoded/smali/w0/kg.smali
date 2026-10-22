.class public final synthetic Lw0/kg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/SplitFloaterService;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/SplitFloaterService;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/kg;->a:Lcom/ex/auto/SplitFloaterService;

    iput p2, p0, Lw0/kg;->b:F

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lw0/kg;->a:Lcom/ex/auto/SplitFloaterService;

    iget v0, p0, Lw0/kg;->b:F

    iget-object v1, p1, Lcom/ex/auto/SplitFloaterService;->l:Lw0/ng;

    iget-object v2, p1, Lcom/ex/auto/SplitFloaterService;->j:Lw0/mg;

    iget-object v3, p1, Lcom/ex/auto/SplitFloaterService;->k:Lw0/mg;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    iget-boolean v4, p1, Lcom/ex/auto/SplitFloaterService;->o:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget v4, p1, Lcom/ex/auto/SplitFloaterService;->m:F

    add-float/2addr v4, v0

    const v0, 0x3e19999a    # 0.15f

    const v5, 0x3f59999a    # 0.85f

    invoke-static {v4, v0, v5}, Lk1/a;->j(FFF)F

    move-result v0

    iput v0, p1, Lcom/ex/auto/SplitFloaterService;->m:F

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ex/auto/SplitFloaterService;->o:Z

    invoke-virtual {p1}, Lcom/ex/auto/SplitFloaterService;->h()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lw0/z;

    invoke-direct {v4, v2, p1, v1, v3}, Lw0/z;-><init>(Lw0/mg;Lcom/ex/auto/SplitFloaterService;Lw0/ng;Lw0/mg;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method
