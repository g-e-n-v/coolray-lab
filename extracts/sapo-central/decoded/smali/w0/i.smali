.class public final synthetic Lw0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lw0/i;->a:I

    iput-object p2, p0, Lw0/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget v0, p0, Lw0/i;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lw0/i;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v3, Li/s;

    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v0, v3, Li/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    const v4, 0x7f0f040a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f0409

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0f040c

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0f040b

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Landroid/widget/ListPopupWindow;

    invoke-direct {v5, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    invoke-virtual {v5, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    invoke-virtual {v0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v5, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    const p1, 0x7f070064

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v4}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v4, Ljava/lang/String;

    iget-object v7, v3, Li/s;->e:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v7, v3, Li/s;->d:Ljava/io/Serializable;

    check-cast v7, Ljava/lang/String;

    invoke-static {v1, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "\u2713   "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "     "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Ly1/h;->W()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0c0032

    invoke-direct {v1, v0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v5, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lw0/yc;

    invoke-direct {p1, v5, v3}, Lw0/yc;-><init>(Landroid/widget/ListPopupWindow;Li/s;)V

    invoke-virtual {v5, p1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->show()V

    return-void

    :pswitch_0
    check-cast v3, Le/i;

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v3}, Le/i;->dismiss()V

    return-void

    :pswitch_1
    check-cast v3, Lcom/ex/auto/FavoriteAppsActivity;

    sget p1, Lcom/ex/auto/FavoriteAppsActivity;->t:I

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_2
    check-cast v3, Lcom/ex/auto/CloseAppsWhitelistActivity;

    sget p1, Lcom/ex/auto/CloseAppsWhitelistActivity;->c:I

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_3
    check-cast v3, Lcom/ex/auto/BlackoutFloaterService;

    iget-boolean p1, v3, Lcom/ex/auto/BlackoutFloaterService;->o:Z

    if-nez p1, :cond_7

    iget-boolean p1, v3, Lcom/ex/auto/BlackoutFloaterService;->c:Z

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Lcom/ex/auto/BlackoutFloaterService;->d()V

    goto :goto_3

    :cond_3
    if-nez p1, :cond_7

    iget-boolean p1, v3, Lcom/ex/auto/BlackoutFloaterService;->d:Z

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    iput-boolean v2, v3, Lcom/ex/auto/BlackoutFloaterService;->d:Z

    sget-boolean p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    iput-boolean p1, v3, Lcom/ex/auto/BlackoutFloaterService;->f:Z

    sget-boolean v0, Lcom/geely/hvacstepperv2/TempStepperService;->e0:Z

    iput-boolean v0, v3, Lcom/ex/auto/BlackoutFloaterService;->g:Z

    if-eqz p1, :cond_5

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_5
    iget-boolean p1, v3, Lcom/ex/auto/BlackoutFloaterService;->g:Z

    if-eqz p1, :cond_6

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/geely/hvacstepperv2/TempStepperService;

    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_6
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lw0/p0;

    invoke-direct {v0, v3, v1}, Lw0/p0;-><init>(Lcom/ex/auto/BlackoutFloaterService;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_7
    :goto_3
    return-void

    :pswitch_4
    check-cast v3, Lcom/ex/auto/BackgroundKeepAliveActivity;

    sget p1, Lcom/ex/auto/BackgroundKeepAliveActivity;->v:I

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_5
    check-cast v3, Lcom/ex/auto/AcProgramListActivity;

    sget p1, Lcom/ex/auto/AcProgramListActivity;->u:I

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    return-void

    nop

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
