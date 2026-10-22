.class public final Ln2/j;
.super Li2/h;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# static fields
.field public static final a:Ln2/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln2/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Li2/h;-><init>(I)V

    sput-object v0, Ln2/j;->a:Ln2/j;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
