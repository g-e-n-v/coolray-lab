.class public Lecarx/xsf/mediacenter/session/MediaItem$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/session/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final item:Lecarx/xsf/mediacenter/session/MediaItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-direct {v0}, Lecarx/xsf/mediacenter/session/MediaItem;-><init>()V

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    return-void
.end method


# virtual methods
.method public album(Ljava/lang/String;)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->a(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V

    return-object p0
.end method

.method public artist(Ljava/lang/String;)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->b(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V

    return-object p0
.end method

.method public artwork(Landroid/net/Uri;)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->c(Lecarx/xsf/mediacenter/session/MediaItem;Landroid/net/Uri;)V

    return-object p0
.end method

.method public artworkPath(Landroid/net/Uri;)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->d(Lecarx/xsf/mediacenter/session/MediaItem;Landroid/net/Uri;)V

    return-object p0
.end method

.method public build()Lecarx/xsf/mediacenter/session/MediaItem;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    return-object v0
.end method

.method public dateTime(J)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1, p2}, Lecarx/xsf/mediacenter/session/MediaItem;->e(Lecarx/xsf/mediacenter/session/MediaItem;J)V

    return-object p0
.end method

.method public downloadSupported(Z)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->f(Lecarx/xsf/mediacenter/session/MediaItem;Z)V

    return-object p0
.end method

.method public downloaded(Z)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->g(Lecarx/xsf/mediacenter/session/MediaItem;Z)V

    return-object p0
.end method

.method public duration(J)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1, p2}, Lecarx/xsf/mediacenter/session/MediaItem;->h(Lecarx/xsf/mediacenter/session/MediaItem;J)V

    return-object p0
.end method

.method public favoriteSupported(Z)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->i(Lecarx/xsf/mediacenter/session/MediaItem;Z)V

    return-object p0
.end method

.method public favorited(Z)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->j(Lecarx/xsf/mediacenter/session/MediaItem;Z)V

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->k(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V

    return-object p0
.end method

.method public loopModeSupported(Z)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->l(Lecarx/xsf/mediacenter/session/MediaItem;Z)V

    return-object p0
.end method

.method public lyricContent(Ljava/lang/String;)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->m(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V

    return-object p0
.end method

.method public lyricUri(Landroid/net/Uri;)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->n(Lecarx/xsf/mediacenter/session/MediaItem;Landroid/net/Uri;)V

    return-object p0
.end method

.method public mediaType(I)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->o(Lecarx/xsf/mediacenter/session/MediaItem;I)V

    return-object p0
.end method

.method public radioBand(Ljava/lang/String;)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->p(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V

    return-object p0
.end method

.method public radioFrequency(Ljava/lang/String;)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->q(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V

    return-object p0
.end method

.method public radioName(Ljava/lang/String;)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->r(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V

    return-object p0
.end method

.method public sourceType(I)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->s(Lecarx/xsf/mediacenter/session/MediaItem;I)V

    return-object p0
.end method

.method public subtitle(Ljava/lang/String;)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->t(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->u(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V

    return-object p0
.end method

.method public vipNeeded(Z)Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem$Builder;->item:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/MediaItem;->v(Lecarx/xsf/mediacenter/session/MediaItem;Z)V

    return-object p0
.end method
