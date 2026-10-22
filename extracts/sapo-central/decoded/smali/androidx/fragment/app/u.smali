.class public final Landroidx/fragment/app/u;
.super La1/b;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/j0;
.implements Landroidx/lifecycle/q;
.implements Landroidx/fragment/app/k0;


# instance fields
.field public final a:Le/j;

.field public final b:Le/j;

.field public final c:Landroid/os/Handler;

.field public final d:Landroidx/fragment/app/h0;

.field public final synthetic e:Le/j;


# direct methods
.method public constructor <init>(Le/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/u;->e:Le/j;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/fragment/app/h0;

    invoke-direct {v1}, Landroidx/fragment/app/h0;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/u;->d:Landroidx/fragment/app/h0;

    iput-object p1, p0, Landroidx/fragment/app/u;->a:Le/j;

    iput-object p1, p0, Landroidx/fragment/app/u;->b:Le/j;

    iput-object v0, p0, Landroidx/fragment/app/u;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final L(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/u;->e:Le/j;

    invoke-virtual {v0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final M()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/u;->e:Le/j;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()Landroidx/lifecycle/i0;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/u;->e:Le/j;

    invoke-virtual {v0}, Landroidx/activity/h;->e()Landroidx/lifecycle/i0;

    move-result-object v0

    return-object v0
.end method

.method public final f()Landroidx/lifecycle/s;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/u;->e:Le/j;

    iget-object v0, v0, Le/j;->o:Landroidx/lifecycle/s;

    return-object v0
.end method
