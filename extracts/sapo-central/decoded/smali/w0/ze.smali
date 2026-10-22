.class public final synthetic Lw0/ze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/QuickAccessFloaterService;)V
    .locals 0

    iput p1, p0, Lw0/ze;->a:I

    iput-object p2, p0, Lw0/ze;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lw0/ze;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lw0/ze;->b:Lcom/ex/auto/QuickAccessFloaterService;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v2, Lcom/ex/auto/QuickAccessFloaterService;->r:Lw0/sf;

    if-eqz v0, :cond_0

    iget-object v3, v2, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v4, Lw0/ye;

    invoke-direct {v4, v2, v0, v1}, Lw0/ye;-><init>(Lcom/ex/auto/QuickAccessFloaterService;Landroid/widget/TextView;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v0, v1}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0

    :pswitch_1
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v0, "tela_preta_prefs"

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-static {v2}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->h(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :pswitch_3
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v0, "quick_access_prefs"

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :pswitch_4
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const v0, 0x20020503

    invoke-virtual {v2, v0}, Lcom/ex/auto/QuickAccessFloaterService;->R(I)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_5
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const v0, 0x20020502

    invoke-virtual {v2, v0}, Lcom/ex/auto/QuickAccessFloaterService;->R(I)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_6
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const v0, 0x20020501

    invoke-virtual {v2, v0}, Lcom/ex/auto/QuickAccessFloaterService;->R(I)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_7
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const v0, 0x22010103

    invoke-virtual {v2, v0}, Lcom/ex/auto/QuickAccessFloaterService;->Q(I)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_8
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const v0, 0x22010102

    invoke-virtual {v2, v0}, Lcom/ex/auto/QuickAccessFloaterService;->Q(I)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_9
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const v0, 0x22010101

    invoke-virtual {v2, v0}, Lcom/ex/auto/QuickAccessFloaterService;->Q(I)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
