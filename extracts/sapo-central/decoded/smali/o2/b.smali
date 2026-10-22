.class public final Lo2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ll2/c;

.field public e:I

.field public final synthetic f:Lo2/c;


# direct methods
.method public constructor <init>(Lo2/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/b;->f:Lo2/c;

    const/4 v0, -0x1

    iput v0, p0, Lo2/b;->a:I

    iget-object p1, p1, Lo2/c;->a:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, v0, p1}, Lk1/a;->k(III)I

    move-result p1

    iput p1, p0, Lo2/b;->b:I

    iput p1, p0, Lo2/b;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lo2/b;->f:Lo2/c;

    iget-object v1, v0, Lo2/c;->a:Ljava/lang/CharSequence;

    iget v2, p0, Lo2/b;->c:I

    const/4 v3, 0x0

    if-gez v2, :cond_0

    iput v3, p0, Lo2/b;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lo2/b;->d:Ll2/c;

    return-void

    :cond_0
    iget v4, v0, Lo2/c;->b:I

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-lez v4, :cond_1

    iget v7, p0, Lo2/b;->e:I

    add-int/2addr v7, v6

    iput v7, p0, Lo2/b;->e:I

    if-ge v7, v4, :cond_2

    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v2, v4, :cond_3

    :cond_2
    new-instance v0, Ll2/c;

    iget v2, p0, Lo2/b;->b:I

    invoke-static {v1}, Lo2/k;->h0(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1, v6}, Ll2/a;-><init>(III)V

    iput-object v0, p0, Lo2/b;->d:Ll2/c;

    iput v5, p0, Lo2/b;->c:I

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lo2/c;->c:Li2/h;

    iget v2, p0, Lo2/b;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lh2/p;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx1/a;

    if-nez v0, :cond_4

    new-instance v0, Ll2/c;

    iget v2, p0, Lo2/b;->b:I

    invoke-static {v1}, Lo2/k;->h0(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1, v6}, Ll2/a;-><init>(III)V

    iput-object v0, p0, Lo2/b;->d:Ll2/c;

    iput v5, p0, Lo2/b;->c:I

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lx1/a;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, Lx1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v2, p0, Lo2/b;->b:I

    invoke-static {v2, v1}, Lk1/a;->T(II)Ll2/c;

    move-result-object v2

    iput-object v2, p0, Lo2/b;->d:Ll2/c;

    add-int/2addr v1, v0

    iput v1, p0, Lo2/b;->b:I

    if-nez v0, :cond_5

    move v3, v6

    :cond_5
    add-int/2addr v1, v3

    iput v1, p0, Lo2/b;->c:I

    :goto_0
    iput v6, p0, Lo2/b;->a:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lo2/b;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lo2/b;->a()V

    :cond_0
    iget v0, p0, Lo2/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lo2/b;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lo2/b;->a()V

    :cond_0
    iget v0, p0, Lo2/b;->a:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo2/b;->d:Ll2/c;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lo2/b;->d:Ll2/c;

    iput v1, p0, Lo2/b;->a:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
