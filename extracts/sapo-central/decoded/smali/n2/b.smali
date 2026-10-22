.class public final Ln2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/Iterator;

.field public c:I

.field public d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lw0/zf;)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Ln2/b;->a:I

    const-string p2, "source"

    invoke-static {p1, p2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln2/b;->b:Ljava/util/Iterator;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ln2/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ln2/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ln2/b;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Ln2/b;->e:Ljava/lang/Object;

    .line 6
    iget-object p1, p1, Ln2/d;->a:Ln2/f;

    .line 7
    invoke-interface {p1}, Ln2/f;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Ln2/b;->b:Ljava/util/Iterator;

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Ln2/b;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Ln2/b;->e:Ljava/lang/Object;

    check-cast v0, Ln2/d;

    :cond_0
    iget-object v1, p0, Ln2/b;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Ln2/d;->c:Lh2/l;

    invoke-interface {v2, v1}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-boolean v3, v0, Ln2/d;->b:Z

    if-ne v2, v3, :cond_0

    iput-object v1, p0, Ln2/b;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Ln2/b;->c:I

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Ln2/b;->c:I

    return-void
.end method

.method public b()V
    .locals 3

    :cond_0
    iget-object v0, p0, Ln2/b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Ln2/b;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Ln2/b;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Ln2/b;->c:I

    return-void

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Ln2/b;->c:I

    return-void
.end method

.method public final hasNext()Z
    .locals 3

    iget v0, p0, Ln2/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Ln2/b;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ln2/b;->a()V

    :cond_0
    iget v0, p0, Ln2/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    iget v0, p0, Ln2/b;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasNext called when the iterator is in the FAILED state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    move v1, v2

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Ln2/b;->c:I

    invoke-virtual {p0}, Ln2/b;->b()V

    iget v0, p0, Ln2/b;->c:I

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ln2/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Ln2/b;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ln2/b;->a()V

    :cond_0
    iget v0, p0, Ln2/b;->c:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Ln2/b;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Ln2/b;->d:Ljava/lang/Object;

    iput v1, p0, Ln2/b;->c:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_0
    iget v0, p0, Ln2/b;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iput v1, p0, Ln2/b;->c:I

    iget-object v0, p0, Ln2/b;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Ln2/b;->c:I

    invoke-virtual {p0}, Ln2/b;->b()V

    iget v0, p0, Ln2/b;->c:I

    if-ne v0, v2, :cond_3

    iput v1, p0, Ln2/b;->c:I

    iget-object v0, p0, Ln2/b;->d:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    iget v0, p0, Ln2/b;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
