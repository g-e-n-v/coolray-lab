.class public final Lw0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/util/List;

.field public static final e:Ljava/util/List;

.field public static final f:Ljava/lang/Object;

.field public static final g:Ljava/util/List;

.field public static final h:Ljava/util/List;

.field public static final i:Ljava/util/List;

.field public static final j:Ljava/util/List;

.field public static final k:Ljava/util/List;

.field public static final l:Ljava/lang/Object;

.field public static final m:Ljava/util/List;

.field public static final n:Ljava/util/Map;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lh2/l;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lw0/o;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lw0/o;-><init>(I)V

    new-instance v2, Lx1/a;

    const-string v1, "ensureCentralDirs"

    invoke-direct {v2, v1, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lw0/o;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lw0/o;-><init>(I)V

    new-instance v3, Lx1/a;

    const-string v1, "prepararEscrita"

    invoke-direct {v3, v1, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lw0/o;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lw0/o;-><init>(I)V

    new-instance v4, Lx1/a;

    const-string v1, "connadaptorPrepararServico"

    invoke-direct {v4, v1, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lw0/o;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lw0/o;-><init>(I)V

    new-instance v5, Lx1/a;

    const-string v1, "ap0Cleanup"

    invoke-direct {v5, v1, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lw0/o;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lw0/o;-><init>(I)V

    new-instance v6, Lx1/a;

    const-string v1, "arDigitalAplicar"

    invoke-direct {v6, v1, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lw0/o;

    const/16 v7, 0xa

    invoke-direct {v0, v7}, Lw0/o;-><init>(I)V

    new-instance v7, Lx1/a;

    const-string v8, "verificarServico"

    invoke-direct {v7, v8, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v2 .. v7}, [Lx1/a;

    move-result-object v0

    invoke-static {v0}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lw0/p;->c:Ljava/lang/Object;

    const-string v0, "/data/local/tmp/fixes/"

    const-string v2, "/data/local/tmp/"

    const-string v3, "/data/local/hvac-digital/"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lw0/p;->d:Ljava/util/List;

    const-string v4, "com.njda.aauto"

    const-string v5, "com.flyme.auto.systemuiplugin"

    const-string v6, "com.njda.adapter"

    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lw0/p;->e:Ljava/util/List;

    sget-object v4, Lw0/u;->w:Ljava/lang/String;

    new-instance v5, Lx1/a;

    const-string v6, "connadaptor"

    invoke-direct {v5, v6, v4}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lw0/u;->z:Ljava/lang/String;

    new-instance v7, Lx1/a;

    const-string v8, "keyserver"

    invoke-direct {v7, v8, v4}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lw0/u;->v:Ljava/lang/String;

    new-instance v9, Lx1/a;

    const-string v10, "carlock"

    invoke-direct {v9, v10, v4}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lw0/u;->y:Ljava/lang/String;

    new-instance v10, Lx1/a;

    const-string v11, "carplaymonitor"

    invoke-direct {v10, v11, v4}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v7, v9, v10}, [Lx1/a;

    move-result-object v4

    invoke-static {v4}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v4

    sput-object v4, Lw0/p;->f:Ljava/lang/Object;

    const-string v4, "/data/local/gesture-launcher/"

    filled-new-array {v0, v2, v4, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lw0/p;->g:Ljava/util/List;

    const-string v0, "global"

    const-string v2, "secure"

    const-string v3, "system"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lw0/p;->h:Ljava/util/List;

    const-string v0, "lock_car_audio_path"

    const-string v2, "lock_car_audio_enable"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lw0/p;->i:Ljava/util/List;

    const-string v0, "u:object_r:vendor_configs_file:s0"

    const-string v2, "u:object_r:system_file:s0"

    const-string v3, "u:object_r:system_app_file:s0"

    const-string v4, "u:object_r:shell_data_file:s0"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lw0/p;->j:Ljava/util/List;

    const-string v0, "com.ecarx."

    const-string v2, "com.flyme."

    const-string v3, "com.ex.auto"

    const-string v4, "com.njda."

    const-string v5, "com.geely."

    filled-new-array {v3, v4, v5, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lw0/p;->k:Ljava/util/List;

    new-instance v0, Lx1/a;

    const-string v2, "/data/dalvik-cache/*/system@app@GeelyAutoKeyServer*"

    invoke-direct {v0, v8, v2}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lx1/a;

    const-string v3, "/data/dalvik-cache/*/system@app@ConnAdaptor*"

    invoke-direct {v2, v6, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lx1/a;

    const-string v4, "launcher"

    const-string v5, "/data/dalvik-cache/*/system@priv-app@GeelyAutoLauncher*"

    invoke-direct {v3, v4, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v2, v3}, [Lx1/a;

    move-result-object v0

    invoke-static {v0}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lw0/p;->l:Ljava/lang/Object;

    const-string v0, "package"

    const-string v2, "media_session"

    const-string v3, "wifi"

    const-string v4, "car_service"

    const-string v5, "activity"

    filled-new-array {v3, v4, v5, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lw0/p;->m:Ljava/util/List;

    const v0, 0x3a980

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lx1/a;

    invoke-direct {v2, v1, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ly1/s;->W(Lx1/a;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lw0/p;->n:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lw0/o;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lw0/o;-><init>(I)V

    const-string v1, "context"

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/p;->a:Landroid/content/Context;

    iput-object v0, p0, Lw0/p;->b:Lh2/l;

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lw0/p;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lw0/p;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static h(ILjava/lang/String;)Ljava/lang/String;
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

    invoke-static {p0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pm path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "s"

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\'\\\'\'"

    const/16 v4, 0x27

    invoke-static {p1, v2, v3, v1, v4}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 2>/dev/null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f40

    invoke-static {v1, v0}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object v0

    new-instance v1, Lw0/o;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lw0/o;-><init>(I)V

    new-instance v2, Ln2/c;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance v0, Lw0/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lw0/o;-><init>(I)V

    new-instance v1, Ln2/d;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Ln2/d;-><init>(Ln2/f;ZLh2/l;)V

    new-instance v0, Lw0/o;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lw0/o;-><init>(I)V

    new-instance v2, Ln2/c;

    const/4 v4, 0x2

    invoke-direct {v2, v1, v0, v4}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    invoke-static {v2}, Ln2/g;->W(Ln2/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    const-string v1, "pacote \'"

    const-string v2, "\' tem "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " caminhos \u2014 recusando o bind"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lw0/p;->b:Lh2/l;

    invoke-interface {v0, p1}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, ""

    return-object p1

    :cond_1
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_2
    return-object v2

    :catchall_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getprop "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\'\\\'\'"

    const/16 v4, 0x27

    invoke-static {p1, v2, v3, v1, v4}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1f40

    invoke-static {v0, p1}, Lw0/p;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw0/p;->b:Lh2/l;

    invoke-interface {v0, p1}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "Playbook"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RECUSADO "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lw0/p;->b:Lh2/l;

    invoke-interface {v0, p1}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g(ILjava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lw0/p;->a:Landroid/content/Context;

    const-string v1, "tela_preta_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "device_banned"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lw0/p;->b:Lh2/l;

    if-eqz v0, :cond_0

    const-string p1, "aparelho bloqueado \u2014 primitiva recusada"

    invoke-interface {v1, p1}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_0
    const-string v0, "rc="

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\necho __RC__$?"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "cmd"

    invoke-static {p2, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lw0/n;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lw0/n;-><init>(I)V

    const/4 v4, 0x0

    invoke-static {p2, p1, v4, v3}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "__RC__(-?\\d+)"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    const-string v3, "compile(...)"

    invoke-static {p2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "input"

    invoke-static {p1, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    const-string v3, "matcher(...)"

    invoke-static {p2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v2, p1}, Lk1/a;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo2/e;

    move-result-object p2

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lo2/e;->a()Ljava/util/List;

    move-result-object p2

    check-cast p2, Lo2/d;

    invoke-virtual {p2, v3}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 p2, -0x1

    :goto_0
    if-eqz p2, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa0

    invoke-static {v0, p1}, Lo2/k;->D0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-nez p2, :cond_3

    return v3

    :cond_3
    return v2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "shell falhou: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public final i(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3

    const-string v0, "template"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/p;->c:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh2/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p2, "template desconhecido: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw0/p;->f(Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p2}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lw0/p;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0x4e20

    :goto_0
    invoke-virtual {p0, p1, p2}, Lw0/p;->g(ILjava/lang/String;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p2

    const-string v0, "template \'"

    const-string v2, "\': "

    invoke-static {v0, p1, v2}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw0/p;->f(Ljava/lang/String;)V

    return v1
.end method
