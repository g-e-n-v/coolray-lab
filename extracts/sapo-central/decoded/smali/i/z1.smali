.class public final Li/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Li/c2;


# direct methods
.method public synthetic constructor <init>(Li/c2;I)V
    .locals 0

    iput p2, p0, Li/z1;->a:I

    iput-object p1, p0, Li/z1;->b:Li/c2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Li/z1;->a:I

    iget-object v1, p0, Li/z1;->b:Li/c2;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Li/c2;->c:Li/q1;

    if-eqz v0, :cond_0

    sget-object v2, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lc0/c0;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Li/c2;->c:Li/q1;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    iget-object v2, v1, Li/c2;->c:Li/q1;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v0, v1, Li/c2;->c:Li/q1;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v2, v1, Li/c2;->m:I

    if-gt v0, v2, :cond_0

    iget-object v0, v1, Li/c2;->y:Li/b0;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {v1}, Li/c2;->d()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, v1, Li/c2;->c:Li/q1;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li/q1;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
