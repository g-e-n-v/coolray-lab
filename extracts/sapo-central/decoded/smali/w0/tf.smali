.class public final enum Lw0/tf;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lw0/tf;

.field public static final enum b:Lw0/tf;

.field public static final enum c:Lw0/tf;

.field public static final synthetic d:[Lw0/tf;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lw0/tf;

    const-string v1, "ORDENADO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw0/tf;->a:Lw0/tf;

    new-instance v1, Lw0/tf;

    const-string v2, "CORTE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw0/tf;->b:Lw0/tf;

    new-instance v2, Lw0/tf;

    const-string v3, "INDETERMINADO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lw0/tf;->c:Lw0/tf;

    filled-new-array {v0, v1, v2}, [Lw0/tf;

    move-result-object v0

    sput-object v0, Lw0/tf;->d:[Lw0/tf;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw0/tf;
    .locals 1

    const-class v0, Lw0/tf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw0/tf;

    return-object p0
.end method

.method public static values()[Lw0/tf;
    .locals 1

    sget-object v0, Lw0/tf;->d:[Lw0/tf;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/tf;

    return-object v0
.end method
