.class public final synthetic Lw0/y9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/ex/auto/MainActivity;

.field public final synthetic d:Landroid/car/hardware/property/CarPropertyManager;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lw0/y9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw0/y9;->b:I

    iput-object p2, p0, Lw0/y9;->c:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, Lw0/y9;->d:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/car/hardware/property/CarPropertyManager;Lcom/ex/auto/MainActivity;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lw0/y9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/y9;->d:Landroid/car/hardware/property/CarPropertyManager;

    iput-object p2, p0, Lw0/y9;->c:Lcom/ex/auto/MainActivity;

    iput p3, p0, Lw0/y9;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lw0/y9;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lw0/y9;->d:Landroid/car/hardware/property/CarPropertyManager;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/y9;->c:Lcom/ex/auto/MainActivity;

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lw0/y9;->b:I

    if-ne v4, v3, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/ex/auto/MainActivity;->x2(Z)V

    iget-boolean v1, v0, Lcom/ex/auto/MainActivity;->O:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->z1()V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v0, Lw0/u;->c:[I

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget v4, v0, v1

    sget-object v5, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v5, Lw0/u;->b:I

    invoke-static {v2, v5, v4}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v7, p0, Lw0/y9;->c:Lcom/ex/auto/MainActivity;

    invoke-virtual {v7}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "avas_sound_type_saved"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, v7, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, Lw0/na;

    const/4 v9, 0x2

    const/4 v10, 0x0

    iget v6, p0, Lw0/y9;->b:I

    invoke-direct/range {v5 .. v10}, Lw0/na;-><init>(ILcom/ex/auto/MainActivity;IIB)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
