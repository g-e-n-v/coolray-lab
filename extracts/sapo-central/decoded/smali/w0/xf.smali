.class public final synthetic Lw0/xf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Landroid/widget/Button;

.field public final synthetic c:Le/i;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Landroid/widget/CheckBox;

.field public final synthetic f:Lcom/ex/auto/MainActivity;

.field public final synthetic g:Landroid/content/pm/PackageManager;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/widget/Button;Le/i;Ljava/util/ArrayList;Landroid/widget/CheckBox;Lcom/ex/auto/MainActivity;Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/xf;->a:Ljava/util/List;

    iput-object p2, p0, Lw0/xf;->b:Landroid/widget/Button;

    iput-object p3, p0, Lw0/xf;->c:Le/i;

    iput-object p4, p0, Lw0/xf;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lw0/xf;->e:Landroid/widget/CheckBox;

    iput-object p6, p0, Lw0/xf;->f:Lcom/ex/auto/MainActivity;

    iput-object p7, p0, Lw0/xf;->g:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p0, Lw0/xf;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, p0, Lw0/xf;->d:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    if-ltz v2, :cond_1

    move-object v6, v3

    check-cast v6, Lw0/yf;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    invoke-static {}, Ly1/h;->W()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    iget-object p1, p0, Lw0/xf;->b:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    move-object p1, v4

    iget-object v4, p0, Lw0/xf;->c:Le/i;

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 v2, -0x2

    invoke-virtual {v4, v2}, Le/i;->c(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lw0/xf;->e:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lw0/z;

    const/16 v5, 0x9

    iget-object v2, p0, Lw0/xf;->f:Lcom/ex/auto/MainActivity;

    iget-object v3, p0, Lw0/xf;->g:Landroid/content/pm/PackageManager;

    invoke-direct/range {v0 .. v5}, Lw0/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
