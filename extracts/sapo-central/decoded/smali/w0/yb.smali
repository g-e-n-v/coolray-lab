.class public final Lw0/yb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw0/zb;

.field public final b:Ljava/lang/String;

.field public final c:Lw0/g4;


# direct methods
.method public constructor <init>(Lw0/zb;Ljava/lang/String;Lw0/g4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/yb;->a:Lw0/zb;

    iput-object p2, p0, Lw0/yb;->b:Ljava/lang/String;

    iput-object p3, p0, Lw0/yb;->c:Lw0/g4;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lw0/yb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lw0/yb;

    iget-object v1, p0, Lw0/yb;->a:Lw0/zb;

    iget-object v3, p1, Lw0/yb;->a:Lw0/zb;

    invoke-static {v1, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lw0/yb;->b:Ljava/lang/String;

    iget-object v3, p1, Lw0/yb;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lw0/yb;->c:Lw0/g4;

    iget-object p1, p1, Lw0/yb;->c:Lw0/g4;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lw0/yb;->a:Lw0/zb;

    invoke-virtual {v0}, Lw0/zb;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lw0/yb;->b:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroidx/activity/result/b;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lw0/yb;->c:Lw0/g4;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnadaptorCheck(info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lw0/yb;->a:Lw0/zb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", md5Esperado="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw0/yb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", estado="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw0/yb;->c:Lw0/g4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
