.class public final Ln2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/f;


# instance fields
.field public final a:Ln2/f;

.field public final b:Z

.field public final c:Lh2/l;


# direct methods
.method public constructor <init>(Ln2/f;ZLh2/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/d;->a:Ln2/f;

    iput-boolean p2, p0, Ln2/d;->b:Z

    iput-object p3, p0, Ln2/d;->c:Lh2/l;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Ln2/b;

    invoke-direct {v0, p0}, Ln2/b;-><init>(Ln2/d;)V

    return-object v0
.end method
