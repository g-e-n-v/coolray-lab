.class public final synthetic Lw0/h9;
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

    iput p2, p0, Lw0/h9;->a:I

    iput-object p1, p0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    iget v1, v0, Lw0/h9;->a:I

    const-string v2, "ok"

    const/16 v3, 0xc

    const/4 v4, 0x6

    const v5, 0x7f0f0038

    const v6, 0x7f0f0349

    const-string v7, "ERROR: sem playbook \u2014 sincronize a central uma vez"

    const/4 v8, 0x3

    const/16 v9, 0x2f

    const v10, 0x7f0f0032

    const-string v11, "getString(...)"

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v15, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    iget-object v1, v15, Lcom/ex/auto/MainActivity;->E:Ljava/util/ArrayList;

    iget v2, v15, Lcom/ex/auto/MainActivity;->g0:I

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n            echo \"== apagando APK ==\"\n            ls -l "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1 || exit 40\n            rm -f "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1\n            code=$?\n            echo \"exit_code=$code\"\n            exit $code\n        "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static {v1, v9}, Lo2/k;->z0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f0f0153

    invoke-virtual {v15, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f090114

    invoke-virtual {v15, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v16

    new-instance v2, Lw0/e9;

    const/16 v3, 0x9

    invoke-direct {v2, v15, v3}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    const/16 v27, 0x0

    const/16 v28, 0xe80

    const-wide/16 v18, 0x7d0

    const/16 v20, 0x3a98

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v1

    move-object/from16 v17, v1

    move-object/from16 v24, v2

    invoke-static/range {v15 .. v28}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    :cond_1
    :goto_0
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_0
    iget-object v2, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    iget v1, v2, Lcom/ex/auto/MainActivity;->I:I

    iget v3, v2, Lcom/ex/auto/MainActivity;->H:I

    if-ne v1, v3, :cond_3

    iget-object v1, v2, Lcom/ex/auto/MainActivity;->F:Ljava/util/ArrayList;

    iget v3, v2, Lcom/ex/auto/MainActivity;->g0:I

    if-ltz v3, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v3, v1

    :goto_1
    new-instance v4, Le/h;

    invoke-direct {v4, v2}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v5, v4, Le/h;->b:Ljava/lang/Object;

    check-cast v5, Le/d;

    const v6, 0x7f0f035a

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Le/d;->d:Ljava/lang/CharSequence;

    const v6, 0x7f0f0359

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Le/d;->f:Ljava/lang/CharSequence;

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v12}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v3, 0x7f0f035b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lw0/m9;

    invoke-direct {v5, v2, v1, v14}, Lw0/m9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v4, v3, v5}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v4}, Le/h;->h()Le/i;

    goto/16 :goto_2

    :cond_3
    iget-object v1, v2, Lcom/ex/auto/MainActivity;->E:Ljava/util/ArrayList;

    iget v3, v2, Lcom/ex/auto/MainActivity;->g0:I

    if-ltz v3, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "/data/data/com.aurora.store/cache/Downloads"

    invoke-static {v1, v3}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    const-string v5, "\n        "

    const v6, 0x7f0f01f6

    const v7, 0x7f090116

    const-string v10, "\n            "

    if-eqz v3, :cond_6

    new-array v3, v13, [C

    aput-char v9, v3, v14

    invoke-static {v1, v3}, Lo2/k;->G0(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v3

    new-array v8, v13, [C

    aput-char v9, v8, v14

    invoke-static {v3, v8}, Lo2/k;->u0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-static {v3, v8}, Ly1/g;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_5

    const-string v3, "app"

    :cond_5
    invoke-static {v1}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "/data/local/tmp/aurora_work"

    invoke-static {v4}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n            echo \"== Aurora ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "): preparando ==\"\n            rm -rf "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; mkdir -p "

    const-string v10, " || exit 10\n            ls -l "

    invoke-static {v8, v9, v4, v10, v1}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "/*.apk 2>&1 || { echo \"ERRO: sem APKs na pasta da Aurora\"; exit 11; }\n            cp -f "

    const-string v10, "/*.apk "

    invoke-static {v8, v9, v1, v10, v4}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/ 2>&1 || exit 12\n            chown root:root "

    const-string v9, "/*.apk 2>/dev/null || true\n            chmod 644 "

    invoke-static {v8, v1, v4, v9, v4}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/*.apk 2>/dev/null || true\n            restorecon -v "

    const-string v9, "/*.apk 2>/dev/null || true\n            ls -1 "

    invoke-static {v8, v1, v4, v9, v4}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/*.apk > "

    const-string v9, "/filtered_apks.txt\n            N=$(wc -l < "

    invoke-static {v8, v1, v4, v9, v4}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/filtered_apks.txt)\n            echo \"== Aurora ("

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): $N split(s), instalando ==\"\n            if [ \"$N\" -gt 1 ]; then\n              "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/ex/auto/MainActivity;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n            else\n              pm install -r -g -d \"$(head -1 "

    const-string v9, "/filtered_apks.txt)\" 2>&1\n            fi\n            echo \"exit_code=$?\"\n            rm -rf "

    invoke-static {v8, v1, v4, v9, v4}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lw0/ea;

    invoke-direct {v11, v2, v3, v13}, Lw0/ea;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    const/4 v14, 0x0

    const/16 v15, 0xa00

    const-wide/16 v5, 0x1388

    const v7, 0x2bf20

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v13, v3

    move-object v3, v1

    invoke-static/range {v2 .. v15}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    goto/16 :goto_2

    :cond_6
    const-string v3, ".xapk"

    invoke-static {v1, v3, v13}, Lo2/t;->Z(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const-string v12, "\n            FILTERED_COUNT=$(wc -l < "

    const-string v15, "/extracted -maxdepth 2 -name \"*.apk\" | sort\n            APK_COUNT=$(find "

    const/16 v14, 0x20

    if-eqz v3, :cond_7

    invoke-static {v1, v9}, Lo2/k;->z0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "/data/local/tmp/xapk_work"

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n            echo \"== XAPK: preparando ==\"\n            rm -rf "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n            mkdir -p "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/extracted || exit 10\n            ls -l "

    const-string v10, " 2>&1 || exit 11\n            cp -f "

    invoke-static {v4, v9, v1, v10, v1}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pkg.xapk 2>&1 || exit 12\n            echo \"== XAPK: descomprimindo ==\"\n            unzip -q "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pkg.xapk -d "

    const-string v9, "/extracted/ 2>&1\n            unzip_code=$?\n            if [ $unzip_code -ne 0 ]; then\n              echo \"ERRO: unzip falhou (code=$unzip_code)\"; rm -rf "

    invoke-static {v4, v1, v3, v9, v3}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "; exit 13\n            fi\n            echo \"== XAPK: identificando pacote ==\"\n            PKG=\"\"\n            if [ -f "

    const-string v9, "/extracted/manifest.json ]; then\n              PKG=$(grep -o \'\"package_name\" *: *\"[^\"]*\"\' "

    invoke-static {v4, v1, v3, v9, v3}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/extracted/manifest.json | sed \'s/.*\"\\([^\"]*\\)\"/\\1/\' | head -1)\n            fi\n            echo \"Pacote: $PKG\"\n            echo \"== XAPK: APKs encontrados ==\"\n            find "

    invoke-static {v4, v1, v3, v15, v3}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/extracted -maxdepth 2 -name \"*.apk\" | wc -l)\n            echo \"Total APKs: $APK_COUNT\"\n            if [ \"$APK_COUNT\" -eq 0 ]; then\n              echo \"ERRO: nenhum APK encontrado no XAPK\"; rm -rf "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; exit 14\n            fi\n            echo \"== XAPK: filtrando por arquitetura/densidade ==\"\n            "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->p2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/filtered_apks.txt)\n            echo \"APKs apos filtro: $FILTERED_COUNT\"\n            echo \"== XAPK: instalando ==\"\n            if [ \"$FILTERED_COUNT\" -gt 1 ]; then\n              echo \"Modo: sessao pm (split APKs)\"\n              "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n            else\n              BASE=$(head -1 "

    const-string v9, "/filtered_apks.txt)\n              echo \"Modo: pm install\"\n              pm install -r -g -d \"${BASE}\" 2>&1\n            fi\n            code=$?\n            echo \"exit_code=$code\"\n            if [ $code -eq 0 ] && [ -n \"$PKG\" ]; then\n              OBB_SRC=\"/data/local/tmp/xapk_work/extracted/Android/obb/$PKG\"\n              if [ -d \"$OBB_SRC\" ]; then\n                echo \"== XAPK: copiando OBBs ==\"\n                mkdir -p \"/sdcard/Android/obb/$PKG\"\n                cp -f \"$OBB_SRC/\"* \"/sdcard/Android/obb/$PKG/\" 2>&1\n                chmod 644 \"/sdcard/Android/obb/$PKG/\"* 2>/dev/null || true\n                echo \"OBBs copiados.\"\n              fi\n            fi\n            rm -rf "

    invoke-static {v4, v1, v3, v9, v3}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v7}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lw0/ea;

    invoke-direct {v11, v2, v13, v8}, Lw0/ea;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    const/4 v14, 0x0

    const/16 v15, 0xa00

    const-wide/16 v5, 0x1388

    const v7, 0x2bf20

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v8, v1

    invoke-static/range {v2 .. v15}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    goto/16 :goto_2

    :cond_7
    const-string v3, ".apkm"

    invoke-static {v1, v3, v13}, Lo2/t;->Z(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const v5, 0x7f0f01f3

    if-eqz v3, :cond_8

    invoke-static {v1, v9}, Lo2/k;->z0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "/data/local/tmp/apkm_work"

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n            echo \"== instalando APKM ==\"\n            rm -rf "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " 2>&1 || true\n            mkdir -p "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/extracted 2>&1 || exit 10\n            cp -f "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pkg.apkm 2>&1 || exit 12\n            unzip -q "

    const-string v8, "/pkg.apkm -d "

    invoke-static {v6, v1, v3, v8, v3}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/extracted/ 2>&1\n            UNZIP_EXIT=$?\n            if [ \"$UNZIP_EXIT\" -ne 0 ]; then\n              echo \"INSTALL_FAILURE: apkm_corrompido (unzip exit=$UNZIP_EXIT)\"\n              exit 15\n            fi\n            echo \"-- conteudo extraido --\"\n            find "

    invoke-static {v6, v1, v3, v15, v3}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/extracted -maxdepth 2 -name \"*.apk\" | wc -l)\n            echo \"APKs encontrados: $APK_COUNT\"\n            if [ \"$APK_COUNT\" -eq 0 ]; then\n              echo \"INSTALL_FAILURE: nenhum APK encontrado no APKM\"\n              exit 1\n            fi\n            echo \"-- filtrando por arquitetura/densidade --\"\n            "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->p2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/filtered_apks.txt)\n            echo \"APKs apos filtro: $FILTERED_COUNT\"\n            if [ \"$FILTERED_COUNT\" -eq 1 ]; then\n              BASE=$(head -1 "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/filtered_apks.txt)\n              pm install -r -g -d \"$BASE\" 2>&1\n            else\n              "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n            fi\n            EXIT=$?\n            rm -rf "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 2>&1 || true\n            echo \"exit_code=$EXIT\"\n        "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lw0/ea;

    invoke-direct {v11, v2, v13, v4}, Lw0/ea;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    const/4 v14, 0x0

    const/16 v15, 0xa00

    const-wide/16 v5, 0xbb8

    const v7, 0x1d4c0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v4, v1

    invoke-static/range {v2 .. v15}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    goto/16 :goto_2

    :cond_8
    invoke-static {v1, v9}, Lo2/k;->z0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v13

    const-string v3, "/data/local/tmp/"

    invoke-virtual {v3, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n            echo \"== instalando APK ==\"\n            ls -l "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " 2>&1 || exit 40\n            echo \"copiando para "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"\n            cp -f "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 2>&1 || exit 41\n            chown root:root "

    const-string v3, " 2>&1 || true\n            chmod 644 "

    invoke-static {v6, v1, v4, v3, v4}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, " 2>&1 || true\n            restorecon -v "

    const-string v3, " 2>/dev/null || true\n            echo \"== pm install ==\"\n            pm install -r -g -d "

    invoke-static {v6, v1, v4, v3, v4}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, " 2>&1\n            code=$?\n            rm -f "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 2>/dev/null || true\n            echo \"exit_code=$code\"\n        "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lw0/ea;

    const/4 v1, 0x0

    invoke-direct {v11, v2, v13, v1}, Lw0/ea;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    const/4 v14, 0x0

    const/16 v15, 0xa00

    const-wide/16 v5, 0x1388

    const v7, 0xea60

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v15}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    :cond_9
    :goto_2
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_1
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->n1()V

    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_2
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    iget v2, v1, Lcom/ex/auto/MainActivity;->H:I

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->P1(I)V

    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_3
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    iget v2, v1, Lcom/ex/auto/MainActivity;->G:I

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->P1(I)V

    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_4
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->P1(I)V

    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_5
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f090127

    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    iget-boolean v3, v1, Lcom/ex/auto/MainActivity;->n1:Z

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    invoke-static {v6, v3, v1, v11}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v2}, Lcom/ex/auto/MasterToggleView;->getActive()Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    new-instance v4, Le/h;

    invoke-direct {v4, v1}, Le/h;-><init>(Landroid/content/Context;)V

    if-nez v2, :cond_c

    const v6, 0x7f0f04b5

    goto :goto_3

    :cond_c
    const v6, 0x7f0f04bb

    :goto_3
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Le/h;->b:Ljava/lang/Object;

    check-cast v7, Le/d;

    iput-object v6, v7, Le/d;->d:Ljava/lang/CharSequence;

    if-nez v2, :cond_d

    const v2, 0x7f0f04b4

    goto :goto_4

    :cond_d
    const v2, 0x7f0f04ba

    :goto_4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v4, Le/h;->b:Ljava/lang/Object;

    check-cast v6, Le/d;

    iput-object v2, v6, Le/d;->f:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iput-boolean v2, v6, Le/d;->m:Z

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v12}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lw0/p9;

    invoke-direct {v5, v1, v3, v13}, Lw0/p9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v4, v2, v5}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v4}, Le/h;->h()Le/i;

    :goto_5
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_6
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f09011f

    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ex/auto/MasterToggleView;

    if-nez v2, :cond_e

    goto :goto_8

    :cond_e
    iget-boolean v3, v1, Lcom/ex/auto/MainActivity;->n1:Z

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    invoke-static {v6, v3, v1, v11}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    invoke-virtual {v2}, Lcom/ex/auto/MasterToggleView;->getActive()Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    new-instance v4, Le/h;

    invoke-direct {v4, v1}, Le/h;-><init>(Landroid/content/Context;)V

    if-nez v2, :cond_10

    const v6, 0x7f0f049b

    goto :goto_6

    :cond_10
    const v6, 0x7f0f04a0

    :goto_6
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Le/h;->b:Ljava/lang/Object;

    check-cast v7, Le/d;

    iput-object v6, v7, Le/d;->d:Ljava/lang/CharSequence;

    if-nez v2, :cond_11

    const v2, 0x7f0f049a

    goto :goto_7

    :cond_11
    const v2, 0x7f0f049f

    :goto_7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v4, Le/h;->b:Ljava/lang/Object;

    check-cast v6, Le/d;

    iput-object v2, v6, Le/d;->f:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iput-boolean v2, v6, Le/d;->m:Z

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v12}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lw0/p9;

    invoke-direct {v6, v1, v3, v2}, Lw0/p9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v4, v5, v6}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v4}, Le/h;->h()Le/i;

    :goto_8
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_7
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "widget_bg_opacity_pct"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :pswitch_8
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const-string v2, "tela_preta_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1

    :pswitch_9
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->g0()Lw0/hc;

    return-object v12

    :pswitch_a
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->u0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget v2, v1, Lcom/ex/auto/MainActivity;->e0:I

    add-int/2addr v2, v13

    invoke-static {v2, v13, v8}, Lk1/a;->k(III)I

    move-result v2

    iget-object v3, v1, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_12

    const v2, 0x7f0f00d9

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v11}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_9

    :cond_12
    const/4 v3, 0x0

    const v4, 0x7f0f00a7

    invoke-static {v4, v3, v1, v11}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    const v3, 0x7f09012c

    filled-new-array {v3}, [I

    move-result-object v3

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v4, v5, v3}, Lcom/ex/auto/MainActivity;->u2(J[I)Lw0/h0;

    move-result-object v3

    new-instance v4, Lw0/i9;

    invoke-direct {v4, v3, v13, v1}, Lw0/i9;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v2, v13, v8}, Lk1/a;->k(III)I

    move-result v2

    iget-object v3, v1, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_13

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v1}, Lw0/i9;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_13
    :try_start_1
    iget-object v5, v1, Lcom/ex/auto/MainActivity;->z:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v6, Lw0/d1;

    invoke-direct {v6, v3, v2, v1, v4}, Lw0/d1;-><init>(Landroid/car/hardware/property/CarPropertyManager;ILcom/ex/auto/MainActivity;Lw0/i9;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v1}, Lw0/i9;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_b
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    iget v2, v1, Lcom/ex/auto/MainActivity;->e0:I

    add-int/2addr v2, v13

    iget-object v3, v1, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lw0/a9;

    invoke-direct {v4, v1, v2, v13}, Lw0/a9;-><init>(Lcom/ex/auto/MainActivity;II)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_c
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    iget v2, v1, Lcom/ex/auto/MainActivity;->c0:I

    iget-object v3, v1, Lcom/ex/auto/MainActivity;->D:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Ly1/g;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_14

    const v2, 0x7f0f02cc

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v11}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_a

    :cond_14
    invoke-static {v2, v9}, Lo2/k;->z0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le/h;

    invoke-direct {v3, v1}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v4, v3, Le/h;->b:Ljava/lang/Object;

    check-cast v4, Le/d;

    const v5, 0x7f0f0150

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Le/d;->d:Ljava/lang/CharSequence;

    const v5, 0x7f0f014f

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Le/d;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v12}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v2, 0x7f0f0151

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lw0/z8;

    const/4 v5, 0x5

    invoke-direct {v4, v1, v5}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v2, v4}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Le/h;->h()Le/i;

    :goto_a
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_d
    iget-object v2, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v1, Li2/j;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const v3, 0x7f0f02db

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f090139

    invoke-virtual {v2, v5}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v14, Lw0/y2;

    invoke-direct {v14, v1, v4, v2}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/16 v15, 0x780

    move-object v4, v3

    move-object v3, v5

    const-wide/16 v5, 0x1388

    const/16 v7, 0x3a98

    const-string v8, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v4

    invoke-static/range {v2 .. v15}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_e
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const-string v2, "rede.reiniciarAa"

    invoke-static {v1, v2, v12, v3}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v7, "restart_enviado"

    :cond_15
    return-object v7

    :pswitch_f
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v2, Le/h;

    invoke-direct {v2, v1}, Le/h;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0143

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v4, Le/d;

    iput-object v3, v4, Le/d;->d:Ljava/lang/CharSequence;

    const v3, 0x7f0f0142

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Le/d;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v12}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v3, 0x7f0f0144

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lw0/z8;

    const/16 v5, 0xb

    invoke-direct {v4, v1, v5}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3, v4}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Le/h;->h()Le/i;

    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_10
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    iget v2, v1, Lcom/ex/auto/MainActivity;->c0:I

    iget-object v3, v1, Lcom/ex/auto/MainActivity;->D:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Ly1/g;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_16

    const v2, 0x7f0f026f

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v11}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_b

    :cond_16
    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->Z0(Ljava/lang/String;)V

    :goto_b
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_11
    move v3, v14

    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "lyrics_floater_enabled"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v4, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->q1()V

    :cond_17
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/LyricsFloaterService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.ex.auto.LYRICS_CONFIG"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_12
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v2, v1, Lcom/ex/auto/MainActivity;->r0:Z

    if-eqz v2, :cond_18

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/ex/auto/MainActivity;->R1(Z)V

    goto :goto_c

    :cond_18
    new-instance v2, Le/h;

    invoke-direct {v2, v1}, Le/h;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0163

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v4, Le/d;

    iput-object v3, v4, Le/d;->d:Ljava/lang/CharSequence;

    const v3, 0x7f0f0162

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v4, Le/d;

    iput-object v3, v4, Le/d;->f:Ljava/lang/CharSequence;

    const v3, 0x7f0f0034

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lw0/z8;

    const/16 v5, 0xd

    invoke-direct {v4, v1, v5}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3, v4}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v12}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Le/h;->h()Le/i;

    :goto_c
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_13
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/MediaBrowserHostActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_14
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v2, Lw0/wd;->a:Lw0/wd;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lw0/wd;->c(Landroid/content/Context;I)Lw0/vd;

    move-result-object v1

    return-object v1

    :pswitch_15
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    const-string v4, "rede.reverterConnAdaptor"

    invoke-static {v1, v4, v12, v3}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/ex/auto/MainActivity;->n0:Z

    if-eqz v3, :cond_19

    goto :goto_d

    :cond_19
    move-object v2, v7

    :goto_d
    return-object v2

    :pswitch_16
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v3, Lw0/qe;->a:Lw0/qe;

    new-instance v3, Lx1/a;

    const-string v4, "svcKeyServer"

    const-string v5, "com.flyme.auto.keyserver.service.AutoKeyService"

    invoke-direct {v3, v4, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Ly1/s;->W(Lx1/a;)Ljava/util/Map;

    move-result-object v3

    const/16 v4, 0x8

    const-string v5, "volante.desativarPatch"

    invoke-static {v1, v5, v3, v4}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/ex/auto/MainActivity;->o0:Z

    if-eqz v3, :cond_1a

    goto :goto_e

    :cond_1a
    move-object v2, v7

    :goto_e
    return-object v2

    :pswitch_17
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v2, Lw0/wd;->a:Lw0/wd;

    const-string v3, "bot\u00e3o restaurar"

    invoke-virtual {v2, v1, v3}, Lw0/wd;->f(Landroid/content/Context;Ljava/lang/String;)Lw0/vd;

    move-result-object v1

    return-object v1

    :pswitch_18
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o1()V

    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_19
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v2, v1, Lcom/ex/auto/MainActivity;->O:Z

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1b

    const v2, 0x7f09016b

    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1b

    const v2, 0x7f09011b

    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v1

    if-ne v1, v13, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v13, 0x0

    :goto_f
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :pswitch_1a
    iget-object v2, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, v2, Lcom/ex/auto/MainActivity;->x0:Z

    if-eqz v1, :cond_1c

    const-string v1, "\n            for P in 12500 18500 21000; do\n  while ip rule del prio $P lookup 200 2>/dev/null; do :; done\ndone\nip route flush table 200 2>/dev/null\nif [ \"$(settings get global exsapo_route_dns_zero_owned)\" = 1 ]; then\n  ndc resolver clearnetdns 0\n  settings delete global exsapo_route_dns_zero_owned\nfi\n            echo \"routes_removed\"\n            REMAINING=$(ip rule show 2>/dev/null | grep -c \"12500:\" || echo 0)\n            echo \"remaining=${REMAINING}\"\n        "

    invoke-static {v1}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0f02da

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lw0/e9;

    invoke-direct {v11, v2, v8}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    const/4 v14, 0x0

    const/16 v15, 0xec0

    const/4 v3, 0x0

    const-wide/16 v5, 0x7d0

    const/16 v7, 0x3a98

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v1

    invoke-static/range {v2 .. v15}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    goto :goto_10

    :cond_1c
    new-instance v1, Le/h;

    invoke-direct {v1, v2}, Le/h;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f010b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Le/h;->b:Ljava/lang/Object;

    check-cast v5, Le/d;

    iput-object v3, v5, Le/d;->d:Ljava/lang/CharSequence;

    const v3, 0x7f0f010a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Le/d;->f:Ljava/lang/CharSequence;

    const v3, 0x7f0f003a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lw0/z8;

    invoke-direct {v5, v2, v4}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v1, v3, v5}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v3, 0x7f0f0036

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v12}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Le/h;->h()Le/i;

    :goto_10
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_1b
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v2, Ly1/p;->a:Ly1/p;

    :try_start_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_11

    :catchall_0
    move-object v3, v12

    :goto_11
    if-eqz v3, :cond_28

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1d

    goto/16 :goto_1c

    :cond_1d
    :try_start_3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-static {v3}, Ly1/g;->m0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_12

    :cond_1e
    move-object v3, v12

    :goto_12
    if-nez v3, :cond_1f

    goto :goto_13

    :cond_1f
    move-object v2, v3

    :catchall_1
    :goto_13
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    const v2, 0x7f0f00f3

    :goto_14
    invoke-static {v2, v13, v1, v11}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_20
    invoke-static {v12}, Lk1/a;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_21
    invoke-static {v3, v4}, Ly1/g;->g0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    const v4, 0x7f0f00f2

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lk1/a;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    :try_start_4
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_17

    :catchall_2
    move-object v7, v12

    :goto_17
    if-nez v7, :cond_22

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    :cond_22
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_23
    invoke-static {v4, v5}, Ly1/g;->g0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "auto_connect_preferred_bt"

    invoke-interface {v5, v6, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_24

    invoke-static {v5}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    goto :goto_18

    :cond_24
    move-object v5, v12

    :goto_18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    move v8, v7

    :goto_19
    if-ge v8, v6, :cond_26

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_25

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_25

    goto :goto_1a

    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_26
    const/4 v7, -0x1

    :goto_1a
    if-gez v7, :cond_27

    move v14, v4

    goto :goto_1b

    :cond_27
    move v14, v7

    :goto_1b
    new-instance v4, Le/h;

    invoke-direct {v4, v1}, Le/h;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f00f5

    invoke-virtual {v4, v5}, Le/h;->g(I)V

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v5, Lw0/da;

    invoke-direct {v5, v1, v3}, Lw0/da;-><init>(Lcom/ex/auto/MainActivity;Ljava/util/ArrayList;)V

    iget-object v1, v4, Le/h;->b:Ljava/lang/Object;

    check-cast v1, Le/d;

    iput-object v2, v1, Le/d;->p:[Ljava/lang/CharSequence;

    iput-object v5, v1, Le/d;->r:Landroid/content/DialogInterface$OnClickListener;

    iput v14, v1, Le/d;->w:I

    iput-boolean v13, v1, Le/d;->v:Z

    invoke-virtual {v4, v10, v12}, Le/h;->b(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v4}, Le/h;->h()Le/i;

    goto :goto_1d

    :cond_28
    :goto_1c
    const v2, 0x7f0f00f0

    goto/16 :goto_14

    :goto_1d
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_1c
    iget-object v1, v0, Lw0/h9;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->k2()V

    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
