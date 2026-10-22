.class public final synthetic Lw0/ub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;I)V
    .locals 0

    iput p2, p0, Lw0/ub;->a:I

    iput-object p1, p0, Lw0/ub;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 15

    iget v0, p0, Lw0/ub;->a:I

    iget-object v1, p0, Lw0/ub;->b:Lcom/ex/auto/MainActivity;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v2, Lw0/xb;

    const-string v0, "https://raw.githubusercontent.com/swimapps/Outros/main/filemanager.json"

    const-string v3, "AmazeFileManager-install.apk"

    const-string v4, "com.amaze.filemanager"

    invoke-direct {v2, v1, v4, v0, v3}, Lw0/xb;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lw0/xb;

    const-string v0, "https://github.com/Timoteohss/geelybattery_releases/releases/latest/download/latest.json"

    const-string v4, "GeelyBattery-install.apk"

    const-string v5, "com.timhss.geelybattery"

    invoke-direct {v3, v1, v5, v0, v4}, Lw0/xb;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lw0/xb;

    const-string v0, "https://raw.githubusercontent.com/swimapps/Outros/main/eisapo.json"

    const-string v5, "EiSapo-install.apk"

    const-string v6, "com.geely.eisapo"

    invoke-direct {v4, v1, v6, v0, v5}, Lw0/xb;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lw0/xb;

    const-string v0, "https://raw.githubusercontent.com/swimapps/Outros/main/dualdashcam.json"

    const-string v6, "DualDashcam-install.apk"

    const-string v7, "br.com.central.dualdashcam"

    invoke-direct {v5, v1, v7, v0, v6}, Lw0/xb;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lw0/xb;

    const-string v0, "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptorlogger.json"

    const-string v7, "ConnAdaptorLogger-install.apk"

    const-string v8, "com.geely.connadaptorlogger"

    invoke-direct {v6, v1, v8, v0, v7}, Lw0/xb;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lw0/xb;

    const-string v0, "https://raw.githubusercontent.com/swimapps/Outros/main/firefox.json"

    const-string v8, "Firefox-install.apk"

    const-string v9, "org.mozilla.firefox"

    invoke-direct {v7, v1, v9, v0, v8}, Lw0/xb;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lw0/xb;

    const-string v0, "https://raw.githubusercontent.com/swimapps/Outros/main/microg.json"

    const-string v9, "MicroG-install.apk"

    const-string v10, "app.revanced.android.gms"

    invoke-direct {v8, v1, v10, v0, v9}, Lw0/xb;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lw0/xb;

    const-string v0, "https://raw.githubusercontent.com/swimapps/Outros/main/chromium.json"

    const-string v10, "Chromium-install.apk"

    const-string v11, "org.bromite.chromium"

    invoke-direct {v9, v1, v11, v0, v10}, Lw0/xb;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array/range {v2 .. v9}, [Lw0/xb;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v1

    invoke-static {v1}, Ly1/s;->V(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lw0/xb;

    iget-object v3, v3, Lw0/xb;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v2

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    const-string v0, "both"

    invoke-virtual {v1, v0}, Lcom/ex/auto/MainActivity;->W1(Ljava/lang/String;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_1
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    const-string v0, "batt"

    invoke-virtual {v1, v0}, Lcom/ex/auto/MainActivity;->W1(Ljava/lang/String;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_2
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    const-string v0, "temp"

    invoke-virtual {v1, v0}, Lcom/ex/auto/MainActivity;->W1(Ljava/lang/String;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_3
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->W0()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_4
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "drive_regen_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :pswitch_5
    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/BackgroundKeepAliveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_6
    const-string v0, "/sdcard/Download"

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n            "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            echo \"== copiar APKs do pen-drive para Downloads ==\"\n            mkdir -p "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1 || exit 20\n            chmod 755 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1 || true\n            copied=0\n            for root in /storage/* /mnt/media_rw/* /mnt/usb* /mnt/media_rw/usb*; do\n              [ -d \"$root\" ] || continue\n              case \"$root\" in\n                /storage/emulated|/storage/self) continue ;;\n              esac\n              echo \"-- procurando em $root\"\n              for f in \"$root\"/*.apk \"$root\"/*.xapk \"$root\"/*.apkm \"$root\"/*/*.apk \"$root\"/*/*.xapk \"$root\"/*/*.apkm \"$root\"/*/*/*.apk \"$root\"/*/*/*.xapk \"$root\"/*/*/*.apkm; do\n                [ -f \"$f\" ] || continue\n                base=${f##*/}\n                echo \"copiando $f -> /sdcard/Download/$base\"\n                cp -f \"$f\" "

    const-string v3, "/\"$base\" 2>&1 && copied=$((copied + 1))\n              done\n            done\n            echo \"copiados=$copied\"\n            ls -l "

    invoke-static {v1, v2, v0, v3, v0}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " 2>&1 || true\n        "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f090113

    iget-object v1, p0, Lw0/ub;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f0147

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lw0/e9;

    const/4 v0, 0x6

    invoke-direct {v10, v1, v0}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    const/4 v13, 0x0

    const/16 v14, 0xe80

    const-wide/16 v4, 0xbb8

    const v6, 0xea60

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v1 .. v14}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

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
