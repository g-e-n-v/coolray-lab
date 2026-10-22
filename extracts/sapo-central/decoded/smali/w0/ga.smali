.class public final synthetic Lw0/ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/ga;->a:Lcom/ex/auto/MainActivity;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    sget p2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iget-object p2, p0, Lw0/ga;->a:Lcom/ex/auto/MainActivity;

    iget-object p3, p2, Lcom/ex/auto/MainActivity;->W0:Landroid/media/MediaPlayer;

    if-ne p3, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p2, Lcom/ex/auto/MainActivity;->W0:Landroid/media/MediaPlayer;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
