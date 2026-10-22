.class public final synthetic Lw0/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/QuickAccessFloaterService;)V
    .locals 0

    iput p1, p0, Lw0/df;->a:I

    iput-object p2, p0, Lw0/df;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lw0/df;->a:I

    const/4 v0, 0x0

    iget-object v1, p0, Lw0/df;->b:Lcom/ex/auto/QuickAccessFloaterService;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v1}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "screen_off_warning_seen"

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, v1, Lcom/ex/auto/QuickAccessFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, v1, Lcom/ex/auto/QuickAccessFloaterService;->b:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iput-object v0, v1, Lcom/ex/auto/QuickAccessFloaterService;->e:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/ex/auto/QuickAccessFloaterService;->V(Z)V

    return-void

    :pswitch_0
    sget p1, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v1}, Lcom/ex/auto/QuickAccessFloaterService;->b0()V

    return-void

    :pswitch_1
    sget p1, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string p1, "drive_regen"

    invoke-virtual {v1, v0, p1}, Lcom/ex/auto/QuickAccessFloaterService;->H(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
