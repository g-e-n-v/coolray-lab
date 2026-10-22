.class public final Lcom/ex/auto/FanSpeedWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ex/auto/FanSpeedWidgetProvider;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0900bd
        0x7f0900be
        0x7f0900bf
        0x7f0900c0
        0x7f0900c1
        0x7f0900c2
        0x7f0900c3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnabled(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/ex/auto/HomeWidgetsPollService;->E:I

    invoke-static {p1}, Lw0/t1;->y(Landroid/content/Context;)V

    return-void
.end method

.method public final onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetManager"

    invoke-static {p2, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetIds"

    invoke-static {p3, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0x7f0c007b

    invoke-static {p1, v0, v1}, Lw0/t1;->h(Landroid/content/Context;Ljava/lang/Integer;I)Landroid/widget/RemoteViews;

    move-result-object v0

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p3, v2

    invoke-virtual {p2, v3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget p2, Lcom/ex/auto/HomeWidgetsPollService;->E:I

    invoke-static {p1}, Lw0/t1;->y(Landroid/content/Context;)V

    return-void
.end method
