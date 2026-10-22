.class public final synthetic Lw0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lw0/h;->a:I

    iput-object p2, p0, Lw0/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget p1, p0, Lw0/h;->a:I

    const/4 p2, 0x0

    iget-object v0, p0, Lw0/h;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    sget p1, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lw0/kf;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v0}, Lw0/kf;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v0, p1}, Lcom/ex/auto/QuickAccessFloaterService;->O(Lh2/l;)V

    return-void

    :pswitch_0
    check-cast v0, Lh2/a;

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-interface {v0}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_1
    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    sget p1, Lcom/ex/auto/InstallerActivity;->v:I

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_2
    check-cast v0, Lcom/ex/auto/InstallerActivity;

    sget p1, Lcom/ex/auto/InstallerActivity;->v:I

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_3
    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "modo_oficina_aviso_saida_pendente"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object p1, Lw0/ae;->a:Lw0/ae;

    const-string p1, "ModoOficina"

    const-string v0, "aviso de sa\u00edda confirmado pelo usu\u00e1rio"

    invoke-static {p1, v0, p2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :pswitch_4
    check-cast v0, Lcom/ex/auto/AcProgramEditActivity;

    iget p1, v0, Lcom/ex/auto/AcProgramEditActivity;->t:I

    const-string v1, "ac_programs_prefs"

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "program_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
