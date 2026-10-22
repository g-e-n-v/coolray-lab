.class public Lecarx/xsf/mediacenter/session/PlaybackState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/session/PlaybackState$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lecarx/xsf/mediacenter/session/PlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_BUFFERING:I = 0x3

.field public static final STATE_ERROR:I = 0x7

.field public static final STATE_PAUSED:I = 0x0

.field public static final STATE_PLAYING:I = 0x1


# instance fields
.field private appId:J

.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private errorPendingIntent:Landroid/app/PendingIntent;

.field private itemId:Ljava/lang/String;

.field private loopMode:I

.field private pkgName:Ljava/lang/String;

.field private queueId:Ljava/lang/String;

.field private radioMode:I

.field private sourceType:I

.field private state:I

.field private zoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lecarx/xsf/mediacenter/session/PlaybackState$1;

    invoke-direct {v0}, Lecarx/xsf/mediacenter/session/PlaybackState$1;-><init>()V

    sput-object v0, Lecarx/xsf/mediacenter/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->loopMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->radioMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->sourceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->zoneId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->appId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->queueId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->itemId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->errorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->errorMessage:Ljava/lang/String;

    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->errorPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static bridge synthetic a(Lecarx/xsf/mediacenter/session/PlaybackState;J)V
    .locals 0

    iput-wide p1, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->appId:J

    return-void
.end method

.method public static bridge synthetic b(Lecarx/xsf/mediacenter/session/PlaybackState;I)V
    .locals 0

    iput p1, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->errorCode:I

    return-void
.end method

.method public static bridge synthetic c(Lecarx/xsf/mediacenter/session/PlaybackState;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d(Lecarx/xsf/mediacenter/session/PlaybackState;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->errorPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static bridge synthetic e(Lecarx/xsf/mediacenter/session/PlaybackState;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->itemId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic f(Lecarx/xsf/mediacenter/session/PlaybackState;I)V
    .locals 0

    iput p1, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->loopMode:I

    return-void
.end method

.method public static bridge synthetic g(Lecarx/xsf/mediacenter/session/PlaybackState;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic h(Lecarx/xsf/mediacenter/session/PlaybackState;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->queueId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic i(Lecarx/xsf/mediacenter/session/PlaybackState;I)V
    .locals 0

    iput p1, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->radioMode:I

    return-void
.end method

.method public static bridge synthetic j(Lecarx/xsf/mediacenter/session/PlaybackState;I)V
    .locals 0

    iput p1, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->sourceType:I

    return-void
.end method

.method public static bridge synthetic k(Lecarx/xsf/mediacenter/session/PlaybackState;I)V
    .locals 0

    iput p1, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->state:I

    return-void
.end method

.method public static bridge synthetic l(Lecarx/xsf/mediacenter/session/PlaybackState;I)V
    .locals 0

    iput p1, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->zoneId:I

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

    iget v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->loopMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->radioMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->sourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->zoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->appId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->queueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->itemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lecarx/xsf/mediacenter/session/PlaybackState;->errorPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
