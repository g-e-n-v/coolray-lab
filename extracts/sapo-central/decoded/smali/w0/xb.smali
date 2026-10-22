.class public final Lw0/xb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/CharSequence;

.field public f:Z

.field public g:Z

.field public final synthetic h:Lcom/ex/auto/MainActivity;


# direct methods
.method public constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/xb;->h:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/xb;->a:Ljava/lang/String;

    iput-object p3, p0, Lw0/xb;->b:Ljava/lang/String;

    iput-object p4, p0, Lw0/xb;->c:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lw0/xb;->e:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lw0/xb;->f:Z

    iput-boolean p1, p0, Lw0/xb;->g:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    iget-object v0, p0, Lw0/xb;->h:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->n0()Lw0/p3;

    move-result-object v0

    invoke-virtual {v0}, Lw0/p3;->a()V

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lw0/xb;->e:Ljava/lang/CharSequence;

    return-void
.end method
