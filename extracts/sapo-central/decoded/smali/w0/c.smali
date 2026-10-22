.class public final Lw0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;I)V
    .locals 0

    iput p2, p0, Lw0/c;->a:I

    iput-object p1, p0, Lw0/c;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method private final b(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method private final c(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget p1, p0, Lw0/c;->a:I

    packed-switch p1, :pswitch_data_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lw0/c;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lw0/c;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :pswitch_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lw0/c;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget p1, p0, Lw0/c;->a:I

    return-void
.end method
