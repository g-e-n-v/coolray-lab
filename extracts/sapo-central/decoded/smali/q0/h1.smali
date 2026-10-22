.class public final Lq0/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lb0/c;


# instance fields
.field public a:I

.field public b:Lc0/q;

.field public c:Lc0/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb0/c;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lb0/c;-><init>(I)V

    sput-object v0, Lq0/h1;->d:Lb0/c;

    return-void
.end method

.method public static a()Lq0/h1;
    .locals 1

    sget-object v0, Lq0/h1;->d:Lb0/c;

    invoke-virtual {v0}, Lb0/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq0/h1;

    if-nez v0, :cond_0

    new-instance v0, Lq0/h1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_0
    return-object v0
.end method
