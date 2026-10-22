.class Landroidx/activity/ComponentActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# instance fields
.field public final synthetic a:Le/j;


# direct methods
.method public constructor <init>(Le/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/ComponentActivity$5;->a:Le/j;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/q;Landroidx/lifecycle/k;)V
    .locals 0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$5;->a:Le/j;

    iget-object p2, p1, Landroidx/activity/h;->f:Landroidx/lifecycle/i0;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/activity/g;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/activity/g;->a:Landroidx/lifecycle/i0;

    iput-object p2, p1, Landroidx/activity/h;->f:Landroidx/lifecycle/i0;

    :cond_0
    iget-object p2, p1, Landroidx/activity/h;->f:Landroidx/lifecycle/i0;

    if-nez p2, :cond_1

    new-instance p2, Landroidx/lifecycle/i0;

    invoke-direct {p2}, Landroidx/lifecycle/i0;-><init>()V

    iput-object p2, p1, Landroidx/activity/h;->f:Landroidx/lifecycle/i0;

    :cond_1
    iget-object p1, p1, Landroidx/activity/h;->d:Landroidx/lifecycle/s;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/p;)V

    return-void
.end method
