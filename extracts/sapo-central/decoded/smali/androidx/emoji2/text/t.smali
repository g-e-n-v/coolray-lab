.class public final Landroidx/emoji2/text/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb0/c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lb0/c;-><init>(I)V

    iput-object v0, p0, Landroidx/emoji2/text/t;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ll/k;

    invoke-direct {v0}, Ll/k;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/t;->c:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    .line 38
    iput-object p2, p0, Landroidx/emoji2/text/t;->a:Ljava/lang/Object;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/t;->c:Ljava/lang/Object;

    .line 40
    new-instance p1, Ll/k;

    invoke-direct {p1}, Ll/k;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Lj0/b;)V
    .locals 7

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Landroidx/emoji2/text/t;->d:Ljava/lang/Object;

    .line 8
    iput-object p2, p0, Landroidx/emoji2/text/t;->a:Ljava/lang/Object;

    .line 9
    new-instance p1, Landroidx/emoji2/text/s;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroidx/emoji2/text/s;-><init>(I)V

    iput-object p1, p0, Landroidx/emoji2/text/t;->c:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 10
    invoke-virtual {p2, p1}, Lc0/y;->a(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11
    iget v2, p2, Lc0/y;->a:I

    add-int/2addr v0, v2

    .line 12
    iget-object v2, p2, Lc0/y;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 13
    iget-object v0, p2, Lc0/y;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 14
    new-array v0, v0, [C

    iput-object v0, p0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    .line 15
    invoke-virtual {p2, p1}, Lc0/y;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget v0, p2, Lc0/y;->a:I

    add-int/2addr p1, v0

    .line 17
    iget-object v0, p2, Lc0/y;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 18
    iget-object p1, p2, Lc0/y;->d:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_6

    .line 19
    new-instance v0, Landroidx/emoji2/text/o;

    invoke-direct {v0, p0, p2}, Landroidx/emoji2/text/o;-><init>(Landroidx/emoji2/text/t;I)V

    .line 20
    invoke-virtual {v0}, Landroidx/emoji2/text/o;->b()Lj0/a;

    move-result-object v2

    const/4 v3, 0x4

    .line 21
    invoke-virtual {v2, v3}, Lc0/y;->a(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v2, Lc0/y;->d:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v2, v2, Lc0/y;->a:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_3

    :cond_2
    move v2, v1

    .line 22
    :goto_3
    iget-object v3, p0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    check-cast v3, [C

    mul-int/lit8 v4, p2, 0x2

    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    .line 23
    invoke-virtual {v0}, Landroidx/emoji2/text/o;->b()Lj0/a;

    move-result-object v2

    const/16 v3, 0x10

    .line 24
    invoke-virtual {v2, v3}, Lc0/y;->a(I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 25
    iget v5, v2, Lc0/y;->a:I

    add-int/2addr v4, v5

    .line 26
    iget-object v5, v2, Lc0/y;->d:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    add-int/2addr v5, v4

    .line 27
    iget-object v2, v2, Lc0/y;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_4

    :cond_3
    move v2, v1

    :goto_4
    const/4 v4, 0x1

    if-lez v2, :cond_4

    move v2, v4

    goto :goto_5

    :cond_4
    move v2, v1

    .line 28
    :goto_5
    const-string v5, "invalid metadata codepoint length"

    invoke-static {v5, v2}, La1/b;->j(Ljava/lang/String;Z)V

    .line 29
    iget-object v2, p0, Landroidx/emoji2/text/t;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/emoji2/text/s;

    .line 30
    invoke-virtual {v0}, Landroidx/emoji2/text/o;->b()Lj0/a;

    move-result-object v5

    .line 31
    invoke-virtual {v5, v3}, Lc0/y;->a(I)I

    move-result v3

    if-eqz v3, :cond_5

    .line 32
    iget v6, v5, Lc0/y;->a:I

    add-int/2addr v3, v6

    .line 33
    iget-object v6, v5, Lc0/y;->d:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    add-int/2addr v6, v3

    .line 34
    iget-object v3, v5, Lc0/y;->d:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    goto :goto_6

    :cond_5
    move v3, v1

    :goto_6
    sub-int/2addr v3, v4

    .line 35
    invoke-virtual {v2, v0, v1, v3}, Landroidx/emoji2/text/s;->a(Landroidx/emoji2/text/o;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    check-cast v0, Ll/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ll/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Landroidx/emoji2/text/t;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This graph contains cyclic dependencies"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lg/a;)Lg/f;
    .locals 5

    iget-object v0, p0, Landroidx/emoji2/text/t;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/f;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lg/f;->b:Lg/a;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lg/f;

    iget-object v2, p0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lg/f;-><init>(Landroid/content/Context;Lg/a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public c(Lg/a;Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Landroidx/emoji2/text/t;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/t;->b(Lg/a;)Lg/f;

    move-result-object p1

    new-instance v1, Lh/t;

    iget-object v2, p0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    check-cast p2, Lx/a;

    invoke-direct {v1, v2, p2}, Lh/t;-><init>(Landroid/content/Context;Lx/a;)V

    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public d(Lg/a;Landroid/view/Menu;)Z
    .locals 5

    iget-object v0, p0, Landroidx/emoji2/text/t;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/t;->b(Lg/a;)Lg/f;

    move-result-object p1

    iget-object v1, p0, Landroidx/emoji2/text/t;->d:Ljava/lang/Object;

    check-cast v1, Ll/k;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Ll/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Menu;

    if-nez v2, :cond_0

    new-instance v2, Lh/c0;

    iget-object v3, p0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    move-object v4, p2

    check-cast v4, Lh/m;

    invoke-direct {v2, v3, v4}, Lh/c0;-><init>(Landroid/content/Context;Lh/m;)V

    invoke-virtual {v1, p2, v2}, Ll/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
