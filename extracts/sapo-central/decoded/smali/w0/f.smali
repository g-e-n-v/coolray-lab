.class public final synthetic Lw0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/AcProgramEditActivity;

.field public final synthetic c:Landroid/widget/NumberPicker;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/AcProgramEditActivity;Landroid/widget/NumberPicker;I)V
    .locals 0

    iput p3, p0, Lw0/f;->a:I

    iput-object p1, p0, Lw0/f;->b:Lcom/ex/auto/AcProgramEditActivity;

    iput-object p2, p0, Lw0/f;->c:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget p1, p0, Lw0/f;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lw0/f;->b:Lcom/ex/auto/AcProgramEditActivity;

    iget-object p2, p1, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

    new-instance v0, Lw0/l;

    iget-object v1, p0, Lw0/f;->c:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    int-to-double v1, v1

    const-string v3, "fan"

    invoke-direct {v0, v3, v1, v2}, Lw0/l;-><init>(Ljava/lang/String;D)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/ex/auto/AcProgramEditActivity;->t()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lw0/f;->b:Lcom/ex/auto/AcProgramEditActivity;

    iget-object p2, p1, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

    new-instance v0, Lw0/l;

    iget-object v1, p0, Lw0/f;->c:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    int-to-double v1, v1

    const-string v3, "temp"

    invoke-direct {v0, v3, v1, v2}, Lw0/l;-><init>(Ljava/lang/String;D)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/ex/auto/AcProgramEditActivity;->t()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
