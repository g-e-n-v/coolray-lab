.class public final synthetic Lw0/x9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/ListPopupWindow;

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ListPopupWindow;Lcom/ex/auto/MainActivity;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/x9;->a:Landroid/widget/ListPopupWindow;

    iput-object p2, p0, Lw0/x9;->b:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, Lw0/x9;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    iget-object p1, p0, Lw0/x9;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    iget-object p1, p0, Lw0/x9;->c:[Ljava/lang/String;

    aget-object p1, p1, p3

    const-string p2, "get(...)"

    invoke-static {p1, p2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lw0/x9;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ly/e;->a(Ljava/lang/String;)Ly/e;

    move-result-object p3

    invoke-static {p3}, Le/o;->m(Ly/e;)V

    invoke-virtual {p2}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "app_language_tag"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
