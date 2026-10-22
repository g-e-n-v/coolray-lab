.class public final synthetic Lw0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lh2/a;


# direct methods
.method public synthetic constructor <init>(Lh2/a;I)V
    .locals 0

    iput p2, p0, Lw0/w;->a:I

    iput-object p1, p0, Lw0/w;->b:Lh2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lw0/w;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lw0/w;->b:Lh2/a;

    sget-boolean v0, Lcom/ex/auto/TimerFloaterService;->o:Z

    invoke-interface {p1}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p1, p0, Lw0/w;->b:Lh2/a;

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-interface {p1}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object p1, p0, Lw0/w;->b:Lh2/a;

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-interface {p1}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_2
    iget-object p1, p0, Lw0/w;->b:Lh2/a;

    sget v0, Lcom/ex/auto/MediaBrowserHostActivity;->s:I

    invoke-interface {p1}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_3
    iget-object p1, p0, Lw0/w;->b:Lh2/a;

    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-interface {p1}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_4
    iget-object p1, p0, Lw0/w;->b:Lh2/a;

    sget v0, Lcom/ex/auto/ExSapoCastFloaterService;->j:I

    invoke-interface {p1}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_5
    iget-object p1, p0, Lw0/w;->b:Lh2/a;

    sget v0, Lcom/ex/auto/ExSapoCastActivity;->e:I

    invoke-interface {p1}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_6
    iget-object p1, p0, Lw0/w;->b:Lh2/a;

    sget-object v0, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-interface {p1}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
