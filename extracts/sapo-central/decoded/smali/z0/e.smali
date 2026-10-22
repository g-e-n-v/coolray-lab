.class public final Lz0/e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/geely/driveregenfloater/DriveRegenFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;I)V
    .locals 0

    iput p2, p0, Lz0/e;->a:I

    iput-object p1, p0, Lz0/e;->b:Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget p1, p0, Lz0/e;->a:I

    iget-object v0, p0, Lz0/e;->b:Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, La1/r;

    const/16 p2, 0x11

    invoke-direct {p1, p2, p0}, La1/r;-><init>(ILjava/lang/Object;)V

    sget-boolean p2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    invoke-virtual {v0, p1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->j(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UPDATE_FLOATER_ALPHA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "alpha"

    const/16 v1, 0x64

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    if-eqz p2, :cond_3

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    const-string p2, "UPDATE_DRIVE_REGEN_MODES"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, La1/r;

    const/16 p2, 0x10

    invoke-direct {p1, p2, p0}, La1/r;-><init>(ILjava/lang/Object;)V

    sget-boolean p2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    invoke-virtual {v0, p1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->j(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
