.class public final Lb2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/h;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lb2/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb2/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb2/i;->a:Lb2/i;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lh2/p;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final get(Lb2/g;)Lb2/f;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final minusKey(Lb2/g;)Lb2/h;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method
