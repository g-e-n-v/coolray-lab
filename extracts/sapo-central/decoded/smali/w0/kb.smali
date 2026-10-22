.class public final synthetic Lw0/kb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lw0/kb;->a:I

    iput-object p2, p0, Lw0/kb;->b:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, Lw0/kb;->c:Ljava/lang/String;

    iput-object p4, p0, Lw0/kb;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget p1, p0, Lw0/kb;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lw0/kb;->b:Lcom/ex/auto/MainActivity;

    iget-object p2, p0, Lw0/kb;->c:Ljava/lang/String;

    iget-object v0, p0, Lw0/kb;->d:Ljava/lang/String;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const-string v1, "speed"

    invoke-virtual {p1, p2, v0, v1}, Lcom/ex/auto/MainActivity;->V0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lw0/kb;->b:Lcom/ex/auto/MainActivity;

    iget-object p2, p0, Lw0/kb;->c:Ljava/lang/String;

    iget-object v0, p0, Lw0/kb;->d:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/ex/auto/MainActivity;->n1:Z

    const-string v2, "getString(...)"

    if-eqz v1, :cond_0

    const p2, 0x7f0f0349

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v2}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/ex/auto/MainActivity;->n1:Z

    const v1, 0x7f0f02d8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, p2}, Lcom/ex/auto/MainActivity;->J0(Ljava/lang/String;Ljava/lang/String;)Le/i;

    move-result-object p2

    new-instance v1, Lw0/y2;

    const/16 v2, 0xa

    invoke-direct {v1, p1, v2, p2}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p2, p1, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, La1/g;

    const/16 v3, 0x12

    invoke-direct {v2, p1, v0, v1, v3}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
