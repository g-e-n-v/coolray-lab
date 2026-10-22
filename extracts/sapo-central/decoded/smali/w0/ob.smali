.class public final synthetic Lw0/ob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;ZZZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/ob;->a:Lcom/ex/auto/MainActivity;

    iput-boolean p2, p0, Lw0/ob;->b:Z

    iput-boolean p3, p0, Lw0/ob;->c:Z

    iput-boolean p4, p0, Lw0/ob;->d:Z

    iput-object p5, p0, Lw0/ob;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lw0/ob;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v1, Lw0/d8;->a:Lw0/d8;

    new-instance v6, Lw0/e9;

    const/4 v0, 0x0

    iget-object v2, p0, Lw0/ob;->a:Lcom/ex/auto/MainActivity;

    invoke-direct {v6, v2, v0}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    iget-boolean v3, p0, Lw0/ob;->b:Z

    iget-boolean v4, p0, Lw0/ob;->c:Z

    iget-boolean v5, p0, Lw0/ob;->d:Z

    invoke-virtual/range {v1 .. v6}, Lw0/d8;->j(Landroid/content/Context;ZZZLw0/e9;)Z

    move-result v0

    iget-object v1, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/x8;

    const/16 v4, 0x13

    invoke-direct {v3, v2, v4}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v3, Lw0/f9;

    iget-object v4, p0, Lw0/ob;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lw0/ob;->f:Z

    invoke-direct {v3, v2, v4, v0, v5}, Lw0/f9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
