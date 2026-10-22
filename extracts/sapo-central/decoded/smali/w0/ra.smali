.class public final synthetic Lw0/ra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lcom/ex/auto/MainActivity;

.field public final synthetic d:Le/i;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;ZLe/i;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lw0/ra;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/ra;->c:Lcom/ex/auto/MainActivity;

    iput-boolean p2, p0, Lw0/ra;->b:Z

    iput-object p3, p0, Lw0/ra;->d:Le/i;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/ex/auto/MainActivity;Le/i;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lw0/ra;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw0/ra;->b:Z

    iput-object p2, p0, Lw0/ra;->c:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, Lw0/ra;->d:Le/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lw0/ra;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-boolean v5, p0, Lw0/ra;->b:Z

    iget-object v3, p0, Lw0/ra;->c:Lcom/ex/auto/MainActivity;

    iget-object v4, p0, Lw0/ra;->d:Le/i;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    if-eqz v5, :cond_0

    invoke-static {v3}, Lw0/ih;->c(Landroid/content/Context;)Z

    move-result v0

    move v6, v0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lw0/ih;->a:Ljava/lang/String;

    sget-object v2, Lw0/ih;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lw0/ih;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {v0}, Lw0/ih;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_n=0; while grep -F \" "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \" /proc/mounts >/dev/null 2>&1 && [ $_n -lt 12 ]; do "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "umount "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 2>/dev/null || umount -l "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 2>/dev/null || break; _n=$((_n+1)); done\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "setprop ctl.restart "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null || true\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "echo \"SRC_INODE=$(stat -c %i "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/data/local/tmp/vcodec642.so"

    invoke-static {v0}, Lw0/ih;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>/dev/null)\"\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "echo \"TGT_INODE=$(stat -c %i "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lw0/n;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lw0/n;-><init>(I)V

    const/16 v2, 0x7530

    const/4 v6, 0x0

    invoke-static {v0, v2, v6, v1}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lw0/ih;->c:Ljava/lang/String;

    const-string v1, "TGT_INODE"

    invoke-static {v0, v1}, Lw0/ih;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SRC_INODE"

    invoke-static {v0, v2}, Lw0/ih;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lw0/ih;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "remove: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v1, "OK"

    goto :goto_0

    :cond_2
    const-string v1, "FAIL"

    :goto_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u2014 "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-static {v1, v0}, Lo2/k;->D0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoCodec"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_1
    move v6, v1

    :goto_2
    iget-object v0, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/sa;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lw0/sa;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/Object;ZZI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/ra;->c:Lcom/ex/auto/MainActivity;

    iget-boolean v2, p0, Lw0/ra;->b:Z

    iget-object v3, p0, Lw0/ra;->d:Le/i;

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\n        svc wifi disable\n        _n=0\n        while [ $_n -lt 20 ]; do\n          [ \"$(ip rule show | grep -c \'oif wlan0\')\" = \"0\" ] && break\n          sleep 1; _n=$((_n + 1))\n        done\n        for _m in $(grep \' /data/app/\' /proc/mounts | awk \'{print $2}\'); do\n          umount -l \"$_m\" 2>/dev/null\n        done\n        setprop dalvik.vm.usejit "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    const-string v2, "true"

    goto :goto_3

    :cond_3
    const-string v2, "false"

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n        setprop ctl.restart zygote\n    "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v4, 0x9c40

    invoke-virtual {v0, v4, v2}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, Lw0/ab;

    invoke-direct {v4, v3, v1, v0}, Lw0/ab;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-wide/32 v0, 0xafc8

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
