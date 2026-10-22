.class public final synthetic Lw0/m7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/HomeFloatingWidgetsService;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lw0/m7;->a:I

    iput-object p1, p0, Lw0/m7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iput-object p2, p0, Lw0/m7;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lw0/m7;->a:I

    iget-object v1, p0, Lw0/m7;->c:Ljava/lang/String;

    iget-object v2, p0, Lw0/m7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "heating"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->G:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v2, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v3, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->G:Landroid/view/View;

    invoke-virtual {v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->e()V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "drive_regen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v2, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v3, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/view/View;

    invoke-virtual {v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->c()V

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "vent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->E:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v2, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v3, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->E:Landroid/view/View;

    invoke-virtual {v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->j()V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "temp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v2, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v3, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/view/View;

    invoke-virtual {v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->h()V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->H:Landroid/widget/GridLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v2, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v3, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->H:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->b()V

    goto :goto_0

    :sswitch_5
    const-string v0, "fan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v2, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v3, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/view/View;

    invoke-virtual {v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->d()V

    goto :goto_0

    :sswitch_6
    const-string v0, "volume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->I:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->w()V

    invoke-virtual {v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->k()V

    goto :goto_0

    :sswitch_7
    const-string v0, "sysinfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->J:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->u()V

    invoke-virtual {v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->g()V

    goto :goto_0

    :sswitch_8
    const-string v0, "vent_fan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v2, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(Landroid/view/View;)V

    iput-object v3, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/view/View;

    invoke-virtual {v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->i()V

    :cond_9
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v0, v2}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "singleton(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lw0/n2;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Lw0/n2;-><init>(I)V

    invoke-static {v0, v2, v3}, Lw0/e8;->y(Landroid/app/ActivityManager;Ljava/util/Set;Lh2/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v2, "killApp("

    const-string v3, "): "

    invoke-static {v2, v1, v3}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFloatingWidgets"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7d1b7b77 -> :sswitch_8
        -0x67930b05 -> :sswitch_7
        -0x305518e6 -> :sswitch_6
        0x18b13 -> :sswitch_5
        0x2dca72 -> :sswitch_4
        0x3643d4 -> :sswitch_3
        0x372cb5 -> :sswitch_2
        0x2b4e1d48 -> :sswitch_1
        0x2f6ec3f2 -> :sswitch_0
    .end sparse-switch
.end method
