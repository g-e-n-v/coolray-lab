.class public final Ln1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public final b:Lj1/a;

.field public c:F

.field public d:Z

.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Lp1/d;


# direct methods
.method public constructor <init>(Lj1/e;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Ln1/h;->a:Landroid/text/TextPaint;

    new-instance v0, Lj1/a;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0}, Lj1/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Ln1/h;->b:Lj1/a;

    iput-boolean v1, p0, Ln1/h;->d:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ln1/h;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ln1/h;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method
