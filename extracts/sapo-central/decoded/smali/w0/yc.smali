.class public final synthetic Lw0/yc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/ListPopupWindow;

.field public final synthetic b:Li/s;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ListPopupWindow;Li/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/yc;->a:Landroid/widget/ListPopupWindow;

    iput-object p2, p0, Lw0/yc;->b:Li/s;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lw0/yc;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    iget-object p1, p0, Lw0/yc;->b:Li/s;

    iget-object p2, p1, Li/s;->e:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Li/s;->a(Ljava/lang/String;Z)V

    return-void
.end method
