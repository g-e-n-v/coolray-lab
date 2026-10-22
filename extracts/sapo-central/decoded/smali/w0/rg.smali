.class public abstract Lw0/rg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:[I

.field public static volatile c:Z

.field public static d:Landroid/os/Handler;

.field public static e:J

.field public static final f:Lw0/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x19

    invoke-static {v0}, Lcom/ex/auto/Politica;->h(I)I

    move-result v0

    sput v0, Lw0/rg;->a:I

    const v1, 0x41020500

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lw0/rg;->b:[I

    new-instance v0, Lw0/r0;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lw0/r0;-><init>(I)V

    sput-object v0, Lw0/rg;->f:Lw0/r0;

    return-void
.end method
