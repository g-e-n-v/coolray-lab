.class Landroidx/activity/ComponentActivity$4;
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

    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Le/j;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/q;Landroidx/lifecycle/k;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/k;->ON_DESTROY:Landroidx/lifecycle/k;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Le/j;

    iget-object p1, p1, Landroidx/activity/h;->b:La/a;

    const/4 p2, 0x0

    iput-object p2, p1, La/a;->b:Landroidx/activity/h;

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Le/j;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Le/j;

    invoke-virtual {p1}, Landroidx/activity/h;->e()Landroidx/lifecycle/i0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/i0;->a()V

    :cond_0
    return-void
.end method
