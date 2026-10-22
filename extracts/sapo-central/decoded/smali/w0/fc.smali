.class public final Lw0/fc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lh2/a;


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 2

    .line 1
    new-instance v0, Lw0/w5;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lw0/w5;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lw0/fc;-><init>(IILh2/a;)V

    return-void
.end method

.method public constructor <init>(IILh2/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw0/fc;->a:I

    iput p2, p0, Lw0/fc;->b:I

    iput-object p3, p0, Lw0/fc;->c:Lh2/a;

    return-void
.end method
