.class public final Lw0/nc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:J

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/ex/auto/MainActivity;JLandroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/nc;->a:Lcom/ex/auto/MainActivity;

    iput-wide p2, p0, Lw0/nc;->b:J

    iput-object p4, p0, Lw0/nc;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lw0/nc;->d:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lw0/nc;->a:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lw0/nc;->b:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x15f90

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-boolean v4, v0, Lcom/ex/auto/MainActivity;->l0:Z

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object v0, p0, Lw0/nc;->d:Ljava/lang/CharSequence;

    iget-object v4, p0, Lw0/nc;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v1, :cond_3

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "Reiniciar"

    const-string v1, "r\u00f3tulo do card devolvido por tempo (90s)"

    invoke-static {v0, v1, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method
