.class public final synthetic Lw0/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lw0/aa;->a:I

    iput-object p2, p0, Lw0/aa;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget p1, p0, Lw0/aa;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lw0/aa;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/MainActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/ex/auto/MainActivity;->h1:Z

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->l1()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lw0/aa;->b:Ljava/lang/Object;

    check-cast p1, Lh2/a;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-interface {p1}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
