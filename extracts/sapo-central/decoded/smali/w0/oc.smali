.class public final Lw0/oc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;I)V
    .locals 0

    iput p2, p0, Lw0/oc;->a:I

    iput-object p1, p0, Lw0/oc;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method private final b(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method private final c(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget p1, p0, Lw0/oc;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lw0/oc;->b:Lcom/ex/auto/MainActivity;

    iput p3, p1, Lcom/ex/auto/MainActivity;->e0:I

    return-void

    :pswitch_0
    iget-object p1, p0, Lw0/oc;->b:Lcom/ex/auto/MainActivity;

    iput p3, p1, Lcom/ex/auto/MainActivity;->c0:I

    return-void

    :pswitch_1
    iget-object p1, p0, Lw0/oc;->b:Lcom/ex/auto/MainActivity;

    iput p3, p1, Lcom/ex/auto/MainActivity;->g0:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    iget p1, p0, Lw0/oc;->a:I

    return-void
.end method
