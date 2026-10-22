.class public final Landroidx/fragment/app/m;
.super La1/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/o;

.field public final synthetic b:Landroidx/fragment/app/n;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/n;Landroidx/fragment/app/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    iput-object p2, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/o;

    return-void
.end method


# virtual methods
.method public final L(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/o;

    invoke-virtual {v0}, Landroidx/fragment/app/o;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/o;->L(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->a0:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final M()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/o;

    invoke-virtual {v0}, Landroidx/fragment/app/o;->M()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    iget-boolean v0, v0, Landroidx/fragment/app/n;->d0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
