.class public final synthetic Lw0/r9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Ljava/lang/Float;

.field public final synthetic c:Ljava/lang/Float;

.field public final synthetic d:Z

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Integer;

.field public final synthetic g:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/Float;Ljava/lang/Float;ZILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/r9;->a:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/r9;->b:Ljava/lang/Float;

    iput-object p3, p0, Lw0/r9;->c:Ljava/lang/Float;

    iput-boolean p4, p0, Lw0/r9;->d:Z

    iput p5, p0, Lw0/r9;->e:I

    iput-object p6, p0, Lw0/r9;->f:Ljava/lang/Integer;

    iput-object p7, p0, Lw0/r9;->g:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    iget-object v0, p0, Lw0/r9;->a:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lw0/r9;->b:Ljava/lang/Float;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%.1fV"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "n/d"

    :goto_0
    iget-object v3, v0, Lcom/ex/auto/MainActivity;->C0:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-object v1, v0, Lcom/ex/auto/MainActivity;->C0:Ljava/lang/String;

    const v3, 0x7f090218

    invoke-virtual {v0, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lw0/r9;->c:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/ex/auto/MainActivity;->w2(Ljava/lang/Float;)V

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->x2(Z)V

    iget-boolean v1, p0, Lw0/r9;->d:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->u1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lw0/r9;->e:I

    if-ne v2, v1, :cond_3

    iget v1, v0, Lcom/ex/auto/MainActivity;->R:I

    const v2, 0x7f090179

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->L1(I)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lw0/r9;->f:Ljava/lang/Integer;

    iget-object v2, p0, Lw0/r9;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/ex/auto/MainActivity;->i1(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_3
    :goto_1
    return-void
.end method
