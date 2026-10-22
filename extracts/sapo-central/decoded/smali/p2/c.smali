.class public abstract Lp2/c;
.super Lb2/a;
.source "SourceFile"

# interfaces
.implements Lb2/e;


# static fields
.field public static final a:Lp2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lp2/b;

    sget-object v1, Lb2/d;->a:Lb2/d;

    sget-object v2, Lp2/a;->a:Lp2/a;

    invoke-direct {v0, v1, v2}, Lp2/b;-><init>(Lb2/g;Lh2/l;)V

    sput-object v0, Lp2/c;->a:Lp2/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lb2/d;->a:Lb2/d;

    invoke-direct {p0, v0}, Lb2/a;-><init>(Lb2/g;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lb2/h;Ljava/lang/Runnable;)V
.end method

.method public b()Z
    .locals 1

    instance-of v0, p0, Lp2/r;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final get(Lb2/g;)Lb2/f;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lp2/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lp2/b;

    invoke-virtual {p0}, Lb2/a;->getKey()Lb2/g;

    move-result-object v1

    invoke-static {v1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1

    iget-object v0, p1, Lp2/b;->b:Lb2/g;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    :goto_0
    iget-object p1, p1, Lp2/b;->a:Li2/h;

    invoke-interface {p1, p0}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb2/f;

    if-eqz p1, :cond_3

    return-object p1

    :cond_2
    sget-object v0, Lb2/d;->a:Lb2/d;

    if-ne v0, p1, :cond_3

    return-object p0

    :cond_3
    return-object v2
.end method

.method public final minusKey(Lb2/g;)Lb2/h;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lp2/b;

    if-eqz v1, :cond_2

    check-cast p1, Lp2/b;

    invoke-virtual {p0}, Lb2/a;->getKey()Lb2/g;

    move-result-object v1

    invoke-static {v1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1

    iget-object v0, p1, Lp2/b;->b:Lb2/g;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    iget-object p1, p1, Lp2/b;->a:Li2/h;

    invoke-interface {p1, p0}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb2/f;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_2
    sget-object v0, Lb2/d;->a:Lb2/d;

    if-ne v0, p1, :cond_3

    :goto_1
    sget-object p1, Lb2/i;->a:Lb2/i;

    return-object p1

    :cond_3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
