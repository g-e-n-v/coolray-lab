.class public final synthetic Lcom/ecarx/eas/sdk/mediacenter/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

.field public final b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/a;->a:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    iput p2, p0, Lcom/ecarx/eas/sdk/mediacenter/a;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/a;->a:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    iget v1, p0, Lcom/ecarx/eas/sdk/mediacenter/a;->b:I

    invoke-static {v0, v1}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->a(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;I)V

    return-void
.end method
