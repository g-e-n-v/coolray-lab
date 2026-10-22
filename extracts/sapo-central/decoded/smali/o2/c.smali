.class public final Lo2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/f;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:Li2/h;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILh2/p;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/c;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lo2/c;->b:I

    check-cast p3, Li2/h;

    iput-object p3, p0, Lo2/c;->c:Li2/h;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lo2/b;

    invoke-direct {v0, p0}, Lo2/b;-><init>(Lo2/c;)V

    return-object v0
.end method
