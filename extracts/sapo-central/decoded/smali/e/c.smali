.class public final Le/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public final synthetic b:Le/g;

.field public final synthetic c:Le/d;


# direct methods
.method public constructor <init>(Le/d;Landroidx/appcompat/app/AlertController$RecycleListView;Le/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c;->c:Le/d;

    iput-object p2, p0, Le/c;->a:Landroidx/appcompat/app/AlertController$RecycleListView;

    iput-object p3, p0, Le/c;->b:Le/g;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Le/c;->c:Le/d;

    iget-object p2, p1, Le/d;->t:[Z

    iget-object p4, p0, Le/c;->a:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz p2, :cond_0

    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p5

    aput-boolean p5, p2, p3

    :cond_0
    iget-object p1, p1, Le/d;->x:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Le/c;->b:Le/g;

    iget-object p2, p2, Le/g;->b:Le/i;

    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p4

    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
