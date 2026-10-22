.class public final synthetic Lw0/q8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Li2/k;

.field public final synthetic b:Li2/k;

.field public final synthetic c:Li2/l;

.field public final synthetic d:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic e:Li2/l;

.field public final synthetic f:Li2/j;

.field public final synthetic g:Li2/j;

.field public final synthetic h:Lcom/ex/auto/LyricsFloaterService;

.field public final synthetic i:La1/i;

.field public final synthetic j:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Li2/k;Li2/k;Li2/l;Landroid/view/WindowManager$LayoutParams;Li2/l;Li2/j;Li2/j;Lcom/ex/auto/LyricsFloaterService;La1/i;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/q8;->a:Li2/k;

    iput-object p2, p0, Lw0/q8;->b:Li2/k;

    iput-object p3, p0, Lw0/q8;->c:Li2/l;

    iput-object p4, p0, Lw0/q8;->d:Landroid/view/WindowManager$LayoutParams;

    iput-object p5, p0, Lw0/q8;->e:Li2/l;

    iput-object p6, p0, Lw0/q8;->f:Li2/j;

    iput-object p7, p0, Lw0/q8;->g:Li2/j;

    iput-object p8, p0, Lw0/q8;->h:Lcom/ex/auto/LyricsFloaterService;

    iput-object p9, p0, Lw0/q8;->i:La1/i;

    iput-object p10, p0, Lw0/q8;->j:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 24

    move-object/from16 v1, p0

    iget-object v0, v1, Lw0/q8;->h:Lcom/ex/auto/LyricsFloaterService;

    iget-object v2, v0, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    iget-object v3, v1, Lw0/q8;->j:Landroid/widget/FrameLayout;

    sget-object v4, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    iget-object v5, v1, Lw0/q8;->a:Li2/k;

    iget-object v6, v1, Lw0/q8;->b:Li2/k;

    iget-object v7, v1, Lw0/q8;->c:Li2/l;

    iget-object v8, v1, Lw0/q8;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, v1, Lw0/q8;->e:Li2/l;

    iget-object v10, v1, Lw0/q8;->f:Li2/j;

    iget-object v11, v1, Lw0/q8;->g:Li2/j;

    iget-object v12, v1, Lw0/q8;->i:La1/i;

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v4, :cond_e

    const/4 v15, 0x2

    const/16 v16, 0x0

    const-string v17, "wm"

    if-eq v4, v14, :cond_4

    if-eq v4, v15, :cond_0

    const/4 v3, 0x3

    if-eq v4, v3, :cond_4

    return v13

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, v5, Li2/k;->a:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, v6, Li2/k;->a:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v11, 0x6

    invoke-virtual {v0, v11}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v13

    if-gt v6, v13, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v0, v11}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v11

    if-le v6, v11, :cond_2

    :cond_1
    iput-boolean v14, v10, Li2/j;->a:Z

    invoke-virtual {v2, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-boolean v2, v10, Li2/j;->a:Z

    if-eqz v2, :cond_d

    iget v2, v7, Li2/l;->a:I

    add-int/2addr v2, v4

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v9, Li2/l;->a:I

    add-int/2addr v2, v5

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    iget-object v0, v0, Lcom/ex/auto/LyricsFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_3

    invoke-interface {v0, v3, v8}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_3
    invoke-static/range {v17 .. v17}, Li2/g;->h(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_4
    invoke-virtual {v2, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v2, v10, Li2/j;->a:Z

    if-eqz v2, :cond_5

    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v5, "lyrics_line"

    invoke-static {v0, v5, v2, v3, v4}, Lw0/e8;->M(Landroid/content/Context;Ljava/lang/String;III)V

    goto/16 :goto_2

    :cond_5
    iget-boolean v2, v11, Li2/j;->a:Z

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/ex/auto/LyricsFloaterService;->h:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v14

    if-ne v2, v14, :cond_6

    sget-object v2, Lw0/u4;->a:Lw0/u4;

    goto :goto_0

    :cond_6
    sget-object v2, Lw0/u4;->b:Lw0/u4;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_9

    if-ne v2, v14, :cond_8

    sget-object v2, Lw0/m8;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v2, v0, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v3, v0, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    const-string v4, "title"

    invoke-static {v2, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "artist"

    invoke-static {v3, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lw0/k8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lw0/m8;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lw0/m8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lw0/m8;->g:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/high16 v2, -0x80000000

    iput v2, v0, Lcom/ex/auto/LyricsFloaterService;->i:I

    iget-object v2, v0, Lcom/ex/auto/LyricsFloaterService;->k:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    const-string v3, "\ud83c\udfa4 procurando de novo\u2026"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v2, v0, Lcom/ex/auto/LyricsFloaterService;->e:Landroid/media/session/MediaController;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->r()V

    iget-object v3, v0, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    const-string v5, "android.media.metadata.DURATION"

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    new-instance v2, Lw0/o8;

    const/4 v7, 0x4

    invoke-direct {v2, v0, v7}, Lw0/o8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-static {v3, v4, v5, v6, v2}, Lw0/m8;->d(Ljava/lang/String;Ljava/lang/String;JLh2/a;)V

    goto/16 :goto_2

    :cond_8
    new-instance v0, Landroidx/fragment/app/q;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    iget-boolean v2, v0, Lcom/ex/auto/LyricsFloaterService;->q:Z

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->c()V

    goto/16 :goto_2

    :cond_a
    iget-object v2, v0, Lcom/ex/auto/LyricsFloaterService;->n:Landroid/widget/FrameLayout;

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/ex/auto/LyricsFloaterService;->h:Ljava/util/List;

    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    goto/16 :goto_2

    :cond_b
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x28

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "\u2715"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0x655c57

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v7, 0x18

    const/16 v8, 0xc

    invoke-virtual {v4, v7, v8, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v9, Lw0/p8;

    invoke-direct {v9, v0, v14}, Lw0/p8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u2699"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v9, v7, v8, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v5, Lw0/p8;

    invoke-direct {v5, v0, v15}, Lw0/p8;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-virtual {v9, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v8, "lyrics_style_config"

    invoke-virtual {v0, v8, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "bg"

    const v12, -0xedebe9

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    const v11, 0xffffff

    and-int/2addr v10, v11

    invoke-virtual {v0, v8, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v11, "alpha"

    const/16 v12, 0xcc

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/16 v11, 0xff

    invoke-static {v8, v13, v11}, Lk1/a;->k(III)I

    move-result v8

    shl-int/lit8 v7, v8, 0x18

    or-int/2addr v7, v10

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v8, 0x800035

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v10, 0x34

    invoke-virtual {v0, v10}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v5, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v18, Landroid/view/WindowManager$LayoutParams;

    const/16 v22, 0x108

    const/16 v23, -0x3

    const/16 v19, 0x2f8

    const/16 v20, 0x208

    const/16 v21, 0x7f6

    invoke-direct/range {v18 .. v23}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object/from16 v4, v18

    const/16 v6, 0x11

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v6, -0x3c

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_1
    iget-object v6, v0, Lcom/ex/auto/LyricsFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v6, :cond_c

    invoke-interface {v6, v5, v4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v5, v0, Lcom/ex/auto/LyricsFloaterService;->n:Landroid/widget/FrameLayout;

    iput-object v3, v0, Lcom/ex/auto/LyricsFloaterService;->o:Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/ex/auto/LyricsFloaterService;->p:Landroid/widget/ScrollView;

    iput-boolean v14, v0, Lcom/ex/auto/LyricsFloaterService;->q:Z

    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->g()V

    iget v2, v0, Lcom/ex/auto/LyricsFloaterService;->i:I

    invoke-virtual {v0, v2}, Lcom/ex/auto/LyricsFloaterService;->f(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_c
    invoke-static/range {v17 .. v17}, Li2/g;->h(Ljava/lang/String;)V

    throw v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addView painel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LyricsFloater"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catchall_1
    :cond_d
    :goto_2
    return v14

    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v5, Li2/k;->a:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v6, Li2/k;->a:F

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v7, Li2/l;->a:I

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v9, Li2/l;->a:I

    iput-boolean v13, v10, Li2/j;->a:Z

    iput-boolean v13, v11, Li2/j;->a:Z

    const-wide/16 v3, 0x226

    invoke-virtual {v2, v12, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v14
.end method
