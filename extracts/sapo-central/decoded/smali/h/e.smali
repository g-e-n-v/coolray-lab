.class public final Lh/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lh/f;

.field public final synthetic b:Lh/o;

.field public final synthetic c:Lh/m;

.field public final synthetic d:Landroidx/emoji2/text/m;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/m;Lh/f;Lh/o;Lh/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/e;->d:Landroidx/emoji2/text/m;

    iput-object p2, p0, Lh/e;->a:Lh/f;

    iput-object p3, p0, Lh/e;->b:Lh/o;

    iput-object p4, p0, Lh/e;->c:Lh/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lh/e;->d:Landroidx/emoji2/text/m;

    iget-object v0, v0, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lh/g;

    iget-object v1, p0, Lh/e;->a:Lh/f;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lh/g;->z:Z

    iget-object v1, v1, Lh/f;->b:Lh/m;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lh/m;->c(Z)V

    iput-boolean v2, v0, Lh/g;->z:Z

    :cond_0
    iget-object v0, p0, Lh/e;->b:Lh/o;

    invoke-virtual {v0}, Lh/o;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lh/o;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget-object v3, p0, Lh/e;->c:Lh/m;

    invoke-virtual {v3, v0, v2, v1}, Lh/m;->q(Landroid/view/MenuItem;Lh/z;I)Z

    :cond_1
    return-void
.end method
