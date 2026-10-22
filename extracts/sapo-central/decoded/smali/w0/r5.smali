.class public abstract Lw0/r5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo2/h;

.field public static final b:Lo2/h;

.field public static final c:Lo2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo2/h;

    const-string v1, "^[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+$"

    invoke-direct {v0, v1}, Lo2/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw0/r5;->a:Lo2/h;

    new-instance v0, Lo2/h;

    const-string v1, "status=([A-Za-z0-9-]+)"

    invoke-direct {v0, v1}, Lo2/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw0/r5;->b:Lo2/h;

    new-instance v0, Lo2/h;

    const-string v1, "\\br[-w]x[ps]\\b"

    invoke-direct {v0, v1}, Lo2/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw0/r5;->c:Lo2/h;

    return-void
.end method

.method public static final a(Lw0/o5;)Lw0/l5;
    .locals 3

    invoke-static {p0}, Lw0/r5;->c(Lw0/o5;)Lw0/q5;

    move-result-object v0

    invoke-static {p0}, Lw0/r5;->j(Lw0/o5;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lw0/q5;->b:Lw0/m5;

    sget-object v2, Lw0/m5;->b:Lw0/m5;

    if-eq v1, v2, :cond_0

    sget-object p0, Lw0/l5;->a:Lw0/l5;

    return-object p0

    :cond_0
    invoke-static {p0}, Lw0/r5;->j(Lw0/o5;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lw0/l5;->d:Lw0/l5;

    return-object p0

    :cond_1
    iget-object p0, v0, Lw0/q5;->a:Lw0/n5;

    sget-object v0, Lw0/n5;->a:Lw0/n5;

    if-eq p0, v0, :cond_2

    sget-object p0, Lw0/l5;->b:Lw0/l5;

    return-object p0

    :cond_2
    sget-object p0, Lw0/l5;->c:Lw0/l5;

    return-object p0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    const-string v0, "saida"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object p0

    invoke-interface {p0}, Ln2/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "it"

    invoke-static {v0, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const/16 p0, 0x3d

    invoke-static {v0, p0, v0}, Lo2/k;->x0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lo2/s;->Y(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static final c(Lw0/o5;)Lw0/q5;
    .locals 9

    iget-wide v0, p0, Lw0/o5;->d:J

    iget-object v2, p0, Lw0/o5;->f:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lw0/r5;->b:Lo2/h;

    invoke-virtual {v4, v2, v3}, Lo2/h;->b(Ljava/lang/CharSequence;I)Lo2/e;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lo2/e;->a()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    check-cast v2, Lo2/d;

    invoke-virtual {v2, v3}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lw0/m5;->c:Lw0/m5;

    sget-object v4, Lw0/n5;->b:Lw0/n5;

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sget-object v8, Lw0/n5;->a:Lw0/n5;

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "run-from-apk"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance p0, Lw0/q5;

    sget-object v0, Lw0/m5;->e:Lw0/m5;

    invoke-direct {p0, v4, v0}, Lw0/q5;-><init>(Lw0/n5;Lw0/m5;)V

    return-object p0

    :sswitch_1
    const-string v7, "quicken"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_1

    :sswitch_2
    const-string v7, "everything"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :sswitch_3
    const-string v7, "speed"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lw0/q5;

    sget-object v0, Lw0/m5;->a:Lw0/m5;

    invoke-direct {p0, v8, v0}, Lw0/q5;-><init>(Lw0/n5;Lw0/m5;)V

    return-object p0

    :sswitch_4
    const-string v7, "verify"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :sswitch_5
    const-string v7, "run-from-vdex-fallback"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lw0/q5;

    sget-object v0, Lw0/m5;->d:Lw0/m5;

    invoke-direct {p0, v4, v0}, Lw0/q5;-><init>(Lw0/n5;Lw0/m5;)V

    return-object p0

    :sswitch_6
    const-string v7, "speed-profile"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :sswitch_7
    const-string v7, "extract"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :sswitch_8
    const-string v7, "everything-profile"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    cmp-long p0, v0, v5

    if-lez p0, :cond_5

    new-instance p0, Lw0/q5;

    sget-object v0, Lw0/m5;->b:Lw0/m5;

    invoke-direct {p0, v8, v0}, Lw0/q5;-><init>(Lw0/n5;Lw0/m5;)V

    return-object p0

    :cond_5
    new-instance p0, Lw0/q5;

    invoke-direct {p0, v4, v3}, Lw0/q5;-><init>(Lw0/n5;Lw0/m5;)V

    return-object p0

    :sswitch_9
    const-string v7, "assume-verified"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Lw0/q5;

    sget-object v0, Lw0/m5;->f:Lw0/m5;

    invoke-direct {p0, v4, v0}, Lw0/q5;-><init>(Lw0/n5;Lw0/m5;)V

    return-object p0

    :cond_7
    :goto_1
    iget-wide v7, p0, Lw0/o5;->b:J

    cmp-long v2, v7, v5

    if-lez v2, :cond_8

    cmp-long v0, v0, v5

    if-nez v0, :cond_8

    iget-wide v0, p0, Lw0/o5;->c:J

    const/16 p0, 0x14

    int-to-long v5, p0

    mul-long/2addr v0, v5

    cmp-long p0, v0, v7

    if-gez p0, :cond_8

    new-instance p0, Lw0/q5;

    invoke-direct {p0, v4, v3}, Lw0/q5;-><init>(Lw0/n5;Lw0/m5;)V

    return-object p0

    :cond_8
    new-instance p0, Lw0/q5;

    sget-object v0, Lw0/n5;->c:Lw0/n5;

    sget-object v1, Lw0/m5;->g:Lw0/m5;

    invoke-direct {p0, v0, v1}, Lw0/q5;-><init>(Lw0/n5;Lw0/m5;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x74ad4b37 -> :sswitch_9
        -0x6b7d2b71 -> :sswitch_8
        -0x4dcd237f -> :sswitch_7
        -0x4358c9dd -> :sswitch_6
        -0x35c83f13 -> :sswitch_5
        -0x30df7787 -> :sswitch_4
        0x6890047 -> :sswitch_3
        0x17efcab3 -> :sswitch_2
        0x273d6b56 -> :sswitch_1
        0x36f5967b -> :sswitch_0
    .end sparse-switch
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    invoke-static {p0}, Lo2/k;->o0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    move v2, v1

    :cond_4
    if-ge v2, p0, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lw0/r5;->c:Lo2/h;

    invoke-virtual {v4, v3}, Lo2/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    :cond_5
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pkg"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/r5;->a:Lo2/h;

    invoke-virtual {v0, p0}, Lo2/h;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final f(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    const-string v0, "saida"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object p0

    new-instance v0, Lw0/n2;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lw0/n2;-><init>(I)V

    new-instance v1, Ln2/c;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance p0, Lw0/n2;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lw0/n2;-><init>(I)V

    new-instance v0, Ln2/d;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Ln2/d;-><init>(Ln2/f;ZLh2/l;)V

    new-instance p0, Lw0/n2;

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lw0/n2;-><init>(I)V

    new-instance v1, Ln2/c;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p0, v2}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance p0, Ln2/d;

    const/4 v0, 0x0

    sget-object v2, Ln2/j;->a:Ln2/j;

    invoke-direct {p0, v1, v0, v2}, Ln2/d;-><init>(Ln2/f;ZLh2/l;)V

    invoke-static {p0}, Ln2/g;->W(Ln2/f;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lw0/o5;)Z
    .locals 4

    invoke-static {p0}, Lw0/r5;->c(Lw0/o5;)Lw0/q5;

    move-result-object v0

    iget-object v1, v0, Lw0/q5;->a:Lw0/n5;

    sget-object v2, Lw0/n5;->a:Lw0/n5;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    invoke-static {p0}, Lw0/r5;->j(Lw0/o5;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lw0/q5;->b:Lw0/m5;

    sget-object v0, Lw0/m5;->b:Lw0/m5;

    if-eq p0, v0, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final h(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const-string v0, "pkg"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lw0/r5;->e(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    const-string v0, "speed-profile"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "speed"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, " -f "

    const-string v2, " 2>&1"

    const-string v3, "cmd package compile -m "

    invoke-static {v3, p1, v0, p0, v2}, Landroidx/activity/result/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string p2, "; am force-stop "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static final i(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lw0/r5;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "\n            for p in "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x3e

    const-string v3, " "

    invoke-static {v0, v3, v1, v2}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; do\n              apk=$(pm path $p 2>/dev/null | sed -n \'s/^package://p\' | head -1)\n              [ -z \"$apk\" ] && continue\n              dir=${apk%/*}\n              sa=$(stat -c %s \"$apk\" 2>/dev/null)\n              so=$(stat -c %s \"$dir/oat/arm64/base.odex\" 2>/dev/null)\n              sp=$(stat -c %s \"/data/misc/profiles/ref/$p/primary.prof\" 2>/dev/null)\n              sc=$(stat -c %s \"/data/misc/profiles/cur/0/$p/primary.prof\" 2>/dev/null)\n              raw=$(dumpsys package \"$p\" 2>/dev/null | grep \'status=\' | head -1)\n              echo \"$p|$sa|$so|$sp|$sc|$raw\"\n            done\n        "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lw0/o5;)Z
    .locals 4

    const-string v0, "p"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lw0/o5;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lw0/o5;->e:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
