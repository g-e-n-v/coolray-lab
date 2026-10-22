.class public final enum Lw0/y4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lw0/y4;

.field public static final enum b:Lw0/y4;

.field public static final enum c:Lw0/y4;

.field public static final enum d:Lw0/y4;

.field public static final synthetic e:[Lw0/y4;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lw0/y4;

    const-string v1, "ATIVO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw0/y4;->a:Lw0/y4;

    new-instance v1, Lw0/y4;

    const-string v2, "CAIU_NO_BOOT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw0/y4;->b:Lw0/y4;

    new-instance v2, Lw0/y4;

    const-string v3, "DESLIGADO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lw0/y4;->c:Lw0/y4;

    new-instance v3, Lw0/y4;

    const-string v4, "ATIVADO_POR_FORA"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw0/y4;->d:Lw0/y4;

    filled-new-array {v0, v1, v2, v3}, [Lw0/y4;

    move-result-object v0

    sput-object v0, Lw0/y4;->e:[Lw0/y4;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw0/y4;
    .locals 1

    const-class v0, Lw0/y4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw0/y4;

    return-object p0
.end method

.method public static values()[Lw0/y4;
    .locals 1

    sget-object v0, Lw0/y4;->e:[Lw0/y4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/y4;

    return-object v0
.end method
