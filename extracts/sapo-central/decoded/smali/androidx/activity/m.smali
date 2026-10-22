.class public final Landroidx/activity/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/a;


# instance fields
.field public final a:Landroidx/fragment/app/a0;

.field public final synthetic b:Landroidx/activity/n;


# direct methods
.method public constructor <init>(Landroidx/activity/n;Landroidx/fragment/app/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/m;->b:Landroidx/activity/n;

    iput-object p2, p0, Landroidx/activity/m;->a:Landroidx/fragment/app/a0;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/m;->b:Landroidx/activity/n;

    iget-object v1, v0, Landroidx/activity/n;->b:Ljava/util/ArrayDeque;

    iget-object v2, p0, Landroidx/activity/m;->a:Landroidx/fragment/app/a0;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v1, v2, Landroidx/fragment/app/a0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lk1/a;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v2, Landroidx/fragment/app/a0;->c:Landroidx/activity/j;

    invoke-virtual {v0}, Landroidx/activity/n;->c()V

    :cond_0
    return-void
.end method
