.class public final synthetic Lw0/oa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/Exception;I)V
    .locals 0

    iput p3, p0, Lw0/oa;->a:I

    iput-object p1, p0, Lw0/oa;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/oa;->c:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lw0/oa;->a:I

    iget-object v1, p0, Lw0/oa;->c:Ljava/lang/Exception;

    iget-object v2, p0, Lw0/oa;->b:Lcom/ex/auto/MainActivity;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Le/h;

    invoke-direct {v0, v2}, Le/h;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f015f

    invoke-virtual {v0, v3}, Le/h;->g(I)V

    const v3, 0x7f0f0155

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Lcom/ex/auto/MainActivity;->Z(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f0f0157

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Le/h;->b:Ljava/lang/Object;

    check-cast v2, Le/d;

    iput-object v1, v2, Le/d;->f:Ljava/lang/CharSequence;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Le/h;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Le/h;->h()Le/i;

    :cond_0
    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v2, v1}, Lcom/ex/auto/MainActivity;->Z(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ex/auto/MainActivity;->Z1(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    const-string v1, "Update"

    invoke-virtual {v2, v1, v0}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
