.class public final Lk0/g;
.super La1/b;
.source "SourceFile"


# instance fields
.field public final a:Lk0/f;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk0/f;

    invoke-direct {v0, p1}, Lk0/f;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lk0/g;->a:Lk0/f;

    return-void
.end method


# virtual methods
.method public final a0(Z)V
    .locals 1

    sget-object v0, Landroidx/emoji2/text/k;->j:Landroidx/emoji2/text/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lk0/g;->a:Lk0/f;

    invoke-virtual {v0, p1}, Lk0/f;->a0(Z)V

    return-void
.end method

.method public final b0(Z)V
    .locals 2

    iget-object v0, p0, Lk0/g;->a:Lk0/f;

    sget-object v1, Landroidx/emoji2/text/k;->j:Landroidx/emoji2/text/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iput-boolean p1, v0, Lk0/f;->c:Z

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lk0/f;->b0(Z)V

    return-void
.end method

.method public final w([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    sget-object v0, Landroidx/emoji2/text/k;->j:Landroidx/emoji2/text/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lk0/g;->a:Lk0/f;

    invoke-virtual {v0, p1}, Lk0/f;->w([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    return-object p1
.end method
