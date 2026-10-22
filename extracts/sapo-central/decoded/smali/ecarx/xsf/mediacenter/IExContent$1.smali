.class Lecarx/xsf/mediacenter/IExContent$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/IExContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lecarx/xsf/mediacenter/IExContent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lecarx/xsf/mediacenter/IExContent;
    .locals 1

    .line 1
    new-instance v0, Lecarx/xsf/mediacenter/IExContent;

    invoke-direct {v0, p1}, Lecarx/xsf/mediacenter/IExContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lecarx/xsf/mediacenter/IExContent$1;->createFromParcel(Landroid/os/Parcel;)Lecarx/xsf/mediacenter/IExContent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lecarx/xsf/mediacenter/IExContent;
    .locals 0

    .line 1
    new-array p1, p1, [Lecarx/xsf/mediacenter/IExContent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lecarx/xsf/mediacenter/IExContent$1;->newArray(I)[Lecarx/xsf/mediacenter/IExContent;

    move-result-object p1

    return-object p1
.end method
