.class public final Le/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le/y;


# direct methods
.method public synthetic constructor <init>(Le/y;I)V
    .locals 0

    iput p2, p0, Le/p;->a:I

    iput-object p1, p0, Le/p;->b:Le/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Le/p;->a:I

    iget-object v1, p0, Le/p;->b:Le/y;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Le/y;->w:Landroid/widget/PopupWindow;

    iget-object v3, v1, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v4, 0x37

    invoke-virtual {v0, v3, v4, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, v1, Le/y;->y:Lc0/w0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc0/w0;->b()V

    :cond_0
    iget-boolean v0, v1, Le/y;->z:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget-object v0, v1, Le/y;->A:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    sget-object v4, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lc0/c0;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v1, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lc0/p0;->a(Landroid/view/View;)Lc0/w0;

    move-result-object v0

    invoke-virtual {v0, v3}, Lc0/w0;->a(F)V

    iput-object v0, v1, Le/y;->y:Lc0/w0;

    new-instance v1, Le/r;

    invoke-direct {v1, v2, p0}, Le/r;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc0/w0;->d(Lc0/x0;)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v1, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_0
    iget v0, v1, Le/y;->Z:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v1, v2}, Le/y;->B(I)V

    :cond_2
    iget v0, v1, Le/y;->Z:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_3

    const/16 v0, 0x6c

    invoke-virtual {v1, v0}, Le/y;->B(I)V

    :cond_3
    iput-boolean v2, v1, Le/y;->Y:Z

    iput v2, v1, Le/y;->Z:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
