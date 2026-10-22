.class public final synthetic Lw0/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lh2/a;


# direct methods
.method public synthetic constructor <init>(Lh2/a;I)V
    .locals 0

    iput p2, p0, Lw0/n1;->a:I

    iput-object p1, p0, Lw0/n1;->b:Lh2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lw0/n1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/n1;->b:Lh2/a;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-interface {v0}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/n1;->b:Lh2/a;

    invoke-interface {v0}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/n1;->b:Lh2/a;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lh2/a;->a()Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/n1;->b:Lh2/a;

    invoke-interface {v0}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
