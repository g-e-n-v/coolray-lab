.class public final synthetic Lw0/w7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/HomeWidgetsPollService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeWidgetsPollService;I)V
    .locals 0

    iput p2, p0, Lw0/w7;->a:I

    iput-object p1, p0, Lw0/w7;->b:Lcom/ex/auto/HomeWidgetsPollService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lw0/w7;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/w7;->b:Lcom/ex/auto/HomeWidgetsPollService;

    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->h(Landroid/car/hardware/property/CarPropertyManager;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->A:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    sget-object v3, Lw0/ae;->a:Lw0/ae;

    const-string v3, "volante/widget: "

    const-string v4, " a\u00e7\u00e3o(\u00f5es) descartada(s) \u2014 o Car n\u00e3o conectou em "

    invoke-static {v3, v2, v4}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->B:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HomeWidgetsPoll"

    invoke-static {v2, v0, v1}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/w7;->b:Lcom/ex/auto/HomeWidgetsPollService;

    sget v1, Lcom/ex/auto/HomeWidgetsPollService;->E:I

    invoke-virtual {v0}, Lcom/ex/auto/HomeWidgetsPollService;->i()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
