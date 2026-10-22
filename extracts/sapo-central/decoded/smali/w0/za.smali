.class public final synthetic Lw0/za;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/za;->a:Lcom/ex/auto/MainActivity;

    iput-boolean p2, p0, Lw0/za;->b:Z

    iput-object p3, p0, Lw0/za;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    iget-object v3, v0, Lw0/za;->a:Lcom/ex/auto/MainActivity;

    iget-boolean v2, v0, Lw0/za;->b:Z

    const-string v4, "adb_gpio_enabled"

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->d1()V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Lcom/ex/auto/MainActivity;->b0(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->d1()V

    goto :goto_0

    :cond_1
    const v1, 0x7f0f00f6

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "getString(...)"

    invoke-static {v5, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lw0/jf;

    const/4 v1, 0x2

    invoke-direct {v12, v3, v2, v1}, Lw0/jf;-><init>(Landroid/content/ContextWrapper;ZI)V

    const/4 v15, 0x0

    const/16 v16, 0xec0

    const/4 v4, 0x0

    const-wide/16 v6, 0x7d0

    const/16 v8, 0x2710

    iget-object v9, v0, Lw0/za;->c:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v3 .. v16}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    :goto_0
    sget-object v1, Lx1/e;->c:Lx1/e;

    return-object v1
.end method
