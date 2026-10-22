.class public final synthetic Lw0/ja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/ja;->a:Lcom/ex/auto/MainActivity;

    iput-boolean p2, p0, Lw0/ja;->b:Z

    iput-boolean p3, p0, Lw0/ja;->c:Z

    iput-boolean p4, p0, Lw0/ja;->d:Z

    iput-boolean p5, p0, Lw0/ja;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    iget-boolean v0, p0, Lw0/ja;->b:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lw0/ja;->a:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1, v0}, Lcom/ex/auto/MainActivity;->O1(Z)V

    iget-boolean v0, p0, Lw0/ja;->c:Z

    iget-boolean v2, p0, Lw0/ja;->d:Z

    const v3, 0x7f0f00ce

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const v2, 0x7f0f00cf

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const v2, 0x7f0f00d0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const v2, 0x7f0f00cd

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "getString(...)"

    invoke-static {v2, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->R()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lw0/u;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0f0215

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lw0/ja;->e:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0f0106

    goto :goto_2

    :cond_4
    const v0, 0x7f0f0107

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f0f0214

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/ex/auto/MainActivity;->p1:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->Y0()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->s1()V

    return-void
.end method
