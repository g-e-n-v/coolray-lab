.class public final synthetic Lw0/ia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Li2/j;

.field public final synthetic c:Lcom/ex/auto/MainActivity;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Li2/j;Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lw0/ia;->a:I

    iput-object p1, p0, Lw0/ia;->b:Li2/j;

    iput-object p2, p0, Lw0/ia;->c:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, Lw0/ia;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lw0/ia;->a:I

    const-string v1, "ERROR: sem playbook \u2014 sincronize a central uma vez"

    const-string v2, "exit_code=0"

    const/16 v3, 0x8

    const-string v4, "wav"

    iget-object v5, p0, Lw0/ia;->d:Ljava/lang/String;

    iget-object v6, p0, Lw0/ia;->c:Lcom/ex/auto/MainActivity;

    iget-object v7, p0, Lw0/ia;->b:Li2/j;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v0, Lw0/qe;->a:Lw0/qe;

    new-instance v0, Lx1/a;

    invoke-direct {v0, v4, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Ly1/s;->W(Lx1/a;)Ljava/util/Map;

    move-result-object v0

    const-string v4, "audio.aplicarSomTravaPersistente"

    invoke-static {v6, v4, v0, v3}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v0

    iput-boolean v0, v7, Li2/j;->a:Z

    if-eqz v0, :cond_0

    move-object v1, v2

    :cond_0
    return-object v1

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v0, Lw0/qe;->a:Lw0/qe;

    new-instance v0, Lx1/a;

    invoke-direct {v0, v4, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Ly1/s;->W(Lx1/a;)Ljava/util/Map;

    move-result-object v0

    const-string v4, "audio.aplicarSomTrava"

    invoke-static {v6, v4, v0, v3}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v0

    iput-boolean v0, v7, Li2/j;->a:Z

    if-eqz v0, :cond_1

    move-object v1, v2

    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
