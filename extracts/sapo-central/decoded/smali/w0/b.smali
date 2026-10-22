.class public final enum Lw0/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lw0/b;

.field public static final enum b:Lw0/b;

.field public static final enum c:Lw0/b;

.field public static final synthetic d:[Lw0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lw0/b;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw0/b;->a:Lw0/b;

    new-instance v1, Lw0/b;

    const-string v2, "NO_DEVICE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw0/b;->b:Lw0/b;

    new-instance v2, Lw0/b;

    const-string v3, "FAILED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lw0/b;->c:Lw0/b;

    filled-new-array {v0, v1, v2}, [Lw0/b;

    move-result-object v0

    sput-object v0, Lw0/b;->d:[Lw0/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw0/b;
    .locals 1

    const-class v0, Lw0/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw0/b;

    return-object p0
.end method

.method public static values()[Lw0/b;
    .locals 1

    sget-object v0, Lw0/b;->d:[Lw0/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/b;

    return-object v0
.end method
