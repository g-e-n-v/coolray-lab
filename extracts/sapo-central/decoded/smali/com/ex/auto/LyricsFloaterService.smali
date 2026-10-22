.class public final Lcom/ex/auto/LyricsFloaterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final v:Ljava/util/Set;


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/media/session/MediaSessionManager;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/util/HashMap;

.field public e:Landroid/media/session/MediaController;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;

.field public i:I

.field public j:Landroid/widget/FrameLayout;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/view/WindowManager$LayoutParams;

.field public m:Landroid/widget/FrameLayout;

.field public n:Landroid/widget/FrameLayout;

.field public o:Landroid/widget/LinearLayout;

.field public p:Landroid/widget/ScrollView;

.field public q:Z

.field public final r:Lw0/r8;

.field public final s:Lw0/t8;

.field public final t:Landroidx/activity/d;

.field public final u:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/ex/auto/MediaBarFloaterService;->v:Ljava/util/Set;

    sput-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->d:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/ex/auto/LyricsFloaterService;->i:I

    new-instance v0, Lw0/r8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lw0/r8;-><init>(Landroid/app/Service;I)V

    iput-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->r:Lw0/r8;

    new-instance v0, Lw0/t8;

    invoke-direct {v0, v1, p0}, Lw0/t8;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->s:Lw0/t8;

    new-instance v0, Landroidx/activity/d;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Landroidx/activity/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->t:Landroidx/activity/d;

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/ex/auto/LyricsFloaterService;->u:J

    return-void
.end method

