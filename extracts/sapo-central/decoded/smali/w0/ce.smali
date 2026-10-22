.class public final enum Lw0/ce;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lw0/ce;

.field public static final enum b:Lw0/ce;

.field public static final synthetic c:[Lw0/ce;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lw0/ce;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw0/ce;->a:Lw0/ce;

    new-instance v1, Lw0/ce;

    const-string v2, "DRIVE_REGEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw0/ce;->b:Lw0/ce;

    filled-new-array {v0, v1}, [Lw0/ce;

    move-result-object v0

    sput-object v0, Lw0/ce;->c:[Lw0/ce;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw0/ce;
    .locals 1

    const-class v0, Lw0/ce;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw0/ce;

    return-object p0
.end method

.method public static values()[Lw0/ce;
    .locals 1

    sget-object v0, Lw0/ce;->c:[Lw0/ce;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/ce;

    return-object v0
.end method
