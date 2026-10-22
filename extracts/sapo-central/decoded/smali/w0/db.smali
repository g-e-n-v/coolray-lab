.class public final synthetic Lw0/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Lw0/zb;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw0/zb;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/db;->a:Lcom/ex/auto/MainActivity;

    iput-object p5, p0, Lw0/db;->b:Lw0/zb;

    iput-object p2, p0, Lw0/db;->c:Ljava/lang/String;

    iput-object p3, p0, Lw0/db;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lw0/db;->e:Z

    iput-object p4, p0, Lw0/db;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    const p1, 0x7f0f016a

    iget-object v1, p0, Lw0/db;->a:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/ex/auto/MainActivity;->S1(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lw0/s9;

    iget-object v2, p0, Lw0/db;->c:Ljava/lang/String;

    iget-object v3, p0, Lw0/db;->d:Ljava/lang/String;

    iget-object v4, p0, Lw0/db;->f:Ljava/lang/String;

    iget-object v5, p0, Lw0/db;->b:Lw0/zb;

    iget-boolean v6, p0, Lw0/db;->e:Z

    invoke-direct/range {v0 .. v6}, Lw0/s9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw0/zb;Z)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
