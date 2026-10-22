.class public final synthetic Lw0/j7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/HomeFloatingWidgetsService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V
    .locals 0

    iput p2, p0, Lw0/j7;->a:I

    iput-object p1, p0, Lw0/j7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lw0/j7;->a:I

    iget-object v1, p0, Lw0/j7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->a(Lcom/ex/auto/HomeFloatingWidgetsService;)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->s()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
