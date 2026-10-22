.class public final synthetic Lw0/b8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw0/b8;->a:Z

    iput-boolean p2, p0, Lw0/b8;->b:Z

    iput-boolean p3, p0, Lw0/b8;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lw0/d8;->a:Lw0/d8;

    iget-boolean v0, p0, Lw0/b8;->a:Z

    iget-boolean v1, p0, Lw0/b8;->b:Z

    iget-boolean v2, p0, Lw0/b8;->c:Z

    invoke-static {v0, v1, v2}, Lw0/d8;->i(ZZZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
