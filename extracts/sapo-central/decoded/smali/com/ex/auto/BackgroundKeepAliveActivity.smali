.class public final Lcom/ex/auto/BackgroundKeepAliveActivity;
.super Le/j;
.source "SourceFile"


# static fields
.field public static final synthetic v:I


# instance fields
.field public final t:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final u:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Le/j;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x6

    const-string v2, "keepalive-loader"

    invoke-static {v2, v0, v1}, Lw0/t1;->C(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/BackgroundKeepAliveActivity;->t:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/BackgroundKeepAliveActivity;->u:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Le/j;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Le/j;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p1, 0x7f0c001e

    invoke-virtual {p0, p1}, Le/j;->setContentView(I)V

    const p1, 0x7f090061

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lw0/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lw0/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lw0/t1;->N(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ly1/g;->o0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x60

    invoke-virtual {p0, v3}, Lcom/ex/auto/BackgroundKeepAliveActivity;->s(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, La1/g;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v0, p1, v2}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/ex/auto/BackgroundKeepAliveActivity;->t:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/BackgroundKeepAliveActivity;->t:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/ex/auto/BackgroundKeepAliveActivity;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Le/j;->onDestroy()V

    return-void
.end method

.method public final s(I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
