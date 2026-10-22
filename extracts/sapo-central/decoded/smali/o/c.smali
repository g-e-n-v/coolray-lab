.class public final Lo/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/HashSet;

.field public b:I

.field public c:Z

.field public final d:Lo/d;

.field public final e:I

.field public f:Lo/c;

.field public g:I

.field public h:I

.field public i:Ln/h;


# direct methods
.method public constructor <init>(Lo/d;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/c;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lo/c;->g:I

    const/4 v0, -0x1

    iput v0, p0, Lo/c;->h:I

    iput-object p1, p0, Lo/c;->d:Lo/d;

    iput p2, p0, Lo/c;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lo/c;II)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lo/c;->g()V

    return-void

    :cond_0
    iput-object p1, p0, Lo/c;->f:Lo/c;

    iget-object v0, p1, Lo/c;->a:Ljava/util/HashSet;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p1, Lo/c;->a:Ljava/util/HashSet;

    :cond_1
    iget-object p1, p0, Lo/c;->f:Lo/c;

    iget-object p1, p1, Lo/c;->a:Ljava/util/HashSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    if-lez p2, :cond_3

    iput p2, p0, Lo/c;->g:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    iput p1, p0, Lo/c;->g:I

    :goto_0
    iput p3, p0, Lo/c;->h:I

    return-void
.end method

.method public final b(ILjava/util/ArrayList;Lp/n;)V
    .locals 2

    iget-object v0, p0, Lo/c;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/c;

    iget-object v1, v1, Lo/c;->d:Lo/d;

    invoke-static {v1, p1, p2, p3}, Lp/h;->b(Lo/d;ILjava/util/ArrayList;Lp/n;)Lp/n;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    iget-boolean v0, p0, Lo/c;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lo/c;->b:I

    return v0
.end method

.method public final d()I
    .locals 3

    iget-object v0, p0, Lo/c;->d:Lo/d;

    iget v0, v0, Lo/d;->Z:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lo/c;->h:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v2, p0, Lo/c;->f:Lo/c;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lo/c;->d:Lo/d;

    iget v2, v2, Lo/d;->Z:I

    if-ne v2, v1, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lo/c;->g:I

    return v0
.end method

.method public final e()Z
    .locals 4

    iget-object v0, p0, Lo/c;->a:Ljava/util/HashSet;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/c;

    iget-object v2, v1, Lo/c;->d:Lo/d;

    iget v1, v1, Lo/c;->e:I

    invoke-static {v1}, Ln/g;->b(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {v1}, Landroidx/activity/result/b;->u(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object v1, v2, Lo/d;->C:Lo/c;

    goto :goto_0

    :pswitch_1
    iget-object v1, v2, Lo/d;->B:Lo/c;

    goto :goto_0

    :pswitch_2
    iget-object v1, v2, Lo/d;->E:Lo/c;

    goto :goto_0

    :pswitch_3
    iget-object v1, v2, Lo/d;->D:Lo/c;

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v1}, Lo/c;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lo/c;->f:Lo/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lo/c;->f:Lo/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo/c;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/c;->f:Lo/c;

    iget-object v0, v0, Lo/c;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/c;->f:Lo/c;

    iput-object v1, v0, Lo/c;->a:Ljava/util/HashSet;

    :cond_0
    iput-object v1, p0, Lo/c;->a:Ljava/util/HashSet;

    iput-object v1, p0, Lo/c;->f:Lo/c;

    const/4 v0, 0x0

    iput v0, p0, Lo/c;->g:I

    const/4 v1, -0x1

    iput v1, p0, Lo/c;->h:I

    iput-boolean v0, p0, Lo/c;->c:Z

    iput v0, p0, Lo/c;->b:I

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lo/c;->i:Ln/h;

    if-nez v0, :cond_0

    new-instance v0, Ln/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln/h;-><init>(I)V

    iput-object v0, p0, Lo/c;->i:Ln/h;

    return-void

    :cond_0
    invoke-virtual {v0}, Ln/h;->c()V

    return-void
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lo/c;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/c;->c:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/c;->d:Lo/d;

    iget-object v1, v1, Lo/d;->a0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/c;->e:I

    invoke-static {v1}, Landroidx/activity/result/b;->u(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
