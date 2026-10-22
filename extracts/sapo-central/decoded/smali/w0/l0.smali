.class public final synthetic Lw0/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lw0/l0;->a:I

    iput-object p2, p0, Lw0/l0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget p1, p0, Lw0/l0;->a:I

    iget-object v0, p0, Lw0/l0;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    sget p1, Lcom/ex/auto/InstallerActivity;->v:I

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_0
    check-cast v0, Landroid/app/AlertDialog;

    sget-object p1, Lw0/t1;->f:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    sput-object p1, Lw0/t1;->f:Landroid/app/AlertDialog;

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
