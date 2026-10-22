.class public final enum Lw0/e5;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lw0/e5;

.field public static final enum b:Lw0/e5;

.field public static final enum c:Lw0/e5;

.field public static final enum d:Lw0/e5;

.field public static final synthetic e:[Lw0/e5;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lw0/e5;

    const-string v1, "REINICIOU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw0/e5;->a:Lw0/e5;

    new-instance v1, Lw0/e5;

    const-string v2, "NAO_MORREU"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw0/e5;->b:Lw0/e5;

    new-instance v2, Lw0/e5;

    const-string v3, "NAO_VOLTOU"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lw0/e5;->c:Lw0/e5;

    new-instance v3, Lw0/e5;

    const-string v4, "CANAL_MUDO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw0/e5;->d:Lw0/e5;

    filled-new-array {v0, v1, v2, v3}, [Lw0/e5;

    move-result-object v0

    sput-object v0, Lw0/e5;->e:[Lw0/e5;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw0/e5;
    .locals 1

    const-class v0, Lw0/e5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw0/e5;

    return-object p0
.end method

.method public static values()[Lw0/e5;
    .locals 1

    sget-object v0, Lw0/e5;->e:[Lw0/e5;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/e5;

    return-object v0
.end method
