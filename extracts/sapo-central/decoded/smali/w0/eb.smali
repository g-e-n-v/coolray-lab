.class public final synthetic Lw0/eb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw0/eb;->a:I

    iput-object p2, p0, Lw0/eb;->b:Lcom/ex/auto/MainActivity;

    iput p3, p0, Lw0/eb;->c:I

    iput-boolean p4, p0, Lw0/eb;->d:Z

    iput-boolean p5, p0, Lw0/eb;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lw0/eb;->a:I

    iget-object v1, p0, Lw0/eb;->b:Lcom/ex/auto/MainActivity;

    iget v2, p0, Lw0/eb;->c:I

    iget-boolean v3, p0, Lw0/eb;->d:Z

    iget-boolean v4, p0, Lw0/eb;->e:Z

    iget-object v5, v1, Lcom/ex/auto/MainActivity;->s0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-ne v0, v5, :cond_5

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/ex/auto/MainActivity;->t0:Z

    const/4 v5, 0x1

    if-ltz v2, :cond_2

    if-nez v2, :cond_1

    move v0, v5

    :cond_1
    iput-boolean v0, v1, Lcom/ex/auto/MainActivity;->r0:Z

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "avas_muted_saved"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_3
    const v0, 0x7f0f00d4

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    const v0, 0x7f09012f

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->g1()V

    :cond_5
    :goto_1
    return-void
.end method
