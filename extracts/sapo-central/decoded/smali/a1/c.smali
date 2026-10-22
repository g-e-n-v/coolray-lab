.class public final synthetic La1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JLjava/lang/Runnable;I)V
    .locals 0

    iput p5, p0, La1/c;->a:I

    iput-object p1, p0, La1/c;->d:Ljava/lang/Object;

    iput-wide p2, p0, La1/c;->b:J

    iput-object p4, p0, La1/c;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, La1/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, La1/c;->d:Ljava/lang/Object;

    check-cast v0, La1/d;

    iget-wide v1, p0, La1/c;->b:J

    iget-object v3, p0, La1/c;->c:Ljava/lang/Runnable;

    iget-boolean v4, v0, La1/d;->b:Z

    if-nez v4, :cond_0

    iget-object v0, v0, La1/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, La1/c;->d:Ljava/lang/Object;

    check-cast v0, La1/d;

    iget-wide v1, p0, La1/c;->b:J

    iget-object v3, p0, La1/c;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, La1/d;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
