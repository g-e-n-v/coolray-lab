.class public final Lh/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public final a:Landroid/view/ActionProvider;

.field public b:Landroidx/emoji2/text/m;


# direct methods
.method public constructor <init>(Lh/t;Landroid/view/ActionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh/p;->a:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public final a(Lh/o;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lh/p;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .locals 1

    iget-object p1, p0, Lh/p;->b:Landroidx/emoji2/text/m;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast p1, Lh/o;

    iget-object p1, p1, Lh/o;->n:Lh/m;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lh/m;->h:Z

    invoke-virtual {p1, v0}, Lh/m;->p(Z)V

    :cond_0
    return-void
.end method
