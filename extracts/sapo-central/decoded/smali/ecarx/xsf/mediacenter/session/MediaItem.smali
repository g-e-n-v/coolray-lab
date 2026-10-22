.class public Lecarx/xsf/mediacenter/session/MediaItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/session/MediaItem$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lecarx/xsf/mediacenter/session/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private artwork:Landroid/net/Uri;

.field private artworkPath:Landroid/net/Uri;

.field private dateTime:J

.field private downloadSupported:Z

.field private downloaded:Z

.field private duration:J

.field private favoriteSupported:Z

.field private favorited:Z

.field private id:Ljava/lang/String;

.field private loopModeSupported:Z

.field private lyricContent:Ljava/lang/String;

.field private lyricUri:Landroid/net/Uri;

.field private mediaType:I

.field private radioBand:Ljava/lang/String;

.field private radioFrequency:Ljava/lang/String;

.field private radioName:Ljava/lang/String;

.field private sourceType:I

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private vipNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lecarx/xsf/mediacenter/session/MediaItem$1;

    invoke-direct {v0}, Lecarx/xsf/mediacenter/session/MediaItem$1;-><init>()V

    sput-object v0, Lecarx/xsf/mediacenter/session/MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->sourceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->subtitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->album:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->artist:Ljava/lang/String;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->artwork:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->lyricUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->lyricContent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->dateTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->duration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->favoriteSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->downloadSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->vipNeeded:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->downloaded:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    iput-boolean v1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->favorited:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->radioFrequency:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->radioName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->radioBand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->artworkPath:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lecarx/xsf/mediacenter/session/MediaItem;->loopModeSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->mediaType:I

    return-void
.end method

.method public static bridge synthetic a(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->album:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic b(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->artist:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic c(Lecarx/xsf/mediacenter/session/MediaItem;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->artwork:Landroid/net/Uri;

    return-void
.end method

.method public static bridge synthetic d(Lecarx/xsf/mediacenter/session/MediaItem;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->artworkPath:Landroid/net/Uri;

    return-void
.end method

.method public static bridge synthetic e(Lecarx/xsf/mediacenter/session/MediaItem;J)V
    .locals 0

    iput-wide p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->dateTime:J

    return-void
.end method

.method public static bridge synthetic f(Lecarx/xsf/mediacenter/session/MediaItem;Z)V
    .locals 0

    iput-boolean p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->downloadSupported:Z

    return-void
.end method

.method public static bridge synthetic g(Lecarx/xsf/mediacenter/session/MediaItem;Z)V
    .locals 0

    iput-boolean p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->downloaded:Z

    return-void
.end method

.method public static bridge synthetic h(Lecarx/xsf/mediacenter/session/MediaItem;J)V
    .locals 0

    iput-wide p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->duration:J

    return-void
.end method

.method public static bridge synthetic i(Lecarx/xsf/mediacenter/session/MediaItem;Z)V
    .locals 0

    iput-boolean p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->favoriteSupported:Z

    return-void
.end method

.method public static bridge synthetic j(Lecarx/xsf/mediacenter/session/MediaItem;Z)V
    .locals 0

    iput-boolean p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->favorited:Z

    return-void
.end method

.method public static bridge synthetic k(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->id:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic l(Lecarx/xsf/mediacenter/session/MediaItem;Z)V
    .locals 0

    iput-boolean p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->loopModeSupported:Z

    return-void
.end method

.method public static bridge synthetic m(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->lyricContent:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic n(Lecarx/xsf/mediacenter/session/MediaItem;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->lyricUri:Landroid/net/Uri;

    return-void
.end method

.method public static bridge synthetic o(Lecarx/xsf/mediacenter/session/MediaItem;I)V
    .locals 0

    iput p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->mediaType:I

    return-void
.end method

.method public static bridge synthetic p(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->radioBand:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic q(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->radioFrequency:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic r(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->radioName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic s(Lecarx/xsf/mediacenter/session/MediaItem;I)V
    .locals 0

    iput p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->sourceType:I

    return-void
.end method

.method public static bridge synthetic t(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic u(Lecarx/xsf/mediacenter/session/MediaItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->title:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic v(Lecarx/xsf/mediacenter/session/MediaItem;Z)V
    .locals 0

    iput-boolean p1, p0, Lecarx/xsf/mediacenter/session/MediaItem;->vipNeeded:Z

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

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->sourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->artwork:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->lyricUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->lyricContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->dateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->favoriteSupported:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->downloadSupported:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->vipNeeded:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->downloaded:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->favorited:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->radioFrequency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->radioName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->radioBand:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/MediaItem;->artworkPath:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lecarx/xsf/mediacenter/session/MediaItem;->loopModeSupported:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lecarx/xsf/mediacenter/session/MediaItem;->mediaType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
