.class public final Lw0/q7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:Lc0/f;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/ex/auto/HomeFloatingWidgetsService;


# direct methods
.method public constructor <init>(Lc0/f;Landroid/widget/ImageView;Lcom/ex/auto/HomeFloatingWidgetsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/q7;->a:Lc0/f;

    iput-object p2, p0, Lw0/q7;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lw0/q7;->c:Lcom/ex/auto/HomeFloatingWidgetsService;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lw0/q7;->a:Lc0/f;

    invoke-virtual {p1, p2}, Lc0/f;->n(I)V

    iget-object p2, p0, Lw0/q7;->b:Landroid/widget/ImageView;

    iget-object p3, p0, Lw0/q7;->c:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-static {p1, p2, p3}, Lcom/ex/auto/HomeFloatingWidgetsService;->l(Lc0/f;Landroid/widget/ImageView;Lcom/ex/auto/HomeFloatingWidgetsService;)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
