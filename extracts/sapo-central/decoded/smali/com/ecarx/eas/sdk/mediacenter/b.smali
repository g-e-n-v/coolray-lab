.class public final synthetic Lcom/ecarx/eas/sdk/mediacenter/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;


# direct methods
.method public synthetic constructor <init>(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ecarx/eas/sdk/mediacenter/b;->a:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ecarx/eas/sdk/mediacenter/b;->a:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;

    invoke-static {v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;->a(Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI$1;)V

    return-void
.end method
