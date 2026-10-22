.class public final enum Lw0/q3;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lw0/q3;

.field public static final enum b:Lw0/q3;

.field public static final enum c:Lw0/q3;

.field public static final enum d:Lw0/q3;

.field public static final enum e:Lw0/q3;

.field public static final enum f:Lw0/q3;

.field public static final enum g:Lw0/q3;

.field public static final enum h:Lw0/q3;

.field public static final enum i:Lw0/q3;

.field public static final synthetic j:[Lw0/q3;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lw0/q3;

    const-string v1, "NADA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw0/q3;->a:Lw0/q3;

    new-instance v1, Lw0/q3;

    const-string v2, "OBSERVAR_DE_NOVO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw0/q3;->b:Lw0/q3;

    new-instance v2, Lw0/q3;

    const-string v3, "AGUARDAR_ALVO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lw0/q3;->c:Lw0/q3;

    new-instance v3, Lw0/q3;

    const-string v4, "ABRIR_AP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw0/q3;->d:Lw0/q3;

    new-instance v4, Lw0/q3;

    const-string v5, "RADIO_OCUPADO"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lw0/q3;->e:Lw0/q3;

    new-instance v5, Lw0/q3;

    const-string v6, "CONVIDAR"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lw0/q3;->f:Lw0/q3;

    new-instance v6, Lw0/q3;

    const-string v7, "AGUARDAR_PROGRESSO"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lw0/q3;->g:Lw0/q3;

    new-instance v7, Lw0/q3;

    const-string v8, "REINICIAR_DAEMON"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lw0/q3;->h:Lw0/q3;

    new-instance v8, Lw0/q3;

    const-string v9, "SUSPENDER"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lw0/q3;->i:Lw0/q3;

    filled-new-array/range {v0 .. v8}, [Lw0/q3;

    move-result-object v0

    sput-object v0, Lw0/q3;->j:[Lw0/q3;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw0/q3;
    .locals 1

    const-class v0, Lw0/q3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw0/q3;

    return-object p0
.end method

.method public static values()[Lw0/q3;
    .locals 1

    sget-object v0, Lw0/q3;->j:[Lw0/q3;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/q3;

    return-object v0
.end method
