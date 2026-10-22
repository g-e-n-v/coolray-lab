.class public final Landroidx/fragment/app/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/s0;

.field public final synthetic c:Landroidx/fragment/app/j;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/j;Landroidx/fragment/app/s0;I)V
    .locals 0

    iput p3, p0, Landroidx/fragment/app/r0;->a:I

    iput-object p1, p0, Landroidx/fragment/app/r0;->c:Landroidx/fragment/app/j;

    iput-object p2, p0, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/r0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/fragment/app/r0;->c:Landroidx/fragment/app/j;

    iget-object v1, v0, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s0;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/r0;->c:Landroidx/fragment/app/j;

    iget-object v0, v0, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v1, Landroidx/fragment/app/s0;->a:I

    iget-object v1, v1, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/r;

    iget-object v1, v1, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/activity/result/b;->a(Landroid/view/View;I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
