.class public final synthetic Lw0/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/view/KeyEvent$Callback;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CheckBox;Ljava/util/Set;Ljava/lang/String;Lcom/ex/auto/CloseAppsWhitelistActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lw0/o3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/o3;->c:Landroid/view/KeyEvent$Callback;

    iput-object p2, p0, Lw0/o3;->d:Ljava/lang/Object;

    iput-object p3, p0, Lw0/o3;->b:Ljava/lang/String;

    iput-object p4, p0, Lw0/o3;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lw0/o3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/o3;->c:Landroid/view/KeyEvent$Callback;

    iput-object p2, p0, Lw0/o3;->b:Ljava/lang/String;

    iput-object p3, p0, Lw0/o3;->d:Ljava/lang/Object;

    iput-object p4, p0, Lw0/o3;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lw0/o3;->a:I

    iget-object v0, p0, Lw0/o3;->e:Ljava/lang/Object;

    iget-object v1, p0, Lw0/o3;->d:Ljava/lang/Object;

    iget-object v2, p0, Lw0/o3;->b:Ljava/lang/String;

    iget-object v3, p0, Lw0/o3;->c:Landroid/view/KeyEvent$Callback;

    packed-switch p1, :pswitch_data_0

    check-cast v3, Lcom/ex/auto/MainActivity;

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/util/LinkedHashMap;

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw0/o5;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v3, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lw0/mb;

    invoke-direct {v4, v3, v2, p1, v1}, Lw0/mb;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Lw0/o5;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast v3, Landroid/widget/CheckBox;

    check-cast v1, Ljava/util/Set;

    check-cast v0, Lcom/ex/auto/CloseAppsWhitelistActivity;

    sget p1, Lcom/ex/auto/CloseAppsWhitelistActivity;->c:I

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-nez p1, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_1
    const-string p1, "close_apps_whitelist_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {v1}, Ly1/g;->Z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x3e

    const-string v3, ","

    invoke-static {v0, v3, v1, v2}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "packages"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
