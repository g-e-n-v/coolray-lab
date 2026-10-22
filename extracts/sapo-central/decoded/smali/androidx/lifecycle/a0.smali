.class public final Landroidx/lifecycle/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/q;


# static fields
.field public static final i:Landroidx/lifecycle/a0;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/os/Handler;

.field public final f:Landroidx/lifecycle/s;

.field public final g:Landroidx/activity/d;

.field public final h:Landroidx/emoji2/text/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0}, Landroidx/lifecycle/a0;-><init>()V

    sput-object v0, Landroidx/lifecycle/a0;->i:Landroidx/lifecycle/a0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/a0;->a:I

    iput v0, p0, Landroidx/lifecycle/a0;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/a0;->c:Z

    iput-boolean v0, p0, Landroidx/lifecycle/a0;->d:Z

    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Landroidx/lifecycle/a0;->f:Landroidx/lifecycle/s;

    new-instance v0, Landroidx/activity/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroidx/activity/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/a0;->g:Landroidx/activity/d;

    new-instance v0, Landroidx/emoji2/text/m;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroidx/emoji2/text/m;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/a0;->h:Landroidx/emoji2/text/m;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/a0;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/a0;->b:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/a0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/a0;->f:Landroidx/lifecycle/s;

    sget-object v1, Landroidx/lifecycle/k;->ON_RESUME:Landroidx/lifecycle/k;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/a0;->c:Z

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/a0;->e:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/a0;->g:Landroidx/activity/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final f()Landroidx/lifecycle/s;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/a0;->f:Landroidx/lifecycle/s;

    return-object v0
.end method
