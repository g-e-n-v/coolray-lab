.class public final synthetic La1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    iput p2, p0, La1/o;->a:I

    iput-object p1, p0, La1/o;->b:Landroid/content/ContextWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    iget p1, p0, La1/o;->a:I

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/16 v2, 0x8

    const-string v3, "wm"

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, La1/o;->b:Landroid/content/ContextWrapper;

    check-cast p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v8, :cond_4

    if-eq v0, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->E:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->F:F

    sub-float/2addr p2, v1

    float-to-int p2, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v2, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v2, :cond_2

    :cond_1
    iput-boolean v8, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->G:Z

    :cond_2
    iget-object v1, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->w:Landroid/view/WindowManager$LayoutParams;

    iget v2, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->C:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->D:I

    add-int/2addr v0, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->a:Landroid/view/WindowManager;

    iget-object p1, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    invoke-interface {p2, p1, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    move v7, v8

    goto :goto_1

    :cond_4
    iget-boolean p2, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->G:Z

    if-eqz p2, :cond_5

    iget-object p2, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->w:Landroid/view/WindowManager$LayoutParams;

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v2, "drive_regen"

    invoke-static {p1, v2, v0, v1, p2}, Lw0/e8;->M(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_5
    iget-boolean p2, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->G:Z

    if-nez p2, :cond_3

    iget-boolean p2, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->z:Z

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->d()V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->e()V

    goto :goto_0

    :cond_7
    iput-boolean v7, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->G:Z

    iget-object v0, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->w:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->C:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->D:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->E:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->F:F

    goto :goto_0

    :goto_1
    return v7

    :pswitch_0
    iget-object p1, p0, La1/o;->b:Landroid/content/ContextWrapper;

    check-cast p1, Lcom/ex/auto/WifiFloaterService;

    iget-object v0, p1, Lcom/ex/auto/WifiFloaterService;->k:Lw0/kh;

    iget-object v1, p1, Lcom/ex/auto/WifiFloaterService;->e:Landroid/os/Handler;

    sget v3, Lcom/ex/auto/WifiFloaterService;->n:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const-string v4, "lp"

    if-eqz v3, :cond_11

    if-eq v3, v8, :cond_d

    if-eq v3, v6, :cond_8

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v6, p1, Lcom/ex/auto/WifiFloaterService;->h:F

    sub-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v6, p1, Lcom/ex/auto/WifiFloaterService;->i:F

    sub-float/2addr p2, v6

    float-to-int p2, p2

    iget-boolean v6, p1, Lcom/ex/auto/WifiFloaterService;->j:Z

    if-nez v6, :cond_a

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v2, :cond_9

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v2, :cond_a

    :cond_9
    iput-boolean v8, p1, Lcom/ex/auto/WifiFloaterService;->j:Z

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a
    iget-boolean v0, p1, Lcom/ex/auto/WifiFloaterService;->j:Z

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/ex/auto/WifiFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_c

    iget v1, p1, Lcom/ex/auto/WifiFloaterService;->f:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p1, Lcom/ex/auto/WifiFloaterService;->g:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p1, Lcom/ex/auto/WifiFloaterService;->a:Landroid/view/WindowManager;

    if-eqz p2, :cond_b

    iget-object p1, p1, Lcom/ex/auto/WifiFloaterService;->c:Landroid/widget/TextView;

    invoke-interface {p2, p1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_b
    const-string p1, "windowManager"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    throw v5

    :cond_c
    invoke-static {v4}, Li2/g;->h(Ljava/lang/String;)V

    throw v5

    :cond_d
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p2, p1, Lcom/ex/auto/WifiFloaterService;->j:Z

    if-nez p2, :cond_f

    const-string p2, "wifiManager"

    :try_start_0
    iget-object p1, p1, Lcom/ex/auto/WifiFloaterService;->b:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p2

    xor-int/2addr p2, v8

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_2

    :cond_e
    invoke-static {p2}, Li2/g;->h(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    iget-object p2, p1, Lcom/ex/auto/WifiFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz p2, :cond_10

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v2, "wifi_floater"

    invoke-static {p1, v2, v0, v1, p2}, Lw0/e8;->M(Landroid/content/Context;Ljava/lang/String;III)V

    goto :goto_2

    :cond_10
    invoke-static {v4}, Li2/g;->h(Ljava/lang/String;)V

    throw v5

    :cond_11
    iput-boolean v7, p1, Lcom/ex/auto/WifiFloaterService;->j:Z

    iget-object v2, p1, Lcom/ex/auto/WifiFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_13

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, p1, Lcom/ex/auto/WifiFloaterService;->f:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p1, Lcom/ex/auto/WifiFloaterService;->g:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p1, Lcom/ex/auto/WifiFloaterService;->h:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p1, Lcom/ex/auto/WifiFloaterService;->i:F

    const-wide/16 p1, 0x258

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :catch_0
    :cond_12
    :goto_2
    return v8

    :cond_13
    invoke-static {v4}, Li2/g;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_1
    iget-object p1, p0, La1/o;->b:Landroid/content/ContextWrapper;

    check-cast p1, Lcom/ex/auto/TempBattPillFloaterService;

    sget-object v2, Lcom/ex/auto/TempBattPillFloaterService;->v:Lcom/ex/auto/TempBattPillFloaterService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_20

    if-eq v2, v8, :cond_18

    if-eq v2, v6, :cond_14

    goto/16 :goto_7

    :cond_14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p1, Lcom/ex/auto/TempBattPillFloaterService;->p:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p1, Lcom/ex/auto/TempBattPillFloaterService;->q:F

    sub-float/2addr p2, v1

    float-to-int p2, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1, v4}, Lcom/ex/auto/TempBattPillFloaterService;->d(I)I

    move-result v2

    if-gt v1, v2, :cond_15

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1, v4}, Lcom/ex/auto/TempBattPillFloaterService;->d(I)I

    move-result v2

    if-le v1, v2, :cond_16

    :cond_15
    iput-boolean v8, p1, Lcom/ex/auto/TempBattPillFloaterService;->t:Z

    :cond_16
    iget-object v1, p1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    iget v2, p1, Lcom/ex/auto/TempBattPillFloaterService;->r:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    iget v1, p1, Lcom/ex/auto/TempBattPillFloaterService;->s:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_1
    iget-object p2, p1, Lcom/ex/auto/TempBattPillFloaterService;->a:Landroid/view/WindowManager;

    if-eqz p2, :cond_17

    iget-object v0, p1, Lcom/ex/auto/TempBattPillFloaterService;->c:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, v0, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    :cond_17
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_18
    iget-boolean p2, p1, Lcom/ex/auto/TempBattPillFloaterService;->t:Z

    if-eqz p2, :cond_19

    iget-object p2, p1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p2}, Li2/g;->b(Ljava/lang/Object;)V

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v2, "temp_batt_pill"

    invoke-static {p1, v2, p2, v0, v1}, Lw0/e8;->M(Landroid/content/Context;Ljava/lang/String;III)V

    goto/16 :goto_6

    :cond_19
    iget-object p2, p1, Lcom/ex/auto/TempBattPillFloaterService;->k:Ljava/lang/Integer;

    if-eqz p2, :cond_1a

    invoke-virtual {p1}, Lcom/ex/auto/TempBattPillFloaterService;->e()V

    const p2, 0x7f0f028b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :cond_1a
    invoke-static {v7, v1}, Lk1/a;->T(II)Ll2/c;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Ll2/a;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    move-object v2, p2

    check-cast v2, Ll2/b;

    iget-boolean v3, v2, Ll2/b;->c:Z

    if-eqz v3, :cond_1b

    invoke-virtual {v2}, Ll2/b;->nextInt()I

    move-result v2

    invoke-static {p1, v2}, Lw0/t1;->O(Landroid/content/Context;I)Lw0/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1b
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v7

    :goto_4
    if-ge v4, v3, :cond_1d

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw0/k;

    if-nez v6, :cond_1c

    goto :goto_5

    :cond_1c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, v4, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7f0f007b

    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lw0/t1;->b0(Lw0/k;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    const p2, 0x7f0f0289

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_1e
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f028a

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/CharSequence;

    new-instance v3, Lw0/g;

    invoke-direct {v3, p1, v0, v2}, Lw0/g;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, p2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    invoke-virtual {p1, p2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    :try_start_2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1f

    const/16 v0, 0x7f6

    invoke-virtual {p2, v0}, Landroid/view/Window;->setType(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_1f
    :try_start_3
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :goto_6
    move v7, v8

    goto :goto_7

    :cond_20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p1, Lcom/ex/auto/TempBattPillFloaterService;->p:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p1, Lcom/ex/auto/TempBattPillFloaterService;->q:F

    iget-object p2, p1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p2}, Li2/g;->b(Ljava/lang/Object;)V

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p1, Lcom/ex/auto/TempBattPillFloaterService;->r:I

    iget-object p2, p1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p2}, Li2/g;->b(Ljava/lang/Object;)V

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p1, Lcom/ex/auto/TempBattPillFloaterService;->s:I

    iput-boolean v7, p1, Lcom/ex/auto/TempBattPillFloaterService;->t:Z

    goto :goto_6

    :goto_7
    return v7

    :pswitch_2
    iget-object p1, p0, La1/o;->b:Landroid/content/ContextWrapper;

    check-cast p1, Lcom/ex/auto/SplitFloaterService;

    sget-object v0, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_26

    if-eq v0, v8, :cond_25

    if-eq v0, v6, :cond_21

    goto :goto_9

    :cond_21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p1, Lcom/ex/auto/SplitFloaterService;->p:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p1, Lcom/ex/auto/SplitFloaterService;->q:F

    sub-float/2addr p2, v1

    float-to-int p2, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1, v4}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v2

    if-gt v1, v2, :cond_22

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1, v4}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v2

    if-le v1, v2, :cond_23

    :cond_22
    iput-boolean v8, p1, Lcom/ex/auto/SplitFloaterService;->t:Z

    :cond_23
    iget-object v1, p1, Lcom/ex/auto/SplitFloaterService;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    iget v2, p1, Lcom/ex/auto/SplitFloaterService;->r:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p1, Lcom/ex/auto/SplitFloaterService;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    iget v1, p1, Lcom/ex/auto/SplitFloaterService;->s:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_4
    iget-object p2, p1, Lcom/ex/auto/SplitFloaterService;->a:Landroid/view/WindowManager;

    if-eqz p2, :cond_24

    iget-object v0, p1, Lcom/ex/auto/SplitFloaterService;->b:Landroid/widget/LinearLayout;

    iget-object v1, p1, Lcom/ex/auto/SplitFloaterService;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_24
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :goto_8
    iget-boolean v7, p1, Lcom/ex/auto/SplitFloaterService;->t:Z

    goto :goto_9

    :cond_25
    iget-boolean v7, p1, Lcom/ex/auto/SplitFloaterService;->t:Z

    goto :goto_9

    :cond_26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p1, Lcom/ex/auto/SplitFloaterService;->p:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p1, Lcom/ex/auto/SplitFloaterService;->q:F

    iget-object p2, p1, Lcom/ex/auto/SplitFloaterService;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p2}, Li2/g;->b(Ljava/lang/Object;)V

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p1, Lcom/ex/auto/SplitFloaterService;->r:I

    iget-object p2, p1, Lcom/ex/auto/SplitFloaterService;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p2}, Li2/g;->b(Ljava/lang/Object;)V

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p1, Lcom/ex/auto/SplitFloaterService;->s:I

    iput-boolean v7, p1, Lcom/ex/auto/SplitFloaterService;->t:Z

    :goto_9
    return v7

    :pswitch_3
    iget-object p1, p0, La1/o;->b:Landroid/content/ContextWrapper;

    check-cast p1, Lcom/ex/auto/QuickAccessFloaterService;

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2d

    if-eq v0, v8, :cond_2a

    if-eq v0, v6, :cond_27

    goto/16 :goto_c

    :cond_27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p1, Lcom/ex/auto/QuickAccessFloaterService;->F:F

    sub-float/2addr p2, v0

    iget-boolean v0, p1, Lcom/ex/auto/QuickAccessFloaterService;->H:Z

    if-nez v0, :cond_28

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_28

    iput-boolean v8, p1, Lcom/ex/auto/QuickAccessFloaterService;->H:Z

    :cond_28
    iget-boolean v0, p1, Lcom/ex/auto/QuickAccessFloaterService;->H:Z

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/ex/auto/QuickAccessFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    iget v1, p1, Lcom/ex/auto/QuickAccessFloaterService;->G:I

    float-to-int p2, p2

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p1, Lcom/ex/auto/QuickAccessFloaterService;->b:Landroid/view/WindowManager;

    invoke-static {p2}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/ex/auto/QuickAccessFloaterService;->d:Lw0/eh;

    iget-object p1, p1, Lcom/ex/auto/QuickAccessFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, v0, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_29
    :goto_a
    move v7, v8

    goto :goto_c

    :cond_2a
    iget-boolean p2, p1, Lcom/ex/auto/QuickAccessFloaterService;->H:Z

    if-eqz p2, :cond_2b

    invoke-virtual {p1}, Lcom/ex/auto/QuickAccessFloaterService;->t()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v0, p1, Lcom/ex/auto/QuickAccessFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v1, "qa_y_pos"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_b

    :cond_2b
    iget-boolean p2, p1, Lcom/ex/auto/QuickAccessFloaterService;->z:Z

    if-eqz p2, :cond_2c

    invoke-virtual {p1}, Lcom/ex/auto/QuickAccessFloaterService;->m()V

    goto :goto_b

    :cond_2c
    invoke-virtual {p1}, Lcom/ex/auto/QuickAccessFloaterService;->q()V

    :goto_b
    iput-boolean v7, p1, Lcom/ex/auto/QuickAccessFloaterService;->H:Z

    goto :goto_a

    :cond_2d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p1, Lcom/ex/auto/QuickAccessFloaterService;->F:F

    iget-object p2, p1, Lcom/ex/auto/QuickAccessFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p2}, Li2/g;->b(Ljava/lang/Object;)V

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p1, Lcom/ex/auto/QuickAccessFloaterService;->G:I

    iput-boolean v7, p1, Lcom/ex/auto/QuickAccessFloaterService;->H:Z

    goto :goto_a

    :goto_c
    return v7

    :pswitch_4
    iget-object p1, p0, La1/o;->b:Landroid/content/ContextWrapper;

    check-cast p1, Lcom/ex/auto/ModoOficinaTriggerService;

    sget-object v1, Lcom/ex/auto/ModoOficinaTriggerService;->f:Lcom/ex/auto/ModoOficinaTriggerService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_31

    iget-boolean p2, p1, Lcom/ex/auto/ModoOficinaTriggerService;->e:Z

    if-eqz p2, :cond_2e

    goto :goto_d

    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/ex/auto/ModoOficinaTriggerService;->d:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1770

    cmp-long p2, v3, v5

    if-lez p2, :cond_2f

    iput-wide v1, p1, Lcom/ex/auto/ModoOficinaTriggerService;->d:J

    iput v7, p1, Lcom/ex/auto/ModoOficinaTriggerService;->c:I

    :cond_2f
    iget p2, p1, Lcom/ex/auto/ModoOficinaTriggerService;->c:I

    add-int/2addr p2, v8

    iput p2, p1, Lcom/ex/auto/ModoOficinaTriggerService;->c:I

    const/4 v1, 0x5

    if-ge p2, v1, :cond_30

    goto :goto_d

    :cond_30
    iput v7, p1, Lcom/ex/auto/ModoOficinaTriggerService;->c:I

    iput-boolean v8, p1, Lcom/ex/auto/ModoOficinaTriggerService;->e:Z

    const p2, 0x7f0f024f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    sget-object p2, Lw0/ae;->a:Lw0/ae;

    const-string p2, "ModoOficinaTrigger"

    const-string v1, "gesto secreto reconhecido \u2014 restaurando"

    invoke-static {p2, v1, v7}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/ab;

    invoke-direct {v2, p2, v0, p1}, Lw0/ab;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_31
    :goto_d
    return v8

    :pswitch_5
    iget-object p1, p0, La1/o;->b:Landroid/content/ContextWrapper;

    check-cast p1, Lcom/ex/auto/BlackoutActivity;

    sget p2, Lcom/ex/auto/BlackoutActivity;->t:I

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return v8

    :pswitch_6
    iget-object p1, p0, La1/o;->b:Landroid/content/ContextWrapper;

    check-cast p1, Lcom/ex/auto/AppPipFloaterService;

    sget-object v0, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_37

    if-eq v0, v8, :cond_36

    if-eq v0, v6, :cond_32

    goto :goto_f

    :cond_32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p1, Lcom/ex/auto/AppPipFloaterService;->o:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p1, Lcom/ex/auto/AppPipFloaterService;->p:F

    sub-float/2addr p2, v1

    float-to-int p2, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1, v4}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v2

    if-gt v1, v2, :cond_33

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1, v4}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v2

    if-le v1, v2, :cond_34

    :cond_33
    iput-boolean v8, p1, Lcom/ex/auto/AppPipFloaterService;->s:Z

    :cond_34
    iget-object v1, p1, Lcom/ex/auto/AppPipFloaterService;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    iget v2, p1, Lcom/ex/auto/AppPipFloaterService;->q:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p1, Lcom/ex/auto/AppPipFloaterService;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    iget v1, p1, Lcom/ex/auto/AppPipFloaterService;->r:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_5
    iget-object p2, p1, Lcom/ex/auto/AppPipFloaterService;->a:Landroid/view/WindowManager;

    if-eqz p2, :cond_35

    iget-object v0, p1, Lcom/ex/auto/AppPipFloaterService;->b:Landroid/widget/LinearLayout;

    iget-object v1, p1, Lcom/ex/auto/AppPipFloaterService;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_35
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    :goto_e
    iget-boolean v7, p1, Lcom/ex/auto/AppPipFloaterService;->s:Z

    goto :goto_f

    :cond_36
    iget-boolean v7, p1, Lcom/ex/auto/AppPipFloaterService;->s:Z

    goto :goto_f

    :cond_37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p1, Lcom/ex/auto/AppPipFloaterService;->o:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p1, Lcom/ex/auto/AppPipFloaterService;->p:F

    iget-object p2, p1, Lcom/ex/auto/AppPipFloaterService;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p2}, Li2/g;->b(Ljava/lang/Object;)V

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p1, Lcom/ex/auto/AppPipFloaterService;->q:I

    iget-object p2, p1, Lcom/ex/auto/AppPipFloaterService;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p2}, Li2/g;->b(Ljava/lang/Object;)V

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p1, Lcom/ex/auto/AppPipFloaterService;->r:I

    iput-boolean v7, p1, Lcom/ex/auto/AppPipFloaterService;->s:Z

    :goto_f
    return v7

    :pswitch_7
    iget-object p1, p0, La1/o;->b:Landroid/content/ContextWrapper;

    check-cast p1, Lcom/geely/hvacstepperv2/TempStepperService;

    iget-object v0, p1, Lcom/geely/hvacstepperv2/TempStepperService;->P:La1/q;

    iget-object v2, p1, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    iget-object v3, p1, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    if-eqz v3, :cond_3f

    iget-object v4, p1, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    if-nez v4, :cond_38

    goto/16 :goto_12

    :cond_38
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p1, Lcom/geely/hvacstepperv2/TempStepperService;->L:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p1, Lcom/geely/hvacstepperv2/TempStepperService;->M:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_3e

    if-eq v4, v8, :cond_3d

    if-eq v4, v6, :cond_39

    if-eq v4, v1, :cond_3d

    goto :goto_10

    :cond_39
    iget-boolean v1, p1, Lcom/geely/hvacstepperv2/TempStepperService;->N:Z

    if-nez v1, :cond_3c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p1, Lcom/geely/hvacstepperv2/TempStepperService;->J:F

    sub-float/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v3, p1, Lcom/geely/hvacstepperv2/TempStepperService;->K:F

    sub-float/2addr p2, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p1, Lcom/geely/hvacstepperv2/TempStepperService;->O:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_3b

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget p1, p1, Lcom/geely/hvacstepperv2/TempStepperService;->O:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3a

    goto :goto_11

    :cond_3a
    :goto_10
    move v7, v8

    goto :goto_12

    :cond_3b
    :goto_11
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_10

    :cond_3c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p1, Lcom/geely/hvacstepperv2/TempStepperService;->J:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p1, Lcom/geely/hvacstepperv2/TempStepperService;->K:F

    sub-float/2addr p2, v1

    float-to-int p2, p2

    iget v1, p1, Lcom/geely/hvacstepperv2/TempStepperService;->H:I

    add-int/2addr v1, v0

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p1, Lcom/geely/hvacstepperv2/TempStepperService;->I:I

    sub-int/2addr v0, p2

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p1, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    iget-object p1, p1, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    invoke-interface {p2, p1, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    :cond_3d
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget p2, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v2, "hvac_stepper"

    invoke-static {p1, v2, p2, v0, v1}, Lw0/e8;->M(Landroid/content/Context;Ljava/lang/String;III)V

    iput-boolean v7, p1, Lcom/geely/hvacstepperv2/TempStepperService;->N:Z

    goto :goto_10

    :cond_3e
    iput-boolean v7, p1, Lcom/geely/hvacstepperv2/TempStepperService;->N:Z

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p1, Lcom/geely/hvacstepperv2/TempStepperService;->H:I

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p1, Lcom/geely/hvacstepperv2/TempStepperService;->I:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p1, Lcom/geely/hvacstepperv2/TempStepperService;->J:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p1, Lcom/geely/hvacstepperv2/TempStepperService;->K:F

    const-wide/16 p1, 0x1c2

    invoke-virtual {v2, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10

    :cond_3f
    :goto_12
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
