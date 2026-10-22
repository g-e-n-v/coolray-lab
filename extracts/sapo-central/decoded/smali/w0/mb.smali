.class public final synthetic Lw0/mb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Lw0/o5;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Lw0/o5;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lw0/mb;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/mb;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/mb;->d:Ljava/lang/String;

    iput-object p3, p0, Lw0/mb;->c:Lw0/o5;

    iput-object p4, p0, Lw0/mb;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Lw0/o5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lw0/mb;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/mb;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/mb;->c:Lw0/o5;

    iput-object p3, p0, Lw0/mb;->d:Ljava/lang/String;

    iput-object p4, p0, Lw0/mb;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lw0/mb;->a:I

    iget-object v2, v0, Lw0/mb;->e:Ljava/lang/String;

    iget-object v3, v0, Lw0/mb;->d:Ljava/lang/String;

    iget-object v4, v0, Lw0/mb;->c:Lw0/o5;

    iget-object v5, v0, Lw0/mb;->b:Lcom/ex/auto/MainActivity;

    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v5}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {v4}, Lw0/r5;->a(Lw0/o5;)Lw0/l5;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x1

    const v6, 0x7f0f0038

    const/4 v7, 0x0

    if-eq v1, v4, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const v1, 0x7f0f048d

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/fragment/app/q;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    :cond_2
    new-instance v1, Le/h;

    invoke-direct {v1, v5}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v2, v1, Le/h;->b:Ljava/lang/Object;

    check-cast v2, Le/d;

    const v4, 0x7f0f04a5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Le/d;->d:Ljava/lang/CharSequence;

    const v4, 0x7f0f04a4

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Le/d;->f:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Le/h;->h()Le/i;

    goto :goto_0

    :cond_3
    new-instance v1, Le/h;

    invoke-direct {v1, v5}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v8, v1, Le/h;->b:Ljava/lang/Object;

    check-cast v8, Le/d;

    const v9, 0x7f0f04a7

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Le/d;->d:Ljava/lang/CharSequence;

    const v9, 0x7f0f04a6

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Le/d;->f:Ljava/lang/CharSequence;

    const v8, 0x7f0f0032

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v7}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lw0/kb;

    invoke-direct {v7, v4, v5, v2, v3}, Lw0/kb;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Le/h;->h()Le/i;

    goto :goto_0

    :cond_4
    const-string v1, "speed-profile"

    invoke-virtual {v5, v2, v3, v1}, Lcom/ex/auto/MainActivity;->V0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void

    :pswitch_0
    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v1, Lw0/r5;->a:Lo2/h;

    const-string v1, "pkg"

    invoke-static {v3, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lw0/r5;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, ""

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "echo \"REF=$(stat -c %s /data/misc/profiles/ref/"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/primary.prof 2>/dev/null)\"; echo \"CUR=$(stat -c %s /data/misc/profiles/cur/0/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/primary.prof 2>/dev/null)\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/16 v6, 0x1f40

    invoke-virtual {v5, v6, v1}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "REF"

    invoke-static {v1, v6}, Lw0/r5;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_2
    move-wide v14, v6

    goto :goto_3

    :cond_7
    iget-wide v6, v4, Lw0/o5;->d:J

    goto :goto_2

    :goto_3
    const-string v6, "CUR"

    invoke-static {v1, v6}, Lw0/r5;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_4
    move-wide/from16 v16, v6

    goto :goto_5

    :cond_8
    iget-wide v6, v4, Lw0/o5;->e:J

    goto :goto_4

    :goto_5
    iget-object v9, v4, Lw0/o5;->a:Ljava/lang/String;

    iget-wide v10, v4, Lw0/o5;->b:J

    iget-wide v12, v4, Lw0/o5;->c:J

    iget-object v1, v4, Lw0/o5;->f:Ljava/lang/String;

    const-string v4, "linhaDexopt"

    invoke-static {v1, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lw0/o5;

    move-object/from16 v18, v1

    invoke-direct/range {v8 .. v18}, Lw0/o5;-><init>(Ljava/lang/String;JJJJLjava/lang/String;)V

    iget-object v1, v5, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, Lw0/mb;

    invoke-direct {v4, v5, v8, v2, v3}, Lw0/mb;-><init>(Lcom/ex/auto/MainActivity;Lw0/o5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
