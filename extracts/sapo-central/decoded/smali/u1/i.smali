.class public final Lu1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Landroid/widget/AutoCompleteTextView;

.field public final synthetic b:Lu1/k;


# direct methods
.method public constructor <init>(Lu1/k;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/i;->b:Lu1/k;

    iput-object p2, p0, Lu1/i;->a:Landroid/widget/AutoCompleteTextView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v1, p0, Lu1/i;->b:Lu1/k;

    iget-wide v2, v1, Lu1/k;->k:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x12c

    cmp-long p1, p1, v2

    if-lez p1, :cond_1

    :cond_0
    iput-boolean v0, v1, Lu1/k;->i:Z

    :cond_1
    iget-object p1, p0, Lu1/i;->a:Landroid/widget/AutoCompleteTextView;

    invoke-static {v1, p1}, Lu1/k;->e(Lu1/k;Landroid/widget/AutoCompleteTextView;)V

    :cond_2
    return v0
.end method
