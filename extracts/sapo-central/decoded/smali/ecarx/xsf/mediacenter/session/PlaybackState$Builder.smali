.class public Lecarx/xsf/mediacenter/session/PlaybackState$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/session/PlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final state:Lecarx/xsf/mediacenter/session/PlaybackState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lecarx/xsf/mediacenter/session/PlaybackState;

    invoke-direct {v0}, Lecarx/xsf/mediacenter/session/PlaybackState;-><init>()V

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState$Builder;->state:Lecarx/xsf/mediacenter/session/PlaybackState;

    return-void
.end method


# virtual methods
.method public appId(J)Lecarx/xsf/mediacenter/session/PlaybackState$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState$Builder;->state:Lecarx/xsf/mediacenter/session/PlaybackState;

    invoke-static {v0, p1, p2}, Lecarx/xsf/mediacenter/session/PlaybackState;->a(Lecarx/xsf/mediacenter/session/PlaybackState;J)V

    return-object p0
.end method

.method public build()Lecarx/xsf/mediacenter/session/PlaybackState;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState$Builder;->state:Lecarx/xsf/mediacenter/session/PlaybackState;

    return-object v0
.end method

.method public errorCode(I)Lecarx/xsf/mediacenter/session/PlaybackState$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState$Builder;->state:Lecarx/xsf/mediacenter/session/PlaybackState;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackState;->b(Lecarx/xsf/mediacenter/session/PlaybackState;I)V

    return-object p0
.end method

.method public errorMessage(Ljava/lang/String;)Lecarx/xsf/mediacenter/session/PlaybackState$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState$Builder;->state:Lecarx/xsf/mediacenter/session/PlaybackState;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackState;->c(Lecarx/xsf/mediacenter/session/PlaybackState;Ljava/lang/String;)V

    return-object p0
.end method

.method public errorPendingIntent(Landroid/app/PendingIntent;)Lecarx/xsf/mediacenter/session/PlaybackState$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState$Builder;->state:Lecarx/xsf/mediacenter/session/PlaybackState;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackState;->d(Lecarx/xsf/mediacenter/session/PlaybackState;Landroid/app/PendingIntent;)V

    return-object p0
.end method

.method public itemId(Ljava/lang/String;)Lecarx/xsf/mediacenter/session/PlaybackState$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState$Builder;->state:Lecarx/xsf/mediacenter/session/PlaybackState;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackState;->e(Lecarx/xsf/mediacenter/session/PlaybackState;Ljava/lang/String;)V

    return-object p0
.end method

.method public loopMode(I)Lecarx/xsf/mediacenter/session/PlaybackState$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState$Builder;->state:Lecarx/xsf/mediacenter/session/PlaybackState;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackState;->f(Lecarx/xsf/mediacenter/session/PlaybackState;I)V

    return-object p0
.end method

.method public pkgName(Ljava/lang/String;)Lecarx/xsf/mediacenter/session/PlaybackState$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState$Builder;->state:Lecarx/xsf/mediacenter/session/PlaybackState;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackState;->g(Lecarx/xsf/mediacenter/session/PlaybackState;Ljava/lang/String;)V

    return-object p0
.end method

.method public queueId(Ljava/lang/String;)Lecarx/xsf/mediacenter/session/PlaybackState$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState$Builder;->state:Lecarx/xsf/mediacenter/session/PlaybackState;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackState;->h(Lecarx/xsf/mediacenter/session/PlaybackState;Ljava/lang/String;)V

    return-object p0
.end method

.method public radioMode(I)Lecarx/xsf/mediacenter/session/PlaybackState$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState$Builder;->state:Lecarx/xsf/mediacenter/session/PlaybackState;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackState;->i(Lecarx/xsf/mediacenter/session/PlaybackState;I)V

    return-object p0
.end method

.method public sourceType(I)Lecarx/xsf/mediacenter/session/PlaybackState$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState$Builder;->state:Lecarx/xsf/mediacenter/session/PlaybackState;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackState;->j(Lecarx/xsf/mediacenter/session/PlaybackState;I)V

    return-object p0
.end method

.method public state(I)Lecarx/xsf/mediacenter/session/PlaybackState$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState$Builder;->state:Lecarx/xsf/mediacenter/session/PlaybackState;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackState;->k(Lecarx/xsf/mediacenter/session/PlaybackState;I)V

    return-object p0
.end method

.method public zoneId(I)Lecarx/xsf/mediacenter/session/PlaybackState$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState$Builder;->state:Lecarx/xsf/mediacenter/session/PlaybackState;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackState;->l(Lecarx/xsf/mediacenter/session/PlaybackState;I)V

    return-object p0
.end method
