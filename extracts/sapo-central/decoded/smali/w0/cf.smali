.class public final synthetic Lw0/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/QuickAccessFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/cf;->a:Lcom/ex/auto/QuickAccessFloaterService;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    sget p1, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-wide/16 v0, 0x320

    iget-object p1, p0, Lw0/cf;->a:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {p1, v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    invoke-static {p1}, Lk1/a;->M(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method
