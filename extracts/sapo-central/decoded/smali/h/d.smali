.class public final Lh/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lh/d;->a:I

    iput-object p2, p0, Lh/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget v0, p0, Lh/d;->a:I

    iget-object v1, p0, Lh/d;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Li/q0;

    iget-object v0, v1, Li/q0;->F:Li/t0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lc0/c0;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Li/q0;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Li/q0;->s()V

    invoke-virtual {v1}, Li/c2;->d()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Li/c2;->dismiss()V

    :goto_0
    return-void

    :pswitch_0
    check-cast v1, Li/t0;

    invoke-virtual {v1}, Li/t0;->getInternalPopup()Li/s0;

    move-result-object v0

    invoke-interface {v0}, Li/s0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Li/t0;->f:Li/s0;

    invoke-static {v1}, Li/k0;->b(Landroid/view/View;)I

    move-result v2

    invoke-static {v1}, Li/k0;->a(Landroid/view/View;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Li/s0;->k(II)V

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, p0}, Li/j0;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void

    :pswitch_1
    check-cast v1, Lh/e0;

    iget-object v0, v1, Lh/e0;->h:Li/i2;

    invoke-virtual {v1}, Lh/e0;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Li/c2;->x:Z

    if-nez v2, :cond_5

    iget-object v2, v1, Lh/e0;->m:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Li/c2;->d()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v1}, Lh/e0;->dismiss()V

    :cond_5
    :goto_2
    return-void

    :pswitch_2
    check-cast v1, Lh/g;

    iget-object v0, v1, Lh/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lh/g;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh/f;

    iget-object v3, v3, Lh/f;->a:Li/i2;

    iget-boolean v3, v3, Li/c2;->x:Z

    if-nez v3, :cond_8

    iget-object v3, v1, Lh/g;->o:Landroid/view/View;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lh/f;

    iget-object v3, v3, Lh/f;->a:Li/i2;

    invoke-virtual {v3}, Li/c2;->d()V

    goto :goto_3

    :cond_7
    :goto_4
    invoke-virtual {v1}, Lh/g;->dismiss()V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
