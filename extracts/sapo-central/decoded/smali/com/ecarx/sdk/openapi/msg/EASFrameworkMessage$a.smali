.class public Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
    .locals 1

    .line 1
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    invoke-direct {v0, p1}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage$a;->createFromParcel(Landroid/os/Parcel;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage$a;->newArray(I)[Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    move-result-object p1

    return-object p1
.end method
