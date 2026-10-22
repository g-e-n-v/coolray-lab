.class public Lecarx/xsf/mediacenter/session/PlaybackInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/session/PlaybackInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lecarx/xsf/mediacenter/session/PlaybackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appId:J

.field private appName:Ljava/lang/String;

.field private iconUri:Landroid/net/Uri;

.field private initialProgress:J

.field private launchIntent:Landroid/app/PendingIntent;

.field private mediaItem:Lecarx/xsf/mediacenter/session/MediaItem;

.field private pkgName:Ljava/lang/String;

.field private playerIntent:Landroid/app/PendingIntent;

.field private zoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lecarx/xsf/mediacenter/session/PlaybackInfo$1;

    invoke-direct {v0}, Lecarx/xsf/mediacenter/session/PlaybackInfo$1;-><init>()V

    sput-object v0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->pkgName:Ljava/lang/String;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->iconUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->appName:Ljava/lang/String;

    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->launchIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->playerIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->initialProgress:J

    const-class v0, Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lecarx/xsf/mediacenter/session/MediaItem;

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->mediaItem:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->zoneId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->appId:J

    return-void
.end method

.method public static bridge synthetic a(Lecarx/xsf/mediacenter/session/PlaybackInfo;J)V
    .locals 0

    iput-wide p1, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->appId:J

    return-void
.end method

.method public static bridge synthetic b(Lecarx/xsf/mediacenter/session/PlaybackInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic c(Lecarx/xsf/mediacenter/session/PlaybackInfo;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->iconUri:Landroid/net/Uri;

    return-void
.end method

.method public static bridge synthetic d(Lecarx/xsf/mediacenter/session/PlaybackInfo;J)V
    .locals 0

    iput-wide p1, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->initialProgress:J

    return-void
.end method

.method public static bridge synthetic e(Lecarx/xsf/mediacenter/session/PlaybackInfo;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->launchIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static bridge synthetic f(Lecarx/xsf/mediacenter/session/PlaybackInfo;Lecarx/xsf/mediacenter/session/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->mediaItem:Lecarx/xsf/mediacenter/session/MediaItem;

    return-void
.end method

.method public static bridge synthetic g(Lecarx/xsf/mediacenter/session/PlaybackInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic h(Lecarx/xsf/mediacenter/session/PlaybackInfo;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->playerIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static bridge synthetic i(Lecarx/xsf/mediacenter/session/PlaybackInfo;I)V
    .locals 0

    iput p1, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->zoneId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->iconUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->launchIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->playerIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->initialProgress:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->mediaItem:Lecarx/xsf/mediacenter/session/MediaItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->zoneId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lecarx/xsf/mediacenter/session/PlaybackInfo;->appId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
