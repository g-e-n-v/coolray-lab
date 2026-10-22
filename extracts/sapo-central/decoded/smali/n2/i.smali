.class public final Ln2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic a:Lo2/c;


# direct methods
.method public constructor <init>(Lo2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/i;->a:Lo2/c;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lo2/b;

    iget-object v1, p0, Ln2/i;->a:Lo2/c;

    invoke-direct {v0, v1}, Lo2/b;-><init>(Lo2/c;)V

    return-object v0
.end method
