.class public final synthetic Lw0/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MediaBarFloaterService;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MediaBarFloaterService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/dd;->a:Lcom/ex/auto/MediaBarFloaterService;

    iput-object p2, p0, Lw0/dd;->b:Ljava/lang/String;

    iput-object p3, p0, Lw0/dd;->c:Ljava/lang/String;

    iput-object p4, p0, Lw0/dd;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lw0/dd;->a:Lcom/ex/auto/MediaBarFloaterService;

    iget-object p1, v2, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    new-instance v0, Lw0/qa;

    iget-object v3, p0, Lw0/dd;->b:Ljava/lang/String;

    iget-object v4, p0, Lw0/dd;->c:Ljava/lang/String;

    iget-object v5, p0, Lw0/dd;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lw0/qa;-><init>(Landroid/graphics/Bitmap;Lcom/ex/auto/MediaBarFloaterService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
