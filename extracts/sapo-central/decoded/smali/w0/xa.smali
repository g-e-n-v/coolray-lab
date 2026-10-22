.class public final synthetic Lw0/xa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ContextWrapper;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;ZI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lw0/xa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw0/xa;->c:I

    iput-object p2, p0, Lw0/xa;->b:Landroid/content/ContextWrapper;

    iput-boolean p3, p0, Lw0/xa;->d:Z

    iput p4, p0, Lw0/xa;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;IZI)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lw0/xa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/xa;->b:Landroid/content/ContextWrapper;

    iput p2, p0, Lw0/xa;->c:I

    iput-boolean p3, p0, Lw0/xa;->d:Z

    iput p4, p0, Lw0/xa;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;IIZ)V
    .locals 1

    .line 3
    const/4 v0, 0x2

    iput v0, p0, Lw0/xa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/xa;->b:Landroid/content/ContextWrapper;

    iput p2, p0, Lw0/xa;->c:I

    iput p3, p0, Lw0/xa;->e:I

    iput-boolean p4, p0, Lw0/xa;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lw0/xa;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/xa;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iget v3, p0, Lw0/xa;->c:I

    iget v4, p0, Lw0/xa;->e:I

    iget-boolean v5, p0, Lw0/xa;->d:Z

    iget-object v6, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:La1/d;

    iget-boolean v6, v6, La1/d;->b:Z

    if-nez v6, :cond_4

    sget-boolean v6, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->g(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->x:I

    if-eq v6, v3, :cond_1

    iput v3, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->x:I

    move v1, v2

    :cond_1
    invoke-static {v4}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->f(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->y:I

    if-eq v3, v4, :cond_2

    iput v4, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->y:I

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-nez v5, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->n()V

    :cond_4
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/xa;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget v1, p0, Lw0/xa;->c:I

    iget-boolean v3, p0, Lw0/xa;->d:Z

    iget v4, p0, Lw0/xa;->e:I

    sget v5, Lcom/ex/auto/MainActivity;->z1:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v4, v3}, Lcom/ex/auto/MainActivity;->N(IIZ)V

    return-void

    :pswitch_1
    iget v6, p0, Lw0/xa;->c:I

    iget-object v0, p0, Lw0/xa;->b:Landroid/content/ContextWrapper;

    move-object v7, v0

    check-cast v7, Lcom/ex/auto/MainActivity;

    iget-boolean v0, p0, Lw0/xa;->d:Z

    iget v2, p0, Lw0/xa;->e:I

    iget-object v3, v7, Lcom/ex/auto/MainActivity;->s0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v6, v3, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    move v2, v1

    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "setAVASMode"

    invoke-virtual {v7, v2, v0}, Lcom/ex/auto/MainActivity;->w0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v7, v0}, Lcom/ex/auto/MainActivity;->G([Ljava/lang/Object;)I

    move-result v8

    iget-object v0, v7, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, Lw0/na;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lw0/na;-><init>(ILcom/ex/auto/MainActivity;IIB)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
