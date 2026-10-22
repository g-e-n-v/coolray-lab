.class public final Lw0/d8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw0/d8;

.field public static volatile b:Lw0/b4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw0/d8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw0/d8;->a:Lw0/d8;

    sget-object v0, Lw0/b4;->a:Lw0/b4;

    sput-object v0, Lw0/d8;->b:Lw0/b4;

    return-void
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "cmd"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw0/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw0/n;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ADB_FAIL: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lh2/l;Ljava/lang/String;I)Z
    .locals 9

    sget-object v0, Lw0/d8;->a:Lw0/d8;

    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object p1, v2

    :cond_0
    const/4 v1, 0x4

    and-int/2addr p3, v1

    if-eqz p3, :cond_1

    const-string p2, "tela"

    :cond_1
    const-string p3, "Ar Digital ["

    monitor-enter v0

    :try_start_0
    const-string v3, "context"

    invoke-static {p0, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "origem"

    invoke-static {p2, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "boot"

    invoke-static {p2, v3}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {p0, p1, v3, v1}, Lw0/d8;->d(Landroid/content/Context;Lh2/l;ZI)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    sget-object p0, Lw0/ae;->a:Lw0/ae;

    const-string p0, "HvacDigital"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]: sem a c\u00f3pia local \u2014 N\u00c3O tentei aplicar"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Lw0/b4;->a:Lw0/b4;

    sput-object p0, Lw0/d8;->b:Lw0/b4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_2
    :try_start_1
    const-string p1, "md5sum \'/data/local/hvac-digital/sysui.apk\' 2>/dev/null | awk \'{print $1}\'"

    const/16 p3, 0x4e20

    invoke-static {p3, p1}, Lw0/d8;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "toLowerCase(...)"

    invoke-static {p1, p3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v3, 0x20

    if-ne p3, v3, :cond_4

    move p3, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p3, v3, :cond_5

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x61

    if-gt v5, v3, :cond_4

    const/16 v5, 0x67

    if-ge v3, v5, :cond_4

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    move-object p1, v2

    :cond_5
    if-nez p1, :cond_6

    const-string p0, "HvacDigital"

    const-string p1, "apply: sem md5 da fonte \u2014 n\u00e3o instala \u00e0s cegas"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lw0/ae;->a:Lw0/ae;

    const-string p0, "HvacDigital"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ar Digital ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]: sem md5 da c\u00f3pia \u2014 N\u00c3O tentei aplicar"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Lw0/b4;->a:Lw0/b4;

    sput-object p0, Lw0/d8;->b:Lw0/b4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :cond_6
    :try_start_2
    const-string p3, "src"

    const-string v3, "/data/local/hvac-digital/sysui.apk"

    new-instance v5, Lx1/a;

    invoke-direct {v5, p3, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p3, "md5"

    new-instance v3, Lx1/a;

    invoke-direct {v3, p3, p1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v3}, [Lx1/a;

    move-result-object p1

    invoke-static {p1}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object p1

    const-string p3, "tela_preta_prefs"

    invoke-virtual {p0, p3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    const-string v3, "hvac_digital_so_por_bind"

    invoke-interface {p3, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p3, "boot"

    invoke-static {p2, p3}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p3, "bind"

    goto :goto_1

    :cond_7
    const-string p3, "auto"

    :goto_1
    sget-object v3, Lw0/qe;->a:Lw0/qe;

    const-string v5, "visual.aplicarArDigital"

    const-string v6, "via"

    new-instance v7, Lx1/a;

    invoke-direct {v7, v6, p3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7}, Ly1/s;->W(Lx1/a;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v7, v6}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, p0, v5, v7, p1}, Lw0/qe;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object p1, Lw0/pe;->a:Lw0/pe;

    goto :goto_2

    :cond_8
    invoke-static {p1}, Lw0/ne;->f(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lw0/pe;->b:Lw0/pe;

    goto :goto_2

    :cond_9
    sget-object p1, Lw0/pe;->c:Lw0/pe;

    :goto_2
    sget-object v3, Lw0/pe;->b:Lw0/pe;

    if-ne p1, v3, :cond_a

    move v3, v4

    goto :goto_3

    :cond_a
    move v3, v1

    :goto_3
    const-string v5, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "get"

    const-class v8, Ljava/lang/String;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "persist.sys.hvacdigital.via"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_b

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    :cond_b
    move-object v6, v2

    :goto_4
    if-eqz v6, :cond_c

    invoke-static {v6}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :cond_c
    move-object v6, v2

    :goto_5
    if-nez v6, :cond_d

    goto :goto_6

    :cond_d
    move-object v5, v6

    :catchall_1
    :goto_6
    if-eqz v3, :cond_10

    :try_start_4
    invoke-static {v5}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "bind"

    invoke-static {v6, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_e
    const-string v7, "install"

    invoke-static {v6, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_f
    :goto_7
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v6, "tela_preta_prefs"

    invoke-virtual {p0, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v6, "hvac_digital_so_por_bind"

    invoke-interface {p0, v6, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_13

    if-eq p0, v4, :cond_12

    const/4 v2, 0x2

    if-ne p0, v2, :cond_11

    sget-object p0, Lw0/b4;->c:Lw0/b4;

    goto :goto_8

    :cond_11
    new-instance p0, Landroidx/fragment/app/q;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_12
    sget-object p0, Lw0/b4;->b:Lw0/b4;

    goto :goto_8

    :cond_13
    sget-object p0, Lw0/b4;->a:Lw0/b4;

    :goto_8
    sput-object p0, Lw0/d8;->b:Lw0/b4;

    sget-object p0, Lw0/ae;->a:Lw0/ae;

    const-string p0, "HvacDigital"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ar Digital ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    if-eqz v3, :cond_14

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APK entregue por "

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; recarga pendente"

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_9

    :cond_14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NAO VINGOU (via="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_9
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "HvacDigital"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply: entrega="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (via="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_16

    invoke-virtual {v0, p2}, Lw0/d8;->g(Ljava/lang/String;)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p0, :cond_15

    goto :goto_a

    :cond_15
    monitor-exit v0

    goto :goto_b

    :cond_16
    :goto_a
    monitor-exit v0

    move v4, v1

    :goto_b
    return v4

    :goto_c
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public static c(Ljava/lang/String;Ljava/io/File;Lh2/l;)V
    .locals 18

    move-object/from16 v0, p2

    const-string v1, "HTTP "

    new-instance v2, Ljava/net/URL;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v2, v3}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/net/HttpURLConnection;

    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :try_start_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/high16 v7, 0x10000

    :try_start_2
    new-array v7, v7, [B

    const-wide/16 v11, 0x0

    const/4 v13, -0x1

    :cond_0
    :goto_0
    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-ltz v14, :cond_2

    const/4 v15, 0x0

    invoke-virtual {v5, v7, v15, v14}, Ljava/io/FileOutputStream;->write([BII)V

    const/16 p0, -0x1

    const-wide/16 v16, 0x0

    int-to-long v8, v14

    add-long/2addr v11, v8

    if-eqz v0, :cond_0

    cmp-long v8, v3, v16

    if-gtz v8, :cond_1

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_1

    :cond_1
    const/16 v8, 0x64

    int-to-long v9, v8

    mul-long/2addr v9, v11

    div-long/2addr v9, v3

    long-to-int v9, v9

    invoke-static {v9, v15, v8}, Lk1/a;->k(III)I

    move-result v8

    if-eq v8, v13, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v13, v8

    goto :goto_0

    :cond_2
    const-wide/16 v16, 0x0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v16

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "download vazio"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v0

    goto :goto_2

    :goto_1
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_6
    invoke-static {v5, v3}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_2
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-static {v1, v3}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
.end method

.method public static d(Landroid/content/Context;Lh2/l;ZI)Z
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lw0/d8;->a:Lw0/d8;

    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v4, p3, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    and-int/lit8 v7, p3, 0x8

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move/from16 v7, p2

    :goto_2
    const-string v8, "c\u00f3pia local: download/verifica\u00e7\u00e3o falhou \u2014 "

    const-string v9, "ensureSource: "

    const-string v10, "\n                mkdir -p /data/local/hvac-digital 2>/dev/null\n                cp -f "

    const-string v11, "\'"

    const-string v12, "cp \'/data/local/hvac-digital/sysui.apk\' "

    monitor-enter v1

    :try_start_0
    const-string v13, "[ -f \'/data/local/hvac-digital/sysui.apk\' ] && echo SRC_OK || echo SRC_FAIL"

    const/16 v14, 0x1f40

    invoke-static {v14, v13}, Lw0/d8;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "saida"

    invoke-static {v13, v14}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "SRC_OK"

    invoke-static {v13, v14, v6}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v14

    if-eqz v14, :cond_3

    sget-object v13, Lw0/k4;->a:Lw0/k4;

    goto :goto_3

    :cond_3
    const-string v14, "SRC_FAIL"

    invoke-static {v13, v14, v6}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v13

    if-eqz v13, :cond_4

    sget-object v13, Lw0/k4;->b:Lw0/k4;

    goto :goto_3

    :cond_4
    sget-object v13, Lw0/k4;->c:Lw0/k4;

    :goto_3
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    const/16 v14, 0x27

    if-eqz v13, :cond_8

    if-eq v13, v5, :cond_6

    const/4 v0, 0x2

    if-ne v13, v0, :cond_5

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "HvacDigital"

    const-string v2, "c\u00f3pia local: canal n\u00e3o respondeu \u2014 n\u00e3o baixo \u00e0s cegas, tento no pr\u00f3ximo arranque"

    invoke-static {v0, v2, v6}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v6

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_5
    :try_start_1
    new-instance v0, Landroidx/fragment/app/q;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    if-nez v7, :cond_7

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "HvacDigital"

    const-string v2, "c\u00f3pia local ausente e download n\u00e3o permitido aqui \u2014 adquirir \u00e9 trabalho da ativa\u00e7\u00e3o, n\u00e3o do boot"

    invoke-static {v0, v2, v5}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v6

    :cond_7
    move/from16 p1, v5

    goto/16 :goto_5

    :cond_8
    if-nez v4, :cond_7

    :try_start_2
    new-instance v4, Ljava/io/File;

    const-string v13, "/data/local/hvac-digital/sysui.apk"

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v13

    if-eqz v13, :cond_9

    move/from16 p1, v5

    goto :goto_4

    :cond_9
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v13

    const-string v15, "sysui-conferir.apk"

    invoke-direct {v4, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    const-string v15, "getAbsolutePath(...)"

    invoke-static {v13, v15}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\'"

    move/from16 p1, v5

    const-string v5, "\'\\\'\'"

    invoke-static {v13, v3, v5}, Lo2/t;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " && chmod 644 "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " && echo COPIA_OK"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x3a98

    invoke-static {v5, v3}, Lw0/d8;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "COPIA_OK"

    invoke-static {v3, v5, v6}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_a

    monitor-exit v1

    return v6

    :cond_a
    :goto_4
    :try_start_3
    invoke-static {v4}, Lw0/fh;->a(Ljava/io/File;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_b

    monitor-exit v1

    return p1

    :cond_b
    :try_start_4
    sget-object v3, Lw0/ae;->a:Lw0/ae;

    const-string v3, "HvacDigital"

    const-string v4, "c\u00f3pia local sem recursos do Ar Digital/bateria \u2014 base recusada"

    invoke-static {v3, v4, v6}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v7, :cond_c

    monitor-exit v1

    return v6

    :cond_c
    :goto_5
    :try_start_5
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "sysui-digital.apk"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "https://raw.githubusercontent.com/swimapps/Outros/main/hvacdigital.json"

    invoke-static {v0, v4}, Lw0/t5;->a(Landroid/content/Context;Ljava/lang/String;)Lw0/s5;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v5, v4, Lw0/s5;->a:Ljava/lang/String;

    invoke-static {v5, v3, v2}, Lw0/d8;->c(Ljava/lang/String;Ljava/io/File;Lh2/l;)V

    iget-object v2, v4, Lw0/s5;->d:Ljava/lang/String;

    iget-wide v12, v4, Lw0/s5;->b:J

    invoke-static {v0, v3, v2, v12, v13}, Lw0/t5;->b(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)V

    iget-wide v4, v4, Lw0/s5;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :cond_d
    const-string v4, "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/GeelyAutoSystemUIPlugin-digital.apk"

    sget-object v5, Lw0/u;->h:Ljava/util/Set;

    invoke-static {v4, v5}, Lw0/t1;->c(Ljava/lang/String;Ljava/util/Set;)Lw0/d5;

    move-result-object v4

    sget-object v5, Lw0/d5;->b:Lw0/d5;

    if-eq v4, v5, :cond_10

    const-string v4, "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/GeelyAutoSystemUIPlugin-digital.apk"

    invoke-static {v4, v3, v2}, Lw0/d8;->c(Ljava/lang/String;Ljava/io/File;Lh2/l;)V

    invoke-static {v3}, Lw0/d8;->k(Ljava/io/File;)V

    const/16 v16, 0x0

    :goto_6
    invoke-static {v3}, Lw0/fh;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getAbsolutePath(...)"

    invoke-static {v3, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "\'"

    const-string v5, "\'\\\'\'"

    invoke-static {v3, v4, v5}, Lo2/t;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \'/data/local/hvac-digital/sysui.apk.novo\' 2>&1 || exit 20\n                chown root:root \'/data/local/hvac-digital/sysui.apk.novo\' 2>&1 || exit 20\n                chmod 644 \'/data/local/hvac-digital/sysui.apk.novo\' 2>&1 || exit 20\n                chcon u:object_r:system_app_file:s0 \'/data/local/hvac-digital/sysui.apk.novo\' 2>&1 || exit 20\n                mv -f \'/data/local/hvac-digital/sysui.apk.novo\' \'/data/local/hvac-digital/sysui.apk\' 2>&1 || exit 20\n                [ -f \'/data/local/hvac-digital/sysui.apk\' ] && echo SRC_OK || echo SRC_FAIL\n                "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7530

    invoke-static {v3, v2}, Lw0/d8;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SRC_OK"

    invoke-static {v2, v3, v6}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v16, :cond_e

    const-string v3, "tela_preta_prefs"

    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "hvac_digital_vc_baixado"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_e
    move v6, v2

    goto :goto_8

    :cond_f
    const-string v0, "APK adquirido sem implementa\u00e7\u00e3o do Ar Digital/bateria"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "o HVAC digital nao esta mais no GitHub; a distribuicao propria e o unico caminho"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_7
    :try_start_6
    const-string v2, "HvacDigital"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    const-string v2, "HvacDigital"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v3, p1

    invoke-static {v2, v0, v3}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_8
    monitor-exit v1

    return v6

    :goto_9
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public static f()Ljava/lang/String;
    .locals 5

    sget-object v0, Lw0/u;->h:Ljava/util/Set;

    const-string v1, "https://raw.githubusercontent.com/swimapps/Outros/main/hvacdigital.json"

    invoke-static {v1, v0}, Lw0/t1;->c(Ljava/lang/String;Ljava/util/Set;)Lw0/d5;

    move-result-object v0

    sget-object v2, Lw0/d5;->b:Lw0/d5;

    const-string v3, "HvacDigital"

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    const-string v0, "fetchExpectedSha: o manifesto saiu do GitHub \u2014 sem referencia de sha"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v1, Lo2/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v0}, La1/b;->X(Ljava/net/URL;)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, "\"sha256\"\\s*:\\s*\"([0-9a-fA-F]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "matcher(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lk1/a;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo2/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo2/e;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lo2/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-object v4

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchExpectedSha: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v4
.end method

.method public static i(ZZZ)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setprop persist.sys.hvacdigital.temp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "0"

    const-string v2, "1"

    if-eqz p0, :cond_0

    move-object p0, v2

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " && setprop persist.sys.hvacdigital.batt "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    move-object p0, v2

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " && setprop persist.sys.hvacdigital.exttemp "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " && echo FLAGS_OK"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1f40

    invoke-static {p1, p0}, Lw0/d8;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object p0

    iget-object p1, p0, Ln2/c;->b:Ln2/f;

    invoke-interface {p1}, Ln2/f;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Ln2/c;->c:Ljava/lang/Object;

    check-cast p2, Lh2/l;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FLAGS_OK"

    invoke-static {p2, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Ljava/io/File;)V
    .locals 5

    invoke-static {}, Lw0/d8;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x2000

    :try_start_0
    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v1, "digest(...)"

    invoke-static {p0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lw0/n2;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lw0/n2;-><init>(I)V

    invoke-static {p0, v1}, Ly1/f;->b0([BLh2/l;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "sha256 diverge"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, p0}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final e()Lw0/fg;
    .locals 7

    new-instance v0, Lw0/c8;

    const-string v5, "adb(Ljava/lang/String;I)Ljava/lang/String;"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lw0/d8;

    const-string v4, "adb"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lw0/c8;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lw0/zf;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lw0/zf;-><init>(I)V

    invoke-static {v0, v1}, Lw0/e8;->D(Lh2/p;Lh2/l;)Lw0/fg;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 12

    sget-object v0, Lw0/fg;->c:Lw0/fg;

    new-instance v1, Lw0/n;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lw0/n;-><init>(I)V

    invoke-static {v1}, Lw0/e8;->I(Lh2/p;)Lw0/e5;

    move-result-object v1

    sget-object v2, Lw0/e5;->a:Lw0/e5;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    new-instance v4, Lw0/c8;

    const-string v9, "adb(Ljava/lang/String;I)Ljava/lang/String;"

    const/4 v10, 0x1

    const/4 v5, 0x2

    const-class v7, Lw0/d8;

    const-string v8, "adb"

    move-object v6, p0

    invoke-direct/range {v4 .. v10}, Lw0/c8;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v5, Lw0/zf;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lw0/zf;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide v8, 0x4a817c800L

    add-long/2addr v6, v8

    sget-object v8, Lw0/fg;->d:Lw0/fg;

    move v9, v3

    :goto_0
    const/16 v10, 0x14

    if-ge v9, v10, :cond_2

    invoke-static {v4, v5}, Lw0/e8;->D(Lh2/p;Lh2/l;)Lw0/fg;

    move-result-object v8

    if-eq v8, v0, :cond_2

    sget-object v10, Lw0/fg;->a:Lw0/fg;

    if-ne v8, v10, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    cmp-long v10, v10, v6

    if-gez v10, :cond_2

    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lw0/d8;->e()Lw0/fg;

    move-result-object v8

    :cond_2
    :goto_1
    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    if-ne v8, v0, :cond_3

    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    sget-object v0, Lw0/b4;->d:Lw0/b4;

    goto :goto_2

    :cond_4
    sget-object v0, Lw0/b4;->b:Lw0/b4;

    :goto_2
    sput-object v0, Lw0/d8;->b:Lw0/b4;

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ar Digital ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]: recarga="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " plugin="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HvacDigital"

    invoke-static {v0, p1, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3
.end method

.method public final declared-synchronized h(Landroid/content/Context;I)Lw0/b4;
    .locals 8

    const-string v0, "Ar Digital ["

    const-string v1, "/3"

    const-string v2, "boot "

    monitor-enter p0

    :try_start_0
    sget-object v3, Lw0/wd;->a:Lw0/wd;

    invoke-static {p1}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object p1, Lw0/b4;->d:Lw0/b4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Lw0/ee;->a:Lw0/ee;

    invoke-static {p1}, Lw0/ee;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "hvac_digital_temp"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "hvac_digital_batt"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "hvac_digital_ext_temp"

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez v4, :cond_1

    if-nez v6, :cond_1

    sget-object p1, Lw0/b4;->d:Lw0/b4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lw0/d8;->e()Lw0/fg;

    move-result-object v1

    new-instance v2, Lw0/b8;

    invoke-direct {v2, v4, v6, v3}, Lw0/b8;-><init>(ZZZ)V

    new-instance v3, Lw0/y2;

    const/4 v4, 0x4

    invoke-direct {v3, p1, v4, p2}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p1, Lw0/f2;

    const/4 v4, 0x5

    invoke-direct {p1, v4, p2}, Lw0/f2;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v2, v3, p1}, Lw0/e8;->K(Lw0/fg;Lw0/b8;Lw0/y2;Lw0/f2;)Lw0/b4;

    move-result-object p1

    sput-object p1, Lw0/d8;->b:Lw0/b4;

    sget-object p1, Lw0/ae;->a:Lw0/ae;

    const-string p1, "HvacDigital"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]: observado="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " resultado="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lw0/d8;->b:Lw0/b4;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Lw0/d8;->b:Lw0/b4;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized j(Landroid/content/Context;ZZZLw0/e9;)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lw0/d8;->e()Lw0/fg;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    new-instance v4, Lw0/f2;

    const/4 v5, 0x4

    invoke-direct {v4, v5, p1}, Lw0/f2;-><init>(ILjava/lang/Object;)V

    sget-object v5, Lw0/fg;->a:Lw0/fg;

    sget-object v6, Lw0/fg;->d:Lw0/fg;

    if-ne v0, v6, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    move p4, v1

    goto :goto_2

    :cond_3
    move p4, v2

    :goto_2
    invoke-static {p2, p3, p4}, Lw0/d8;->i(ZZZ)Z

    move-result p2

    if-nez p2, :cond_4

    :goto_3
    move v1, v2

    goto :goto_4

    :cond_4
    if-nez v3, :cond_6

    if-ne v0, v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Lw0/f2;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4

    :cond_6
    if-ne v0, v5, :cond_7

    const/4 p2, 0x4

    const/4 p3, 0x0

    invoke-static {p1, p5, p3, p2}, Lw0/d8;->b(Landroid/content/Context;Lh2/l;Ljava/lang/String;I)Z

    move-result v1

    goto :goto_4

    :cond_7
    sget-object p1, Lw0/d8;->a:Lw0/d8;

    const-string p2, "tela"

    invoke-virtual {p1, p2}, Lw0/d8;->g(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
