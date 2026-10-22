.class public abstract Lw0/s4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Lo2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "PROBE"

    const-string v1, "STALE"

    const-string v2, "REACHABLE"

    const-string v3, "DELAY"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lw0/s4;->a:Ljava/util/List;

    new-instance v0, Lo2/h;

    const-string v1, "^\\d{1,3}(\\.\\d{1,3}){3}$"

    invoke-direct {v0, v1}, Lo2/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw0/s4;->b:Lo2/h;

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object p0

    new-instance v0, Lw0/n2;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lw0/n2;-><init>(I)V

    new-instance v1, Ln2/c;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance p0, Lw0/n2;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lw0/n2;-><init>(I)V

    new-instance v0, Ln2/c;

    invoke-direct {v0, v1, p0, v2}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance p0, Ln2/d;

    const/4 v1, 0x0

    sget-object v2, Ln2/j;->a:Ln2/j;

    invoke-direct {p0, v0, v1, v2}, Ln2/d;-><init>(Ln2/f;ZLh2/l;)V

    invoke-static {p0}, Ln2/g;->W(Ln2/f;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lx1/a;

    iget-object v4, v3, Lx1/a;->b:Ljava/lang/Object;

    invoke-static {v4, p1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lx1/a;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v4, Lw0/s4;->a:Ljava/util/List;

    const-string v5, "STALE"

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lx1/a;

    if-eqz v1, :cond_3

    iget-object p1, v1, Lx1/a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return-object p1

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    move-object p1, v2

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p1

    check-cast v0, Lx1/a;

    iget-object v0, v0, Lx1/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lx1/a;

    iget-object v3, v3, Lx1/a;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-le v0, v3, :cond_7

    move-object p1, v1

    move v0, v3

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    :goto_2
    check-cast p1, Lx1/a;

    if-eqz p1, :cond_8

    iget-object p0, p1, Lx1/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_8
    return-object v2
.end method
