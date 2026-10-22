.class public final synthetic Lw0/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lw0/h0;->a:I

    iput-object p1, p0, Lw0/h0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw0/h0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw0/h0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    iget v0, v1, Lw0/h0;->a:I

    const/16 v2, 0x1770

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/h0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v1, Lw0/h0;->c:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lcom/ex/auto/TempBattPillFloaterService;

    iget-object v2, v1, Lw0/h0;->d:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Lw0/yg;

    sget v2, Lw0/pg;->a:I

    if-nez v0, :cond_0

    :goto_0
    move-object v8, v5

    goto :goto_1

    :cond_0
    sget-object v2, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Lw0/pg;->a:I

    invoke-static {v0, v2, v4}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lw0/e8;->R(Ljava/lang/Integer;)Ljava/lang/Float;

    move-result-object v5

    goto :goto_0

    :goto_1
    invoke-static {v0}, Lw0/pg;->l(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v9

    iget-object v0, v7, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    new-instance v6, Lw0/z;

    const/16 v11, 0xb

    invoke-direct/range {v6 .. v11}, Lw0/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    iget-object v0, v1, Lw0/h0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v2, v1, Lw0/h0;->c:Ljava/lang/Object;

    check-cast v2, Lw0/qf;

    iget-object v4, v1, Lw0/h0;->d:Ljava/lang/Object;

    check-cast v4, Li2/m;

    sget v6, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v6, "QuickAccessFloater"

    const-string v7, "Gesto 3 dedos: indo para "

    :try_start_0
    iget v8, v2, Lw0/qf;->a:I

    invoke-virtual {v0, v8, v3}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lw0/qf;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (taskId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lw0/qf;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "goToLastApp: moveTaskToFront falhou: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v6}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    iget-object v0, v4, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    :cond_1
    const-string v0, "dlg"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_1
    iget-object v0, v1, Lw0/h0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/h0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lw0/h0;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0, v2, v3}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;Ljava/lang/String;)Lw0/zb;

    move-result-object v0

    iget-object v2, v0, Lw0/zb;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/ex/auto/MainActivity;->K0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lw0/zb;->b:Ljava/lang/String;

    new-instance v5, Lx1/a;

    invoke-direct {v5, v0, v2}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object v5

    :pswitch_2
    iget-object v0, v1, Lw0/h0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/h0;->c:Ljava/lang/Object;

    check-cast v2, La1/r;

    iget-object v3, v1, Lw0/h0;->d:Ljava/lang/Object;

    check-cast v3, Lw0/f2;

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Lw0/f2;->a()Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_3
    iget-object v0, v1, Lw0/h0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/LyricsFloaterService;

    iget-object v2, v1, Lw0/h0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lw0/h0;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    new-instance v5, La1/g;

    invoke-direct {v5, v2, v3, v0}, La1/g;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/LyricsFloaterService;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, v1, Lw0/h0;->b:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, v1, Lw0/h0;->c:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/widget/FrameLayout;

    iget-object v0, v1, Lw0/h0;->d:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    :try_start_1
    const-string v0, "top -b -n 1 -m 25 -s 9"

    new-instance v6, Lw0/n;

    invoke-direct {v6, v4}, Lw0/n;-><init>(I)V

    invoke-static {v0, v2, v5, v6}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    const-string v0, ""

    :goto_4
    sget-object v2, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const-string v11, "(\\d+)%cpu"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    const-string v12, "compile(...)"

    invoke-static {v11, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "input"

    invoke-static {v0, v12}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    const-string v12, "matcher(...)"

    invoke-static {v11, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v4, v0}, Lk1/a;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo2/e;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lo2/e;->a()Ljava/util/List;

    move-result-object v11

    invoke-static {v11, v3}, Ly1/g;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_4

    :try_start_2
    sget-object v12, Lo2/j;->a:Lo2/h;

    invoke-virtual {v12, v11}, Lo2/h;->c(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    :cond_3
    move-object v11, v5

    :goto_5
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-lez v12, :cond_4

    goto :goto_6

    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v11

    if-ge v11, v3, :cond_5

    move v11, v3

    :cond_5
    mul-int/lit8 v11, v11, 0x64

    int-to-float v11, v11

    :goto_6
    invoke-static {v0}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object v0

    iget-object v12, v0, Ln2/c;->b:Ln2/f;

    invoke-interface {v12}, Ln2/f;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :catchall_1
    :cond_6
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    iget-object v13, v0, Ln2/c;->c:Ljava/lang/Object;

    check-cast v13, Lh2/l;

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lo2/h;

    const-string v15, "\\s+"

    invoke-direct {v14, v15}, Lo2/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4, v13}, Lo2/h;->d(ILjava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/16 v15, 0xc

    if-lt v14, v15, :cond_6

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_6

    const/16 v14, 0x8

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "<this>"

    invoke-static {v14, v15}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_3
    sget-object v15, Lo2/j;->a:Lo2/h;

    invoke-virtual {v15, v14}, Lo2/h;->c(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    :cond_7
    move-object v14, v5

    :goto_8
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v14, v15

    div-float v19, v14, v11

    const/16 v14, 0xb

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, ":"

    invoke-static {v13, v14}, Lo2/k;->B0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "["

    invoke-static {v13, v14}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, "/"

    invoke-static {v13, v14}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, " "

    invoke-static {v13, v14, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v14

    if-eqz v14, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-virtual {v6, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    :try_start_4
    invoke-virtual {v2, v13, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v14}, Li2/g;->b(Ljava/lang/Object;)V

    :try_start_5
    invoke-virtual {v2, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v17, v15

    goto :goto_9

    :catchall_2
    move-object/from16 v17, v13

    :goto_9
    :try_start_6
    invoke-virtual {v2, v14}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v18, v15

    goto :goto_a

    :catchall_3
    move-object/from16 v18, v5

    :goto_a
    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v14, v14, 0x81

    if-nez v14, :cond_a

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_b

    :cond_9
    move/from16 v20, v4

    goto :goto_c

    :cond_a
    :goto_b
    move/from16 v20, v3

    :goto_c
    new-instance v15, Lw0/n7;

    move-object/from16 v16, v13

    invoke-direct/range {v15 .. v20}, Lw0/n7;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;FZ)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x5

    if-lt v13, v14, :cond_6

    :cond_b
    iget-object v0, v7, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    new-instance v6, Lw0/z;

    const/4 v11, 0x4

    invoke-direct/range {v6 .. v11}, Lw0/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, v1, Lw0/h0;->b:Ljava/lang/Object;

    check-cast v0, Lw0/mg;

    iget-object v6, v1, Lw0/h0;->c:Ljava/lang/Object;

    check-cast v6, Lcom/ex/auto/AppPipFloaterService;

    iget-object v7, v1, Lw0/h0;->d:Ljava/lang/Object;

    check-cast v7, Lw0/g0;

    const-string v8, "am stack list"

    invoke-static {v2, v8}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "taskId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v0, Lw0/mg;->b:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object v2

    iget-object v9, v2, Ln2/c;->b:Ln2/f;

    invoke-interface {v9}, Ln2/f;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, v2, Ln2/c;->c:Ljava/lang/Object;

    check-cast v10, Lh2/l;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    invoke-static {v11, v8, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object v5, v10

    :cond_d
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_e

    move v2, v3

    goto :goto_d

    :cond_e
    move v2, v4

    :goto_d
    if-eqz v5, :cond_f

    const-string v8, "visible=true"

    invoke-static {v5, v8, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-ne v5, v3, :cond_f

    move v4, v3

    :cond_f
    if-nez v2, :cond_10

    iget-object v2, v6, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v3, La1/i;

    const/4 v4, 0x4

    invoke-direct {v3, v6, v4, v0}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    :cond_10
    if-nez v4, :cond_12

    sget-object v2, Lw0/og;->a:Lo2/h;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "am start -n "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lw0/mg;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1f40

    invoke-static {v4, v2}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ADB_FAIL"

    invoke-static {v2, v4}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "Exception"

    invoke-static {v2, v4, v3}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    sput-object v2, Lw0/og;->f:Ljava/lang/String;

    :cond_12
    iget-object v2, v6, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v3, La1/g;

    const/4 v4, 0x3

    invoke-direct {v3, v6, v0, v7, v4}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_e
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
