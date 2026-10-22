.class public final synthetic Lw0/h6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Li2/k;

.field public final synthetic b:Li2/k;

.field public final synthetic c:Li2/k;

.field public final synthetic d:Lcom/ex/auto/ExSapoCastFloaterService;


# direct methods
.method public synthetic constructor <init>(Li2/k;Li2/k;Li2/k;Lcom/ex/auto/ExSapoCastFloaterService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/h6;->a:Li2/k;

    iput-object p2, p0, Lw0/h6;->b:Li2/k;

    iput-object p3, p0, Lw0/h6;->c:Li2/k;

    iput-object p4, p0, Lw0/h6;->d:Lcom/ex/auto/ExSapoCastFloaterService;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    sget p1, Lcom/ex/auto/ExSapoCastFloaterService;->j:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iget-object v0, p0, Lw0/h6;->a:Li2/k;

    iget-object v1, p0, Lw0/h6;->b:Li2/k;

    iget-object v2, p0, Lw0/h6;->c:Li2/k;

    iget-object v3, p0, Lw0/h6;->d:Lcom/ex/auto/ExSapoCastFloaterService;

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    const/4 v5, 0x0

    if-eq p1, v4, :cond_1

    const/4 v6, 0x2

    if-eq p1, v6, :cond_0

    return v5

    :cond_0
    iget p1, v3, Lcom/ex/auto/ExSapoCastFloaterService;->g:I

    iget v5, v3, Lcom/ex/auto/ExSapoCastFloaterService;->h:I

    invoke-virtual {v3, p1, v5}, Lcom/ex/auto/ExSapoCastFloaterService;->i(II)Lx1/a;

    move-result-object p1

    iget-object v5, p1, Lx1/a;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    iget-object p1, p1, Lx1/a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v2, v2, Li2/k;->a:F

    mul-float v6, v5, v2

    mul-float/2addr v2, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v0, v0, Li2/k;->a:F

    sub-float/2addr v7, v0

    add-float/2addr v7, v6

    div-float/2addr v7, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, v1, Li2/k;->a:F

    sub-float/2addr p2, v0

    add-float/2addr p2, v2

    div-float/2addr p2, p1

    add-float/2addr p2, v7

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    const p1, 0x3e99999a    # 0.3f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p1, v0}, Lk1/a;->j(FFF)F

    move-result p1

    iput p1, v3, Lcom/ex/auto/ExSapoCastFloaterService;->i:F

    invoke-virtual {v3}, Lcom/ex/auto/ExSapoCastFloaterService;->c()V

    return v4

    :cond_1
    const-string p1, "tela_preta_prefs"

    invoke-virtual {v3, p1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "exsapocast_pip_scale"

    iget v0, v3, Lcom/ex/auto/ExSapoCastFloaterService;->i:F

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v4

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, v0, Li2/k;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, v1, Li2/k;->a:F

    iget p1, v3, Lcom/ex/auto/ExSapoCastFloaterService;->i:F

    iput p1, v2, Li2/k;->a:F

    return v4
.end method
