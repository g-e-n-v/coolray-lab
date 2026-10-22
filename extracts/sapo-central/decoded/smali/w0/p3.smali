.class public final Lw0/p3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw0/l9;

.field public final b:Lw0/e9;

.field public final c:Lw0/h9;

.field public final d:Lw0/h9;

.field public e:Z

.field public final f:La1/r;


# direct methods
.method public constructor <init>(Lw0/l9;Lw0/e9;Lw0/h9;Lw0/h9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/p3;->a:Lw0/l9;

    iput-object p2, p0, Lw0/p3;->b:Lw0/e9;

    iput-object p3, p0, Lw0/p3;->c:Lw0/h9;

    iput-object p4, p0, Lw0/p3;->d:Lw0/h9;

    new-instance p1, La1/r;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p0}, La1/r;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lw0/p3;->f:La1/r;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-boolean v0, p0, Lw0/p3;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lw0/p3;->c:Lw0/h9;

    invoke-virtual {v0}, Lw0/h9;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lw0/p3;->e:Z

    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lw0/p3;->a:Lw0/l9;

    iget-object v2, p0, Lw0/p3;->f:La1/r;

    invoke-virtual {v1, v2, v0}, Lw0/l9;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
