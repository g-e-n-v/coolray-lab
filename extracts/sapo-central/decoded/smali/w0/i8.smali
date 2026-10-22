.class public final synthetic Lw0/i8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/InstallerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/InstallerActivity;I)V
    .locals 0

    iput p2, p0, Lw0/i8;->a:I

    iput-object p1, p0, Lw0/i8;->b:Lcom/ex/auto/InstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lw0/i8;->a:I

    iget-object v1, p0, Lw0/i8;->b:Lcom/ex/auto/InstallerActivity;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/InstallerActivity;->v:I

    const v0, 0x7f0f01e1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(...)"

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ex/auto/InstallerActivity;->w(Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    iget-object v0, v1, Lcom/ex/auto/InstallerActivity;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v2, 0x7f0f01e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "tvStatus"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
