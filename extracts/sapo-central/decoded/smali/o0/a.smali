.class public Lo0/a;
.super Landroidx/lifecycle/g0;
.source "SourceFile"


# instance fields
.field public final c:Ll/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/g0;-><init>()V

    new-instance v0, Ll/l;

    invoke-direct {v0}, Ll/l;-><init>()V

    iput-object v0, p0, Lo0/a;->c:Ll/l;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lo0/a;->c:Ll/l;

    iget v1, v0, Ll/l;->c:I

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    iget-object v3, v0, Ll/l;->b:[Ljava/lang/Object;

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput v2, v0, Ll/l;->c:I

    return-void

    :cond_1
    iget-object v0, v0, Ll/l;->b:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method
