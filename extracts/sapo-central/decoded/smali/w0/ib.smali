.class public final synthetic Lw0/ib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lh2/l;

.field public final synthetic e:Z

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Lh2/l;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Lh2/l;ZLandroid/view/View;Lh2/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/ib;->a:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/ib;->b:Ljava/lang/String;

    iput-object p3, p0, Lw0/ib;->c:Ljava/lang/String;

    iput-object p4, p0, Lw0/ib;->d:Lh2/l;

    iput-boolean p5, p0, Lw0/ib;->e:Z

    iput-object p6, p0, Lw0/ib;->f:Landroid/view/View;

    iput-object p7, p0, Lw0/ib;->g:Lh2/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lw0/ib;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw0/ib;->a:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x2ee0

    iget-object v3, p0, Lw0/ib;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ex/auto/MainActivity;->v2(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ADB"

    invoke-virtual {v1, v2, v0}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lw0/ib;->d:Lh2/l;

    if-eqz v0, :cond_0

    invoke-interface {v0, v3}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_3

    const-string v0, "Falha no ADB local"

    invoke-static {v3, v0, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const-string v4, "getString(...)"

    if-nez v0, :cond_2

    const-string v0, "NAO_CONFIRMADO"

    invoke-static {v3, v0, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ERRO"

    invoke-static {v3, v0, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "error"

    invoke-static {v3, v0, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "not found"

    invoke-static {v3, v0, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "No such"

    invoke-static {v3, v0, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Permission denied"

    invoke-static {v3, v0, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Read-only file system"

    invoke-static {v3, v0, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x7f0f0109

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    const v0, 0x7f0f0272

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-virtual {v1, v0, v2}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    iget-boolean v0, p0, Lw0/ib;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lw0/ib;->f:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lw0/ib;->g:Lh2/l;

    if-eqz v0, :cond_5

    invoke-interface {v0, v3}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->n0()Lw0/p3;

    move-result-object v0

    invoke-virtual {v0}, Lw0/p3;->a()V

    return-void
.end method
