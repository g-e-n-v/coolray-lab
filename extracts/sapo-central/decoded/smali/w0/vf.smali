.class public final synthetic Lw0/vf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Le/i;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroid/widget/CheckBox;

.field public final synthetic e:Lcom/ex/auto/MainActivity;

.field public final synthetic f:Landroid/content/pm/PackageManager;


# direct methods
.method public synthetic constructor <init>(Le/i;Ljava/util/ArrayList;Ljava/util/List;Landroid/widget/CheckBox;Lcom/ex/auto/MainActivity;Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/vf;->a:Le/i;

    iput-object p2, p0, Lw0/vf;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lw0/vf;->c:Ljava/util/List;

    iput-object p4, p0, Lw0/vf;->d:Landroid/widget/CheckBox;

    iput-object p5, p0, Lw0/vf;->e:Lcom/ex/auto/MainActivity;

    iput-object p6, p0, Lw0/vf;->f:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 8

    const/4 p1, -0x1

    iget-object v3, p0, Lw0/vf;->a:Le/i;

    invoke-virtual {v3, p1}, Le/i;->c(I)Landroid/widget/Button;

    move-result-object v2

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lw0/vf;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v5, Lw0/wf;

    invoke-direct {v5, v2, v4}, Lw0/wf;-><init>(Landroid/widget/Button;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lw0/xf;

    iget-object v1, p0, Lw0/vf;->c:Ljava/util/List;

    iget-object v5, p0, Lw0/vf;->d:Landroid/widget/CheckBox;

    iget-object v6, p0, Lw0/vf;->e:Lcom/ex/auto/MainActivity;

    iget-object v7, p0, Lw0/vf;->f:Landroid/content/pm/PackageManager;

    invoke-direct/range {v0 .. v7}, Lw0/xf;-><init>(Ljava/util/List;Landroid/widget/Button;Le/i;Ljava/util/ArrayList;Landroid/widget/CheckBox;Lcom/ex/auto/MainActivity;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
