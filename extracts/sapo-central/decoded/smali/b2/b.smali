.class public final Lb2/b;
.super Li2/h;
.source "SourceFile"

# interfaces
.implements Lh2/p;


# static fields
.field public static final b:Lb2/b;

.field public static final c:Lb2/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lb2/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb2/b;-><init>(II)V

    sput-object v0, Lb2/b;->b:Lb2/b;

    new-instance v0, Lb2/b;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lb2/b;-><init>(II)V

    sput-object v0, Lb2/b;->c:Lb2/b;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lb2/b;->a:I

    invoke-direct {p0, p1}, Li2/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lb2/b;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lb2/h;

    check-cast p2, Lb2/f;

    const-string v0, "acc"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lb2/f;->getKey()Lb2/g;

    move-result-object v0

    invoke-interface {p1, v0}, Lb2/h;->minusKey(Lb2/g;)Lb2/h;

    move-result-object p1

    sget-object v0, Lb2/i;->a:Lb2/i;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lb2/d;->a:Lb2/d;

    invoke-interface {p1, v1}, Lb2/h;->get(Lb2/g;)Lb2/f;

    move-result-object v2

    check-cast v2, Lb2/e;

    if-nez v2, :cond_1

    new-instance v0, Lb2/c;

    invoke-direct {v0, p1, p2}, Lb2/c;-><init>(Lb2/h;Lb2/f;)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Lb2/h;->minusKey(Lb2/g;)Lb2/h;

    move-result-object p1

    if-ne p1, v0, :cond_2

    new-instance p1, Lb2/c;

    invoke-direct {p1, p2, v2}, Lb2/c;-><init>(Lb2/h;Lb2/f;)V

    move-object p2, p1

    goto :goto_1

    :cond_2
    new-instance v0, Lb2/c;

    new-instance v1, Lb2/c;

    invoke-direct {v1, p1, p2}, Lb2/c;-><init>(Lb2/h;Lb2/f;)V

    invoke-direct {v0, v1, v2}, Lb2/c;-><init>(Lb2/h;Lb2/f;)V

    goto :goto_0

    :goto_1
    return-object p2

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lb2/f;

    const-string v0, "acc"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
