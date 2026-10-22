.class public final synthetic Lw0/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/BlackoutFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/BlackoutFloaterService;I)V
    .locals 0

    iput p2, p0, Lw0/p0;->a:I

    iput-object p1, p0, Lw0/p0;->b:Lcom/ex/auto/BlackoutFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lw0/p0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/p0;->b:Lcom/ex/auto/BlackoutFloaterService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ex/auto/BlackoutFloaterService;->d:Z

    sget-boolean v1, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ex/auto/BlackoutFloaterService;->b()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/p0;->b:Lcom/ex/auto/BlackoutFloaterService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ex/auto/BlackoutFloaterService;->d:Z

    sget-boolean v1, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ex/auto/BlackoutFloaterService;->b()V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/p0;->b:Lcom/ex/auto/BlackoutFloaterService;

    invoke-static {}, Lcom/ex/auto/BlackoutFloaterService;->a()Z

    move-result v1

    iget-object v2, v0, Lcom/ex/auto/BlackoutFloaterService;->h:Landroid/os/Handler;

    const-string v3, "BlackoutFloater"

    if-nez v1, :cond_2

    const-string v1, "SELinux enforcing \u2014 n\u00e3o foi poss\u00edvel garantir permiss\u00e3o; abortando blackout"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lw0/p0;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Lw0/p0;-><init>(Lcom/ex/auto/BlackoutFloaterService;I)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lf2/d;->h0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0xff

    const/4 v5, 0x1

    invoke-static {v1, v5, v4}, Lk1/a;->k(III)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v1, 0xa6

    :goto_0
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/ex/auto/BlackoutFloaterService;->e(I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v1, "Escrita do backlight falhou \u2014 n\u00e3o fazendo toggle"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lw0/p0;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v3}, Lw0/p0;-><init>(Lcom/ex/auto/BlackoutFloaterService;I)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    new-instance v3, La1/e;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4}, La1/e;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
