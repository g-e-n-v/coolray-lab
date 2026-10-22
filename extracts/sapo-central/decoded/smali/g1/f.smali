.class public final Lg1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroid/view/View;

.field public b:Z

.field public c:I

.field public final synthetic d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/f;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-object p2, p0, Lg1/f;->a:Landroid/view/View;

    iput p3, p0, Lg1/f;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg1/f;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:Li0/e;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Li0/e;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lc0/p0;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lg1/f;->a:Landroid/view/View;

    invoke-static {v0, p0}, Lc0/a0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lg1/f;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z(I)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg1/f;->b:Z

    return-void
.end method
