.class public final Lcom/ex/auto/ModoOficinaTriggerService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static volatile f:Lcom/ex/auto/ModoOficinaTriggerService;


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/view/View;

.field public c:I

.field public d:J

.field public volatile e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 8

    const-string v1, "ModoOficinaTrigger"

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v2}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ex/auto/ModoOficinaTriggerService;->a:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x108

    const/4 v7, -0x3

    const/16 v3, 0x2c

    const/16 v4, 0x2c

    const/16 v5, 0x7f6

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v3, 0x800053

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v4, La1/o;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5}, La1/o;-><init>(Landroid/content/ContextWrapper;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :try_start_0
    iget-object v4, p0, Lcom/ex/auto/ModoOficinaTriggerService;->a:Landroid/view/WindowManager;

    if-eqz v4, :cond_0

    invoke-interface {v4, v0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/ex/auto/ModoOficinaTriggerService;->b:Landroid/view/View;

    sput-object p0, Lcom/ex/auto/ModoOficinaTriggerService;->f:Lcom/ex/auto/ModoOficinaTriggerService;

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "alvo secreto ativo (canto inferior esquerdo, 44px)"

    invoke-static {v1, v0, v3}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "windowManager"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sget-object v2, Lw0/ae;->a:Lw0/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "n\u00e3o consegui desenhar o alvo secreto: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/ModoOficinaTriggerService;->b:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/ex/auto/ModoOficinaTriggerService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "windowManager"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/ex/auto/ModoOficinaTriggerService;->b:Landroid/view/View;

    sput-object v1, Lcom/ex/auto/ModoOficinaTriggerService;->f:Lcom/ex/auto/ModoOficinaTriggerService;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
