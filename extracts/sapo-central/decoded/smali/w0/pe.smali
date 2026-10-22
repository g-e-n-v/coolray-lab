.class public final enum Lw0/pe;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lw0/pe;

.field public static final enum b:Lw0/pe;

.field public static final enum c:Lw0/pe;

.field public static final synthetic d:[Lw0/pe;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lw0/pe;

    const-string v1, "INDISPONIVEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw0/pe;->a:Lw0/pe;

    new-instance v1, Lw0/pe;

    const-string v2, "CONCLUIDA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw0/pe;->b:Lw0/pe;

    new-instance v2, Lw0/pe;

    const-string v3, "FALHOU"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lw0/pe;->c:Lw0/pe;

    filled-new-array {v0, v1, v2}, [Lw0/pe;

    move-result-object v0

    sput-object v0, Lw0/pe;->d:[Lw0/pe;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw0/pe;
    .locals 1

    const-class v0, Lw0/pe;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw0/pe;

    return-object p0
.end method

.method public static values()[Lw0/pe;
    .locals 1

    sget-object v0, Lw0/pe;->d:[Lw0/pe;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/pe;

    return-object v0
.end method
