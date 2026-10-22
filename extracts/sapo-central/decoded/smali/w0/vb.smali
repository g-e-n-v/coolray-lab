.class public final synthetic Lw0/vb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/vb;->a:Lcom/ex/auto/MainActivity;

    iput p2, p0, Lw0/vb;->b:I

    iput p3, p0, Lw0/vb;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    iget-object p1, p0, Lw0/vb;->a:Lcom/ex/auto/MainActivity;

    iget v0, p0, Lw0/vb;->b:I

    iget v1, p0, Lw0/vb;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/ex/auto/MainActivity;->o2(II)V

    return-void
.end method
