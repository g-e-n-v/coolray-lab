.class public final Landroidx/fragment/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/j;Ljava/util/ArrayList;Landroidx/fragment/app/s0;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Landroidx/fragment/app/c;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/fragment/app/c;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Landroidx/fragment/app/c;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/c;->c:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Li/o2;Landroid/widget/AutoCompleteTextView;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/c;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/fragment/app/c;->a:I

    iput-object p1, p0, Landroidx/fragment/app/c;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/c;->a:I

    iget-object v1, p0, Landroidx/fragment/app/c;->c:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/fragment/app/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Lz/e;

    invoke-virtual {v2, v1}, Lz/e;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast v2, Landroidx/emoji2/text/m;

    check-cast v1, Landroid/graphics/Typeface;

    iget-object v0, v2, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lu/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lu/b;->e(Landroid/graphics/Typeface;)V

    :cond_0
    return-void

    :pswitch_1
    check-cast v2, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    check-cast v1, Li/o2;

    iget-object v2, v1, Li/o2;->b:Ljava/lang/Object;

    check-cast v2, Lu1/k;

    invoke-virtual {v2, v0}, Lu1/k;->g(Z)V

    iget-object v1, v1, Li/o2;->b:Ljava/lang/Object;

    check-cast v1, Lu1/k;

    iput-boolean v0, v1, Lu1/k;->i:Z

    return-void

    :pswitch_2
    check-cast v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Li0/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li0/e;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast v2, Landroid/view/View;

    sget-object v0, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2, p0}, Lc0/a0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :pswitch_3
    check-cast v2, Ljava/util/ArrayList;

    check-cast v1, Landroidx/fragment/app/s0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/r;

    iget-object v0, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    iget v1, v1, Landroidx/fragment/app/s0;->a:I

    invoke-static {v0, v1}, Landroidx/activity/result/b;->a(Landroid/view/View;I)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
