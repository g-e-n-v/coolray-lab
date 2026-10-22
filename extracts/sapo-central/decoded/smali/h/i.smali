.class public final Lh/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/z;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Lh/m;

.field public d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public e:Lh/y;

.field public f:Lh/h;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/i;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lh/i;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final b(Lh/m;Z)V
    .locals 1

    iget-object v0, p0, Lh/i;->e:Lh/y;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lh/y;->b(Lh/m;Z)V

    :cond_0
    return-void
.end method

.method public final c(Lh/y;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lh/i;->f:Lh/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final g(Landroid/content/Context;Lh/m;)V
    .locals 1

    iget-object v0, p0, Lh/i;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lh/i;->a:Landroid/content/Context;

    iget-object v0, p0, Lh/i;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lh/i;->b:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Lh/i;->c:Lh/m;

    iget-object p1, p0, Lh/i;->f:Lh/h;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lh/h;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i(Lh/o;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final j(Lh/o;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final k(Lh/f0;)Z
    .locals 6

    invoke-virtual {p1}, Lh/m;->hasVisibleItems()Z

    move-result v0

    iget-object v1, p1, Lh/m;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lh/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lh/n;->a:Lh/f0;

    new-instance v2, Le/h;

    invoke-direct {v2, v1}, Le/h;-><init>(Landroid/content/Context;)V

    new-instance v3, Lh/i;

    iget-object v4, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v4, Le/d;

    iget-object v5, v4, Le/d;->a:Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, v5}, Lh/i;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v3, v0, Lh/n;->c:Lh/i;

    iput-object v0, v3, Lh/i;->e:Lh/y;

    invoke-virtual {p1, v3, v1}, Lh/m;->b(Lh/z;Landroid/content/Context;)V

    iget-object v1, v0, Lh/n;->c:Lh/i;

    iget-object v3, v1, Lh/i;->f:Lh/h;

    if-nez v3, :cond_1

    new-instance v3, Lh/h;

    invoke-direct {v3, v1}, Lh/h;-><init>(Lh/i;)V

    iput-object v3, v1, Lh/i;->f:Lh/h;

    :cond_1
    iget-object v1, v1, Lh/i;->f:Lh/h;

    iput-object v1, v4, Le/d;->q:Ljava/lang/Object;

    iput-object v0, v4, Le/d;->r:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p1, Lh/m;->o:Landroid/view/View;

    if-eqz v1, :cond_2

    iput-object v1, v4, Le/d;->e:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lh/m;->n:Landroid/graphics/drawable/Drawable;

    iput-object v1, v4, Le/d;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lh/m;->m:Ljava/lang/CharSequence;

    iput-object v1, v4, Le/d;->d:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v4, Le/d;->o:Lh/n;

    invoke-virtual {v2}, Le/h;->a()Le/i;

    move-result-object v1

    iput-object v1, v0, Lh/n;->b:Le/i;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Lh/n;->b:Le/i;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Lh/n;->b:Le/i;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lh/i;->e:Lh/y;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lh/y;->g(Lh/m;)Z

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lh/i;->c:Lh/m;

    iget-object p2, p0, Lh/i;->f:Lh/h;

    invoke-virtual {p2, p3}, Lh/h;->b(I)Lh/o;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lh/m;->q(Landroid/view/MenuItem;Lh/z;I)Z

    return-void
.end method
