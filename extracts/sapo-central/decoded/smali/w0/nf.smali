.class public final synthetic Lw0/nf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Li2/j;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lw0/i9;

.field public final synthetic d:Landroid/widget/CheckBox;

.field public final synthetic e:Lw0/c7;


# direct methods
.method public synthetic constructor <init>(Li2/j;Landroid/widget/TextView;Lw0/i9;Landroid/widget/CheckBox;Lw0/c7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/nf;->a:Li2/j;

    iput-object p2, p0, Lw0/nf;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lw0/nf;->c:Lw0/i9;

    iput-object p4, p0, Lw0/nf;->d:Landroid/widget/CheckBox;

    iput-object p5, p0, Lw0/nf;->e:Lw0/c7;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    sget p1, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    iget-object p1, p0, Lw0/nf;->a:Li2/j;

    iget-boolean v0, p1, Li2/j;->a:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p1, Li2/j;->a:Z

    if-nez v0, :cond_0

    const-string v0, "\ud83d\udd12"

    goto :goto_0

    :cond_0
    const-string v0, "\ud83d\udd13"

    :goto_0
    iget-object v1, p0, Lw0/nf;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p1, Li2/j;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lw0/nf;->c:Lw0/i9;

    invoke-virtual {v1, v0}, Lw0/i9;->c(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p1, Li2/j;->a:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lw0/nf;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, Lw0/nf;->e:Lw0/c7;

    invoke-virtual {v0, p1}, Lw0/c7;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
