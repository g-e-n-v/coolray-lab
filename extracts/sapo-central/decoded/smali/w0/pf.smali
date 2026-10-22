.class public final Lw0/pf;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/QuickAccessFloaterService;)V
    .locals 0

    iput p1, p0, Lw0/pf;->a:I

    iput-object p2, p0, Lw0/pf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget v2, v1, Lw0/pf;->a:I

    const-string v9, "dlg"

    const/4 v12, 0x5

    const-string v13, "null cannot be cast to non-null type android.media.AudioManager"

    const-string v14, "audio"

    const-string v15, "getString(...)"

    const/4 v3, 0x1

    const-string v4, "direction"

    const-string v5, "QuickAccessFloater"

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "threeVSwipeReceiver: broadcast recebido, direction="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_4

    iget-object v0, v1, Lw0/pf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Gesto 3 dedos: volume "

    :try_start_0
    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v13}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/media/AudioManager;

    if-lez v6, :cond_1

    move v11, v3

    goto :goto_0

    :cond_1
    const/4 v11, -0x1

    :goto_0
    const/4 v3, 0x3

    invoke-virtual {v4, v3, v11, v12}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v6, :cond_2

    const-string v8, "\ud83d\udd0a"

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    const-string v8, "\ud83d\udd09"

    :goto_1
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Volume: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x2f

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v6, :cond_3

    const-string v2, "+"

    goto :goto_2

    :cond_3
    const-string v2, "-"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adjustMediaVolume: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v5}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-void

    :pswitch_0
    if-eqz v0, :cond_5

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "threeHSwipeReceiver: broadcast recebido, direction="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_9

    iget-object v0, v1, Lw0/pf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Gesto 3 dedos: "

    :try_start_1
    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v13}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/media/AudioManager;

    if-lez v6, :cond_6

    const/16 v4, 0x57

    :goto_5
    move v13, v4

    goto :goto_6

    :cond_6
    const/16 v4, 0x58

    goto :goto_5

    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    new-instance v7, Landroid/view/KeyEvent;

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-wide v10, v8

    invoke-direct/range {v7 .. v14}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    new-instance v7, Landroid/view/KeyEvent;

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-wide v10, v8

    invoke-direct/range {v7 .. v14}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    if-lez v6, :cond_7

    const-string v3, "\u23ed Pr\u00f3xima faixa"

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_9

    :cond_7
    const-string v3, "\u23ee Faixa anterior"

    :goto_7
    invoke-virtual {v0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    if-lez v6, :cond_8

    const-string v0, "pr\u00f3xima faixa"

    goto :goto_8

    :cond_8
    const-string v0, "faixa anterior"

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skipTrack: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v5}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_9
    :goto_a
    return-void

    :pswitch_1
    if-eqz v0, :cond_a

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v6

    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "tempSwipeReceiver: broadcast recebido, direction="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_e

    iget-object v2, v1, Lw0/pf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v4, v2, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v4, :cond_b

    invoke-virtual {v2}, Lcom/ex/auto/QuickAccessFloaterService;->z()V

    const v0, 0x7f0f00ef

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    goto :goto_c

    :cond_b
    iget-object v4, v2, Lcom/ex/auto/QuickAccessFloaterService;->q0:Ljava/lang/Float;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    int-to-float v0, v0

    add-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v0, v3, v5}, Lk1/a;->j(FFF)F

    move-result v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v0, v3

    if-nez v3, :cond_c

    goto :goto_c

    :cond_c
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/ex/auto/QuickAccessFloaterService;->q0:Ljava/lang/Float;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f0f01b9

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/ex/auto/QuickAccessFloaterService;->p0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v3, Lw0/we;

    invoke-direct {v3, v2, v0, v6}, Lw0/we;-><init>(Lcom/ex/auto/QuickAccessFloaterService;II)V

    invoke-virtual {v2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->O(Lh2/l;)V

    goto :goto_c

    :cond_d
    new-instance v4, Lw0/we;

    invoke-direct {v4, v2, v0, v3}, Lw0/we;-><init>(Lcom/ex/auto/QuickAccessFloaterService;II)V

    invoke-virtual {v2, v4}, Lcom/ex/auto/QuickAccessFloaterService;->O(Lh2/l;)V

    :cond_e
    :goto_c
    return-void

    :pswitch_2
    const-string v0, "screenOffCommandReceiver: broadcast recebido (Ei Sapo)"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lw0/pf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0, v6}, Lcom/ex/auto/QuickAccessFloaterService;->V(Z)V

    return-void

    :pswitch_3
    iget-object v0, v1, Lw0/pf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget-boolean v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->Q:Z

    if-eqz v2, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/ex/auto/QuickAccessFloaterService;->U:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-ltz v2, :cond_f

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->b0()V

    :cond_f
    return-void

    :pswitch_4
    const-string v0, "rearCameraReceiver: broadcast recebido (4 dedos)"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lw0/pf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.ecarx.parking"

    const-string v6, "com.ecarx.parking.MainAvmActivity"

    invoke-direct {v3, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "Gesto 4 dedos: abrindo c\u00e2mera de r\u00e9 (com.ecarx.parking/.MainAvmActivity)"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openRearCamera: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v5}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_d
    return-void

    :pswitch_5
    const-string v0, "openFavoritesReceiver: broadcast recebido (5 dedos)"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lw0/pf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v2, "showFavoriteAppsPicker: "

    :try_start_3
    invoke-static {v0}, Lw0/t1;->Q(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-virtual {v12, v14, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    const-string v10, "getApplicationInfo(...)"

    invoke-static {v7, v10}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lw0/rf;

    invoke-virtual {v12, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v11, "getApplicationIcon(...)"

    invoke-static {v7, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v14, v8, v7}, Lw0/rf;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_f

    :catch_3
    const/4 v10, 0x0

    :goto_f
    if-eqz v10, :cond_10

    :try_start_5
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catch_4
    move-exception v0

    goto/16 :goto_13

    :cond_11
    new-instance v4, Lw0/b6;

    const/16 v7, 0xd

    invoke-direct {v4, v7}, Lw0/b6;-><init>(I)V

    invoke-static {v13, v4}, Ly1/g;->i0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    new-instance v7, Li2/m;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u2b50 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0x7f0f059e

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const v11, 0x7f05002e

    invoke-virtual {v0, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v11, 0x7f050038

    invoke-virtual {v0, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v11, Lw0/af;

    invoke-direct {v11, v0, v7, v6}, Lw0/af;-><init>(Lcom/ex/auto/QuickAccessFloaterService;Li2/m;I)V

    invoke-virtual {v3, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x30

    invoke-virtual {v0, v11}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v11

    const/4 v13, -0x1

    invoke-direct {v6, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xe

    invoke-virtual {v0, v11}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v11

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v8, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f019e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f050042

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x1da

    invoke-virtual {v0, v6}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v6

    const/4 v10, -0x2

    invoke-direct {v4, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11

    :cond_12
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v4}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw0/rf;

    iget-object v10, v6, Lw0/rf;->c:Landroid/graphics/drawable/Drawable;

    iget-object v11, v6, Lw0/rf;->b:Ljava/lang/String;

    new-instance v13, Lw0/bf;

    invoke-direct {v13, v12, v6, v0, v7}, Lw0/bf;-><init>(Landroid/content/pm/PackageManager;Lw0/rf;Lcom/ex/auto/QuickAccessFloaterService;Li2/m;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v10, v11, v6, v13}, Lcom/ex/auto/QuickAccessFloaterService;->w(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lw0/xe;Lh2/a;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_13
    invoke-virtual {v0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->h(Ljava/util/ArrayList;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_11
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v6

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v8

    invoke-virtual {v0, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v10

    invoke-virtual {v3, v6, v8, v4, v10}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0f019c

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/ex/auto/QuickAccessFloaterService;->o(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0f0036

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v7, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v3, 0x7f6

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    :cond_14
    iget-object v0, v7, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_18

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_15

    const v3, 0x7f070059

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_15
    :try_start_6
    iget-object v0, v7, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_17

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, v7, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_16

    check-cast v0, Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/ex/auto/QuickAccessFloaterService;->n(Landroid/app/AlertDialog;)V

    goto :goto_14

    :catch_5
    move-exception v0

    goto :goto_12

    :cond_16
    invoke-static {v9}, Li2/g;->h(Ljava/lang/String;)V

    const/16 v17, 0x0

    throw v17

    :cond_17
    invoke-static {v9}, Li2/g;->h(Ljava/lang/String;)V

    const/16 v17, 0x0

    throw v17
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :goto_12
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_18
    invoke-static {v9}, Li2/g;->h(Ljava/lang/String;)V

    const/16 v17, 0x0

    throw v17

    :cond_19
    invoke-static {v9}, Li2/g;->h(Ljava/lang/String;)V

    const/16 v17, 0x0

    throw v17
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v5}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_14
    return-void

    :pswitch_6
    const-string v0, "goToLastAppReceiver: broadcast recebido (3 dedos)"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lw0/pf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v2, "goToLastApp: "

    :try_start_8
    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v3, v4}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/app/ActivityManager;

    const-class v4, Landroid/app/ActivityManager;

    const-string v7, "getRecentTasks"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v8, v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {v4, v7}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.flyme.auto.launcher"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v6, "baseIntent"

    invoke-virtual {v12, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v12, v6, Landroid/content/Intent;

    if-eqz v12, :cond_1a

    check-cast v6, Landroid/content/Intent;

    goto :goto_16

    :catch_6
    move-exception v0

    goto/16 :goto_1f

    :cond_1a
    const/4 v6, 0x0

    :goto_16
    if-nez v6, :cond_1c

    :cond_1b
    :goto_17
    const/4 v6, 0x0

    const/4 v12, 0x5

    goto :goto_15

    :cond_1c
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1e

    :cond_1d
    move-object/from16 v19, v3

    goto :goto_1c

    :cond_1e
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1b

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1b

    invoke-virtual {v11, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    if-nez v12, :cond_1f

    goto :goto_17

    :cond_1f
    :try_start_9
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12
    :try_end_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-object/from16 v19, v3

    :try_start_a
    const-string v3, "id"

    invoke-virtual {v12, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_18

    :catch_7
    move-object/from16 v19, v3

    :catch_8
    :try_start_b
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v12, "taskId"

    invoke-virtual {v3, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    :goto_18
    invoke-virtual {v3, v14}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    if-ltz v3, :cond_23

    const/4 v12, 0x0

    :try_start_c
    invoke-virtual {v10, v6, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_19

    :catch_9
    const/4 v14, 0x0

    :goto_19
    if-eqz v14, :cond_21

    :try_start_d
    invoke-virtual {v10, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    if-nez v12, :cond_20

    goto :goto_1a

    :cond_20
    move-object v6, v12

    :catch_a
    :cond_21
    :goto_1a
    if-eqz v14, :cond_22

    :try_start_e
    invoke-virtual {v10, v14}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v12
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_1b

    :catch_b
    :cond_22
    const/4 v12, 0x0

    :goto_1b
    :try_start_f
    new-instance v14, Lw0/qf;

    invoke-direct {v14, v3, v6, v12}, Lw0/qf;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_1c
    move-object/from16 v3, v19

    goto :goto_17

    :cond_24
    move-object/from16 v19, v3

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "Gesto 3 dedos: nenhum app recente encontrado"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0f026e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_25
    new-instance v23, Li2/m;

    invoke-direct/range {v23 .. v23}, Ljava/lang/Object;-><init>()V

    new-instance v3, Li2/l;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v3, Li2/l;->a:I

    new-instance v4, Lw0/b6;

    const/16 v6, 0xb

    invoke-direct {v4, v6}, Lw0/b6;-><init>(I)V

    invoke-static {v13, v4}, Ly1/g;->i0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw0/qf;

    new-instance v21, Li2/m;

    invoke-direct/range {v21 .. v21}, Ljava/lang/Object;-><init>()V

    iget-object v8, v7, Lw0/qf;->c:Landroid/graphics/drawable/Drawable;

    iget-object v10, v7, Lw0/qf;->b:Ljava/lang/String;

    new-instance v18, Lw0/xe;

    move-object/from16 v24, v0

    move-object/from16 v22, v3

    move-object/from16 v20, v7

    invoke-direct/range {v18 .. v24}, Lw0/xe;-><init>(Landroid/app/ActivityManager;Lw0/qf;Li2/m;Li2/l;Li2/m;Lcom/ex/auto/QuickAccessFloaterService;)V

    move-object/from16 v13, v18

    move-object/from16 v3, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v7, v23

    move-object/from16 v0, v24

    new-instance v14, Lw0/h0;

    move-object/from16 p2, v4

    const/4 v4, 0x5

    invoke-direct {v14, v3, v11, v7, v4}, Lw0/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v8, v10, v13, v14}, Lcom/ex/auto/QuickAccessFloaterService;->w(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lw0/xe;Lh2/a;)Landroid/view/ViewGroup;

    move-result-object v8

    iput-object v8, v12, Li2/m;->a:Ljava/lang/Object;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p2

    move-object/from16 v19, v3

    move-object/from16 v23, v7

    move-object/from16 v3, v22

    goto :goto_1d

    :cond_26
    move-object/from16 v7, v23

    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/ex/auto/QuickAccessFloaterService;->h(Ljava/util/ArrayList;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v6

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v8

    invoke-virtual {v0, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v10

    invoke-virtual {v3, v6, v8, v4, v10}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0f02c6

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/ex/auto/QuickAccessFloaterService;->o(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0f0036

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v7, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_27

    const/16 v3, 0x7f6

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    :cond_27
    iget-object v0, v7, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2b

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_28

    const v3, 0x7f070059

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    :cond_28
    :try_start_10
    iget-object v0, v7, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2a

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, v7, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_29

    check-cast v0, Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/ex/auto/QuickAccessFloaterService;->n(Landroid/app/AlertDialog;)V

    goto :goto_20

    :catch_c
    move-exception v0

    goto :goto_1e

    :cond_29
    invoke-static {v9}, Li2/g;->h(Ljava/lang/String;)V

    const/16 v17, 0x0

    throw v17

    :cond_2a
    invoke-static {v9}, Li2/g;->h(Ljava/lang/String;)V

    const/16 v17, 0x0

    throw v17
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    :goto_1e
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_2b
    invoke-static {v9}, Li2/g;->h(Ljava/lang/String;)V

    const/16 v17, 0x0

    throw v17

    :cond_2c
    invoke-static {v9}, Li2/g;->h(Ljava/lang/String;)V

    const/16 v17, 0x0

    throw v17
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    :goto_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v5}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_20
    return-void

    :pswitch_7
    const/4 v12, 0x0

    if-eqz v0, :cond_2d

    invoke-virtual {v0, v4, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    goto :goto_21

    :cond_2d
    move v6, v12

    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fanSwipeReceiver: broadcast recebido, direction="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_2e

    iget-object v0, v1, Lw0/pf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0, v6}, Lcom/ex/auto/QuickAccessFloaterService;->c(I)V

    :cond_2e
    return-void

    :pswitch_8
    iget-object v0, v1, Lw0/pf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->K()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
