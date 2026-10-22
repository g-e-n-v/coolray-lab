.class public final Lp2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/g;


# instance fields
.field public final a:Li2/h;

.field public final b:Lb2/g;


# direct methods
.method public constructor <init>(Lb2/g;Lh2/l;)V
    .locals 1

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, Li2/h;

    iput-object p2, p0, Lp2/b;->a:Li2/h;

    instance-of p2, p1, Lp2/b;

    if-eqz p2, :cond_0

    check-cast p1, Lp2/b;

    iget-object p1, p1, Lp2/b;->b:Lb2/g;

    :cond_0
    iput-object p1, p0, Lp2/b;->b:Lb2/g;

    return-void
.end method
