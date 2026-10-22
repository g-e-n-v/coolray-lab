.class public final synthetic Lw0/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lh2/a;


# direct methods
.method public synthetic constructor <init>(Lh2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/j1;->a:Lh2/a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw0/j1;->a:Lh2/a;

    invoke-interface {v0}, Lh2/a;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
