.class public final synthetic Lw0/g7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lc0/f;

.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Lcom/ex/auto/HomeFloatingWidgetsService;


# direct methods
.method public synthetic constructor <init>(Lc0/f;ILandroid/widget/ImageView;Lcom/ex/auto/HomeFloatingWidgetsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/g7;->a:Lc0/f;

    iput p2, p0, Lw0/g7;->b:I

    iput-object p3, p0, Lw0/g7;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lw0/g7;->d:Lcom/ex/auto/HomeFloatingWidgetsService;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    iget-object p1, p0, Lw0/g7;->a:Lc0/f;

    invoke-virtual {p1}, Lc0/f;->f()I

    move-result v0

    iget v1, p0, Lw0/g7;->b:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lc0/f;->n(I)V

    iget-object v0, p0, Lw0/g7;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lw0/g7;->d:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-static {p1, v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->l(Lc0/f;Landroid/widget/ImageView;Lcom/ex/auto/HomeFloatingWidgetsService;)V

    return-void
.end method
