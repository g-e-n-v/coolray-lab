.class public final synthetic Lw0/f9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    iput p2, p0, Lw0/f9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iput-boolean p3, p0, Lw0/f9;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;ZI)V
    .locals 0

    .line 2
    iput p3, p0, Lw0/f9;->a:I

    iput-object p1, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iput-boolean p2, p0, Lw0/f9;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/ex/auto/MainActivity;I)V
    .locals 0

    .line 3
    iput p3, p0, Lw0/f9;->a:I

    iput-boolean p1, p0, Lw0/f9;->c:Z

    iput-object p2, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lw0/f9;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const v3, 0x7f0f02dc

    const v4, 0x7f0f02d7

    const-string v5, "getString(...)"

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, Lw0/f9;->c:Z

    iput-boolean v6, v0, Lcom/ex/auto/MainActivity;->h1:Z

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    const v2, 0x7f0f05a9

    invoke-static {v2, v7, v0, v5}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f0f05ab

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v7}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "gestures_enabled"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/MainActivity;->f1:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->l1()V

    invoke-virtual {v0, v7}, Lcom/ex/auto/MainActivity;->m1(Z)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, Lw0/f9;->c:Z

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v6}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_3
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, Lw0/f9;->c:Z

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    const v1, 0x7f0f015a

    goto :goto_3

    :cond_5
    const v1, 0x7f0f0159

    :goto_3
    invoke-static {v1, v7, v0, v5}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    :goto_4
    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v3, p0, Lw0/f9;->c:Z

    iput-boolean v6, v0, Lcom/ex/auto/MainActivity;->Z0:Z

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Lcom/ex/auto/MainActivity;->X0:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->P0()V

    invoke-virtual {v0, v7}, Lcom/ex/auto/MainActivity;->w1(Z)V

    if-eqz v3, :cond_7

    const v1, 0x7f0f02e5

    invoke-static {v1, v6, v0, v5}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "rvc_black_bg"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->P0()V

    sget-object v3, Lw0/eg;->a:Ljava/lang/String;

    sget-object v3, Lw0/eg;->b:Ljava/lang/String;

    new-instance v4, Le/h;

    invoke-direct {v4, v0}, Le/h;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f0178

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Le/h;->b:Ljava/lang/Object;

    check-cast v6, Le/d;

    iput-object v5, v6, Le/d;->d:Ljava/lang/CharSequence;

    const v5, 0x7f0f017f

    const-string v7, "Falha ao aplicar o fundo preto na r\u00e9"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Le/d;->f:Ljava/lang/CharSequence;

    const v5, 0x7f0f0037

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v2, 0x7f0f02fc

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lw0/m9;

    invoke-direct {v5, v0, v3, v1}, Lw0/m9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v4, v2, v5}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v4}, Le/h;->h()Le/i;

    :goto_5
    return-void

    :pswitch_3
    iget-object v0, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, Lw0/f9;->c:Z

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->A()V

    if-nez v1, :cond_8

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ex/auto/MainActivity;->K(Lcom/ex/auto/MainActivity;I)V

    :cond_8
    return-void

    :pswitch_4
    iget-object v0, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, Lw0/f9;->c:Z

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/MainActivity;->K0:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->r1()V

    :cond_a
    :goto_6
    return-void

    :pswitch_5
    iget-object v0, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, Lw0/f9;->c:Z

    iput-boolean v6, v0, Lcom/ex/auto/MainActivity;->Z0:Z

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_9

    :cond_b
    if-eqz v1, :cond_c

    const v1, 0x7f0f02e4

    :goto_7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_c
    const v1, 0x7f0f02ea

    goto :goto_7

    :goto_8
    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v6}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-virtual {v0, v7}, Lcom/ex/auto/MainActivity;->w1(Z)V

    :goto_9
    return-void

    :pswitch_6
    iget-object v0, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, Lw0/f9;->c:Z

    const-string v2, "/data/local/tmp/sons"

    const-string v3, "ls -1 "

    const-string v4, "\n                    for _sw in "

    const-string v5, "\n                        for wav in "

    :try_start_0
    invoke-static {v2}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/data/local/tmp"

    invoke-static {v9}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "/sdcard/Download"

    invoke-static {v10}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "/storage/emulated/0/Download"

    invoke-static {v11}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "/*.wav "

    if-eqz v1, :cond_d

    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/*.WAV; do\n                          [ -f \"$wav\" ] || continue\n                          base=${wav##*/}\n                          base=$(echo \"$base\" | tr \' \' \'_\')\n                          dest="

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/\"$base\"\n                          mv -f \"$wav\" \"$dest\" 2>&1 || true\n                          chown root:root \"$dest\" 2>/dev/null || true\n                          chmod 644 \"$dest\" 2>/dev/null || true\n                          restorecon -v \"$dest\" 2>/dev/null || true\n                        done\n                        for dlroot in "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; do\n                          [ -d \"$dlroot\" ] || continue\n                          for wav in \"$dlroot\"/*.wav \"$dlroot\"/*.WAV; do\n                            [ -f \"$wav\" ] || continue\n                            base=${wav##*/}\n                            base=$(echo \"$base\" | tr \' \' \'_\')\n                            dest="

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/\"$base\"\n                            cp -f \"$wav\" \"$dest\" 2>&1 || true\n                            chown root:root \"$dest\" 2>/dev/null || true\n                            chmod 644 \"$dest\" 2>/dev/null || true\n                            restorecon -v \"$dest\" 2>/dev/null || true\n                          done\n                        done\n                        "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_d
    const-string v5, ""

    :goto_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/*.WAV; do\n                      [ -f \"$_sw\" ] || continue\n                      _sb=${_sw##*/}\n                      _sc=$(echo \"$_sb\" | tr \' \' \'_\')\n                      [ \"$_sc\" = \"$_sb\" ] && continue\n                      mv -f \"$_sw\" "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/\"$_sc\" 2>&1 || true\n                      chown root:root "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/\"$_sc\" 2>/dev/null || true\n                      chmod 644 "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/\"$_sc\" 2>/dev/null || true\n                    done\n                "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_e

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/*.wav 2>/dev/null || true"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_f

    const v1, 0x88b8

    goto :goto_b

    :cond_f
    const/16 v1, 0x2ee0

    :goto_b
    invoke-virtual {v0, v1, v3}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/k;->o0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_11
    :goto_d
    if-ge v6, v4, :cond_12

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v2}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v9, ".wav"

    invoke-static {v8, v9, v7}, Lo2/t;->Z(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    :catch_0
    sget-object v1, Ly1/p;->a:Ly1/p;

    :cond_12
    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, La1/i;

    const/16 v4, 0x19

    invoke-direct {v3, v0, v4, v1}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_7
    iget-object v0, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, Lw0/f9;->c:Z

    iput-boolean v1, v0, Lcom/ex/auto/MainActivity;->x0:Z

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->s1()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, Lw0/f9;->c:Z

    iput-boolean v6, v0, Lcom/ex/auto/MainActivity;->h1:Z

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_f

    :cond_13
    if-eqz v1, :cond_14

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_14
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_e
    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v6}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-virtual {v0, v7}, Lcom/ex/auto/MainActivity;->m1(Z)V

    :goto_f
    return-void

    :pswitch_9
    iget-object v0, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, Lw0/f9;->c:Z

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_10

    :cond_15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/ex/auto/MainActivity;->z0:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "speed_auto_lock_enabled"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v1, v2, :cond_16

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_16
    iget-object v2, v0, Lcom/ex/auto/MainActivity;->S0:[Z

    aget-boolean v2, v2, v7

    if-eqz v2, :cond_17

    const v2, 0x7f0901fc

    invoke-virtual {v0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v0, v1}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    :cond_17
    :goto_10
    return-void

    :pswitch_a
    iget-object v0, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, Lw0/f9;->c:Z

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_11

    :cond_18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/MainActivity;->X0:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->P0()V

    :cond_19
    :goto_11
    return-void

    :pswitch_b
    iget-object v0, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, Lw0/f9;->c:Z

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    if-eqz v1, :cond_1a

    const-string v2, "for i in 1 2 3 4 5; do iptables  -t mangle -D POSTROUTING -j TTL --ttl-set 65 2>/dev/null || break; done\nfor i in 1 2 3 4 5; do ip6tables -t mangle -D POSTROUTING -j HL  --hl-set  65 2>/dev/null || break; done\niptables  -t mangle -A POSTROUTING -j TTL --ttl-set 65 2>&1\nip6tables -t mangle -A POSTROUTING -j HL  --hl-set  65 2>&1\necho TTL_V4=$(iptables  -t mangle -S POSTROUTING | grep -c \'ttl-set 65\')\necho TTL_V6=$(ip6tables -t mangle -S POSTROUTING | grep -c \'hl-set 65\')"

    goto :goto_12

    :cond_1a
    const-string v2, "for i in 1 2 3 4 5; do iptables  -t mangle -D POSTROUTING -j TTL --ttl-set 65 2>/dev/null || break; done\nfor i in 1 2 3 4 5; do ip6tables -t mangle -D POSTROUTING -j HL  --hl-set  65 2>/dev/null || break; done\necho TTL_V4=$(iptables  -t mangle -S POSTROUTING | grep -c \'ttl-set 65\')\necho TTL_V6=$(ip6tables -t mangle -S POSTROUTING | grep -c \'hl-set 65\')"

    :goto_12
    const/16 v3, 0x4e20

    invoke-virtual {v0, v3, v2}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TTL_V6"

    const-string v4, "TTL_V4"

    const-string v5, "saida"

    if-eqz v1, :cond_1b

    invoke-static {v2, v5}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lw0/e8;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1c

    invoke-static {v2, v3}, Lw0/e8;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1c

    goto :goto_13

    :cond_1b
    invoke-static {v2, v5}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lw0/e8;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1d

    invoke-static {v2, v3}, Lw0/e8;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1d

    :cond_1c
    move v3, v6

    goto :goto_14

    :cond_1d
    :goto_13
    move v3, v7

    :goto_14
    if-eqz v3, :cond_1e

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "ttl_65_ativo"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1e
    sget-object v4, Lw0/ae;->a:Lw0/ae;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_1f

    const-string v5, "ativar"

    goto :goto_15

    :cond_1f
    const-string v5, "desativar"

    :goto_15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_20

    const-string v5, "OK"

    goto :goto_16

    :cond_20
    const-string v5, "FALHOU"

    :goto_16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u2014 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    const-string v8, " "

    invoke-static {v2, v5, v8}, Lo2/t;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x78

    invoke-static {v5, v2}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TTL"

    invoke-static {v4, v2, v6}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, Lw0/ta;

    invoke-direct {v4, v0, v3, v1, v7}, Lw0/ta;-><init>(Landroid/content/ContextWrapper;ZZI)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_c
    iget-boolean v0, p0, Lw0/f9;->c:Z

    iget-object v2, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    if-eqz v0, :cond_21

    const-string v3, "mkdir -p /data/local/gesture-launcher && touch /data/local/gesture-launcher/single_step_mode && chmod 666 /data/local/gesture-launcher/single_step_mode"

    goto :goto_17

    :cond_21
    const-string v3, "rm -f /data/local/gesture-launcher/single_step_mode"

    :goto_17
    const/16 v4, 0xbb8

    invoke-virtual {v2, v4, v3}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    const-string v3, "[ -f \'/data/local/gesture-launcher/single_step_mode\' ] && echo AC_YES || echo AC_NO"

    invoke-virtual {v2, v4, v3}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AC_YES"

    invoke-static {v3, v4, v6}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    iget-object v4, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, Lw0/ta;

    invoke-direct {v5, v2, v3, v0, v1}, Lw0/ta;-><init>(Landroid/content/ContextWrapper;ZZI)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_d
    iget-boolean v10, p0, Lw0/f9;->c:Z

    move v0, v7

    iget-object v7, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    if-eqz v10, :cond_22

    invoke-static {v7}, Lw0/e8;->c(Landroid/content/Context;)Z

    move-result v0

    move v9, v0

    goto :goto_19

    :cond_22
    invoke-static {v6}, Lw0/e8;->A(Z)V

    const-string v1, "cmd overlay disable --user 0 com.geely.ex2.mica.pipoverlayprobe"

    const/16 v3, 0x2710

    invoke-static {v3, v1}, Lw0/e8;->a(ILjava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lw0/e8;->B()Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    if-nez v1, :cond_23

    new-instance v4, Lw0/n;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lw0/n;-><init>(I)V

    invoke-static {v4}, Lw0/e8;->I(Lh2/p;)Lw0/e5;

    :cond_23
    sget-object v4, Lw0/ae;->a:Lw0/ae;

    if-nez v1, :cond_24

    const-string v1, "desligado"

    goto :goto_18

    :cond_24
    const-string v1, "NAO consegui desligar"

    :goto_18
    const-string v4, "PiP nativo: "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "PipOverlay"

    invoke-static {v4, v1, v0}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    move v9, v3

    :goto_19
    invoke-static {}, Lw0/e8;->x()Lw0/z4;

    move-result-object v8

    if-eqz v9, :cond_25

    :goto_1a
    move-object v11, v2

    goto :goto_1c

    :cond_25
    const-string v0, "echo ok"

    const/16 v1, 0x1770

    invoke-static {v1, v0}, Lw0/e8;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADB_FAIL"

    invoke-static {v0, v1}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v7}, Lcom/ex/auto/MainActivity;->q0()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_26

    sget-object v0, Lw0/p4;->a:Lw0/p4;

    :goto_1b
    move-object v2, v0

    goto :goto_1a

    :cond_26
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lw0/p4;->b:Lw0/p4;

    goto :goto_1b

    :cond_27
    sget-object v0, Lw0/p4;->c:Lw0/p4;

    goto :goto_1b

    :goto_1c
    iget-object v0, v7, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v6, La1/l;

    invoke-direct/range {v6 .. v11}, La1/l;-><init>(Lcom/ex/auto/MainActivity;Lw0/z4;ZZLw0/p4;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_e
    iget-object v0, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, Lw0/f9;->c:Z

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_1d

    :cond_28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/MainActivity;->f1:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->O0()V

    :cond_29
    :goto_1d
    return-void

    :pswitch_f
    move v0, v7

    iget-object v1, p0, Lw0/f9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v2, p0, Lw0/f9;->c:Z

    iput-boolean v6, v1, Lcom/ex/auto/MainActivity;->J0:Z

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_20

    :cond_2a
    if-eqz v2, :cond_2b

    const v3, 0x7f0f00a5

    :goto_1e
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1f

    :cond_2b
    const v3, 0x7f0f00a6

    goto :goto_1e

    :goto_1f
    invoke-static {v3}, Li2/g;->b(Ljava/lang/Object;)V

    xor-int/2addr v0, v2

    invoke-virtual {v1, v3, v0}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_20
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
