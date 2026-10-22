.class public final Lw0/be;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lw0/de;

.field public final c:Lw0/ce;

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lw0/de;Lw0/ce;II)V
    .locals 0

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/be;->a:Ljava/lang/String;

    iput-object p2, p0, Lw0/be;->b:Lw0/de;

    iput-object p3, p0, Lw0/be;->c:Lw0/ce;

    iput p4, p0, Lw0/be;->d:I

    return-void
.end method
