.class public final synthetic Lw0/qd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/SharedPreferences;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/qd;->a:Landroid/content/Context;

    iput-object p2, p0, Lw0/qd;->b:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lw0/qd;->c:Ljava/lang/String;

    iput p4, p0, Lw0/qd;->d:I

    iput-object p5, p0, Lw0/qd;->e:Ljava/lang/String;

    iput-object p6, p0, Lw0/qd;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lw0/qd;->a:Landroid/content/Context;

    iget-object v1, p0, Lw0/qd;->b:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lw0/qd;->c:Ljava/lang/String;

    iget v3, p0, Lw0/qd;->d:I

    iget-object v4, p0, Lw0/qd;->e:Ljava/lang/String;

    iget-object v5, p0, Lw0/qd;->f:Ljava/lang/String;

    sget-boolean v6, Lw0/sd;->a:Z

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v6, Lw0/rd;

    invoke-direct {v6, v1, v2, v3, v0}, Lw0/rd;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;ILandroid/content/Context;)V

    invoke-static {v0, v4, v5, v6}, Lw0/sd;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lh2/a;)V

    return-void
.end method
