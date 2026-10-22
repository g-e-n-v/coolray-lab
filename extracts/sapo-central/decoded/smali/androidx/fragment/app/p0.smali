.class public final Landroidx/fragment/app/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/h;
.implements Lr0/e;
.implements Landroidx/lifecycle/j0;


# instance fields
.field public final a:Landroidx/lifecycle/i0;

.field public b:Landroidx/lifecycle/s;

.field public c:Lr0/d;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/i0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/p0;->b:Landroidx/lifecycle/s;

    iput-object v0, p0, Landroidx/fragment/app/p0;->c:Lr0/d;

    iput-object p1, p0, Landroidx/fragment/app/p0;->a:Landroidx/lifecycle/i0;

    return-void
.end method


# virtual methods
.method public final a()Li/r;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->d()V

    iget-object v0, p0, Landroidx/fragment/app/p0;->c:Lr0/d;

    iget-object v0, v0, Lr0/d;->b:Li/r;

    return-object v0
.end method

.method public final c(Landroidx/lifecycle/k;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p0;->b:Landroidx/lifecycle/s;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p0;->b:Landroidx/lifecycle/s;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Landroidx/fragment/app/p0;->b:Landroidx/lifecycle/s;

    new-instance v0, Lr0/d;

    invoke-direct {v0, p0}, Lr0/d;-><init>(Lr0/e;)V

    iput-object v0, p0, Landroidx/fragment/app/p0;->c:Lr0/d;

    :cond_0
    return-void
.end method

.method public final e()Landroidx/lifecycle/i0;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->d()V

    iget-object v0, p0, Landroidx/fragment/app/p0;->a:Landroidx/lifecycle/i0;

    return-object v0
.end method

.method public final f()Landroidx/lifecycle/s;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->d()V

    iget-object v0, p0, Landroidx/fragment/app/p0;->b:Landroidx/lifecycle/s;

    return-object v0
.end method
