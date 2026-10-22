.class public final synthetic Lc0/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/emoji2/text/m;


# direct methods
.method public synthetic constructor <init>(Landroidx/emoji2/text/m;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0/t0;->a:Landroidx/emoji2/text/m;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lc0/t0;->a:Landroidx/emoji2/text/m;

    iget-object p1, p1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast p1, Le/k0;

    iget-object p1, p1, Le/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
