.class public abstract La0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La0/g;

.field public static final b:La0/g;

.field public static final c:La0/g;

.field public static final d:La0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, La0/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La0/g;-><init>(La0/f;Z)V

    sput-object v0, La0/h;->a:La0/g;

    new-instance v0, La0/g;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, La0/g;-><init>(La0/f;Z)V

    sput-object v0, La0/h;->b:La0/g;

    new-instance v0, La0/g;

    sget-object v1, La0/f;->a:La0/f;

    invoke-direct {v0, v1, v2}, La0/g;-><init>(La0/f;Z)V

    sput-object v0, La0/h;->c:La0/g;

    new-instance v0, La0/g;

    invoke-direct {v0, v1, v3}, La0/g;-><init>(La0/f;Z)V

    sput-object v0, La0/h;->d:La0/g;

    return-void
.end method
