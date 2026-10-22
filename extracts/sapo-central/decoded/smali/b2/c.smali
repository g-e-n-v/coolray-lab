.class public final Lb2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/h;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lb2/h;

.field public final b:Lb2/f;


# direct methods
.method public constructor <init>(Lb2/h;Lb2/f;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb2/c;->a:Lb2/h;

    iput-object p2, p0, Lb2/c;->b:Lb2/f;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-eq p0, p1, :cond_7

    instance-of v0, p1, Lb2/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    check-cast p1, Lb2/c;

    const/4 v0, 0x2

    move-object v2, p1

    move v3, v0

    :goto_0
    iget-object v2, v2, Lb2/c;->a:Lb2/h;

    instance-of v4, v2, Lb2/c;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v2, Lb2/c;

    goto :goto_1

    :cond_0
    move-object v2, v5

    :goto_1
    if-nez v2, :cond_5

    move-object v2, p0

    :goto_2
    iget-object v2, v2, Lb2/c;->a:Lb2/h;

    instance-of v4, v2, Lb2/c;

    if-eqz v4, :cond_1

    check-cast v2, Lb2/c;

    goto :goto_3

    :cond_1
    move-object v2, v5

    :goto_3
    if-nez v2, :cond_4

    if-ne v3, v0, :cond_6

    move-object v0, p0

    :goto_4
    iget-object v2, v0, Lb2/c;->b:Lb2/f;

    invoke-interface {v2}, Lb2/f;->getKey()Lb2/g;

    move-result-object v3

    invoke-virtual {p1, v3}, Lb2/c;->get(Lb2/g;)Lb2/f;

    move-result-object v3

    invoke-static {v3, v2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move p1, v1

    goto :goto_5

    :cond_2
    iget-object v0, v0, Lb2/c;->a:Lb2/h;

    instance-of v2, v0, Lb2/c;

    if-eqz v2, :cond_3

    check-cast v0, Lb2/c;

    goto :goto_4

    :cond_3
    const-string v2, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-static {v0, v2}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lb2/f;

    invoke-interface {v0}, Lb2/f;->getKey()Lb2/g;

    move-result-object v2

    invoke-virtual {p1, v2}, Lb2/c;->get(Lb2/g;)Lb2/f;

    move-result-object p1

    invoke-static {p1, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_5
    if-eqz p1, :cond_6

    goto :goto_6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_6
    const/4 p1, 0x1

    return p1
.end method

.method public final fold(Ljava/lang/Object;Lh2/p;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb2/c;->a:Lb2/h;

    invoke-interface {v0, p1, p2}, Lb2/h;->fold(Ljava/lang/Object;Lh2/p;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lb2/c;->b:Lb2/f;

    invoke-interface {p2, p1, v0}, Lh2/p;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lb2/g;)Lb2/f;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lb2/c;->b:Lb2/f;

    invoke-interface {v1, p1}, Lb2/h;->get(Lb2/g;)Lb2/f;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lb2/c;->a:Lb2/h;

    instance-of v1, v0, Lb2/c;

    if-eqz v1, :cond_1

    check-cast v0, Lb2/c;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lb2/h;->get(Lb2/g;)Lb2/f;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lb2/c;->a:Lb2/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lb2/c;->b:Lb2/f;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final minusKey(Lb2/g;)Lb2/h;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb2/c;->b:Lb2/f;

    invoke-interface {v0, p1}, Lb2/h;->get(Lb2/g;)Lb2/f;

    move-result-object v1

    iget-object v2, p0, Lb2/c;->a:Lb2/h;

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v2, p1}, Lb2/h;->minusKey(Lb2/g;)Lb2/h;

    move-result-object p1

    if-ne p1, v2, :cond_1

    return-object p0

    :cond_1
    sget-object v1, Lb2/i;->a:Lb2/i;

    if-ne p1, v1, :cond_2

    return-object v0

    :cond_2
    new-instance v1, Lb2/c;

    invoke-direct {v1, p1, v0}, Lb2/c;-><init>(Lb2/h;Lb2/f;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    sget-object v2, Lb2/b;->b:Lb2/b;

    invoke-virtual {p0, v1, v2}, Lb2/c;->fold(Ljava/lang/Object;Lh2/p;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2}, Landroidx/activity/result/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
