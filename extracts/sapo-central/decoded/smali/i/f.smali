.class public final Li/f;
.super Lh/x;
.source "SourceFile"


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li/j;


# direct methods
.method public constructor <init>(Li/j;Landroid/content/Context;Lh/f0;Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Li/f;->l:I

    .line 8
    iput-object p1, p0, Li/f;->m:Li/j;

    const v6, 0x7f030020

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 9
    invoke-direct/range {v1 .. v7}, Lh/x;-><init>(Landroid/content/Context;Lh/m;Landroid/view/View;ZII)V

    .line 10
    iget-object p2, v3, Lh/f0;->A:Lh/o;

    .line 11
    iget p2, p2, Lh/o;->x:I

    const/16 p3, 0x20

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p1, Li/j;->i:Li/i;

    if-nez p2, :cond_1

    .line 13
    iget-object p2, p1, Li/j;->h:Lh/b0;

    .line 14
    check-cast p2, Landroid/view/View;

    .line 15
    :cond_1
    iput-object p2, v1, Lh/x;->e:Landroid/view/View;

    .line 16
    :goto_0
    iget-object p1, p1, Li/j;->w:Landroidx/emoji2/text/m;

    .line 17
    iput-object p1, v1, Lh/x;->h:Lh/y;

    .line 18
    iget-object p2, v1, Lh/x;->i:Lh/u;

    if-eqz p2, :cond_2

    .line 19
    invoke-interface {p2, p1}, Lh/z;->c(Lh/y;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Li/j;Landroid/content/Context;Lh/m;Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x1

    iput v0, p0, Li/f;->l:I

    .line 1
    iput-object p1, p0, Li/f;->m:Li/j;

    const v6, 0x7f030020

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v1 .. v7}, Lh/x;-><init>(Landroid/content/Context;Lh/m;Landroid/view/View;ZII)V

    const p2, 0x800005

    .line 3
    iput p2, v1, Lh/x;->f:I

    .line 4
    iget-object p1, p1, Li/j;->w:Landroidx/emoji2/text/m;

    .line 5
    iput-object p1, v1, Lh/x;->h:Lh/y;

    .line 6
    iget-object p2, v1, Lh/x;->i:Lh/u;

    if-eqz p2, :cond_0

    .line 7
    invoke-interface {p2, p1}, Lh/z;->c(Lh/y;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget v0, p0, Li/f;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Li/f;->m:Li/j;

    iget-object v1, v0, Li/j;->c:Lh/m;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lh/m;->c(Z)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Li/j;->s:Li/f;

    invoke-super {p0}, Lh/x;->c()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Li/f;->m:Li/j;

    iput-object v0, v1, Li/j;->t:Li/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Lh/x;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
