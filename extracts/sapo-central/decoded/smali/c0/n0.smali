.class public final Lc0/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/OnReceiveContentListener;


# instance fields
.field public final a:Lc0/s;


# direct methods
.method public constructor <init>(Lc0/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0/n0;->a:Lc0/s;

    return-void
.end method


# virtual methods
.method public final onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 2

    new-instance v0, Lc0/h;

    new-instance v1, Landroidx/emoji2/text/m;

    invoke-direct {v1, p2}, Landroidx/emoji2/text/m;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Lc0/h;-><init>(Lc0/g;)V

    iget-object v1, p0, Lc0/n0;->a:Lc0/s;

    check-cast v1, Lf0/r;

    invoke-virtual {v1, p1, v0}, Lf0/r;->a(Landroid/view/View;Lc0/h;)Lc0/h;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p2

    :cond_1
    iget-object p1, p1, Lc0/h;->a:Lc0/g;

    invoke-interface {p1}, Lc0/g;->i()Landroid/view/ContentInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lc0/d;->e(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    return-object p1
.end method
