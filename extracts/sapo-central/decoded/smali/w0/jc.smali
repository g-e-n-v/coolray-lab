.class public final Lw0/jc;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;I)V
    .locals 0

    iput p2, p0, Lw0/jc;->a:I

    iput-object p1, p0, Lw0/jc;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget p1, p0, Lw0/jc;->a:I

    const/4 v0, 0x0

    iget-object v1, p0, Lw0/jc;->b:Lcom/ex/auto/MainActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->A1()V

    return-void

    :pswitch_0
    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->v1()V

    invoke-virtual {v1, v0, v0}, Lcom/ex/auto/MainActivity;->i1(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->A1()V

    return-void

    :pswitch_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getString(...)"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v2, "com.ex.auto.DRIVE_REGEN_RECUSADO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string p1, "qual"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "drive"

    invoke-static {p1, v2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0f0171

    goto :goto_1

    :cond_2
    const v2, 0x7f0f02ce

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1, v2, v4}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "o carro N\u00c3O aceitou "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "querido"

    const/4 v3, -0x1

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (ficou em "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "hal"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Condu\u00e7\u00e3o"

    invoke-virtual {v1, p2, p1}, Lcom/ex/auto/MainActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v0}, Lcom/ex/auto/MainActivity;->i1(Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_4

    :sswitch_1
    const-string p2, "com.ex.auto.USB_WATCHDOG_APPLIED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_4

    :cond_3
    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    const-string p1, "AutoUSB"

    const-string p2, "USB corrigido pelo watchdog"

    invoke-virtual {v1, p1, p2}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0f0371

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_4

    :sswitch_2
    const-string v0, "com.ex.auto.AUTO_PROXY_APPLIED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_4

    :cond_4
    const-string p1, "ip"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string v0, "port"

    const/16 v2, 0x1f90

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f0f00b2

    invoke-virtual {v1, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/ex/auto/MainActivity;->z1:I

    const-string p2, "AutoProxy"

    invoke-virtual {v1, p2, p1}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_4

    :sswitch_3
    const-string v0, "com.ex.auto.AUTO_ROUTE_APPLIED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_4

    :cond_6
    const-string p1, "ok"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "veredito"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0f00b6

    const v2, 0x7f0f00b8

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v5, -0x286f45c7

    if-eq v3, v5, :cond_a

    const/16 v5, 0x9dc

    if-eq v3, v5, :cond_9

    const v5, 0x7b2ad79d

    if-eq v3, v5, :cond_7

    goto :goto_2

    :cond_7
    const-string v3, "FALHOU"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_9
    const-string v3, "OK"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_a
    const-string v3, "OK_SEM_REFERENCIA"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_2

    :cond_b
    const p2, 0x7f0f00b7

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_c
    :goto_2
    if-eqz p1, :cond_d

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_d
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-static {p2}, Li2/g;->b(Ljava/lang/Object;)V

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    const-string v0, "AutoRota"

    invoke-virtual {v1, v0, p2}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {v1, p2, v0}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    if-eqz p1, :cond_e

    iput-boolean v4, v1, Lcom/ex/auto/MainActivity;->x0:Z

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->s1()V

    :cond_e
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x35af4b58 -> :sswitch_3
        -0x127e2833 -> :sswitch_2
        0x16582c57 -> :sswitch_1
        0x2c4a72c6 -> :sswitch_0
    .end sparse-switch
.end method
