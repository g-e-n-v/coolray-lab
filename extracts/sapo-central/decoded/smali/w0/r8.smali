.class public final synthetic Lw0/r8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Service;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Service;I)V
    .locals 0

    iput p2, p0, Lw0/r8;->a:I

    iput-object p1, p0, Lw0/r8;->b:Landroid/app/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .locals 1

    iget p1, p0, Lw0/r8;->a:I

    iget-object v0, p0, Lw0/r8;->b:Landroid/app/Service;

    packed-switch p1, :pswitch_data_0

    check-cast v0, Lcom/ex/auto/MediaBarFloaterService;

    sget-object p1, Lcom/ex/auto/MediaBarFloaterService;->v:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/ex/auto/MediaBarFloaterService;->d()V

    return-void

    :pswitch_0
    check-cast v0, Lcom/ex/auto/LyricsFloaterService;

    sget-object p1, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->h()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
