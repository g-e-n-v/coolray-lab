.class public final Lc0/u0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lc0/x0;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lc0/x0;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lc0/u0;->a:Lc0/x0;

    iput-object p2, p0, Lc0/u0;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lc0/u0;->a:Lc0/x0;

    iget-object v0, p0, Lc0/u0;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lc0/x0;->c(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lc0/u0;->a:Lc0/x0;

    invoke-interface {p1}, Lc0/x0;->b()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lc0/u0;->a:Lc0/x0;

    invoke-interface {p1}, Lc0/x0;->g()V

    return-void
.end method
