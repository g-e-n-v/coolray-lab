.class public final synthetic Lz0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/geely/driveregenfloater/DriveRegenFloaterService;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;II)V
    .locals 0

    iput p3, p0, Lz0/c;->a:I

    iput-object p1, p0, Lz0/c;->b:Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iput p2, p0, Lz0/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lz0/c;->a:I

    iget v1, p0, Lz0/c;->c:I

    iget-object v2, p0, Lz0/c;->b:Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    const-string v0, "drive"

    invoke-virtual {v2, v1, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->a(ILjava/lang/String;)V

    return-void

    :pswitch_0
    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    const-string v0, "regen"

    invoke-virtual {v2, v1, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b(ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
