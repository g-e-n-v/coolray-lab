.class public final synthetic Lw0/nb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;I)V
    .locals 0

    iput p2, p0, Lw0/nb;->a:I

    iput-object p1, p0, Lw0/nb;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lw0/nb;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lw0/nb;->b:Lcom/ex/auto/MainActivity;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {}, Lw0/e8;->x()Lw0/z4;

    move-result-object v0

    iget-object v1, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, La1/i;

    const/16 v3, 0x17

    invoke-direct {v2, v4, v3, v0}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "br.com.central.dualdashcam"

    invoke-virtual {v4, v2}, Lcom/ex/auto/MainActivity;->m0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v2, v1

    :goto_0
    const-string v6, "Update"

    const-string v7, "getString(...)"

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    :try_start_1
    const-string v8, "https://raw.githubusercontent.com/swimapps/Outros/main/dualdashcam.json"

    invoke-virtual {v4, v8}, Lcom/ex/auto/MainActivity;->c0(Ljava/lang/String;)Lw0/wb;

    move-result-object v8

    iget-wide v9, v8, Lw0/wb;->a:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v2, v9, v11

    if-lez v2, :cond_0

    new-instance v2, Lw0/gc;

    const-string v9, "dualdashcam"

    iget-object v10, v8, Lw0/wb;->b:Ljava/lang/String;

    filled-new-array {v5, v10}, [Ljava/lang/Object;

    move-result-object v5

    const v10, 0x7f0f0156

    invoke-virtual {v4, v10, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v10, v8, Lw0/wb;->a:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v9, v5, v8}, Lw0/gc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "dep DualDashcam: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "gestures_enabled"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_2
    invoke-static {v4}, Lw0/m;->v(Landroid/content/Context;)Lx1/a;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v5, v2, Lx1/a;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v2, v2, Lx1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lw0/gc;

    const-string v8, "gestos"

    const v9, 0x7f0f0158

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v8, v9, v5}, Lw0/gc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "dep gestos: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->E()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_3
    invoke-static {v4}, Lcom/ex/auto/MainActivity;->e0(Lcom/ex/auto/MainActivity;)Lw0/zb;

    move-result-object v5

    iget-object v5, v5, Lw0/zb;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/ex/auto/MainActivity;->K0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Lcom/ex/auto/MainActivity;->H0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lw0/gc;

    const-string v8, "connadaptor"

    const v9, 0x7f0f0154

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v8, v9, v5}, Lw0/gc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "dep ConnAdaptor: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "keyserver_bind_enabled"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/io/File;

    const-string v5, "/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_5

    :try_start_4
    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->f0()Lw0/bc;

    move-result-object v5

    invoke-virtual {v5}, Lw0/bc;->a()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v4, v2}, Lcom/ex/auto/MainActivity;->y2(Ljava/io/File;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-wide v8, v5, Lw0/bc;->d:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-eqz v2, :cond_5

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_6

    :cond_3
    const-string v8, "SHA-256"

    invoke-static {v2, v8}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, v5, Lw0/bc;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_4
    invoke-virtual {v5}, Lw0/bc;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v8, v5, Lw0/bc;->d:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_4
    iget-object v2, v5, Lw0/bc;->c:Ljava/lang/String;

    :goto_5
    new-instance v8, Lw0/gc;

    const-string v9, "keyserver"

    iget-object v5, v5, Lw0/bc;->a:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v10, 0x7f0f015b

    invoke-virtual {v4, v10, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v9, v5, v2}, Lw0/gc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "dep KeyServer: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_6
    :goto_8
    if-ge v3, v5, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    move-object v7, v6

    check-cast v7, Lw0/gc;

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v8

    iget-object v9, v7, Lw0/gc;->a:Ljava/lang/String;

    const-string v10, "dep_update_notified_"

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v7, v7, Lw0/gc;->c:Ljava/lang/String;

    invoke-static {v8, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_9

    :cond_8
    iget-object v0, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v1, La1/i;

    const/16 v3, 0x1b

    invoke-direct {v1, v4, v3, v2}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_9
    return-void

    :pswitch_1
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    const-string v0, "DST=$(pm path com.flyme.auto.launcher | sed \'s/^package://\'); grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 && echo Y || echo N"

    const/16 v1, 0x1770

    invoke-static {v1, v0}, Lw0/m;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Y"

    invoke-static {v0, v1, v3}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    iget-object v1, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/f9;

    invoke-direct {v3, v4, v0, v2}, Lw0/f9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_2
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v4, v2}, Lcom/ex/auto/MainActivity;->O1(Z)V

    iput-boolean v3, v4, Lcom/ex/auto/MainActivity;->l0:Z

    const-string v0, ""

    invoke-virtual {v4, v0, v3}, Lcom/ex/auto/MainActivity;->D0(Ljava/lang/String;Z)V

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v4}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Le/h;

    invoke-direct {v0, v4}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Le/h;->b:Ljava/lang/Object;

    check-cast v2, Le/d;

    const v3, 0x7f0f0549

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Le/d;->d:Ljava/lang/CharSequence;

    const v3, 0x7f0f02fb

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Le/d;->f:Ljava/lang/CharSequence;

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Le/h;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Le/h;->h()Le/i;

    :cond_9
    return-void

    :pswitch_3
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v0, Lw0/k5;->a:Lw0/k5;

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "<get-prefs>(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lw0/k5;->d(Landroid/content/SharedPreferences;)I

    move-result v0

    iget-object v1, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/a9;

    const/4 v3, 0x7

    invoke-direct {v2, v4, v0, v3}, Lw0/a9;-><init>(Lcom/ex/auto/MainActivity;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_4
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v0, Lw0/e9;

    const/16 v1, 0x14

    invoke-direct {v0, v4, v1}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-static {v4, v0}, Lw0/m;->d(Landroid/content/Context;Lh2/l;)Z

    move-result v0

    iget-object v1, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/f9;

    const/16 v3, 0x10

    invoke-direct {v2, v4, v0, v3}, Lw0/f9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
