.class public abstract Landroidx/lifecycle/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/emoji2/text/m;

.field public b:Z

.field public c:I

.field public final synthetic d:Landroidx/lifecycle/w;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/w;Landroidx/emoji2/text/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/v;->d:Landroidx/lifecycle/w;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/lifecycle/v;->c:I

    iput-object p2, p0, Landroidx/lifecycle/v;->a:Landroidx/emoji2/text/m;

    return-void
.end method


# virtual methods
.method public final c(Z)V
    .locals 3

    iget-boolean v0, p0, Landroidx/lifecycle/v;->b:Z

    if-ne p1, v0, :cond_0

    goto :goto_3

    :cond_0
    iput-boolean p1, p0, Landroidx/lifecycle/v;->b:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    iget-object v1, p0, Landroidx/lifecycle/v;->d:Landroidx/lifecycle/w;

    iget v2, v1, Landroidx/lifecycle/w;->c:I

    add-int/2addr p1, v2

    iput p1, v1, Landroidx/lifecycle/w;->c:I

    iget-boolean p1, v1, Landroidx/lifecycle/w;->d:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v0, v1, Landroidx/lifecycle/w;->d:Z

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    iget v0, v1, Landroidx/lifecycle/w;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v0, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    iput-boolean p1, v1, Landroidx/lifecycle/w;->d:Z

    :goto_2
    iget-boolean p1, p0, Landroidx/lifecycle/v;->b:Z

    if-eqz p1, :cond_4

    invoke-virtual {v1, p0}, Landroidx/lifecycle/w;->c(Landroidx/lifecycle/v;)V

    :cond_4
    :goto_3
    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, v1, Landroidx/lifecycle/w;->d:Z

    throw v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public abstract e()Z
.end method
