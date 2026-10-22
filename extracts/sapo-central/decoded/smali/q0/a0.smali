.class public abstract Lq0/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq0/b0;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq0/b0;

    invoke-direct {v0}, Landroid/database/Observable;-><init>()V

    iput-object v0, p0, Lq0/a0;->a:Lq0/b0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq0/a0;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public b(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract c(Lq0/w0;I)V
.end method

.method public abstract d(Landroid/view/ViewGroup;)Lq0/w0;
.end method
