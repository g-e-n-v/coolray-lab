.class public final Lg0/a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Service;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lg0/a;->a:I

    iput-object p1, p0, Lg0/a;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Li/y2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg0/a;->a:I

    .line 2
    iput-object p1, p0, Lg0/a;->b:Ljava/lang/Object;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    iget v0, p0, Lg0/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onChange(Z)V
    .locals 4

    iget p1, p0, Lg0/a;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg0/a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/QuickAccessFloaterService;

    iget-boolean v0, p1, Lcom/ex/auto/QuickAccessFloaterService;->Q:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/ex/auto/QuickAccessFloaterService;->U:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/ex/auto/QuickAccessFloaterService;->b0()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lg0/a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/BlackoutFloaterService;

    iget-boolean v0, p1, Lcom/ex/auto/BlackoutFloaterService;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "BlackoutFloater"

    const-string v1, "Volume (Settings) alterado \u2014 restaurando backlight"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ex/auto/BlackoutFloaterService;->d()V

    :cond_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lg0/a;->b:Ljava/lang/Object;

    check-cast p1, Li/y2;

    iget-boolean v0, p1, Lg0/c;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lg0/c;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lg0/c;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p1, Lg0/c;->a:Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
