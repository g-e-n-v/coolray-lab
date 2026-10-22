.class public final synthetic Lw0/rd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:Landroid/content/SharedPreferences;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/rd;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lw0/rd;->b:Ljava/lang/String;

    iput p3, p0, Lw0/rd;->c:I

    iput-object p4, p0, Lw0/rd;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lw0/rd;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "msg_seen_"

    iget-object v3, p0, Lw0/rd;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lw0/rd;->c:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v1, Lw0/k5;->a:Lw0/k5;

    const-string v1, "context"

    iget-object v2, p0, Lw0/rd;->d:Landroid/content/Context;

    invoke-static {v2, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lw0/k5;->h(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/v;

    const/4 v5, 0x4

    invoke-direct {v2, v0, v3, v4, v5}, Lw0/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0
.end method
