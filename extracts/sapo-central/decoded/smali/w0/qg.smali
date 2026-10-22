.class public final enum Lw0/qg;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lw0/qg;

.field public static final enum b:Lw0/qg;

.field public static final enum c:Lw0/qg;

.field public static final enum d:Lw0/qg;

.field public static final enum e:Lw0/qg;

.field public static final enum f:Lw0/qg;

.field public static final enum g:Lw0/qg;

.field public static final synthetic h:[Lw0/qg;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lw0/qg;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw0/qg;->a:Lw0/qg;

    new-instance v1, Lw0/qg;

    const-string v2, "SEARCHING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw0/qg;->b:Lw0/qg;

    new-instance v2, Lw0/qg;

    const-string v3, "LEVEL0"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lw0/qg;->c:Lw0/qg;

    new-instance v3, Lw0/qg;

    const-string v4, "LEVEL1"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw0/qg;->d:Lw0/qg;

    new-instance v4, Lw0/qg;

    const-string v5, "LEVEL2"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lw0/qg;->e:Lw0/qg;

    new-instance v5, Lw0/qg;

    const-string v6, "LEVEL3"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lw0/qg;->f:Lw0/qg;

    new-instance v6, Lw0/qg;

    const-string v7, "LEVEL4"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lw0/qg;->g:Lw0/qg;

    filled-new-array/range {v0 .. v6}, [Lw0/qg;

    move-result-object v0

    sput-object v0, Lw0/qg;->h:[Lw0/qg;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw0/qg;
    .locals 1

    const-class v0, Lw0/qg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw0/qg;

    return-object p0
.end method

.method public static values()[Lw0/qg;
    .locals 1

    sget-object v0, Lw0/qg;->h:[Lw0/qg;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/qg;

    return-object v0
.end method
