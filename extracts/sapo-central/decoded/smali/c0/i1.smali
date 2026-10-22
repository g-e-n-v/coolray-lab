.class public final Lc0/i1;
.super Lc0/g1;
.source "SourceFile"


# static fields
.field public static final m:Lc0/k1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lc0/h1;->a()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc0/k1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lc0/k1;

    move-result-object v0

    sput-object v0, Lc0/i1;->m:Lc0/k1;

    return-void
.end method

.method public constructor <init>(Lc0/k1;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc0/g1;-><init>(Lc0/k1;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method
