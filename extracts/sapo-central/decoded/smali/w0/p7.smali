.class public final synthetic Lw0/p7;
.super Li2/e;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic i:Lc0/f;

.field public final synthetic j:Landroid/widget/ImageView;

.field public final synthetic k:Lcom/ex/auto/HomeFloatingWidgetsService;


# direct methods
.method public constructor <init>(Lc0/f;Landroid/widget/ImageView;Lcom/ex/auto/HomeFloatingWidgetsService;)V
    .locals 1

    iput-object p1, p0, Lw0/p7;->i:Lc0/f;

    iput-object p2, p0, Lw0/p7;->j:Landroid/widget/ImageView;

    iput-object p3, p0, Lw0/p7;->k:Lcom/ex/auto/HomeFloatingWidgetsService;

    const-string p1, "refreshMuteIcon"

    const-string p2, "addVolumeView$refreshMuteIcon(Lcom/ex/auto/CarMediaVolume;Landroid/widget/ImageView;Lcom/ex/auto/HomeFloatingWidgetsService;)V"

    const/4 p3, 0x0

    const-class v0, Li2/f;

    invoke-direct {p0, p3, v0, p1, p2}, Li2/e;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lw0/p7;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lw0/p7;->k:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v2, p0, Lw0/p7;->i:Lc0/f;

    invoke-static {v2, v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->l(Lc0/f;Landroid/widget/ImageView;Lcom/ex/auto/HomeFloatingWidgetsService;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0
.end method
