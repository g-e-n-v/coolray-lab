.class public final Le/i0;
.super La1/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le/k0;


# direct methods
.method public synthetic constructor <init>(Le/k0;I)V
    .locals 0

    iput p2, p0, Le/i0;->a:I

    iput-object p1, p0, Le/i0;->b:Le/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget v0, p0, Le/i0;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Le/i0;->b:Le/k0;

    packed-switch v0, :pswitch_data_0

    iput-object v1, v2, Le/k0;->s:Lg/k;

    iget-object v0, v2, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_0
    iget-boolean v0, v2, Le/k0;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, v2, Le/k0;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, v2, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, v2, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, v2, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iput-object v1, v2, Le/k0;->s:Lg/k;

    iget-object v0, v2, Le/k0;->k:Landroidx/activity/result/c;

    if-eqz v0, :cond_1

    iget-object v3, v2, Le/k0;->j:Le/j0;

    invoke-virtual {v0, v3}, Landroidx/activity/result/c;->y(Lg/a;)V

    iput-object v1, v2, Le/k0;->j:Le/j0;

    iput-object v1, v2, Le/k0;->k:Landroidx/activity/result/c;

    :cond_1
    iget-object v0, v2, Le/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_2

    sget-object v1, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lc0/d0;->c(Landroid/view/View;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
