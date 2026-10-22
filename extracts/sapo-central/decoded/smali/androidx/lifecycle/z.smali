.class public Landroidx/lifecycle/z;
.super Landroidx/lifecycle/e;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/a0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/a0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/z;->this$0:Landroidx/lifecycle/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    sget p2, Landroidx/lifecycle/b0;->b:I

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/b0;

    iget-object p2, p0, Landroidx/lifecycle/z;->this$0:Landroidx/lifecycle/a0;

    iget-object p2, p2, Landroidx/lifecycle/a0;->h:Landroidx/emoji2/text/m;

    iput-object p2, p1, Landroidx/lifecycle/b0;->a:Landroidx/emoji2/text/m;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    iget-object p1, p0, Landroidx/lifecycle/z;->this$0:Landroidx/lifecycle/a0;

    iget v0, p1, Landroidx/lifecycle/a0;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/lifecycle/a0;->b:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/lifecycle/a0;->e:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/lifecycle/a0;->g:Landroidx/activity/d;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    new-instance p2, Landroidx/lifecycle/z$a;

    invoke-direct {p2, p0}, Landroidx/lifecycle/z$a;-><init>(Landroidx/lifecycle/z;)V

    invoke-static {p1, p2}, Landroidx/lifecycle/y;->i(Landroid/app/Activity;Landroidx/lifecycle/z$a;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    iget-object p1, p0, Landroidx/lifecycle/z;->this$0:Landroidx/lifecycle/a0;

    iget v0, p1, Landroidx/lifecycle/a0;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Landroidx/lifecycle/a0;->a:I

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroidx/lifecycle/a0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/lifecycle/a0;->f:Landroidx/lifecycle/s;

    sget-object v2, Landroidx/lifecycle/k;->ON_STOP:Landroidx/lifecycle/k;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    iput-boolean v1, p1, Landroidx/lifecycle/a0;->d:Z

    :cond_0
    return-void
.end method
