.class public final synthetic Lw0/sa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/Object;ZZI)V
    .locals 0

    .line 1
    iput p5, p0, Lw0/sa;->a:I

    iput-object p1, p0, Lw0/sa;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/sa;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lw0/sa;->c:Z

    iput-boolean p4, p0, Lw0/sa;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;ZZ)V
    .locals 1

    .line 2
    const/4 v0, 0x3

    iput v0, p0, Lw0/sa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lw0/sa;->c:Z

    iput-boolean p4, p0, Lw0/sa;->d:Z

    iput-object p1, p0, Lw0/sa;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/sa;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/car/hardware/property/CarPropertyManager;Lcom/ex/auto/MainActivity;Z)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Lw0/sa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw0/sa;->c:Z

    iput-object p2, p0, Lw0/sa;->e:Ljava/lang/Object;

    iput-object p3, p0, Lw0/sa;->b:Lcom/ex/auto/MainActivity;

    iput-boolean p4, p0, Lw0/sa;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lw0/sa;->a:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lw0/sa;->c:Z

    iget-boolean v4, p0, Lw0/sa;->d:Z

    iget-object v5, p0, Lw0/sa;->b:Lcom/ex/auto/MainActivity;

    iget-object v6, p0, Lw0/sa;->e:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    sget v7, Lcom/ex/auto/MainActivity;->z1:I

    if-nez v0, :cond_0

    if-nez v4, :cond_0

    invoke-virtual {v5}, Lcom/ex/auto/MainActivity;->q0()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v0, Le/h;

    invoke-direct {v0, v5}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Le/h;->b:Ljava/lang/Object;

    check-cast v1, Le/d;

    const v2, 0x7f0f026c

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Le/d;->d:Ljava/lang/CharSequence;

    const v2, 0x7f0f026a

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Le/d;->f:Ljava/lang/CharSequence;

    iput-boolean v3, v1, Le/d;->m:Z

    const v1, 0x7f0f0038

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw0/z8;

    const/16 v3, 0x18

    invoke-direct {v2, v5, v3}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1, v2}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Le/h;->h()Le/i;

    goto/16 :goto_4

    :cond_0
    if-nez v0, :cond_1

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const-string v0, "temp"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "batt"

    if-eqz v4, :cond_2

    const v4, 0x7f0f01b8

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0f01b4

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const v4, 0x7f0f05b0

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0f01b7

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0f05d9

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const v0, 0x7f0f05af

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v8, 0x7f0f01b5

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0f01b6

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v0, 0x7f0f0141

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v1, Le/h;

    invoke-direct {v1, v5}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v2, v1, Le/h;->b:Ljava/lang/Object;

    check-cast v2, Le/d;

    iput-object v4, v2, Le/d;->d:Ljava/lang/CharSequence;

    iput-object v0, v2, Le/d;->f:Ljava/lang/CharSequence;

    iput-boolean v3, v2, Le/d;->m:Z

    const v0, 0x7f0f0032

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lw0/z8;

    const/16 v3, 0x19

    invoke-direct {v2, v5, v3}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v1, v0, v2}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f0f0030

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lw0/m9;

    const/4 v3, 0x3

    invoke-direct {v2, v5, v6, v3}, Lw0/m9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v1, v0, v2}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Le/h;->h()Le/i;

    :goto_4
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/sa;->b:Lcom/ex/auto/MainActivity;

    iget-object v1, p0, Lw0/sa;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    iget-boolean v2, p0, Lw0/sa;->c:Z

    iget-boolean v4, p0, Lw0/sa;->d:Z

    sget v5, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v5}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v2, :cond_8

    const v1, 0x7f0f0096

    goto :goto_5

    :cond_8
    const v1, 0x7f0f0095

    :goto_5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_9
    if-eqz v4, :cond_a

    const v1, 0x7f0f0094

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_a
    const v1, 0x7f0f0097

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_b
    :goto_7
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/sa;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, p0, Lw0/sa;->e:Ljava/lang/Object;

    check-cast v2, Le/i;

    iget-boolean v4, p0, Lw0/sa;->c:Z

    iget-boolean v5, p0, Lw0/sa;->d:Z

    iput-boolean v3, v0, Lcom/ex/auto/MainActivity;->n1:Z

    :try_start_0
    invoke-virtual {v2}, Le/i;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_c

    const-string v6, "apply"

    goto :goto_8

    :cond_c
    const-string v6, "remove"

    :goto_8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_d

    const-string v1, "OK"

    goto :goto_9

    :cond_d
    const-string v1, "FAIL"

    :goto_9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lw0/ih;->a:Ljava/lang/String;

    sget-object v1, Lw0/ih;->c:Ljava/lang/String;

    const/16 v6, 0x2ee0

    invoke-static {v6, v1}, Lcom/ex/auto/MainActivity;->v2(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "V\u00eddeo"

    invoke-virtual {v0, v2, v1}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_e

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vcodec_60fps"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_e
    if-nez v5, :cond_f

    const v1, 0x7f0f04b8

    goto :goto_a

    :cond_f
    if-eqz v4, :cond_10

    const v1, 0x7f0f04b7

    goto :goto_a

    :cond_10
    const v1, 0x7f0f04bd

    :goto_a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->T0()V

    return-void

    :pswitch_2
    iget-boolean v8, p0, Lw0/sa;->c:Z

    iget-object v0, p0, Lw0/sa;->e:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    iget-object v5, p0, Lw0/sa;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v7, p0, Lw0/sa;->d:Z

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const/4 v1, 0x0

    if-eqz v8, :cond_12

    sget-object v4, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v4, Lw0/u;->a:I

    invoke-static {v0, v4, v3}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    move v2, v3

    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_12
    move-object v6, v1

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "aeb_state_saved"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_13
    if-nez v8, :cond_14

    invoke-virtual {v5}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    xor-int/lit8 v1, v7, 0x1

    const-string v2, "aeb_desired"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_14
    iget-object v0, v5, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, Lw0/sa;

    const/4 v9, 0x2

    invoke-direct/range {v4 .. v9}, Lw0/sa;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/Object;ZZI)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
