.class public final synthetic Lw0/zg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/TimerFloaterService;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/TimerFloaterService;JI)V
    .locals 0

    iput p4, p0, Lw0/zg;->a:I

    iput-object p1, p0, Lw0/zg;->b:Lcom/ex/auto/TimerFloaterService;

    iput-wide p2, p0, Lw0/zg;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lw0/zg;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/zg;->b:Lcom/ex/auto/TimerFloaterService;

    iget-wide v1, p0, Lw0/zg;->c:J

    sget-boolean v3, Lcom/ex/auto/TimerFloaterService;->o:Z

    iget-boolean v3, v0, Lcom/ex/auto/TimerFloaterService;->k:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Lcom/ex/auto/TimerFloaterService;->l:J

    add-long v5, v3, v1

    const-wide/16 v7, 0x0

    const-wide/32 v9, 0x5265818

    invoke-static/range {v5 .. v10}, Lk1/a;->l(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ex/auto/TimerFloaterService;->l:J

    iput-wide v1, v0, Lcom/ex/auto/TimerFloaterService;->i:J

    iget-object v0, v0, Lcom/ex/auto/TimerFloaterService;->n:Lq0/b;

    invoke-virtual {v0}, Lq0/b;->j()V

    :goto_0
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lw0/zg;->b:Lcom/ex/auto/TimerFloaterService;

    iget-wide v1, p0, Lw0/zg;->c:J

    sget-boolean v3, Lcom/ex/auto/TimerFloaterService;->o:Z

    neg-long v1, v1

    iget-boolean v3, v0, Lcom/ex/auto/TimerFloaterService;->k:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v3, v0, Lcom/ex/auto/TimerFloaterService;->l:J

    add-long v5, v3, v1

    const-wide/16 v7, 0x0

    const-wide/32 v9, 0x5265818

    invoke-static/range {v5 .. v10}, Lk1/a;->l(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ex/auto/TimerFloaterService;->l:J

    iput-wide v1, v0, Lcom/ex/auto/TimerFloaterService;->i:J

    iget-object v0, v0, Lcom/ex/auto/TimerFloaterService;->n:Lq0/b;

    invoke-virtual {v0}, Lq0/b;->j()V

    :goto_1
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
