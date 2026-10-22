.class public abstract Le/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/e0;

.field public static b:I

.field public static c:Ly/e;

.field public static d:Ly/e;

.field public static e:Ljava/lang/Boolean;

.field public static f:Z

.field public static final g:Ll/c;

.field public static final h:Ljava/lang/Object;

.field public static final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/e0;

    new-instance v1, Le/f0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Le/e0;-><init>(Le/f0;)V

    sput-object v0, Le/o;->a:Le/e0;

    const/16 v0, -0x64

    sput v0, Le/o;->b:I

    const/4 v0, 0x0

    sput-object v0, Le/o;->c:Ly/e;

    sput-object v0, Le/o;->d:Ly/e;

    sput-object v0, Le/o;->e:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-boolean v0, Le/o;->f:Z

    new-instance v0, Ll/c;

    invoke-direct {v0}, Ll/c;-><init>()V

    sput-object v0, Le/o;->g:Ll/c;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/o;->h:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/o;->i:Ljava/lang/Object;

    return-void
.end method

.method public static b()V
    .locals 5

    sget-object v0, Le/o;->g:Ll/c;

    invoke-virtual {v0}, Ll/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v1, v0

    check-cast v1, Ll/g;

    invoke-virtual {v1}, Ll/g;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ll/g;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/o;

    if-eqz v1, :cond_0

    check-cast v1, Le/y;

    iget-object v2, v1, Le/y;->k:Landroid/content/Context;

    invoke-static {v2}, Le/o;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Le/o;->c:Ly/e;

    if-eqz v3, :cond_1

    sget-object v4, Le/o;->d:Ly/e;

    invoke-virtual {v3, v4}, Ly/e;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Le/l;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Le/l;-><init>(Landroid/content/Context;I)V

    sget-object v2, Le/o;->a:Le/e0;

    invoke-virtual {v2, v3}, Le/e0;->execute(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Le/y;->t(ZZ)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static c()Ly/e;
    .locals 3

    invoke-static {}, Lk1/a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Le/o;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Le/n;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v0

    new-instance v1, Ly/e;

    new-instance v2, Ly/f;

    invoke-direct {v2, v0}, Ly/f;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v1, v2}, Ly/e;-><init>(Ly/f;)V

    return-object v1

    :cond_0
    sget-object v0, Le/o;->c:Ly/e;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Ly/e;->b:Ly/e;

    return-object v0
.end method

.method public static d()Ljava/lang/Object;
    .locals 3

    sget-object v0, Le/o;->g:Ll/c;

    invoke-virtual {v0}, Ll/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    move-object v1, v0

    check-cast v1, Ll/g;

    invoke-virtual {v1}, Ll/g;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ll/g;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/o;

    if-eqz v1, :cond_0

    check-cast v1, Le/y;

    iget-object v1, v1, Le/y;->k:Landroid/content/Context;

    if-eqz v1, :cond_0

    const-string v0, "locale"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 4

    sget-object v0, Le/o;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    sget v0, Le/d0;->a:I

    invoke-static {}, Le/c0;->a()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Le/d0;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v0, "autoStoreLocales"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Le/o;->e:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppCompatDelegate"

    const-string v0, "Checking for metadata for AppLocalesMetadataHolderService : Service not found"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Le/o;->e:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object p0, Le/o;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static k(Le/y;)V
    .locals 4

    sget-object v0, Le/o;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le/o;->g:Ll/c;

    invoke-virtual {v1}, Ll/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    move-object v2, v1

    check-cast v2, Ll/g;

    invoke-virtual {v2}, Ll/g;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ll/g;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/o;

    if-eq v3, p0, :cond_1

    if-nez v3, :cond_0

    :cond_1
    invoke-virtual {v2}, Ll/g;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static m(Ly/e;)V
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lk1/a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Le/o;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Ly/e;->a:Ly/f;

    iget-object p0, p0, Ly/f;->a:Landroid/os/LocaleList;

    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/m;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-static {v0, p0}, Le/n;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    return-void

    :cond_0
    sget-object v0, Le/o;->c:Ly/e;

    invoke-virtual {p0, v0}, Ly/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Le/o;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Le/o;->c:Ly/e;

    invoke-static {}, Le/o;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public static q(I)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "AppCompatDelegate"

    const-string v0, "setDefaultNightMode() called with an unknown mode"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget v0, Le/o;->b:I

    if-eq v0, p0, :cond_3

    sput p0, Le/o;->b:I

    sget-object p0, Le/o;->h:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Le/o;->g:Ll/c;

    invoke-virtual {v0}, Ll/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    move-object v2, v0

    check-cast v2, Ll/g;

    invoke-virtual {v2}, Ll/g;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ll/g;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/o;

    if-eqz v2, :cond_1

    check-cast v2, Le/y;

    invoke-virtual {v2, v1, v1}, Le/y;->t(ZZ)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    return-void
.end method

.method public static s(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Le/o;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lk1/a;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Le/o;->f:Z

    if-nez v0, :cond_1

    sget-object v0, Le/o;->a:Le/e0;

    new-instance v1, Le/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/l;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Le/e0;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Le/o;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le/o;->c:Ly/e;

    if-nez v1, :cond_5

    sget-object v1, Le/o;->d:Ly/e;

    if-nez v1, :cond_3

    invoke-static {p0}, La1/b;->Y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly/e;->a(Ljava/lang/String;)Ly/e;

    move-result-object p0

    sput-object p0, Le/o;->d:Ly/e;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    sget-object p0, Le/o;->d:Ly/e;

    invoke-virtual {p0}, Ly/e;->b()Z

    move-result p0

    if-eqz p0, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    sget-object p0, Le/o;->d:Ly/e;

    sput-object p0, Le/o;->c:Ly/e;

    goto :goto_2

    :cond_5
    sget-object v2, Le/o;->d:Ly/e;

    invoke-virtual {v1, v2}, Ly/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Le/o;->c:Ly/e;

    sput-object v1, Le/o;->d:Ly/e;

    iget-object v1, v1, Ly/e;->a:Ly/f;

    iget-object v1, v1, Ly/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, La1/b;->U(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract e()V
.end method

.method public abstract g()V
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method

.method public abstract l(I)Z
.end method

.method public abstract n(I)V
.end method

.method public abstract o(Landroid/view/View;)V
.end method

.method public abstract p(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract r(Ljava/lang/CharSequence;)V
.end method
