.class public final Li/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/s0;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public a:Le/i;

.field public b:Li/n0;

.field public c:Ljava/lang/CharSequence;

.field public final synthetic d:Li/t0;


# direct methods
.method public constructor <init>(Li/t0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0;->d:Li/t0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Li/m0;->a:Le/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Li/m0;->a:Le/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/i;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/m0;->a:Le/i;

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Li/m0;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final h(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final i(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final j(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k(II)V
    .locals 4

    iget-object v0, p0, Li/m0;->b:Li/n0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Le/h;

    iget-object v1, p0, Li/m0;->d:Li/t0;

    invoke-virtual {v1}, Li/t0;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Le/h;->b:Ljava/lang/Object;

    check-cast v2, Le/d;

    iget-object v3, p0, Li/m0;->c:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iput-object v3, v2, Le/d;->d:Ljava/lang/CharSequence;

    :cond_1
    iget-object v3, p0, Li/m0;->b:Li/n0;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    iput-object v3, v2, Le/d;->q:Ljava/lang/Object;

    iput-object p0, v2, Le/d;->r:Landroid/content/DialogInterface$OnClickListener;

    iput v1, v2, Le/d;->w:I

    const/4 v1, 0x1

    iput-boolean v1, v2, Le/d;->v:Z

    invoke-virtual {v0}, Le/h;->a()Le/i;

    move-result-object v0

    iput-object v0, p0, Li/m0;->a:Le/i;

    iget-object v0, v0, Le/i;->e:Le/g;

    iget-object v0, v0, Le/g;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-static {v0, p1}, Li/k0;->d(Landroid/view/View;I)V

    invoke-static {v0, p2}, Li/k0;->c(Landroid/view/View;I)V

    iget-object p1, p0, Li/m0;->a:Le/i;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Li/m0;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Li/m0;->d:Li/t0;

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/m0;->b:Li/n0;

    invoke-virtual {v0, p2}, Li/n0;->getItemId(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    invoke-virtual {p0}, Li/m0;->dismiss()V

    return-void
.end method

.method public final p(Landroid/widget/ListAdapter;)V
    .locals 0

    check-cast p1, Li/n0;

    iput-object p1, p0, Li/m0;->b:Li/n0;

    return-void
.end method
