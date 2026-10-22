.class public final Lo2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/regex/Matcher;

.field public final b:Ljava/lang/CharSequence;

.field public c:Lo2/d;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p2, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/e;->a:Ljava/util/regex/Matcher;

    iput-object p2, p0, Lo2/e;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lo2/e;->c:Lo2/d;

    if-nez v0, :cond_0

    new-instance v0, Lo2/d;

    invoke-direct {v0, p0}, Lo2/d;-><init>(Lo2/e;)V

    iput-object v0, p0, Lo2/e;->c:Lo2/d;

    :cond_0
    iget-object v0, p0, Lo2/e;->c:Lo2/d;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    return-object v0
.end method
