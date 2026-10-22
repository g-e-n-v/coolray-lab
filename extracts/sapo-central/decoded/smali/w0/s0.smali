.class public final Lw0/s0;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/ex/auto/PhoneSyncService;


# direct methods
.method public constructor <init>(Lcom/ex/auto/PhoneSyncService;)V
    .locals 0

    iput-object p1, p0, Lw0/s0;->a:Lcom/ex/auto/PhoneSyncService;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartFailure(I)V
    .locals 2

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "farol falhou ao subir: c\u00f3digo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "BleCarro"

    invoke-static {v1, p1, v0}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Lw0/u0;->a:Lw0/u0;

    const/4 p1, 0x0

    sput-object p1, Lw0/u0;->g:Lw0/s0;

    return-void
.end method

.method public final onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 3

    sget-object p1, Lw0/ae;->a:Lw0/ae;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "farol no ar (servi\u00e7o "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lw0/u0;->a:Lw0/u0;

    sget-object v0, Lw0/u0;->b:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", token "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lw0/s0;->a:Lcom/ex/auto/PhoneSyncService;

    invoke-static {v0}, Lw0/u0;->f(Landroid/content/Context;)[B

    move-result-object v0

    invoke-static {v0}, Lw0/m;->B([B)[B

    move-result-object v0

    new-instance v1, Lw0/o;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lw0/o;-><init>(I)V

    invoke-static {v0, v1}, Ly1/f;->b0([BLh2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "BleCarro"

    invoke-static {v1, p1, v0}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
