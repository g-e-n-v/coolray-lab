.class public final Lp1/b;
.super Lu/b;
.source "SourceFile"


# instance fields
.field public final synthetic h:Lk1/a;

.field public final synthetic i:Lp1/d;


# direct methods
.method public constructor <init>(Lp1/d;Lk1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/b;->i:Lp1/d;

    iput-object p2, p0, Lp1/b;->h:Lk1/a;

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 2

    iget-object v0, p0, Lp1/b;->i:Lp1/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lp1/d;->k:Z

    iget-object v0, p0, Lp1/b;->h:Lk1/a;

    invoke-virtual {v0, p1}, Lk1/a;->K(I)V

    return-void
.end method

.method public final e(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lp1/b;->i:Lp1/d;

    iget v1, v0, Lp1/d;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, Lp1/d;->l:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lp1/d;->k:Z

    iget-object p1, v0, Lp1/d;->l:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iget-object v1, p0, Lp1/b;->h:Lk1/a;

    invoke-virtual {v1, p1, v0}, Lk1/a;->L(Landroid/graphics/Typeface;Z)V

    return-void
.end method
