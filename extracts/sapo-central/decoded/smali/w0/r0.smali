.class public final synthetic Lw0/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lw0/r0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lw0/r0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lw0/r0;->a:I

    const/4 v1, 0x1

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "SwcModeCtrl"

    const-string v1, "cancelPendingAaVoice: BACK desativado (investiga\u00e7\u00e3o) \u2014 topo da pilha: "

    :try_start_0
    const-string v5, "dumpsys activity activities 2>/dev/null | grep mResumedActivity"

    new-instance v6, Lw0/n;

    invoke-direct {v6, v4}, Lw0/n;-><init>(I)V

    invoke-static {v5, v2, v3, v6}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancelPendingAaVoice falhou: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lw0/r0;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lw0/r0;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_1
    const-wide/16 v0, 0x0

    sput-wide v0, Lw0/rg;->e:J

    sget-object v0, Lw0/rg;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lw0/r0;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lw0/r0;-><init>(I)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :pswitch_2
    const-string v0, "reboot"

    sget-boolean v1, Lcom/ex/auto/PhoneSyncService;->z:Z

    const-string v1, "PhoneSyncService"

    const-string v2, "a\u00e7\u00e3o shell conclu\u00edda: "

    :try_start_1
    new-instance v5, Lw0/n;

    invoke-direct {v5, v4}, Lw0/n;-><init>(I)V

    const/16 v4, 0x1388

    invoke-static {v0, v4, v3, v5}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x190

    invoke-static {v3, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "a\u00e7\u00e3o shell falhou: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :pswitch_3
    sget-object v0, Lw0/od;->a:Lw0/od;

    invoke-static {}, Lw0/od;->d()V

    invoke-static {}, Lw0/od;->a()V

    return-void

    :pswitch_4
    sget-object v0, Lw0/od;->l:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    sget-object v1, Lw0/od;->a:Lw0/od;

    invoke-static {v0}, Lw0/od;->k(Landroid/media/session/MediaController;)V

    :cond_1
    return-void

    :pswitch_5
    sget-object v0, Lw0/od;->a:Lw0/od;

    invoke-static {}, Lw0/od;->f()V

    return-void

    :pswitch_6
    sget-object v0, Lw0/od;->a:Lw0/od;

    invoke-static {}, Lw0/od;->f()V

    return-void

    :pswitch_7
    sget-boolean v0, Lw0/od;->g:Z

    if-nez v0, :cond_2

    sget-object v0, Lw0/od;->a:Lw0/od;

    invoke-virtual {v0}, Lw0/od;->i()V

    :cond_2
    return-void

    :pswitch_8
    sget-boolean v0, Lw0/od;->g:Z

    if-nez v0, :cond_3

    sget-object v0, Lw0/od;->a:Lw0/od;

    invoke-static {}, Lw0/od;->f()V

    :cond_3
    return-void

    :pswitch_9
    sget-object v0, Lw0/od;->a:Lw0/od;

    invoke-virtual {v0}, Lw0/od;->i()V

    return-void

    :pswitch_a
    sget-boolean v0, Lw0/od;->g:Z

    if-nez v0, :cond_4

    sget-object v0, Lw0/od;->l:Landroid/media/session/MediaController;

    if-eqz v0, :cond_4

    sget-object v1, Lw0/od;->a:Lw0/od;

    invoke-static {v0}, Lw0/od;->k(Landroid/media/session/MediaController;)V

    :cond_4
    return-void

    :pswitch_b
    sget-boolean v0, Lw0/od;->g:Z

    if-nez v0, :cond_5

    sget-object v0, Lw0/od;->a:Lw0/od;

    invoke-static {}, Lw0/od;->f()V

    :cond_5
    return-void

    :pswitch_c
    const-string v0, "ExSapoCast"

    move-object v2, v3

    move v5, v4

    :goto_3
    :try_start_2
    sget-boolean v6, Lw0/m;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_8

    if-nez v2, :cond_8

    :try_start_3
    new-instance v6, Ljava/net/ServerSocket;

    invoke-direct {v6}, Ljava/net/ServerSocket;-><init>()V

    invoke-virtual {v6, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    new-instance v7, Ljava/net/InetSocketAddress;

    const v8, 0xbaba

    invoke-direct {v7, v8}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v6

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catch_2
    move-exception v6

    add-int/lit8 v5, v5, 0x1

    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bind 47802 falhou (tentativa "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x19

    if-lt v5, v6, :cond_7

    const-string v1, "desistindo do bind da 47802"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_3
    :cond_6
    :goto_4
    sput-boolean v4, Lw0/m;->e:Z

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :cond_7
    const-wide/16 v6, 0x4b0

    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_8
    if-nez v2, :cond_a

    if-eqz v2, :cond_6

    :cond_9
    :goto_5
    :try_start_6
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :cond_a
    :try_start_7
    const-string v5, "escutando em 0.0.0.0:47802"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    sget-boolean v5, Lw0/m;->e:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_9

    :try_start_8
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    :catch_5
    move-object v5, v3

    :goto_7
    if-nez v5, :cond_b

    goto :goto_6

    :cond_b
    :try_start_9
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lw0/i6;

    invoke-direct {v7, v5, v4}, Lw0/i6;-><init>(Ljava/net/Socket;I)V

    const-string v5, "exsapocast-hs"

    invoke-direct {v6, v7, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :goto_8
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acceptLoop: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v2, :cond_6

    goto :goto_5

    :goto_9
    return-void

    :goto_a
    if-eqz v2, :cond_c

    :try_start_b
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :catch_6
    :cond_c
    sput-boolean v4, Lw0/m;->e:Z

    throw v0

    :pswitch_d
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v0, "CentralWatchdog"

    const-string v1, "doorAudioPause: keyevent 127 OK, sa\u00edda=\""

    :try_start_c
    const-string v5, "input keyevent 127"

    new-instance v6, Lw0/n;

    invoke-direct {v6, v4}, Lw0/n;-><init>(I)V

    invoke-static {v5, v2, v3, v6}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_b

    :catch_7
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doorAudioPause: keyevent 127 falhou: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_b
    return-void

    :pswitch_e
    :try_start_d
    const-string v0, "for i in 1 2 3 4 5; do iptables  -t mangle -D POSTROUTING -j TTL --ttl-set 65 2>/dev/null || break; done\nfor i in 1 2 3 4 5; do ip6tables -t mangle -D POSTROUTING -j HL  --hl-set  65 2>/dev/null || break; done\niptables  -t mangle -A POSTROUTING -j TTL --ttl-set 65 2>&1\nip6tables -t mangle -A POSTROUTING -j HL  --hl-set  65 2>&1\necho TTL_V4=$(iptables  -t mangle -S POSTROUTING | grep -c \'ttl-set 65\')\necho TTL_V6=$(ip6tables -t mangle -S POSTROUTING | grep -c \'hl-set 65\')"

    const/16 v1, 0x61a8

    invoke-static {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "erro: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "CentralWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TTL 65 no boot: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "saida"

    invoke-static {v0, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "TTL_V4"

    invoke-static {v0, v3}, Lw0/e8;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_d

    const-string v3, "TTL_V6"

    invoke-static {v0, v3}, Lw0/e8;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_d

    const-string v3, "reaplicado"

    goto :goto_d

    :cond_d
    const-string v3, "FALHOU"

    :goto_d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u2014 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    const-string v5, " "

    invoke-static {v0, v3, v5}, Lo2/t;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x78

    invoke-static {v3, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :pswitch_f
    const-string v0, "CentralWatchdog"

    :try_start_e
    const-string v1, "settings get global policy_control"

    const/16 v2, 0x1f40

    invoke-static {v2, v1}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "immersive"

    invoke-static {v1, v3, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_e

    :cond_e
    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "tela cheia estava ligada de um boot anterior \u2014 desligando por seguran\u00e7a"

    invoke-static {v0, v1, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "settings delete global policy_control"

    invoke-static {v2, v1}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    const-string v1, "am force-stop com.android.systemui"

    invoke-static {v2, v1}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v1

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "n\u00e3o deu pra conferir a tela cheia no boot: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_e
    return-void

    :pswitch_10
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v0, "CentralWatchdog"

    const-string v1, "\necho PERMS_OK"

    :try_start_f
    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a98

    invoke-static {v2, v1}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PERMS_OK"

    invoke-static {v1, v2, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "permiss\u00f5es de fixes/ normalizadas no arranque"

    invoke-static {v0, v1, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_10

    :catchall_3
    move-exception v1

    goto :goto_f

    :cond_f
    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "permiss\u00f5es de fixes/: canal local n\u00e3o respondeu (o BootScript se vira)"

    invoke-static {v0, v1, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_10

    :goto_f
    sget-object v2, Lw0/ae;->a:Lw0/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "permiss\u00f5es de fixes/: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (o BootScript se vira)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_10
    return-void

    :pswitch_11
    sget-object v0, Lw0/v1;->a:Lw0/v1;

    :cond_10
    sget-boolean v2, Lw0/v1;->d:Z

    if-eqz v2, :cond_27

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    const-wide/16 v5, 0x3a98

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_11

    goto/16 :goto_1d

    :cond_11
    sget-object v7, Lw0/v1;->b:Ljava/util/UUID;

    if-nez v7, :cond_12

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "CarplaySdp"

    const-string v1, "an\u00fancio SDP n\u00e3o publicado \u2014 a pol\u00edtica nativa n\u00e3o devolveu a UUID do CarPlay"

    invoke-static {v0, v1, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1e

    :cond_12
    :try_start_10
    const-string v8, "CarPlay"

    invoke-virtual {v2, v8, v7}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_f

    :try_start_11
    monitor-enter v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    sget-boolean v8, Lw0/v1;->d:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    if-nez v8, :cond_15

    :try_start_13
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :catchall_4
    :try_start_14
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    :cond_13
    monitor-enter v0

    sget-object v1, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-ne v1, v2, :cond_14

    sput-object v3, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;

    :cond_14
    :goto_11
    monitor-exit v0

    goto/16 :goto_1e

    :catchall_5
    move-exception v7

    goto/16 :goto_18

    :cond_15
    :try_start_15
    sput-object v2, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    :try_start_16
    monitor-exit v0

    sget-object v8, Lw0/ae;->a:Lw0/ae;

    const-string v8, "CarplaySdp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "registro SDP publicado (CarPlay / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :catchall_6
    :goto_12
    move v7, v4

    :cond_16
    sget-boolean v8, Lw0/v1;->d:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    if-eqz v8, :cond_1d

    const/16 v8, 0x12c

    if-ge v7, v8, :cond_1d

    :try_start_17
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v7
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_13

    :catchall_7
    :cond_17
    move-object v8, v3

    :goto_13
    :try_start_19
    const-string v9, "CarplaySdp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "conex\u00e3o RFCOMM de "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_18

    const-string v8, "?"

    goto :goto_14

    :catch_8
    move v7, v4

    goto :goto_15

    :cond_18
    :goto_14
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u2014 fechando (o stack do vendor assume)"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_8
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :try_start_1a
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    goto :goto_12

    :catch_9
    :goto_15
    :try_start_1b
    sget-boolean v8, Lw0/v1;->d:Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    if-nez v8, :cond_1a

    if-eqz v2, :cond_19

    :try_start_1c
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    :catchall_8
    :cond_19
    monitor-enter v0

    :try_start_1d
    sget-object v1, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-ne v1, v2, :cond_14

    sput-object v3, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    goto :goto_11

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1a
    add-int/2addr v7, v1

    if-ne v7, v1, :cond_1b

    :try_start_1e
    const-string v8, "CarplaySdp"

    const-string v9, "accept() estourou (normal nesta pilha) \u2014 reciclando, registro segue no ar"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9}, Lw0/v1;->a(J)Z

    move-result v8
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    if-nez v8, :cond_16

    if-eqz v2, :cond_1c

    :try_start_1f
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    :catchall_a
    :cond_1c
    monitor-enter v0

    :try_start_20
    sget-object v1, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-ne v1, v2, :cond_14

    sput-object v3, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    goto/16 :goto_11

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1d
    :try_start_21
    sget-boolean v7, Lw0/v1;->d:Z

    if-eqz v7, :cond_1e

    const-string v7, "CarplaySdp"

    const-string v8, "accept() falhou 300 vezes seguidas \u2014 republicando o registro"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    :cond_1e
    if-eqz v2, :cond_1f

    :try_start_22
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    :catchall_c
    :cond_1f
    monitor-enter v0

    :try_start_23
    sget-object v7, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-ne v7, v2, :cond_20

    sput-object v3, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    goto :goto_16

    :catchall_d
    move-exception v1

    goto :goto_17

    :cond_20
    :goto_16
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0

    throw v1

    :catchall_e
    move-exception v7

    :try_start_24
    monitor-exit v0

    throw v7
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    :catchall_f
    move-exception v7

    move-object v2, v3

    :goto_18
    :try_start_25
    sget-boolean v8, Lw0/v1;->d:Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_14

    if-nez v8, :cond_22

    if-eqz v2, :cond_21

    :try_start_26
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    :catchall_10
    :cond_21
    monitor-enter v0

    :try_start_27
    sget-object v1, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-ne v1, v2, :cond_14

    sput-object v3, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_11

    goto/16 :goto_11

    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_22
    :try_start_28
    const-string v8, "CarplaySdp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "an\u00fancio caiu ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") \u2014 retentando"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_14

    if-eqz v2, :cond_23

    :try_start_29
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_12

    :catchall_12
    :cond_23
    monitor-enter v0

    :try_start_2a
    sget-object v7, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-ne v7, v2, :cond_20

    sput-object v3, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_13

    goto :goto_16

    :catchall_13
    move-exception v1

    goto :goto_1a

    :goto_19
    invoke-static {v5, v6}, Lw0/v1;->a(J)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_1e

    :goto_1a
    monitor-exit v0

    throw v1

    :catchall_14
    move-exception v1

    if-eqz v2, :cond_24

    :try_start_2b
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_15

    :catchall_15
    :cond_24
    monitor-enter v0

    :try_start_2c
    sget-object v4, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-ne v4, v2, :cond_25

    sput-object v3, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception v1

    goto :goto_1c

    :cond_25
    :goto_1b
    monitor-exit v0

    throw v1

    :goto_1c
    monitor-exit v0

    throw v1

    :cond_26
    :goto_1d
    sget-object v2, Lw0/ae;->a:Lw0/ae;

    const-string v2, "CarplaySdp"

    const-string v7, "Bluetooth indispon\u00edvel \u2014 nova tentativa em 15s"

    invoke-static {v2, v7, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v5, v6}, Lw0/v1;->a(J)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_27
    :goto_1e
    return-void

    :pswitch_12
    sput-object v3, Lw0/u0;->o:Lw0/r0;

    sget-object v0, Lw0/u0;->a:Lw0/u0;

    invoke-virtual {v0, v4}, Lw0/u0;->d(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
