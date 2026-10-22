.class public final Landroidx/fragment/app/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le/j;


# direct methods
.method public synthetic constructor <init>(Le/j;I)V
    .locals 0

    iput p2, p0, Landroidx/fragment/app/t;->a:I

    iput-object p1, p0, Landroidx/fragment/app/t;->b:Le/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget v0, p0, Landroidx/fragment/app/t;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/fragment/app/t;->b:Le/j;

    invoke-virtual {v0}, Le/j;->i()Le/o;

    move-result-object v1

    invoke-virtual {v1}, Le/o;->e()V

    iget-object v0, v0, Landroidx/activity/h;->e:Lr0/d;

    iget-object v0, v0, Lr0/d;->b:Li/r;

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2}, Li/r;->c(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {v1}, Le/o;->i()V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/t;->b:Le/j;

    iget-object v1, v0, Le/j;->n:Landroidx/emoji2/text/m;

    iget-object v2, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/u;

    iget-object v3, v2, Landroidx/fragment/app/u;->d:Landroidx/fragment/app/h0;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v2, v4}, Landroidx/fragment/app/h0;->b(Landroidx/fragment/app/u;La1/b;Landroidx/fragment/app/r;)V

    iget-object v0, v0, Landroidx/activity/h;->e:Lr0/d;

    iget-object v0, v0, Lr0/d;->b:Li/r;

    const-string v2, "android:support:fragments"

    invoke-virtual {v0, v2}, Li/r;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/u;

    iget-object v1, v1, Landroidx/fragment/app/u;->d:Landroidx/fragment/app/h0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/h0;->N(Landroid/os/Parcelable;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
