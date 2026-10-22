.class public final Lp2/a;
.super Li2/h;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# static fields
.field public static final a:Lp2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp2/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Li2/h;-><init>(I)V

    sput-object v0, Lp2/a;->a:Lp2/a;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lb2/f;

    instance-of v0, p1, Lp2/c;

    if-eqz v0, :cond_0

    check-cast p1, Lp2/c;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
