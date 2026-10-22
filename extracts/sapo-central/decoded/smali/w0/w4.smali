.class public final enum Lw0/w4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lw0/w4;

.field public static final enum b:Lw0/w4;

.field public static final enum c:Lw0/w4;

.field public static final enum d:Lw0/w4;

.field public static final enum e:Lw0/w4;

.field public static final synthetic f:[Lw0/w4;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lw0/w4;

    const-string v1, "COMPLETA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw0/w4;->a:Lw0/w4;

    new-instance v1, Lw0/w4;

    const-string v2, "PARCIAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw0/w4;->b:Lw0/w4;

    new-instance v2, Lw0/w4;

    const-string v3, "NENHUM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lw0/w4;->c:Lw0/w4;

    new-instance v3, Lw0/w4;

    const-string v4, "SEM_SNAPSHOT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw0/w4;->d:Lw0/w4;

    new-instance v4, Lw0/w4;

    const-string v5, "NADA_A_FAZER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lw0/w4;->e:Lw0/w4;

    filled-new-array {v0, v1, v2, v3, v4}, [Lw0/w4;

    move-result-object v0

    sput-object v0, Lw0/w4;->f:[Lw0/w4;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw0/w4;
    .locals 1

    const-class v0, Lw0/w4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw0/w4;

    return-object p0
.end method

.method public static values()[Lw0/w4;
    .locals 1

    sget-object v0, Lw0/w4;->f:[Lw0/w4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/w4;

    return-object v0
.end method
