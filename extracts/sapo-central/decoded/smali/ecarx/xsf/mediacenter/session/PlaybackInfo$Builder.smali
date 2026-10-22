.class public Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/session/PlaybackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final info:Lecarx/xsf/mediacenter/session/PlaybackInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lecarx/xsf/mediacenter/session/PlaybackInfo;

    invoke-direct {v0}, Lecarx/xsf/mediacenter/session/PlaybackInfo;-><init>()V

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;->info:Lecarx/xsf/mediacenter/session/PlaybackInfo;

    return-void
.end method


# virtual methods
.method public appId(J)Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;->info:Lecarx/xsf/mediacenter/session/PlaybackInfo;

    invoke-static {v0, p1, p2}, Lecarx/xsf/mediacenter/session/PlaybackInfo;->a(Lecarx/xsf/mediacenter/session/PlaybackInfo;J)V

    return-object p0
.end method

.method public appName(Ljava/lang/String;)Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;->info:Lecarx/xsf/mediacenter/session/PlaybackInfo;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackInfo;->b(Lecarx/xsf/mediacenter/session/PlaybackInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lecarx/xsf/mediacenter/session/PlaybackInfo;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;->info:Lecarx/xsf/mediacenter/session/PlaybackInfo;

    return-object v0
.end method

.method public iconUri(Landroid/net/Uri;)Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;->info:Lecarx/xsf/mediacenter/session/PlaybackInfo;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackInfo;->c(Lecarx/xsf/mediacenter/session/PlaybackInfo;Landroid/net/Uri;)V

    return-object p0
.end method

.method public initialProgress(J)Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;->info:Lecarx/xsf/mediacenter/session/PlaybackInfo;

    invoke-static {v0, p1, p2}, Lecarx/xsf/mediacenter/session/PlaybackInfo;->d(Lecarx/xsf/mediacenter/session/PlaybackInfo;J)V

    return-object p0
.end method

.method public launchIntent(Landroid/app/PendingIntent;)Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;->info:Lecarx/xsf/mediacenter/session/PlaybackInfo;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackInfo;->e(Lecarx/xsf/mediacenter/session/PlaybackInfo;Landroid/app/PendingIntent;)V

    return-object p0
.end method

.method public mediaItem(Lecarx/xsf/mediacenter/session/MediaItem;)Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;->info:Lecarx/xsf/mediacenter/session/PlaybackInfo;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackInfo;->f(Lecarx/xsf/mediacenter/session/PlaybackInfo;Lecarx/xsf/mediacenter/session/MediaItem;)V

    return-object p0
.end method

.method public pkgName(Ljava/lang/String;)Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;->info:Lecarx/xsf/mediacenter/session/PlaybackInfo;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackInfo;->g(Lecarx/xsf/mediacenter/session/PlaybackInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public playerIntent(Landroid/app/PendingIntent;)Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;->info:Lecarx/xsf/mediacenter/session/PlaybackInfo;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackInfo;->h(Lecarx/xsf/mediacenter/session/PlaybackInfo;Landroid/app/PendingIntent;)V

    return-object p0
.end method

.method public zoneId(I)Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;->info:Lecarx/xsf/mediacenter/session/PlaybackInfo;

    invoke-static {v0, p1}, Lecarx/xsf/mediacenter/session/PlaybackInfo;->i(Lecarx/xsf/mediacenter/session/PlaybackInfo;I)V

    return-object p0
.end method
