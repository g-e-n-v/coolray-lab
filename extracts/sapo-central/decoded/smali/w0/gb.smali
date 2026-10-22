.class public final synthetic Lw0/gb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/gb;->a:Lcom/ex/auto/MainActivity;

    iput-boolean p2, p0, Lw0/gb;->b:Z

    iput-boolean p3, p0, Lw0/gb;->c:Z

    iput-boolean p4, p0, Lw0/gb;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    const/4 v6, 0x0

    sget-object v1, Lw0/d8;->a:Lw0/d8;

    iget-object v2, p0, Lw0/gb;->a:Lcom/ex/auto/MainActivity;

    iget-boolean v3, p0, Lw0/gb;->b:Z

    iget-boolean v4, p0, Lw0/gb;->c:Z

    iget-boolean v5, p0, Lw0/gb;->d:Z

    invoke-virtual/range {v1 .. v6}, Lw0/d8;->j(Landroid/content/Context;ZZZLw0/e9;)Z

    move-result v0

    iget-object v1, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/f9;

    const/16 v4, 0xf

    invoke-direct {v3, v2, v0, v4}, Lw0/f9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
