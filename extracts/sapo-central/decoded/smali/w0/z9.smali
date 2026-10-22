.class public final synthetic Lw0/z9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/ScrollView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ScrollView;I)V
    .locals 0

    iput p2, p0, Lw0/z9;->a:I

    iput-object p1, p0, Lw0/z9;->b:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lw0/z9;->a:I

    iget-object v1, p0, Lw0/z9;->b:Landroid/widget/ScrollView;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    const/16 v0, 0x82

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
