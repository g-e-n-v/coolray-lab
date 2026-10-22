.class public final synthetic Lw0/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/f1;


# direct methods
.method public synthetic constructor <init>(Lw0/f1;I)V
    .locals 0

    iput p2, p0, Lw0/b1;->a:I

    iput-object p1, p0, Lw0/b1;->b:Lw0/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lw0/b1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/b1;->b:Lw0/f1;

    invoke-virtual {v0}, Lw0/f1;->e()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/b1;->b:Lw0/f1;

    invoke-virtual {v0}, Lw0/f1;->d()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
