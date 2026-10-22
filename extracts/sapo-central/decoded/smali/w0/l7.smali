.class public final synthetic Lw0/l7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/HomeFloatingWidgetsService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V
    .locals 0

    iput p2, p0, Lw0/l7;->a:I

    iput-object p1, p0, Lw0/l7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lw0/l7;->a:I

    iget-object v0, p0, Lw0/l7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->B(I)V

    return-void

    :pswitch_0
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->B(I)V

    return-void

    :pswitch_1
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->G(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
