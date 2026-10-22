.class public abstract Lb2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/f;


# instance fields
.field private final key:Lb2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/g;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb2/a;->key:Lb2/g;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lh2/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lh2/p;",
            ")TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p0}, Lh2/p;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lb2/g;)Lb2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lb2/f;",
            ">(",
            "Lb2/g;",
            ")TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lb2/f;->getKey()Lb2/g;

    move-result-object v0

    invoke-static {v0, p1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKey()Lb2/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb2/g;"
        }
    .end annotation

    iget-object v0, p0, Lb2/a;->key:Lb2/g;

    return-object v0
.end method

.method public minusKey(Lb2/g;)Lb2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/g;",
            ")",
            "Lb2/h;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lb2/f;->getKey()Lb2/g;

    move-result-object v0

    invoke-static {v0, p1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lb2/i;->a:Lb2/i;

    return-object p1

    :cond_0
    return-object p0
.end method

.method public plus(Lb2/h;)Lb2/h;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lb2/i;->a:Lb2/i;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lb2/b;->c:Lb2/b;

    invoke-interface {p1, p0, v0}, Lb2/h;->fold(Ljava/lang/Object;Lh2/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb2/h;

    return-object p1
.end method
