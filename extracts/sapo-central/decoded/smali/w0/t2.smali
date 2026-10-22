.class public final synthetic Lw0/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(ZILjava/lang/String;II)V
    .locals 0

    iput p5, p0, Lw0/t2;->a:I

    iput-boolean p1, p0, Lw0/t2;->b:Z

    iput p2, p0, Lw0/t2;->c:I

    iput-object p3, p0, Lw0/t2;->d:Ljava/lang/String;

    iput p4, p0, Lw0/t2;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lw0/t2;->a:I

    const-string v1, " gen="

    const-string v2, " reason="

    const-string v3, "CentralWatchdog"

    const/4 v4, 0x0

    const-string v5, "cpm"

    const/4 v6, 0x1

    iget v7, p0, Lw0/t2;->e:I

    iget-object v8, p0, Lw0/t2;->d:Ljava/lang/String;

    iget v9, p0, Lw0/t2;->c:I

    iget-boolean v10, p0, Lw0/t2;->b:Z

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-static {p1, v5}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_1

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    move v5, v4

    :goto_0
    const/4 v10, 0x2

    if-ge v5, v10, :cond_1

    aget v10, v0, v5

    const v11, 0x20020500

    invoke-static {p1, v11, v10, v9}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v10

    if-eqz v10, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "regen write ok="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_0
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-static {p1, v5}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_3

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->T2:[I

    move v5, v4

    :goto_3
    const/4 v10, 0x3

    if-ge v5, v10, :cond_3

    aget v10, v0, v5

    const v11, 0x22010100

    invoke-static {p1, v11, v10, v9}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v10

    if-eqz v10, :cond_2

    move v4, v6

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "drive write ok="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
