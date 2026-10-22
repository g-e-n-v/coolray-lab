.class public final Lcom/google/android/material/datepicker/q;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field public static final d:I


# instance fields
.field public final a:Lcom/google/android/material/datepicker/p;

.field public b:Landroidx/fragment/app/f;

.field public final c:Lcom/google/android/material/datepicker/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/material/datepicker/x;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/datepicker/q;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/datepicker/p;Lcom/google/android/material/datepicker/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/q;->a:Lcom/google/android/material/datepicker/p;

    iput-object p2, p0, Lcom/google/android/material/datepicker/q;->c:Lcom/google/android/material/datepicker/b;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/q;->a:Lcom/google/android/material/datepicker/p;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/p;->c()I

    move-result v1

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/q;->b()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/p;->c()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, v0, Lcom/google/android/material/datepicker/p;->a:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/x;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/q;->a:Lcom/google/android/material/datepicker/p;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/p;->c()I

    move-result v1

    iget v0, v0, Lcom/google/android/material/datepicker/p;->f:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public final getCount()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/q;->a:Lcom/google/android/material/datepicker/p;

    iget v1, v0, Lcom/google/android/material/datepicker/p;->f:I

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/p;->c()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/q;->a(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/q;->a:Lcom/google/android/material/datepicker/p;

    iget v0, v0, Lcom/google/android/material/datepicker/p;->e:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/q;->b:Landroidx/fragment/app/f;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/fragment/app/f;

    invoke-direct {v1, v0}, Landroidx/fragment/app/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/datepicker/q;->b:Landroidx/fragment/app/f;

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0039

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    :cond_1
    iget-object p2, p0, Lcom/google/android/material/datepicker/q;->a:Lcom/google/android/material/datepicker/p;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/p;->c()I

    move-result p3

    sub-int p3, p1, p3

    const/4 v2, 0x1

    if-ltz p3, :cond_4

    iget v3, p2, Lcom/google/android/material/datepicker/p;->f:I

    if-lt p3, v3, :cond_2

    goto/16 :goto_1

    :cond_2
    add-int/2addr p3, v2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p2, Lcom/google/android/material/datepicker/p;->a:Ljava/util/Calendar;

    invoke-static {v3}, Lcom/google/android/material/datepicker/x;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, p3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget p2, p2, Lcom/google/android/material/datepicker/p;->d:I

    invoke-static {}, Lcom/google/android/material/datepicker/x;->b()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, v4, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {p3}, Lcom/google/android/material/datepicker/x;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p3

    const/4 v3, 0x2

    invoke-virtual {p3, v3}, Ljava/util/Calendar;->get(I)I

    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v7, 0x7

    invoke-virtual {p3, v7}, Ljava/util/Calendar;->getMaximum(I)I

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "LLLL, yyyy"

    invoke-direct {v7, v8, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    if-ne p2, v3, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string p3, "MMMEd"

    invoke-static {p3, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    invoke-static {v4}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string p3, "yMMMEd"

    invoke-static {p3, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    invoke-static {v4}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    const/16 p2, 0x8

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/q;->a(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    iget-object p2, p0, Lcom/google/android/material/datepicker/q;->c:Lcom/google/android/material/datepicker/b;

    iget-object p2, p2, Lcom/google/android/material/datepicker/b;->d:Lcom/google/android/material/datepicker/d;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide p1, p2, Lcom/google/android/material/datepicker/d;->a:J

    cmp-long p1, v3, p1

    if-gez p1, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/q;->b:Landroidx/fragment/app/f;

    iget-object p1, p1, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/datepicker/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ls1/g;

    invoke-direct {p2}, Ls1/g;-><init>()V

    new-instance p3, Ls1/g;

    invoke-direct {p3}, Ls1/g;-><init>()V

    iget-object v1, p1, Lcom/google/android/material/datepicker/c;->f:Ljava/lang/Object;

    check-cast v1, Ls1/k;

    invoke-virtual {p2, v1}, Ls1/g;->setShapeAppearanceModel(Ls1/k;)V

    invoke-virtual {p3, v1}, Ls1/g;->setShapeAppearanceModel(Ls1/k;)V

    iget-object v1, p1, Lcom/google/android/material/datepicker/c;->d:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/ColorStateList;

    invoke-virtual {p2, v1}, Ls1/g;->i(Landroid/content/res/ColorStateList;)V

    iget v1, p1, Lcom/google/android/material/datepicker/c;->a:I

    int-to-float v1, v1

    iget-object v2, p1, Lcom/google/android/material/datepicker/c;->e:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/ColorStateList;

    iget-object v3, p2, Ls1/g;->a:Ls1/f;

    iput v1, v3, Ls1/f;->j:F

    invoke-virtual {p2}, Ls1/g;->invalidateSelf()V

    iget-object v1, p2, Ls1/g;->a:Ls1/f;

    iget-object v3, v1, Ls1/f;->d:Landroid/content/res/ColorStateList;

    if-eq v3, v2, :cond_6

    iput-object v2, v1, Ls1/f;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {p2, v1}, Ls1/g;->onStateChange([I)Z

    :cond_6
    iget-object v1, p1, Lcom/google/android/material/datepicker/c;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-direct {v3, v1, p2, p3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget-object p1, p1, Lcom/google/android/material/datepicker/c;->b:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    sget-object p1, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v2}, Lc0/a0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
