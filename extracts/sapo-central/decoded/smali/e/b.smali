.class public final Le/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Le/g;

.field public final synthetic b:Le/d;


# direct methods
.method public constructor <init>(Le/d;Le/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b;->b:Le/d;

    iput-object p2, p0, Le/b;->a:Le/g;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Le/b;->b:Le/d;

    iget-object p2, p1, Le/d;->r:Landroid/content/DialogInterface$OnClickListener;

    iget-object p4, p0, Le/b;->a:Le/g;

    iget-object p5, p4, Le/g;->b:Le/i;

    invoke-interface {p2, p5, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-boolean p1, p1, Le/d;->v:Z

    if-nez p1, :cond_0

    iget-object p1, p4, Le/g;->b:Le/i;

    invoke-virtual {p1}, Le/i;->dismiss()V

    :cond_0
    return-void
.end method
