.class public final Lw0/zd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/emoji2/text/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/emoji2/text/m;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Landroidx/emoji2/text/m;-><init>(I)V

    sput-object v0, Lw0/zd;->a:Landroidx/emoji2/text/m;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/zd;->a:Landroidx/emoji2/text/m;

    invoke-virtual {v0, p0}, Landroidx/emoji2/text/m;->r(Ljava/lang/String;)Z

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "owner"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/zd;->a:Landroidx/emoji2/text/m;

    const-string v1, "installing"

    invoke-virtual {v0, p0, v1}, Landroidx/emoji2/text/m;->u(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
