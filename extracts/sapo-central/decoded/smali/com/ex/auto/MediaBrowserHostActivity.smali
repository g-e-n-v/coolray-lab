.class public final Lcom/ex/auto/MediaBrowserHostActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final synthetic s:I


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Landroid/media/browse/MediaBrowser;

.field public c:Landroid/media/session/MediaController;

.field public d:Lw0/hd;

.field public final e:Ljava/util/ArrayList;

.field public f:Ljava/lang/String;

.field public g:Landroid/widget/LinearLayout;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/GridLayout;

.field public j:Landroid/widget/ProgressBar;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/ImageView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public final q:Lw0/id;

.field public final r:Lw0/t8;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->e:Ljava/util/ArrayList;

    new-instance v0, Lw0/id;

    invoke-direct {v0, p0}, Lw0/id;-><init>(Lcom/ex/auto/MediaBrowserHostActivity;)V

    iput-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->q:Lw0/id;

    new-instance v0, Lw0/t8;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lw0/t8;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->r:Lw0/t8;

    return-void
.end method

.method public static final b(Lcom/ex/auto/MediaBrowserHostActivity;Landroid/media/session/PlaybackState;Landroid/media/MediaMetadata;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/ex/auto/MediaBrowserHostActivity;->m:Landroid/widget/TextView;

    if-eqz v2, :cond_18

    const-string v3, "getString(...)"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const v4, 0x7f0f0223

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ex/auto/MediaBrowserHostActivity;->n:Landroid/widget/TextView;

    if-eqz v2, :cond_17

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v0

    :goto_3
    if-nez v4, :cond_4

    const-string v4, ""

    :cond_4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_5
    if-eqz p2, :cond_6

    const-string v2, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p2, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_4

    :cond_6
    move-object v2, v0

    :cond_7
    :goto_4
    const-string p2, "capaAgora"

    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/ex/auto/MediaBrowserHostActivity;->l:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_8
    invoke-static {p2}, Li2/g;->h(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/ex/auto/MediaBrowserHostActivity;->l:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    invoke-virtual {p0, v2, v1}, Lcom/ex/auto/MediaBrowserHostActivity;->c(Landroid/widget/ImageView;Landroid/media/MediaDescription;)V

    goto :goto_5

    :cond_a
    invoke-static {p2}, Li2/g;->h(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_5
    iget-object p2, p0, Lcom/ex/auto/MediaBrowserHostActivity;->o:Landroid/widget/TextView;

    if-eqz p2, :cond_16

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    const-string v1, "\u275a\u275a"

    goto :goto_6

    :cond_c
    const-string v1, "\u25b6"

    :goto_6
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x7

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    if-ne v1, p2, :cond_d

    move-object v1, p1

    goto :goto_7

    :cond_d
    move-object v1, v0

    :goto_7
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_e

    const-string v2, "android.media.extras.ERROR_RESOLUTION_ACTION_INTENT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_8

    :cond_e
    move-object v1, v0

    :goto_8
    const/4 v2, 0x0

    const-string v4, "btnEntrar"

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/ex/auto/MediaBrowserHostActivity;->p:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_10

    const-string v6, "android.media.extras.ERROR_RESOLUTION_ACTION_LABEL"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-static {v5}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_9

    :cond_f
    move-object v5, v0

    :goto_9
    if-eqz v5, :cond_10

    goto :goto_a

    :cond_10
    const v5, 0x7f0f0221

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ex/auto/MediaBrowserHostActivity;->p:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_11
    invoke-static {v4}, Li2/g;->h(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {v4}, Li2/g;->h(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v1, p0, Lcom/ex/auto/MediaBrowserHostActivity;->p:Landroid/widget/TextView;

    if-eqz v1, :cond_15

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    if-ne p1, p2, :cond_14

    invoke-virtual {p0}, Lcom/ex/auto/MediaBrowserHostActivity;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p0, p1, v2}, Lcom/ex/auto/MediaBrowserHostActivity;->g(Ljava/lang/String;Z)V

    :cond_14
    return-void

    :cond_15
    invoke-static {v4}, Li2/g;->h(Ljava/lang/String;)V

    throw v0

    :cond_16
    const-string p0, "btnPlay"

    invoke-static {p0}, Li2/g;->h(Ljava/lang/String;)V

    throw v0

    :cond_17
    const-string p0, "subAgora"

    invoke-static {p0}, Li2/g;->h(Ljava/lang/String;)V

    throw v0

    :cond_18
    const-string p0, "tituloAgora"

    invoke-static {p0}, Li2/g;->h(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->b:Landroid/media/browse/MediaBrowser;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ex/auto/MediaBrowserHostActivity;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    iput-object p1, p0, Lcom/ex/auto/MediaBrowserHostActivity;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/ex/auto/MediaBrowserHostActivity;->h:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/ex/auto/MediaBrowserHostActivity;->e:Ljava/util/ArrayList;

    invoke-static {v3}, Ly1/g;->f0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx1/a;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lx1/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/ex/auto/MediaBrowserHostActivity;->d:Lw0/hd;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lw0/hd;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_4

    const-string v3, ""

    :cond_4
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/ex/auto/MediaBrowserHostActivity;->g(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/ex/auto/MediaBrowserHostActivity;->q:Lw0/id;

    invoke-virtual {v0, p1, v1}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    return-void

    :cond_5
    const-string p1, "tituloNivel"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final c(Landroid/widget/ImageView;Landroid/media/MediaDescription;)V
    .locals 5

    iget-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->d:Lw0/hd;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lw0/hd;->a:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Lx1/b;

    invoke-direct {v1, v0}, Lx1/b;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    nop

    instance-of v1, v0, Lx1/b;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v4

    invoke-virtual {p0, v1}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v1

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    const/16 v1, 0x3c

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p2}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lw0/q;

    invoke-direct {v0, p0, p1, p2}, Lw0/q;-><init>(Lcom/ex/auto/MediaBrowserHostActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-static {p0, p2, v0}, Lw0/cg;->e(Landroid/content/Context;Ljava/lang/String;Lh2/l;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final d(Ljava/lang/String;ZLh2/a;)Landroid/widget/TextView;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, 0x41980000    # 19.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz p2, :cond_0

    const p1, 0x7f050038

    goto :goto_0

    :cond_0
    const p1, 0x7f050041

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_1

    const p1, 0x7f07005f

    goto :goto_1

    :cond_1
    const p1, 0x7f070065

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 p1, 0x54

    invoke-virtual {p0, p1}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result p2

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result p1

    invoke-virtual {p0, v1}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v1

    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    new-instance p1, Lw0/w;

    const/4 p2, 0x4

    invoke-direct {p1, p3, p2}, Lw0/w;-><init>(Lh2/a;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xa

    invoke-virtual {p0, p2}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/ex/auto/MediaBrowserHostActivity;->b:Landroid/media/browse/MediaBrowser;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/ex/auto/MediaBrowserHostActivity;->c:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/ex/auto/MediaBrowserHostActivity;->r:Lw0/t8;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_1
    iput-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->c:Landroid/media/session/MediaController;

    :try_start_1
    iget-object v1, p0, Lcom/ex/auto/MediaBrowserHostActivity;->b:Landroid/media/browse/MediaBrowser;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    iput-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->b:Landroid/media/browse/MediaBrowser;

    return-void
.end method

.method public final f(I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final g(Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->j:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->k:Landroid/widget/TextView;

    const-string v4, "recado"

    if-eqz v0, :cond_7

    if-eqz p1, :cond_1

    move-object v5, p1

    goto :goto_1

    :cond_1
    const-string v5, ""

    :goto_1
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/ex/auto/MediaBrowserHostActivity;->i:Landroid/widget/GridLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void

    :cond_5
    const-string p1, "grade"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v4}, Li2/g;->h(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v4}, Li2/g;->h(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string p1, "progresso"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->c:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ly1/h;->U(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx1/a;

    iget-object v0, v0, Lx1/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ex/auto/MediaBrowserHostActivity;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "List is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/ex/auto/MediaBrowserHostActivity;->i()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v3, 0x7f050032

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v3, 0x1c

    invoke-virtual {v1, v3}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v4

    const/16 v5, 0x16

    invoke-virtual {v1, v5}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v5

    invoke-virtual {v1, v3}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v3

    const/16 v6, 0x12

    invoke-virtual {v1, v6}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v7

    invoke-virtual {v0, v4, v5, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0f0227

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f050041

    invoke-virtual {v1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v7, v9, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v4, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v7, v1, Lcom/ex/auto/MediaBrowserHostActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v7, 0x7f0f021d

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "getString(...)"

    invoke-static {v7, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lw0/gd;

    const/4 v13, 0x0

    invoke-direct {v12, v1, v13}, Lw0/gd;-><init>(Lcom/ex/auto/MediaBrowserHostActivity;I)V

    invoke-virtual {v1, v7, v4, v12}, Lcom/ex/auto/MediaBrowserHostActivity;->d(Ljava/lang/String;ZLh2/a;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object v7, v1, Lcom/ex/auto/MediaBrowserHostActivity;->g:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/ScrollView;

    invoke-direct {v7, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v12, v1, Lcom/ex/auto/MediaBrowserHostActivity;->g:Landroid/widget/LinearLayout;

    const-string v13, "railFontes"

    if-eqz v12, :cond_14

    invoke-virtual {v7, v12}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0xdc

    invoke-virtual {v1, v15}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v15

    const/16 p1, 0x0

    const/4 v14, -0x1

    invoke-direct {v12, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v12, 0x7f070061

    invoke-virtual {v7, v12}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v15, 0x14

    invoke-virtual {v1, v15}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v8

    invoke-virtual {v1, v6}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v12

    invoke-virtual {v1, v15}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v15

    invoke-virtual {v1, v6}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v5

    invoke-virtual {v7, v8, v12, v15, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v2, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v15, 0x3c

    invoke-virtual {v1, v15}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v15

    iput v15, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v5, v1, Lcom/ex/auto/MediaBrowserHostActivity;->j:Landroid/widget/ProgressBar;

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v12, 0x7f050042

    invoke-virtual {v1, v12}, Landroid/content/Context;->getColor(I)I

    move-result v15

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x28

    invoke-virtual {v1, v12}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v12

    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v5, v1, Lcom/ex/auto/MediaBrowserHostActivity;->k:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/GridLayout;

    invoke-direct {v5, v1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Landroid/widget/GridLayout;->setColumnCount(I)V

    iput-object v5, v1, Lcom/ex/auto/MediaBrowserHostActivity;->i:Landroid/widget/GridLayout;

    iget-object v5, v1, Lcom/ex/auto/MediaBrowserHostActivity;->j:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_13

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, v1, Lcom/ex/auto/MediaBrowserHostActivity;->k:Landroid/widget/TextView;

    if-eqz v5, :cond_12

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v8, v1, Lcom/ex/auto/MediaBrowserHostActivity;->i:Landroid/widget/GridLayout;

    if-eqz v8, :cond_11

    invoke-virtual {v5, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v14, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v14, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v5, 0x7f070061

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v6}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v5

    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v8

    invoke-virtual {v1, v6}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v12

    invoke-virtual {v1, v7}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v6

    invoke-virtual {v3, v5, v8, v12, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v6, 0x7f070065

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x40

    invoke-virtual {v1, v12}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v7

    invoke-virtual {v1, v12}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v12

    invoke-direct {v8, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v5, v1, Lcom/ex/auto/MediaBrowserHostActivity;->l:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v8, 0xe

    invoke-virtual {v1, v8}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0f0223

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f050041

    invoke-virtual {v1, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iput-object v7, v1, Lcom/ex/auto/MediaBrowserHostActivity;->m:Landroid/widget/TextView;

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v11, 0x7f050042

    invoke-virtual {v1, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v11, 0x41700000    # 15.0f

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iput-object v7, v1, Lcom/ex/auto/MediaBrowserHostActivity;->n:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/ex/auto/MediaBrowserHostActivity;->m:Landroid/widget/TextView;

    if-eqz v7, :cond_10

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v7, v1, Lcom/ex/auto/MediaBrowserHostActivity;->n:Landroid/widget/TextView;

    if-eqz v7, :cond_f

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v7, 0x7f0f0221

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lw0/gd;

    const/4 v11, 0x1

    invoke-direct {v9, v1, v11}, Lw0/gd;-><init>(Lcom/ex/auto/MediaBrowserHostActivity;I)V

    invoke-virtual {v1, v7, v2, v9}, Lcom/ex/auto/MediaBrowserHostActivity;->d(Ljava/lang/String;ZLh2/a;)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, v1, Lcom/ex/auto/MediaBrowserHostActivity;->p:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v1, Lcom/ex/auto/MediaBrowserHostActivity;->l:Landroid/widget/ImageView;

    if-eqz v7, :cond_e

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, v1, Lcom/ex/auto/MediaBrowserHostActivity;->p:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Lw0/gd;

    const/4 v7, 0x2

    invoke-direct {v5, v1, v7}, Lw0/gd;-><init>(Lcom/ex/auto/MediaBrowserHostActivity;I)V

    const-string v7, "\u23ee"

    invoke-virtual {v1, v7, v4, v5}, Lcom/ex/auto/MediaBrowserHostActivity;->d(Ljava/lang/String;ZLh2/a;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Lw0/gd;

    const/4 v7, 0x3

    invoke-direct {v5, v1, v7}, Lw0/gd;-><init>(Lcom/ex/auto/MediaBrowserHostActivity;I)V

    const-string v7, "\u25b6"

    invoke-virtual {v1, v7, v4, v5}, Lcom/ex/auto/MediaBrowserHostActivity;->d(Ljava/lang/String;ZLh2/a;)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v1, Lcom/ex/auto/MediaBrowserHostActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Lw0/gd;

    const/4 v7, 0x4

    invoke-direct {v5, v1, v7}, Lw0/gd;-><init>(Lcom/ex/auto/MediaBrowserHostActivity;I)V

    const-string v7, "\u23ed"

    invoke-virtual {v1, v7, v4, v5}, Lcom/ex/auto/MediaBrowserHostActivity;->d(Ljava/lang/String;ZLh2/a;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.media.browse.MediaBrowserService"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v3, "queryIntentServices(...)"

    invoke-static {v0, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_1

    :goto_1
    move-object/from16 v8, p1

    goto :goto_5

    :cond_1
    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    new-instance v8, Lx1/b;

    invoke-direct {v8, v0}, Lx1/b;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v8

    :goto_2
    nop

    instance-of v8, v0, Lx1/b;

    if-eqz v8, :cond_3

    move-object/from16 v0, p1

    :cond_3
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const/16 v8, 0x2e

    invoke-static {v0, v8}, Lo2/k;->f0(Ljava/lang/String;C)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v0, p1

    :goto_3
    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v8, Lw0/hd;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v11, "packageName"

    invoke-static {v9, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v11, "name"

    invoke-static {v7, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v9, v7, v0}, Lw0/hd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-eqz v8, :cond_0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :cond_7
    :goto_6
    if-ge v8, v7, :cond_8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    move-object v11, v9

    check-cast v11, Lw0/hd;

    iget-object v11, v11, Lw0/hd;->a:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    new-instance v0, Lw0/b6;

    const/16 v3, 0x8

    invoke-direct {v0, v3}, Lw0/b6;-><init>(I)V

    invoke-static {v5, v0}, Ly1/g;->i0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    iget-object v3, v1, Lcom/ex/auto/MediaBrowserHostActivity;->g:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    const v0, 0x7f0f0222

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/ex/auto/MediaBrowserHostActivity;->g(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw0/hd;

    iget-object v5, v1, Lcom/ex/auto/MediaBrowserHostActivity;->g:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_a

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v9, 0xc

    invoke-virtual {v1, v9}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v11

    invoke-virtual {v1, v9}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v12

    invoke-virtual {v1, v9}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v15

    invoke-virtual {v1, v9}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v6

    invoke-virtual {v7, v11, v12, v15, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setClickable(Z)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xa

    invoke-virtual {v1, v11}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v12

    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v15, v3, Lw0/hd;->a:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x24

    invoke-virtual {v1, v15}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v8

    invoke-virtual {v1, v15}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v15

    invoke-direct {v12, v8, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v8, v3, Lw0/hd;->c:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f050041

    invoke-virtual {v1, v12}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v8, v4, v10, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v11}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Lw0/a0;

    const/4 v8, 0x7

    invoke-direct {v6, v1, v8, v3}, Lw0/a0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v6, 0x7f070065

    goto/16 :goto_7

    :cond_a
    invoke-static {v13}, Li2/g;->h(Ljava/lang/String;)V

    throw p1

    :cond_b
    const v0, 0x7f0f0225

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/ex/auto/MediaBrowserHostActivity;->g(Ljava/lang/String;Z)V

    :goto_8
    return-void

    :cond_c
    invoke-static {v13}, Li2/g;->h(Ljava/lang/String;)V

    throw p1

    :cond_d
    const-string v0, "btnEntrar"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw p1

    :cond_e
    const-string v0, "capaAgora"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw p1

    :cond_f
    const-string v0, "subAgora"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw p1

    :cond_10
    const-string v0, "tituloAgora"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw p1

    :cond_11
    const-string v0, "grade"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw p1

    :cond_12
    const-string v0, "recado"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw p1

    :cond_13
    const-string v0, "progresso"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw p1

    :cond_14
    const/16 p1, 0x0

    invoke-static {v13}, Li2/g;->h(Ljava/lang/String;)V

    throw p1
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/MediaBrowserHostActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ex/auto/MediaBrowserHostActivity;->e()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
