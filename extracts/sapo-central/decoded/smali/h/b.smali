.class public final Lh/b;
.super Li/t1;
.source "SourceFile"


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lh/b;->j:I

    .line 1
    iput-object p1, p0, Lh/b;->k:Landroid/view/View;

    .line 2
    invoke-direct {p0, p1}, Li/t1;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Li/i;Li/i;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lh/b;->j:I

    .line 3
    iput-object p1, p0, Lh/b;->k:Landroid/view/View;

    invoke-direct {p0, p2}, Li/t1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lh/d0;
    .locals 1

    iget v0, p0, Lh/b;->j:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lh/b;->k:Landroid/view/View;

    check-cast v0, Li/i;

    iget-object v0, v0, Li/i;->d:Li/j;

    iget-object v0, v0, Li/j;->s:Li/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lh/x;->a()Lh/u;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lh/b;->k:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:Lh/c;

    if-eqz v0, :cond_1

    check-cast v0, Li/g;

    iget-object v0, v0, Li/g;->a:Li/j;

    iget-object v0, v0, Li/j;->t:Li/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lh/x;->a()Lh/u;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lh/b;->j:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lh/b;->k:Landroid/view/View;

    check-cast v0, Li/i;

    iget-object v0, v0, Li/i;->d:Li/j;

    invoke-virtual {v0}, Li/j;->l()Z

    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lh/b;->k:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->j:Lh/l;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Lh/o;

    invoke-interface {v1, v0}, Lh/l;->b(Lh/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh/b;->b()Lh/d0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lh/d0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lh/b;->j:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Li/t1;->d()Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lh/b;->k:Landroid/view/View;

    check-cast v0, Li/i;

    iget-object v0, v0, Li/i;->d:Li/j;

    iget-object v1, v0, Li/j;->u:Li/h;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Li/j;->d()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
