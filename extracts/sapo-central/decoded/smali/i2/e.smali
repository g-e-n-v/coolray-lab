.class public abstract Li2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient a:Li2/e;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v2, Li2/b;->a:Li2/b;

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Li2/e;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Li2/e;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Li2/e;->c:Ljava/lang/Class;

    .line 5
    iput-object p4, p0, Li2/e;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Li2/e;->e:Ljava/lang/String;

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Li2/e;->f:Z

    .line 8
    iput p1, p0, Li2/e;->g:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Li2/e;->h:I

    return-void
.end method


# virtual methods
.method public final d()Li2/c;
    .locals 2

    iget-boolean v0, p0, Li2/e;->f:Z

    iget-object v1, p0, Li2/e;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Li2/n;->a:Li2/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Li2/i;

    invoke-direct {v0, v1}, Li2/i;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_0
    sget-object v0, Li2/n;->a:Li2/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Li2/d;

    invoke-direct {v0, v1}, Li2/d;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Li2/e;

    if-eqz v0, :cond_1

    check-cast p1, Li2/e;

    iget-object v0, p0, Li2/e;->d:Ljava/lang/String;

    iget-object v1, p1, Li2/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Li2/e;->e:Ljava/lang/String;

    iget-object v1, p1, Li2/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Li2/e;->h:I

    iget v1, p1, Li2/e;->h:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Li2/e;->g:I

    iget v1, p1, Li2/e;->g:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Li2/e;->b:Ljava/lang/Object;

    iget-object v1, p1, Li2/e;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Li2/e;->d()Li2/c;

    move-result-object v0

    invoke-virtual {p1}, Li2/e;->d()Li2/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    instance-of v0, p1, Li2/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Li2/e;->a:Li2/e;

    if-nez v0, :cond_2

    sget-object v0, Li2/n;->a:Li2/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p0, Li2/e;->a:Li2/e;

    move-object v0, p0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Li2/e;->d()Li2/c;

    invoke-virtual {p0}, Li2/e;->d()Li2/c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Li2/e;->d:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroidx/activity/result/b;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Li2/e;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Li2/e;->a:Li2/e;

    if-nez v0, :cond_0

    sget-object v0, Li2/n;->a:Li2/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p0, Li2/e;->a:Li2/e;

    move-object v0, p0

    :cond_0
    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Li2/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "<init>"

    iget-object v1, p0, Li2/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "constructor (Kotlin reflection is not available)"

    return-object v0

    :cond_2
    const-string v0, "function "

    const-string v2, " (Kotlin reflection is not available)"

    invoke-static {v0, v1, v2}, Landroidx/activity/result/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
