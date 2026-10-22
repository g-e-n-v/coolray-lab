.class public final Li/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Li/f;

.field public final synthetic b:Li/j;


# direct methods
.method public constructor <init>(Li/j;Li/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/h;->b:Li/j;

    iput-object p2, p0, Li/h;->a:Li/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Li/h;->b:Li/j;

    iget-object v1, v0, Li/j;->c:Lh/m;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lh/m;->e:Lh/k;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lh/k;->f(Lh/m;)V

    :cond_0
    iget-object v1, v0, Li/j;->h:Lh/b0;

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Li/h;->a:Li/f;

    invoke-virtual {v1}, Lh/x;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lh/x;->e:Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Lh/x;->d(IIZZ)V

    :goto_0
    iput-object v1, v0, Li/j;->s:Li/f;

    :cond_3
    :goto_1
    const/4 v1, 0x0

    iput-object v1, v0, Li/j;->u:Li/h;

    return-void
.end method
