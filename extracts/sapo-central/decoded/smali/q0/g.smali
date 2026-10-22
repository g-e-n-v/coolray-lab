.class public final Lq0/g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq0/h;

.field public final synthetic c:Landroid/view/ViewPropertyAnimator;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lq0/j;


# direct methods
.method public synthetic constructor <init>(Lq0/j;Lq0/h;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V
    .locals 0

    iput p5, p0, Lq0/g;->a:I

    iput-object p1, p0, Lq0/g;->e:Lq0/j;

    iput-object p2, p0, Lq0/g;->b:Lq0/h;

    iput-object p3, p0, Lq0/g;->c:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lq0/g;->d:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Lq0/g;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lq0/g;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lq0/g;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lq0/g;->b:Lq0/h;

    iget-object v0, p1, Lq0/h;->b:Lq0/w0;

    iget-object v1, p0, Lq0/g;->e:Lq0/j;

    invoke-virtual {v1, v0}, Lq0/e0;->c(Lq0/w0;)V

    iget-object v0, v1, Lq0/j;->r:Ljava/util/ArrayList;

    iget-object p1, p1, Lq0/h;->b:Lq0/w0;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lq0/j;->i()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lq0/g;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lq0/g;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lq0/g;->b:Lq0/h;

    iget-object v0, p1, Lq0/h;->a:Lq0/w0;

    iget-object v1, p0, Lq0/g;->e:Lq0/j;

    invoke-virtual {v1, v0}, Lq0/e0;->c(Lq0/w0;)V

    iget-object v0, v1, Lq0/j;->r:Ljava/util/ArrayList;

    iget-object p1, p1, Lq0/h;->a:Lq0/w0;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lq0/j;->i()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Lq0/g;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lq0/g;->b:Lq0/h;

    iget-object p1, p1, Lq0/h;->b:Lq0/w0;

    iget-object p1, p0, Lq0/g;->e:Lq0/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    iget-object p1, p0, Lq0/g;->b:Lq0/h;

    iget-object p1, p1, Lq0/h;->a:Lq0/w0;

    iget-object p1, p0, Lq0/g;->e:Lq0/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