.method public static final m(Lcom/ex/auto/LyricsFloaterService;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method public static final o(Lcom/ex/auto/LyricsFloaterService;FLjava/lang/String;Lh2/a;)Landroid/widget/TextView;
    .locals 1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p0, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p0, 0x41500000    # 13.0f

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p0, Lw0/w;

    const/4 p1, 0x3

    invoke-direct {p0, p3, p1}, Lw0/w;-><init>(Lh2/a;I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 13

    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lw0/m8;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    const-string v2, "title"

    invoke-static {v0, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "artist"

    invoke-static {v1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    :try_start_0
    const-string v4, "lyrics_sync_offsets"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v0, v1}, Lw0/k8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    add-long v7, v5, p1

    const-wide/16 v9, -0x2710

    const-wide/16 v11, 0x2710

    invoke-static/range {v7 .. v12}, Lk1/a;->l(JJJ)J

    move-result-wide p1

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-wide p1, v2

    :goto_0
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/ex/auto/LyricsFloaterService;->i:I

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    const-string v0, "+"

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    iget-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u23f1 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance p1, Lw0/n8;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lw0/n8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    const-wide/16 v0, 0x1f4

    iget-object p2, p0, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "base"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lw0/e8;->p(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->m:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/ex/auto/LyricsFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->m:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->n:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/ex/auto/LyricsFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->n:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->o:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->p:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ex/auto/LyricsFloaterService;->q:Z

    return-void
.end method

.method public final d(I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->j:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/ex/auto/LyricsFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->j:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->k:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->l:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public final f(I)V
    .locals 8

    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->o:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v1, "lyrics_style_config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "font"

    const v5, -0xe246ac

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "scale"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v4, v5}, Lk1/a;->j(FFF)F

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    check-cast v5, Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    if-ne v2, p1, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    sub-int v6, v2, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_4

    const v6, -0x655c57

    goto :goto_2

    :cond_4
    const v6, -0xa59e99

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    if-ne v2, p1, :cond_5

    const/high16 v6, 0x41b80000    # 23.0f

    goto :goto_3

    :cond_5
    const/high16 v6, 0x41980000    # 19.0f

    :goto_3
    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->p:Landroid/widget/ScrollView;

    if-eqz v0, :cond_8

    new-instance v1, La1/i;

    const/16 v2, 0x15

    invoke-direct {v1, p0, v2, p1}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_5
    return-void
.end method

.method public final g()V
    .locals 8

    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->o:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->h:Ljava/util/List;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx1/a;

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v5, v5, Lx1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_2

    const-string v5, "\u266a"

    :cond_2
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0xa59e99

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41980000    # 19.0f

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v5, 0xe

    invoke-virtual {v6, v2, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v3, v4

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/ex/auto/LyricsFloaterService;->i:I

    invoke-virtual {p0, v0}, Lcom/ex/auto/LyricsFloaterService;->f(I)V

    return-void
.end method

.method public final h()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->b:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "msm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Ly1/p;->a:Ly1/p;

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/media/session/MediaController;

    sget-object v4, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/media/session/MediaController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v0}, Ly1/g;->p0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/ex/auto/LyricsFloaterService;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    iget-object v6, p0, Lcom/ex/auto/LyricsFloaterService;->s:Lw0/t8;

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v7, "next(...)"

    invoke-static {v5, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :try_start_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/session/MediaController;

    invoke-virtual {v5, v6}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :catch_2
    :cond_6
    :goto_4
    if-ge v3, v0, :cond_7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :try_start_2
    iget-object v5, p0, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    invoke-virtual {v4, v6, v5}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/ex/auto/LyricsFloaterService;->i()V

    return-void
.end method

.method public final i()V
    .locals 6

    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ly1/g;->m0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    check-cast v2, Landroid/media/session/MediaController;

    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    iget-object v4, p0, Lcom/ex/auto/LyricsFloaterService;->e:Landroid/media/session/MediaController;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    invoke-static {v2, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    move-object v2, v1

    check-cast v2, Landroid/media/session/MediaController;

    :cond_5
    iput-object v2, p0, Lcom/ex/auto/LyricsFloaterService;->e:Landroid/media/session/MediaController;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v3

    :goto_3
    const-string v1, ""

    if-eqz v0, :cond_7

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_7
    move-object v2, v1

    :cond_8
    if-eqz v0, :cond_a

    const-string v4, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v4}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    move-object v3, v4

    goto :goto_5

    :cond_a
    :goto_4
    if-eqz v0, :cond_b

    const-string v3, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v0, v3}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_b
    :goto_5
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    move-object v1, v3

    :cond_c
    iget-object v3, p0, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_6

    :cond_d
    return-void

    :cond_e
    :goto_6
    iput-object v2, p0, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/ex/auto/LyricsFloaterService;->i:I

    invoke-static {v2, v1}, Lw0/m8;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/ex/auto/LyricsFloaterService;->h:Ljava/util/List;

    if-nez v3, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10

    invoke-virtual {p0}, Lcom/ex/auto/LyricsFloaterService;->r()V

    if-eqz v0, :cond_f

    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {v0, v3}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_7

    :cond_f
    const-wide/16 v3, 0x0

    :goto_7
    new-instance v0, Lw0/h0;

    const/4 v5, 0x2

    invoke-direct {v0, p0, v2, v1, v5}, Lw0/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2, v1, v3, v4, v0}, Lw0/m8;->d(Ljava/lang/String;Ljava/lang/String;JLh2/a;)V

    :cond_10
    invoke-virtual {p0}, Lcom/ex/auto/LyricsFloaterService;->g()V

    return-void
.end method

.method public final j()V
    .locals 8

    invoke-static {p0}, Lw0/t1;->I(Lcom/ex/auto/LyricsFloaterService;)F

    move-result v0

    iget-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/high16 v2, 0x41880000    # 17.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p0}, Lw0/t1;->H(Lcom/ex/auto/LyricsFloaterService;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->j:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    const-string v3, "lyrics_style_config"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "bg"

    const v7, -0xedebe9

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "alpha"

    const/16 v7, 0xcc

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v6, 0xff

    invoke-static {v3, v4, v6}, Lk1/a;->k(III)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v3, v5

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_3
    iget-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->l:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_5

    const/16 v3, 0x264

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x3c

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->j:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v3, p0, Lcom/ex/auto/LyricsFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v3, :cond_4

    invoke-interface {v3, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_2
    return-void
.end method

.method public final k()V
    .locals 6

    iget-boolean v0, p0, Lcom/ex/auto/LyricsFloaterService;->q:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->n:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "lyrics_style_config"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "bg"

    const v5, -0xedebe9

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v3, v4

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "alpha"

    const/16 v5, 0xcc

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v4, 0xff

    invoke-static {v0, v2, v4}, Lk1/a;->k(III)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_3
    iget v0, p0, Lcom/ex/auto/LyricsFloaterService;->i:I

    invoke-virtual {p0, v0}, Lcom/ex/auto/LyricsFloaterService;->f(I)V

    return-void
.end method

.method public final l()V
    .locals 15

    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->m:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v5

    invoke-virtual {p0, v2}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v2

    invoke-virtual {p0, v4}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v6

    invoke-virtual {v0, v3, v5, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v3, -0xfe5e2df

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "Ajustar letra"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x2

    invoke-direct {v6, v3, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u2715"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, -0x655c57

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0, v4}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v4

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v7

    invoke-virtual {p0, v6}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v9

    invoke-virtual {p0, v6}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v6

    invoke-virtual {v5, v4, v7, v9, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v4, Lw0/p8;

    const/4 v6, 0x3

    invoke-direct {v4, p0, v6}, Lw0/p8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v2, "Tamanho"

    invoke-static {p0, v2}, Lcom/ex/auto/LyricsFloaterService;->m(Lcom/ex/auto/LyricsFloaterService;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/SeekBar;

    invoke-direct {v2, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x8c

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-static {p0}, Lw0/t1;->I(Lcom/ex/auto/LyricsFloaterService;)F

    move-result v4

    const v5, 0x3f19999a    # 0.6f

    sub-float/2addr v4, v5

    const/16 v5, 0x64

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v4, Lw0/s8;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lw0/s8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    new-instance v5, Lw0/u8;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4}, Lw0/u8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v2, "Transpar\u00eancia do fundo"

    invoke-static {p0, v2}, Lcom/ex/auto/LyricsFloaterService;->m(Lcom/ex/auto/LyricsFloaterService;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/SeekBar;

    invoke-direct {v2, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    const-string v5, "lyrics_style_config"

    invoke-virtual {p0, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "alpha"

    const/16 v9, 0xcc

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6, v3, v4}, Lk1/a;->k(III)I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v4, Lw0/s8;

    const/4 v6, 0x1

    invoke-direct {v4, p0, v6}, Lw0/s8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    new-instance v6, Lw0/u8;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v4}, Lw0/u8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v2, "Cor da letra"

    invoke-static {p0, v2}, Lcom/ex/auto/LyricsFloaterService;->m(Lcom/ex/auto/LyricsFloaterService;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v2, Lw0/t1;->c:[I

    invoke-static {p0}, Lw0/t1;->H(Lcom/ex/auto/LyricsFloaterService;)I

    move-result v4

    new-instance v6, Lw0/s8;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v7}, Lw0/s8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-virtual {p0, v2, v4, v6}, Lcom/ex/auto/LyricsFloaterService;->p([IILh2/l;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v2, "Cor do fundo"

    invoke-static {p0, v2}, Lcom/ex/auto/LyricsFloaterService;->m(Lcom/ex/auto/LyricsFloaterService;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v2, Lw0/t1;->d:[I

    invoke-virtual {p0, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "bg"

    const v6, -0xedebe9

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Lw0/s8;

    const/4 v6, 0x3

    invoke-direct {v5, p0, v6}, Lw0/s8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-virtual {p0, v2, v4, v5}, Lcom/ex/auto/LyricsFloaterService;->p([IILh2/l;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v3, Lw0/p8;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lw0/p8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lw0/f7;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lw0/f7;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x168

    invoke-virtual {p0, v3}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v3

    const/16 v4, 0x11

    invoke-direct {v1, v3, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const/16 v13, 0x108

    const/4 v14, -0x3

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/16 v12, 0x7f6

    invoke-direct/range {v9 .. v14}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, v2, v9}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lcom/ex/auto/LyricsFloaterService;->m:Landroid/widget/FrameLayout;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addView config: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LyricsFloater"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final n()V
    .locals 14

    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->j:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/LyricsFloaterService;->j()V

    return-void

    :cond_0
    invoke-static {p0}, Lw0/t1;->I(Lcom/ex/auto/LyricsFloaterService;)F

    move-result v0

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lw0/t1;->H(Lcom/ex/auto/LyricsFloaterService;)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41880000    # 17.0f

    mul-float/2addr v1, v0

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v1, 0x11

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v2, 0x7e

    invoke-virtual {p0, v2}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/16 v3, 0x1e

    invoke-virtual {p0, v3}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    new-instance v3, Lw0/o8;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v5}, Lw0/o8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    const-string v5, "\u25c0"

    invoke-static {p0, v0, v5, v3}, Lcom/ex/auto/LyricsFloaterService;->o(Lcom/ex/auto/LyricsFloaterService;FLjava/lang/String;Lh2/a;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lw0/o8;

    const/4 v5, 0x2

    invoke-direct {v3, p0, v5}, Lw0/o8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    const-string v5, "\u21ba"

    invoke-static {p0, v0, v5, v3}, Lcom/ex/auto/LyricsFloaterService;->o(Lcom/ex/auto/LyricsFloaterService;FLjava/lang/String;Lh2/a;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lw0/o8;

    const/4 v5, 0x3

    invoke-direct {v3, p0, v5}, Lw0/o8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    const-string v5, "\u25b6"

    invoke-static {p0, v0, v5, v3}, Lcom/ex/auto/LyricsFloaterService;->o(Lcom/ex/auto/LyricsFloaterService;FLjava/lang/String;Lh2/a;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "\u2715"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0x33000001    # -1.3421772E8f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41500000    # 13.0f

    mul-float/2addr v5, v0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v6

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v10

    invoke-virtual {p0, v5}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v5

    invoke-virtual {p0, v9}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v9

    invoke-virtual {v3, v6, v10, v5, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v5, Lw0/p8;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lw0/p8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v6, "lyrics_style_config"

    invoke-virtual {p0, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v12, "bg"

    const v13, -0xedebe9

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const v12, 0xffffff

    and-int/2addr v9, v12

    invoke-virtual {p0, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v12, "alpha"

    const/16 v13, 0xcc

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/16 v12, 0xff

    invoke-static {v6, v4, v12}, Lk1/a;->k(III)I

    move-result v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v6, v9

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v10, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v10, v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v6, 0x800035

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v10, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v3, 0x800013

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v10, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x122

    invoke-virtual {p0, v2}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v2

    sub-int/2addr v1, v2

    const-string v2, "lyrics_line"

    const v3, 0x800033

    invoke-static {p0, v2, v3, v4, v1}, Lw0/e8;->G(Landroid/content/Context;Ljava/lang/String;III)Lw0/yd;

    move-result-object v1

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x264

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/16 v4, 0x3c

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/16 v6, 0x108

    const/4 v7, -0x3

    const/16 v5, 0x7f6

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v0, v1, Lw0/yd;->a:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v0, v1, Lw0/yd;->b:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v1, Lw0/yd;->c:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v1, Li2/k;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v4, v2

    new-instance v2, Li2/k;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Li2/l;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v5, Li2/l;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Li2/j;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Li2/j;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v9, La1/i;

    const/16 v0, 0x16

    invoke-direct {v9, v7, v0, p0}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v0, Lw0/q8;

    move-object v8, p0

    invoke-direct/range {v0 .. v10}, Lw0/q8;-><init>(Li2/k;Li2/k;Li2/l;Landroid/view/WindowManager$LayoutParams;Li2/l;Li2/j;Li2/j;Lcom/ex/auto/LyricsFloaterService;La1/i;Landroid/widget/FrameLayout;)V

    move-object v2, v4

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, v10, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v10, p0, Lcom/ex/auto/LyricsFloaterService;->j:Landroid/widget/FrameLayout;

    iput-object v11, p0, Lcom/ex/auto/LyricsFloaterService;->k:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ex/auto/LyricsFloaterService;->l:Landroid/view/WindowManager$LayoutParams;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addView linha: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LyricsFloater"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 10

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->a:Landroid/view/WindowManager;

    const-string v0, "media_session"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.session.MediaSessionManager"

    invoke-static {v0, v1}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->b:Landroid/media/session/MediaSessionManager;

    sget-object v0, Lw0/m8;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "lyrics_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lw0/m8;->i:Ljava/io/File;

    const/4 v8, 0x0

    const/16 v9, 0x10

    const-string v4, "lyrics_floater"

    const-string v5, "Letra"

    const-string v6, "Letra sincronizada na barra"

    const v7, 0x108003e

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lw0/t1;->E(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x3ae1

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :try_start_0
    iget-object v0, v3, Lcom/ex/auto/LyricsFloaterService;->b:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v3, Lcom/ex/auto/LyricsFloaterService;->r:Lw0/r8;

    invoke-virtual {v0, v2, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "msm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "listener falhou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LyricsFloater"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Lcom/ex/auto/LyricsFloaterService;->h()V

    iget-object v0, v3, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    iget-object v1, v3, Lcom/ex/auto/LyricsFloaterService;->t:Landroidx/activity/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->t:Landroidx/activity/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->b:Landroid/media/session/MediaSessionManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ex/auto/LyricsFloaterService;->r:Lw0/r8;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "msm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/ex/auto/LyricsFloaterService;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/ex/auto/LyricsFloaterService;->s:Lw0/t8;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/ex/auto/LyricsFloaterService;->e()V

    invoke-virtual {p0}, Lcom/ex/auto/LyricsFloaterService;->c()V

    invoke-virtual {p0}, Lcom/ex/auto/LyricsFloaterService;->b()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "com.ex.auto.LYRICS_CONFIG"

    invoke-static {p1, p2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lw0/n8;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lw0/n8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    iget-object p2, p0, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/ex/auto/LyricsFloaterService;->h()V

    const/4 p1, 0x1

    return p1
.end method

.method public final p([IILh2/l;)Landroid/widget/LinearLayout;
    .locals 8

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_2

    aget v3, p1, v1

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-ne v3, p2, :cond_0

    const/4 v6, 0x3

    :cond_0
    invoke-virtual {p0, v6}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v6

    if-ne v3, p2, :cond_1

    const/4 v7, -0x1

    goto :goto_1

    :cond_1
    const v7, 0x66ffffff

    :goto_1
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x28

    invoke-virtual {p0, v6}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v7

    invoke-virtual {p0, v6}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lw0/g9;

    const/4 v6, 0x3

    invoke-direct {v5, v3, p3, p0, v6}, Lw0/g9;-><init>(ILjava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final q()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->e:Landroid/media/session/MediaController;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-ne v1, v3, :cond_11

    :cond_0
    iget-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->h:Ljava/util/List;

    if-nez v1, :cond_1

    sget-object v1, Lw0/m8;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v3, v0, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lw0/m8;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->h:Ljava/util/List;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/ex/auto/LyricsFloaterService;->i:I

    iget-boolean v1, v0, Lcom/ex/auto/LyricsFloaterService;->q:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->g()V

    :cond_1
    iget-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->h:Ljava/util/List;

    const/4 v3, 0x0

    const-string v4, "artist"

    const-string v5, "title"

    const/4 v6, 0x0

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->n()V

    iget-object v7, v0, Lcom/ex/auto/LyricsFloaterService;->e:Landroid/media/session/MediaController;

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getState()I

    move-result v10

    if-eq v10, v2, :cond_4

    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v10

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    long-to-float v2, v12

    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v7

    mul-float/2addr v7, v2

    float-to-long v12, v7

    add-long/2addr v10, v12

    goto :goto_1

    :cond_5
    :goto_0
    move-wide v10, v8

    :goto_1
    sget-object v2, Lw0/m8;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v2, v0, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v7, v0, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    invoke-static {v2, v5}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v4, "lyrics_sync_offsets"

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v2, v7}, Lw0/k8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-long/2addr v10, v8

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, -0x1

    move v5, v4

    move v4, v6

    :goto_2
    if-ge v4, v2, :cond_6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lx1/a;

    iget-object v7, v7, Lx1/a;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v10

    if-gtz v7, :cond_6

    add-int/lit8 v5, v4, 0x1

    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    goto :goto_2

    :cond_6
    iget v2, v0, Lcom/ex/auto/LyricsFloaterService;->i:I

    if-eq v5, v2, :cond_12

    iput v5, v0, Lcom/ex/auto/LyricsFloaterService;->i:I

    const-string v2, "\u266a"

    if-ltz v5, :cond_7

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx1/a;

    iget-object v1, v1, Lx1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v1, v2

    :goto_3
    iget-object v4, v0, Lcom/ex/auto/LyricsFloaterService;->k:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v3, v0, Lcom/ex/auto/LyricsFloaterService;->k:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    :cond_9
    iget-object v3, v0, Lcom/ex/auto/LyricsFloaterService;->k:Landroid/widget/TextView;

    if-eqz v3, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    goto :goto_4

    :cond_a
    move-object v2, v1

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget-boolean v1, v0, Lcom/ex/auto/LyricsFloaterService;->q:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0, v5}, Lcom/ex/auto/LyricsFloaterService;->f(I)V

    goto/16 :goto_6

    :cond_c
    :goto_5
    sget-object v1, Lw0/m8;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v2, v0, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    invoke-static {v1, v5}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lw0/k8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lw0/m8;->g:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lw0/m8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->e()V

    iget-boolean v1, v0, Lcom/ex/auto/LyricsFloaterService;->q:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->c()V

    return-void

    :cond_d
    iget-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->e:Landroid/media/session/MediaController;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->r()V

    iget-object v2, v0, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    const-string v5, "android.media.metadata.DURATION"

    invoke-virtual {v1, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    new-instance v1, Lw0/o8;

    invoke-direct {v1, v0, v6}, Lw0/o8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-static {v2, v4, v7, v8, v1}, Lw0/m8;->d(Ljava/lang/String;Ljava/lang/String;JLh2/a;)V

    :cond_e
    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->n()V

    iget v1, v0, Lcom/ex/auto/LyricsFloaterService;->i:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_f

    iput v2, v0, Lcom/ex/auto/LyricsFloaterService;->i:I

    iget-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    const-string v2, "\ud83c\udfa4 buscando letra\u2026"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    iget-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v6}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_11
    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->e()V

    iget-boolean v1, v0, Lcom/ex/auto/LyricsFloaterService;->q:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->c()V

    :cond_12
    :goto_6
    return-void
.end method

.method public final r()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "http_proxy"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    sget-object v2, Lw0/m8;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const-string v3, ":"

    invoke-static {v1, v3, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    invoke-static {v1, v3}, Lo2/k;->B0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v1}, Lo2/k;->y0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-static {v1, v3}, Lo2/k;->B0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v3, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v3

    :catchall_1
    :cond_1
    :goto_1
    sput-object v0, Lw0/m8;->h:Ljava/net/Proxy;

    return-void
.end method
