.class public final Lp1/a;
.super Lk1/a;
.source "SourceFile"


# instance fields
.field public final c:Landroid/graphics/Typeface;

.field public final d:Landroidx/emoji2/text/m;

.field public e:Z


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/m;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp1/a;->c:Landroid/graphics/Typeface;

    iput-object p1, p0, Lp1/a;->d:Landroidx/emoji2/text/m;

    return-void
.end method


# virtual methods
.method public final K(I)V
    .locals 2

    iget-boolean p1, p0, Lp1/a;->e:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lp1/a;->d:Landroidx/emoji2/text/m;

    iget-object p1, p1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast p1, Ln1/b;

    iget-object v0, p1, Ln1/b;->v:Lp1/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lp1/a;->e:Z

    :cond_0
    iget-object v0, p1, Ln1/b;->s:Landroid/graphics/Typeface;

    iget-object v1, p0, Lp1/a;->c:Landroid/graphics/Typeface;

    if-eq v0, v1, :cond_1

    iput-object v1, p1, Ln1/b;->s:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Ln1/b;->g()V

    :cond_1
    return-void
.end method

.method public final L(Landroid/graphics/Typeface;Z)V
    .locals 2

    iget-boolean p2, p0, Lp1/a;->e:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lp1/a;->d:Landroidx/emoji2/text/m;

    iget-object p2, p2, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast p2, Ln1/b;

    iget-object v0, p2, Ln1/b;->v:Lp1/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lp1/a;->e:Z

    :cond_0
    iget-object v0, p2, Ln1/b;->s:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_1

    iput-object p1, p2, Ln1/b;->s:Landroid/graphics/Typeface;

    invoke-virtual {p2}, Ln1/b;->g()V

    :cond_1
    return-void
.end method
