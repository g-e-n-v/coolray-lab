.class public final Lo2/f;
.super Li2/h;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:Lo2/h;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo2/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo2/f;->a:Lo2/h;

    iput-object p2, p0, Lo2/f;->b:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Li2/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lo2/f;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lo2/f;->a:Lo2/h;

    invoke-virtual {v2, v0, v1}, Lo2/h;->b(Ljava/lang/CharSequence;I)Lo2/e;

    move-result-object v0

    return-object v0
.end method
