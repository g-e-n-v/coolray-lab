.class public final Lu1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# instance fields
.field public final synthetic a:Lu1/k;


# direct methods
.method public constructor <init>(Lu1/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/j;->a:Lu1/k;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lu1/j;->a:Lu1/k;

    iput-boolean v0, v1, Lu1/k;->i:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lu1/k;->k:J

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lu1/k;->g(Z)V

    return-void
.end method
