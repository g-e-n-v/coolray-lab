.class public abstract Lw0/og;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo2/h;

.field public static final b:Lo2/h;

.field public static final c:Lo2/h;

.field public static final d:Lo2/h;

.field public static final e:Lo2/h;

.field public static volatile f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo2/h;

    const-string v1, "Stack id=(\\d+)"

    invoke-direct {v0, v1}, Lo2/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw0/og;->a:Lo2/h;

    new-instance v0, Lo2/h;

    const-string v1, "taskId=(\\d+):\\s*(\\S+)"

    invoke-direct {v0, v1}, Lo2/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw0/og;->b:Lo2/h;

    new-instance v0, Lo2/h;

    const-string v1, "mFocusedStack=ActivityStack\\{[^}]*stackId=(\\d+)"

    invoke-direct {v0, v1}, Lo2/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw0/og;->c:Lo2/h;

    new-instance v0, Lo2/h;

    const-string v1, "(\\d+)x(\\d+)"

    invoke-direct {v0, v1}, Lo2/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw0/og;->d:Lo2/h;

    new-instance v0, Lo2/h;

    const-string v1, "^[A-Za-z0-9._]+/[A-Za-z0-9._$]+$"

    invoke-direct {v0, v1}, Lo2/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw0/og;->e:Lo2/h;

    const-string v0, ""

    sput-object v0, Lw0/og;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lw0/n;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lw0/n;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "adb["

    const-string v1, "] => "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    const-string v1, " "

    invoke-static {p0, v0, v1}, Lo2/t;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-static {v1, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplitScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static b(I)Lw0/lg;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dumpsys activity activities | grep -A3 \'Stack #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\' | grep -oE \'mBounds=Rect\\([^)]*\\)\' | head -1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1f40

    invoke-static {v0, p0}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Rect\\((\\d+), (\\d+) - (\\d+), (\\d+)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "matcher(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lk1/a;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo2/e;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lo2/e;->a()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lw0/lg;

    check-cast p0, Lo2/d;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lw0/lg;-><init>(IIII)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lw0/mg;)V
    .locals 2

    const-string v0, "win"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "am force-stop "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lw0/mg;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1770

    invoke-static {v0, p0}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static d()Z
    .locals 5

    const/16 v0, 0x1388

    const-string v1, "settings get global development_settings_enabled"

    invoke-static {v0, v1}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "settings get global enable_freeform_support"

    invoke-static {v0, v2}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "settings get global force_resizable_activities"

    invoke-static {v0, v3}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-static {v1, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "settings put global development_settings_enabled 1"

    invoke-static {v0, v1}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    const-string v1, "settings put global enable_freeform_support 1"

    invoke-static {v0, v1}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    const-string v1, "settings put global force_resizable_activities 1"

    invoke-static {v0, v1}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public static e(I)Z
    .locals 5

    invoke-static {}, Lw0/og;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx1/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lx1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v2, 0x2f

    invoke-static {v0, v2}, Lo2/k;->A0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "am stack remove "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f40

    invoke-static {v2, v0}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lw0/og;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    const-string v3, "fecharPilha("

    const-string v4, ", "

    invoke-static {v3, p0, v4}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez v1, :cond_1

    const-string v1, "pacote?"

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") -> "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const-string v0, "fechou"

    goto :goto_0

    :cond_2
    const-string v0, "AINDA la"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SplitScreen"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static f()Lw0/ng;
    .locals 8

    const-string v0, "wm size"

    const/16 v1, 0x1770

    invoke-static {v1, v0}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADB_FAIL"

    invoke-static {v0, v1}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sput-object v0, Lw0/og;->f:Ljava/lang/String;

    return-object v2

    :cond_0
    invoke-static {v0}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object v1

    invoke-static {v1}, Ln2/g;->W(Ln2/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    const-string v7, "Override size"

    invoke-static {v6, v7, v5}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_0
    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_5

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    sget-object v6, Lw0/og;->d:Lo2/h;

    invoke-virtual {v6, v4}, Lo2/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    :cond_5
    if-eqz v4, :cond_9

    sget-object v1, Lw0/og;->d:Lo2/h;

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v3}, Lo2/h;->b(Ljava/lang/CharSequence;I)Lo2/e;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lo2/e;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lo2/d;

    invoke-virtual {v0, v5}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Lo2/e;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lo2/d;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v0, :cond_8

    if-gtz v1, :cond_7

    goto :goto_2

    :cond_7
    new-instance v2, Lw0/ng;

    invoke-direct {v2, v0, v1}, Lw0/ng;-><init>(II)V

    :cond_8
    :goto_2
    return-object v2

    :cond_9
    :goto_3
    const-string v1, "wm size sem resolu\u00e7\u00e3o: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw0/og;->f:Ljava/lang/String;

    return-object v2
.end method

.method public static g(Lw0/mg;)Z
    .locals 3

    const-string v0, "win"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "am stack list"

    const/16 v1, 0x1770

    invoke-static {v1, v0}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADB_FAIL"

    invoke-static {v0, v1}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object v0, Lw0/og;->f:Ljava/lang/String;

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "taskId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lw0/mg;->b:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":.*visible=true"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "pattern"

    invoke-static {p0, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    const-string v1, "compile(...)"

    invoke-static {p0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "addCategory(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const-string v2, "queryIntentActivities(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lf2/f;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Lf2/f;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lw0/zf;

    invoke-direct {v1, v3}, Lw0/zf;-><init>(I)V

    new-instance v3, Ln2/c;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v1, v4}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance v1, Lw0/q1;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Lw0/q1;-><init>(ILjava/lang/Object;)V

    new-instance p0, Ln2/d;

    const/4 v2, 0x1

    invoke-direct {p0, v3, v2, v1}, Ln2/d;-><init>(Ln2/f;ZLh2/l;)V

    new-instance v1, Lw0/zf;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lw0/zf;-><init>(I)V

    new-instance v2, Ln2/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance p0, Lw0/h8;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lw0/h8;-><init>(Landroid/content/pm/PackageManager;I)V

    new-instance v0, Ln2/c;

    const/4 v1, 0x2

    invoke-direct {v0, v2, p0, v1}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance p0, Lw0/b6;

    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lw0/b6;-><init>(I)V

    new-instance v1, Ln2/c;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    invoke-static {v1}, Ln2/g;->W(Ln2/f;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static i()Ljava/util/Map;
    .locals 8

    const-string v0, "am stack list"

    const/16 v1, 0x1f40

    invoke-static {v1, v0}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADB_FAIL"

    invoke-static {v0, v1}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object v0, Lw0/og;->f:Ljava/lang/String;

    sget-object v0, Ly1/q;->a:Ly1/q;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object v0

    iget-object v2, v0, Ln2/c;->b:Ln2/f;

    invoke-interface {v2}, Ln2/f;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Ln2/c;->c:Ljava/lang/Object;

    check-cast v4, Lh2/l;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lw0/og;->a:Lo2/h;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lo2/h;->b(Ljava/lang/CharSequence;I)Lo2/e;

    move-result-object v5

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lo2/e;->a()Ljava/util/List;

    move-result-object v3

    check-cast v3, Lo2/d;

    invoke-virtual {v3, v7}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lw0/og;->b:Lo2/h;

    invoke-virtual {v5, v4, v6}, Lo2/h;->b(Ljava/lang/CharSequence;I)Lo2/e;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lo2/e;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, Lo2/d;

    invoke-virtual {v5, v7}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Lo2/e;->a()Ljava/util/List;

    move-result-object v4

    check-cast v4, Lo2/d;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v4

    new-instance v6, Lx1/a;

    invoke-direct {v6, v5, v4}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static j()Ljava/lang/Integer;
    .locals 3

    const-string v0, "dumpsys activity activities | grep -oE \'Stack #[0-9]+: type=standard mode=pinned\'"

    const/16 v1, 0x1f40

    invoke-static {v1, v0}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stack #(\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "compile(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "matcher(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lk1/a;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo2/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo2/e;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    check-cast v0, Lo2/d;

    invoke-virtual {v0, v1}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;Lw0/lg;)Lw0/mg;
    .locals 8

    const-string v0, "component"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw0/og;->e:Lo2/h;

    invoke-virtual {v0, p0}, Lo2/h;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "componente inv\u00e1lido: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lw0/og;->f:Ljava/lang/String;

    return-object v1

    :cond_0
    const-string v0, "am force-stop "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1770

    invoke-static {v2, v0}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "am start -n "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --windowingMode 5"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2710

    invoke-static {v4, v0}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ADB_FAIL"

    invoke-static {v0, v4}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "Exception"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "Error:"

    invoke-static {v0, v4, v5}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x0

    move-object v4, v1

    :goto_0
    if-nez v4, :cond_5

    const/16 v5, 0x8

    if-ge v0, v5, :cond_5

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lw0/og;->i()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx1/a;

    iget-object v6, v6, Lx1/a;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_3
    move-object v5, v1

    :goto_1
    check-cast v5, Ljava/util/Map$Entry;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_2

    :cond_4
    move-object v4, v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    const-string p0, "n\u00e3o encontrei a stack de "

    const-string p2, " depois de abrir"

    invoke-static {p0, p1, p2}, Landroidx/activity/result/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lw0/og;->f:Ljava/lang/String;

    return-object v1

    :cond_6
    invoke-static {}, Lw0/og;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx1/a;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lx1/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v1, Lw0/mg;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2, v0, p1, p0}, Lw0/mg;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p2}, Lw0/og;->l(Lw0/mg;Lw0/lg;)Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "abriu mas resize falhou: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lw0/og;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lw0/og;->f:Ljava/lang/String;

    :cond_7
    return-object v1

    :cond_8
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "falha ao abrir "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lw0/og;->f:Ljava/lang/String;

    return-object v1
.end method

.method public static l(Lw0/mg;Lw0/lg;)Z
    .locals 5

    const-string v0, "win"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "am task resize "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lw0/mg;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lw0/lg;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lw0/lg;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lw0/lg;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p1, Lw0/lg;->d:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1f40

    invoke-static {v0, p1}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ADB_FAIL"

    invoke-static {p1, v0}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SplitScreen"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string v0, "Exception"

    invoke-static {p1, v0, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {p0}, Lw0/og;->g(Lw0/mg;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "resize mandado mas a janela (taskId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lw0/mg;->b:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") sumiu/ficou invis\u00edvel depois"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lw0/og;->f:Ljava/lang/String;

    sget-object p0, Lw0/og;->f:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    sput-object p1, Lw0/og;->f:Ljava/lang/String;

    const-string p0, "resize: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static m(ILw0/lg;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "am stack resize "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lw0/lg;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lw0/lg;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lw0/lg;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p1, Lw0/lg;->d:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1f40

    invoke-static {v0, p1}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ADB_FAIL"

    invoke-static {p1, v0}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "Exception"

    invoke-static {p1, v0, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lw0/og;->j()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    sput-object p1, Lw0/og;->f:Ljava/lang/String;

    return v1
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
