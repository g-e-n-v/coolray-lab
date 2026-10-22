.class public final synthetic Lw0/ka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/ka;->a:Ljava/lang/Object;

    iput-object p2, p0, Lw0/ka;->b:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, Lw0/ka;->c:Ljava/lang/String;

    iput-object p4, p0, Lw0/ka;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lw0/ka;->e:Z

    iput-boolean p6, p0, Lw0/ka;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    iget-object v0, p0, Lw0/ka;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Exception;

    iget-object v3, p0, Lw0/ka;->b:Lcom/ex/auto/MainActivity;

    iget-object v5, p0, Lw0/ka;->c:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v4, "ConnAdaptor"

    const/4 v6, 0x0

    const-string v7, "getString(...)"

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "ConnAdaptor check erro: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Ljava/lang/Exception;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "Update"

    invoke-virtual {v3, v9, v1}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v5, 0x7f0f013b

    invoke-virtual {v3, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lw0/ae;->a:Lw0/ae;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "checagem falhou: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    instance-of v4, v0, Lw0/r6;

    if-eqz v4, :cond_0

    check-cast v0, Lw0/r6;

    iget v0, v0, Lw0/r6;->a:I

    invoke-virtual {v3, v0}, Lcom/ex/auto/MainActivity;->a0(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f0f026b

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v1}, Lcom/ex/auto/MainActivity;->S1(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void

    :cond_2
    check-cast v0, Lw0/yb;

    iget-object v1, v0, Lw0/yb;->c:Lw0/g4;

    move-object v8, v7

    iget-object v7, v0, Lw0/yb;->a:Lw0/zb;

    iget-object v0, v0, Lw0/yb;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "connadaptor_expected_md5"

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    sget-object v9, Lw0/g4;->d:Lw0/g4;

    if-ne v1, v9, :cond_4

    const v0, 0x7f0f0127

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "checagem: nao consegui ler ativo nem cache \u2014 nao afirmo nada"

    invoke-static {v4, v1, v6}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v0}, Lcom/ex/auto/MainActivity;->S1(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v2}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void

    :cond_4
    sget-object v2, Lw0/g4;->a:Lw0/g4;

    move v4, v6

    iget-object v6, p0, Lw0/ka;->d:Ljava/lang/String;

    move-object v9, v8

    iget-boolean v8, p0, Lw0/ka;->e:Z

    if-ne v1, v2, :cond_6

    const v0, 0x7f0f0040

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v7, 0x7f0f013c

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ex/auto/MainActivity;->S1(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "connadaptor_arquivo_versao"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "connadaptor_arquivo_modo"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3, v0, v4}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->R()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->C()V

    :cond_5
    return-void

    :cond_6
    iget-boolean v2, p0, Lw0/ka;->f:Z

    if-eqz v2, :cond_7

    const v1, 0x7f0f016a

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/ex/auto/MainActivity;->S1(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lw0/s9;

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lw0/s9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw0/zb;Z)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    move-object v4, v0

    new-instance v0, Le/h;

    invoke-direct {v0, v3}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Le/h;->b:Ljava/lang/Object;

    check-cast v2, Le/d;

    const v9, 0x7f0f0133

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Le/d;->d:Ljava/lang/CharSequence;

    sget-object v9, Lw0/g4;->c:Lw0/g4;

    if-ne v1, v9, :cond_8

    const v1, 0x7f0f010e

    goto :goto_1

    :cond_8
    const v1, 0x7f0f0128

    :goto_1
    invoke-virtual {v3, v6}, Lcom/ex/auto/MainActivity;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v1, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Le/d;->f:Ljava/lang/CharSequence;

    const v1, 0x7f0f0035

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw0/db;

    invoke-direct/range {v2 .. v8}, Lw0/db;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw0/zb;Z)V

    invoke-virtual {v0, v1, v2}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f0f0037

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Le/h;->h()Le/i;

    return-void
.end method
