.class public final Ln2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/f;


# instance fields
.field public final synthetic a:I

.field public final b:Ln2/f;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ln2/f;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Ln2/c;->a:I

    iput-object p1, p0, Ln2/c;->b:Ln2/f;

    iput-object p2, p0, Ln2/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 5

    iget v0, p0, Ln2/c;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ln2/k;

    invoke-direct {v0, p0}, Ln2/k;-><init>(Ln2/c;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ln2/c;->b:Ln2/f;

    check-cast v0, Ln2/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Ln2/c;->b:Ln2/f;

    invoke-interface {v2}, Ln2/f;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Ln2/c;->c:Ljava/lang/Object;

    check-cast v3, Lh2/l;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln2/c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v1, v0}, Ly1/m;->Y(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ln2/b;

    iget-object v1, p0, Ln2/c;->b:Ln2/f;

    check-cast v1, Ln2/d;

    new-instance v2, Ln2/b;

    invoke-direct {v2, v1}, Ln2/b;-><init>(Ln2/d;)V

    iget-object v1, p0, Ln2/c;->c:Ljava/lang/Object;

    check-cast v1, Lw0/zf;

    invoke-direct {v0, v2, v1}, Ln2/b;-><init>(Ljava/util/Iterator;Lw0/zf;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
