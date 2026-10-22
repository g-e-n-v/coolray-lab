.class public abstract Lp2/o;
.super Lp2/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lp2/c;->a:Lp2/b;

    const-string v1, "baseKey"

    invoke-static {v0, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
