.class public final synthetic Le/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Le/l;->a:I

    iput-object p1, p0, Le/l;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Le/l;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Le/l;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Le/l;->b:Landroid/content/Context;

    sget-object v1, Lw0/wd;->a:Lw0/wd;

    const-string v2, "prazo"

    invoke-virtual {v1, v0, v2}, Lw0/wd;->f(Landroid/content/Context;Ljava/lang/String;)Lw0/vd;

    return-void

    :pswitch_1
    iget-object v0, p0, Le/l;->b:Landroid/content/Context;

    sget-object v3, Lw0/wd;->a:Lw0/wd;

    const-string v4, "oculta\u00e7\u00e3o pendente: "

    monitor-enter v3

    :try_start_0
    sget-object v5, Lw0/ee;->a:Lw0/ee;

    invoke-static {v0}, Lw0/ee;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "modo_oficina"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "modo_oficina_entrada_pendente"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "modo_oficina_restaurando"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-static {v0}, Lw0/wd;->i(Landroid/content/Context;)V

    sget-object v6, Lw0/c6;->a:Ljava/util/List;

    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v0}, Lw0/c6;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lf2/d;->h0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6}, Lw0/c6;->f(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "modo_oficina_entrada_pendente"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "ModoOficina"

    const-string v1, "oculta\u00e7\u00e3o retomada e confirmada"

    invoke-static {v0, v1, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "ModoOficina"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v3

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit v3

    :goto_3
    return-void

    :goto_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :pswitch_2
    iget-object v0, p0, Le/l;->b:Landroid/content/Context;

    sget-object v1, Lw0/wd;->a:Lw0/wd;

    const-string v2, "retomada-boot"

    invoke-virtual {v1, v0, v2}, Lw0/wd;->f(Landroid/content/Context;Ljava/lang/String;)Lw0/vd;

    return-void

    :pswitch_3
    iget-object v0, p0, Le/l;->b:Landroid/content/Context;

    sget-object v1, Lw0/u0;->a:Lw0/u0;

    sget-object v1, Lw0/u0;->f:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    sget-object v2, Lw0/u0;->g:Lw0/s0;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    invoke-static {v0, v1, v2}, Lw0/u0;->b(Landroid/content/Context;Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;)V

    :cond_3
    invoke-static {v0}, Lw0/u0;->a(Landroid/content/Context;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Le/l;->b:Landroid/content/Context;

    const-string v3, "ModoOficina"

    sget-object v4, Lw0/ee;->a:Lw0/ee;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lw0/ee;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "modo_oficina_aviso_saida_pendente"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lw0/wd;->a:Lw0/wd;

    invoke-static {v0}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Lw0/t1;->f:Landroid/app/AlertDialog;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-ne v5, v2, :cond_4

    goto :goto_7

    :cond_4
    :try_start_5
    invoke-static {v0}, Lw0/v7;->o(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    new-instance v5, Lw0/ad;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-static {v0}, Lw0/e8;->p(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const v7, 0x7f1001f0

    invoke-direct {v6, v0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0f024c

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v5, 0x7f0f024b

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v5, Lw0/h;

    invoke-direct {v5, v2, v4}, Lw0/h;-><init>(ILjava/lang/Object;)V

    const v4, 0x7f0f0038

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_5

    const/16 v5, 0x7f6

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_5
    :goto_5
    new-instance v4, Lw0/l0;

    invoke-direct {v4, v1, v0}, Lw0/l0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    sput-object v0, Lw0/t1;->f:Landroid/app/AlertDialog;

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "aviso de sa\u00edda exibido"

    invoke-static {v3, v0, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    :goto_6
    sget-object v2, Lw0/ae;->a:Lw0/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "aviso de sa\u00edda pendente: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    :goto_7
    return-void

    :pswitch_5
    iget-object v0, p0, Le/l;->b:Landroid/content/Context;

    invoke-static {v0}, Le/o;->s(Landroid/content/Context;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Le/l;->b:Landroid/content/Context;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v1, v3, :cond_8

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    invoke-direct {v1, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    if-eq v3, v2, :cond_8

    invoke-static {}, Le/o;->c()Ly/e;

    move-result-object v3

    invoke-virtual {v3}, Ly/e;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v0}, La1/b;->Y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "locale"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Le/m;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v3

    invoke-static {v4, v3}, Le/n;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_8
    sput-boolean v2, Le/o;->f:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
