.class public final enum Lw0/je;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lw0/je;

.field public static final enum b:Lw0/je;

.field public static final enum c:Lw0/je;

.field public static final enum d:Lw0/je;

.field public static final enum e:Lw0/je;

.field public static final synthetic f:[Lw0/je;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lw0/je;

    const-string v1, "CONCLUIDO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw0/je;->a:Lw0/je;

    new-instance v1, Lw0/je;

    const-string v2, "ABORTADO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw0/je;->b:Lw0/je;

    new-instance v2, Lw0/je;

    const-string v3, "ORCAMENTO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lw0/je;->c:Lw0/je;

    new-instance v3, Lw0/je;

    const-string v4, "NAO_SUPORTADO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw0/je;->d:Lw0/je;

    new-instance v4, Lw0/je;

    const-string v5, "RECUSADO"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lw0/je;->e:Lw0/je;

    filled-new-array {v0, v1, v2, v3, v4}, [Lw0/je;

    move-result-object v0

    sput-object v0, Lw0/je;->f:[Lw0/je;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw0/je;
    .locals 1

    const-class v0, Lw0/je;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw0/je;

    return-object p0
.end method

.method public static values()[Lw0/je;
    .locals 1

    sget-object v0, Lw0/je;->f:[Lw0/je;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/je;

    return-object v0
.end method
