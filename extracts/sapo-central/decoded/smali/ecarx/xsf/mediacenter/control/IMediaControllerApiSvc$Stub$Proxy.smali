.class Lecarx/xsf/mediacenter/control/IMediaControllerApiSvc$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lecarx/xsf/mediacenter/control/IMediaControllerApiSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/control/IMediaControllerApiSvc$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lecarx/xsf/mediacenter/control/IMediaControllerApiSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lecarx/xsf/mediacenter/control/IMediaControllerApiSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "ecarx.xsf.mediacenter.control.IMediaControllerApiSvc"

    return-object v0
.end method
