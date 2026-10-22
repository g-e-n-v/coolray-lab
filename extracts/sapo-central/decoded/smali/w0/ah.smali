.class public final synthetic Lw0/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/TimerFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/TimerFloaterService;I)V
    .locals 0

    iput p2, p0, Lw0/ah;->a:I

    iput-object p1, p0, Lw0/ah;->b:Lcom/ex/auto/TimerFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lw0/ah;->a:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const v4, 0x7f0f0342

    const-wide/16 v5, 0x0

    const-string v7, "regressiva"

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lw0/ah;->b:Lcom/ex/auto/TimerFloaterService;

    sget-boolean v2, Lcom/ex/auto/TimerFloaterService;->o:Z

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    :goto_0
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_0
    iget-object v1, v0, Lw0/ah;->b:Lcom/ex/auto/TimerFloaterService;

    sget-boolean v2, Lcom/ex/auto/TimerFloaterService;->o:Z

    const v2, 0x3e19999a    # 0.15f

    invoke-virtual {v1, v2}, Lcom/ex/auto/TimerFloaterService;->g(F)V

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lw0/ah;->b:Lcom/ex/auto/TimerFloaterService;

    sget-boolean v2, Lcom/ex/auto/TimerFloaterService;->o:Z

    const v2, -0x41e66666    # -0.15f

    invoke-virtual {v1, v2}, Lcom/ex/auto/TimerFloaterService;->g(F)V

    goto :goto_0

    :pswitch_2
    iget-object v1, v0, Lw0/ah;->b:Lcom/ex/auto/TimerFloaterService;

    iput-boolean v8, v1, Lcom/ex/auto/TimerFloaterService;->k:Z

    iget-object v3, v1, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    invoke-static {v3, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v5, v1, Lcom/ex/auto/TimerFloaterService;->l:J

    :cond_0
    iput-wide v5, v1, Lcom/ex/auto/TimerFloaterService;->i:J

    iget-object v3, v1, Lcom/ex/auto/TimerFloaterService;->g:Landroid/widget/Button;

    if-eqz v3, :cond_1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v3, v1, Lcom/ex/auto/TimerFloaterService;->f:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v2, v1, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, v1, Lcom/ex/auto/TimerFloaterService;->n:Lq0/b;

    invoke-virtual {v1}, Lq0/b;->j()V

    goto :goto_0

    :pswitch_3
    iget-object v1, v0, Lw0/ah;->b:Lcom/ex/auto/TimerFloaterService;

    iget-object v9, v1, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    invoke-static {v9, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-boolean v9, v1, Lcom/ex/auto/TimerFloaterService;->k:Z

    if-nez v9, :cond_4

    iget-wide v9, v1, Lcom/ex/auto/TimerFloaterService;->i:J

    cmp-long v5, v9, v5

    if-gtz v5, :cond_4

    goto :goto_2

    :cond_4
    iget-boolean v5, v1, Lcom/ex/auto/TimerFloaterService;->k:Z

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/ex/auto/TimerFloaterService;->a()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ex/auto/TimerFloaterService;->i:J

    iput-boolean v8, v1, Lcom/ex/auto/TimerFloaterService;->k:Z

    iget-object v2, v1, Lcom/ex/auto/TimerFloaterService;->g:Landroid/widget/Button;

    if-eqz v2, :cond_5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v2, v1, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    invoke-static {v2, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/ex/auto/TimerFloaterService;->j:J

    iput-boolean v3, v1, Lcom/ex/auto/TimerFloaterService;->k:Z

    iget-object v3, v1, Lcom/ex/auto/TimerFloaterService;->g:Landroid/widget/Button;

    if-eqz v3, :cond_7

    const v4, 0x7f0f0344

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v3, v1, Lcom/ex/auto/TimerFloaterService;->f:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    iget-object v2, v1, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    invoke-static {v2, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_9

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_1
    iget-object v1, v1, Lcom/ex/auto/TimerFloaterService;->n:Lq0/b;

    invoke-virtual {v1}, Lq0/b;->j()V

    :goto_2
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_4
    iget-object v1, v0, Lw0/ah;->b:Lcom/ex/auto/TimerFloaterService;

    sget-boolean v2, Lcom/ex/auto/TimerFloaterService;->o:Z

    invoke-virtual {v1}, Lcom/ex/auto/TimerFloaterService;->a()J

    move-result-wide v9

    const/16 v2, 0x3e8

    int-to-long v11, v2

    div-long v13, v9, v11

    const/16 v2, 0xe10

    int-to-long v3, v2

    div-long v16, v13, v3

    rem-long v2, v13, v3

    const/16 v4, 0x3c

    move-wide/from16 v18, v5

    int-to-long v5, v4

    div-long/2addr v2, v5

    rem-long/2addr v13, v5

    rem-long v4, v9, v11

    const/16 v6, 0xa

    int-to-long v11, v6

    div-long/2addr v4, v11

    iget-object v6, v1, Lcom/ex/auto/TimerFloaterService;->f:Landroid/widget/TextView;

    if-eqz v6, :cond_b

    cmp-long v11, v16, v18

    if-lez v11, :cond_a

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v11, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d:%02d:%02d.%02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02d:%02d.%02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v2, v1, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    invoke-static {v2, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-boolean v2, v1, Lcom/ex/auto/TimerFloaterService;->k:Z

    if-eqz v2, :cond_f

    cmp-long v2, v9, v18

    if-nez v2, :cond_f

    iput-boolean v8, v1, Lcom/ex/auto/TimerFloaterService;->k:Z

    move-wide/from16 v2, v18

    iput-wide v2, v1, Lcom/ex/auto/TimerFloaterService;->i:J

    iget-object v2, v1, Lcom/ex/auto/TimerFloaterService;->g:Landroid/widget/Button;

    if-eqz v2, :cond_c

    const v15, 0x7f0f0342

    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v2, v1, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v2, v1, Lcom/ex/auto/TimerFloaterService;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_e

    const v3, -0xadae

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    const v2, 0x7f0f0347

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_f
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_5
    iget-object v1, v0, Lw0/ah;->b:Lcom/ex/auto/TimerFloaterService;

    iget-object v2, v1, Lcom/ex/auto/TimerFloaterService;->b:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_10

    iget-boolean v1, v1, Lcom/ex/auto/TimerFloaterService;->k:Z

    if-eqz v1, :cond_10

    goto :goto_4

    :cond_10
    move v3, v8

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

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
