.class public final synthetic Lw0/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    const/4 p4, 0x3

    iput p4, p0, Lw0/i2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw0/i2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object p3, p0, Lw0/i2;->c:Ljava/lang/String;

    iput p1, p0, Lw0/i2;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;ILjava/lang/String;I)V
    .locals 0

    .line 2
    iput p4, p0, Lw0/i2;->a:I

    iput-object p1, p0, Lw0/i2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput p2, p0, Lw0/i2;->d:I

    iput-object p3, p0, Lw0/i2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;II)V
    .locals 0

    .line 3
    iput p4, p0, Lw0/i2;->a:I

    iput-object p1, p0, Lw0/i2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object p2, p0, Lw0/i2;->c:Ljava/lang/String;

    iput p3, p0, Lw0/i2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lw0/i2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/i2;->c:Ljava/lang/String;

    iput-object p2, p0, Lw0/i2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput p3, p0, Lw0/i2;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v1, p0

    iget v0, v1, Lw0/i2;->a:I

    const/16 v2, 0x15b3

    const/16 v3, 0x2710

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/i2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v2, v1, Lw0/i2;->d:I

    iget-object v3, v1, Lw0/i2;->c:Ljava/lang/String;

    sget-boolean v4, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v4, :cond_0

    add-int/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Lcom/ex/auto/CentralWatchdogService;->e0(ILjava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, v1, Lw0/i2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v1, Lw0/i2;->c:Ljava/lang/String;

    iget v3, v1, Lw0/i2;->d:I

    sget-boolean v4, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v4, :cond_1

    add-int/2addr v3, v5

    invoke-virtual {v0, v3, v2}, Lcom/ex/auto/CentralWatchdogService;->V(ILjava/lang/String;)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v9, v1, Lw0/i2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v10, v1, Lw0/i2;->d:I

    iget-object v6, v1, Lw0/i2;->c:Ljava/lang/String;

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    :try_start_0
    const-string v0, "netstat -tln 2>/dev/null | grep -cE \'3051[56]\'"

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    int-to-long v2, v10

    iget-wide v7, v9, Lcom/ex/auto/CentralWatchdogService;->j1:J

    mul-long/2addr v7, v2

    iget-object v0, v9, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v4, Lw0/c2;

    invoke-direct/range {v4 .. v10}, Lw0/c2;-><init>(ZLjava/lang/String;JLcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_2
    iget-object v0, v1, Lw0/i2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v2, v1, Lw0/i2;->d:I

    iget-object v3, v1, Lw0/i2;->c:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/ex/auto/CentralWatchdogService;->q0(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    return-void

    :pswitch_3
    iget-object v0, v1, Lw0/i2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v1, Lw0/i2;->c:Ljava/lang/String;

    iget v3, v1, Lw0/i2;->d:I

    invoke-static {v0, v2, v3}, Lcom/ex/auto/CentralWatchdogService;->q0(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_5
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/ex/auto/CentralWatchdogService;->g0:J

    :goto_2
    return-void

    :pswitch_4
    iget-object v3, v1, Lw0/i2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v4, v1, Lw0/i2;->c:Ljava/lang/String;

    iget v5, v1, Lw0/i2;->d:I

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v6, "CentralWatchdog"

    const-string v7, "Auto-proxy aplicado: "

    const-string v8, "\n                    setenforce 0 2>/dev/null || true\n                    settings delete global http_proxy 2>/dev/null || true\n                    settings delete global global_http_proxy_exclusion_list 2>/dev/null || true\n                    settings put global global_http_proxy_host \""

    :try_start_1
    invoke-static {v4, v5}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    const-class v9, Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    if-nez v10, :cond_6

    goto :goto_3

    :cond_6
    const-string v11, "setGlobalProxy"

    const-class v12, Landroid/net/ProxyInfo;

    filled-new-array {v12}, [Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "setGlobalProxy erro: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v9, v6}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    :try_start_2
    new-instance v0, Lkotlinx/coroutines/scheduling/h;

    invoke-direct {v0, v2}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\"\n                    settings put global global_http_proxy_port "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\n                    echo \"PROXY_AUTO_SET="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3a

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\"\n                    "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x1f40

    invoke-virtual {v0, v8, v2}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.ex.auto.AUTO_PROXY_APPLIED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ip"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "port"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applyProxyToCentral erro: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v6}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    return-void

    :pswitch_5
    iget-object v0, v1, Lw0/i2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v1, Lw0/i2;->c:Ljava/lang/String;

    iget v3, v1, Lw0/i2;->d:I

    sget-boolean v4, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v4, :cond_7

    add-int/2addr v3, v5

    invoke-virtual {v0, v3, v2}, Lcom/ex/auto/CentralWatchdogService;->g0(ILjava/lang/String;)V

    :cond_7
    return-void

    :pswitch_6
    iget-object v6, v1, Lw0/i2;->c:Ljava/lang/String;

    iget-object v7, v1, Lw0/i2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v8, v1, Lw0/i2;->d:I

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v9, "AutoRota: confer\u00eancia/aplica\u00e7\u00e3o pendente para "

    const-string v10, "AutoRota: confer\u00eancia/aplica\u00e7\u00e3o pendente para "

    const-string v11, "etapa="

    const-string v0, "AutoRota: DNS default="

    const-string v12, "AutoRota: aplica\u00e7\u00e3o="

    const-string v13, "AutoRota: sa\u00edda="

    const-string v14, "aplicacao bytes="

    const-string v15, "verificacao"

    :try_start_3
    sget-object v16, Lw0/t1;->e:Ljava/lang/Object;

    monitor-enter v16
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    :try_start_4
    invoke-static {v7, v6, v8}, Lcom/ex/auto/CentralWatchdogService;->q0(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_f

    new-instance v5, Lkotlinx/coroutines/scheduling/h;

    invoke-direct {v5, v2}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    const-string v2, "\n        R=$(ip rule show 2>/dev/null)\nTBOX_TABLE=$(printf \'%s\\n\' \"$R\" | awk \'/(^|[[:space:]])oif tbox0([[:space:]]|$)/ {for(i=1;i<=NF;i++)if($i==\"lookup\"){print $(i+1);exit}}\')\n[ -n \"$TBOX_TABLE\" ] || TBOX_TABLE=tbox0\nTBOX_IMPLICIT=$(printf \'%s\\n\' \"$R\" | awk -v tab=\"$TBOX_TABLE\" \'/^19[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}\')\nTBOX_REF=$(printf \'%s\\n\' \"$R\" | awk -v tab=\"$TBOX_TABLE\" \'/^13[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}\')\n# Sem tbox0, a marca fixa 100 pode divergir da rede que o netd usa para DNS/socket.\n# A rede padr\u00e3o pode continuar registrada ap\u00f3s a STA cair; seguir seu netId real.\nif [ -z \"$TBOX_IMPLICIT\" ]; then\n  ROUTE_DEFAULT=$(dumpsys netd 2>/dev/null | sed -n \'s/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p\')\n  case \"$ROUTE_DEFAULT\" in\n    \'\'|*[!0-9]*) ;;\n    *) if [ \"$ROUTE_DEFAULT\" -gt 0 ] && [ \"$ROUTE_DEFAULT\" -le 65535 ]; then\n         TBOX_IMPLICIT=$(printf \'0x%x/0x1ffff\' \"$ROUTE_DEFAULT\")\n       fi ;;\n  esac\nfi\n        D=$(ip route show table 200 2>/dev/null | grep \'^default \')\n        echo \"GATEWAY=$(printf \'%s\\n\' \"$D\" | awk \'{for(i=1;i<=NF;i++)if($i==\"via\"){print $(i+1);exit}}\')\"\n        echo \"INTERFACE=$(printf \'%s\\n\' \"$D\" | awk \'{for(i=1;i<=NF;i++)if($i==\"dev\"){print $(i+1);exit}}\')\"\n        ip link show dev ap0 2>/dev/null | grep -qE \'<([^>]*,)?UP(,|>)\' && echo AP_UP=sim || echo AP_UP=nao\n        echo \"REGRAS_VALIDAS=$(printf \'%s\\n\' \"$R\" | awk \'/^(12500|18500|21000):/ && /fwmark/ && /iif lo([[:space:]]|$)/ && /lookup 200([[:space:]]|$)/ {seen[$1]=1} END{for(p in seen)n++; print n+0}\')\"\n        echo \"DNS_DEFAULT_NETID=$(dumpsys netd 2>/dev/null | sed -n \'s/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p\')\"\n        echo \"NETD_PID=$(pidof netd)\"\n        echo \"TBOX_TABLE=$TBOX_TABLE\"\n        echo \"TBOX_IMPLICIT=$TBOX_IMPLICIT\"\n        echo \"OUR_18500=$(printf \'%s\\n\' \"$R\" | awk \'/^18500:.*fwmark/{print $5; exit}\')\"\n        echo \"OUR_21000=$(printf \'%s\\n\' \"$R\" | awk \'/^21000:.*fwmark/{print $5; exit}\')\"\n        echo \"TBOX_REF=$TBOX_REF\"\n        echo \"OUR_12500=$(printf \'%s\\n\' \"$R\" | awk \'/^12500:.*fwmark/{print $5; exit}\')\"\n        echo \"REGRAS=$(printf \'%s\\n\' \"$R\" | grep -cE \'^(12500|18500|21000):\')\"\n        [ -n \"$D\" ] && echo \"ROTA_PADRAO=sim\" || echo \"ROTA_PADRAO=nao\"\n    "

    invoke-static {v2}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    invoke-virtual {v5, v3, v2}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v2, v6}, Lw0/t1;->e(Ljava/lang/String;Ljava/lang/String;)Lw0/c4;

    move-result-object v3

    sget-object v4, Lw0/c4;->c:Lw0/c4;

    if-ne v3, v4, :cond_b

    invoke-static {v7, v6, v8}, Lcom/ex/auto/CentralWatchdogService;->q0(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-virtual {v7}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v1, "auto_proxy_enabled"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v19, v15

    const/4 v15, 0x0

    :try_start_7
    invoke-interface {v3, v1, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v6, v1}, Lw0/t1;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lo2/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    const-string v15, "getBytes(...)"

    invoke-static {v14, v15}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v14, v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    new-instance v3, Lw0/m2;

    invoke-direct {v3, v5, v7, v8, v6}, Lw0/m2;-><init>(Lkotlinx/coroutines/scheduling/h;Lcom/ex/auto/CentralWatchdogService;ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/16 v14, 0x7530

    move-object/from16 v19, v15

    const/4 v15, 0x0

    :try_start_9
    invoke-static {v1, v14, v15, v3}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lw0/t1;->e(Ljava/lang/String;Ljava/lang/String;)Lw0/c4;

    move-result-object v3

    if-ne v3, v4, :cond_8

    sget-object v14, Lw0/ae;->a:Lw0/ae;

    const-string v14, "CentralWatchdog"

    const/16 v15, 0x640

    invoke-static {v15, v1}, Lo2/k;->D0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v20, v9

    :try_start_a
    const-string v9, "\n"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v21, v10

    :try_start_b
    const-string v10, " | "

    invoke-static {v15, v9, v10}, Lo2/t;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x0

    invoke-static {v14, v9, v15}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_5
    move-object/from16 v15, v19

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    :goto_6
    move-object/from16 v21, v10

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v20, v9

    goto :goto_6

    :cond_8
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    :goto_7
    sget-object v9, Lw0/ae;->a:Lw0/ae;

    const-string v9, "CentralWatchdog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " telefone="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " tabelaTbox="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "TBOX_TABLE"

    invoke-static {v1, v12}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " marca="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "TBOX_IMPLICIT"

    invoke-static {v1, v12}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " gateway="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "GATEWAY"

    invoke-static {v1, v12}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    invoke-static {v9, v10, v15}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v7, v6, v8}, Lcom/ex/auto/CentralWatchdogService;->q0(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.ex.auto.AUTO_ROUTE_APPLIED"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "ip"

    invoke-virtual {v9, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "ok"

    if-eq v3, v4, :cond_9

    const/4 v12, 0x1

    goto :goto_8

    :cond_9
    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v9, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "veredito"

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "result"

    const/16 v12, 0x258

    invoke-static {v12, v1}, Lo2/k;->D0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_a
    :goto_9
    move-object/from16 v15, v19

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v19, v15

    goto/16 :goto_10

    :cond_b
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v19, v15

    goto :goto_9

    :goto_a
    :try_start_c
    const-string v1, "NETD_PID"

    invoke-static {v2, v1}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "DNS_DEFAULT_NETID"

    invoke-static {v2, v9}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "TBOX_IMPLICIT"

    invoke-static {v2, v10}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v6, v1, v9, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, ":"

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static {v1, v2, v10, v9}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v1

    if-eq v3, v4, :cond_d

    invoke-static {v7, v6, v8}, Lcom/ex/auto/CentralWatchdogService;->q0(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v7, Lcom/ex/auto/CentralWatchdogService;->c0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v15, "dns"

    const-string v2, "\n        R=$(ip rule show 2>/dev/null)\nTBOX_TABLE=$(printf \'%s\\n\' \"$R\" | awk \'/(^|[[:space:]])oif tbox0([[:space:]]|$)/ {for(i=1;i<=NF;i++)if($i==\"lookup\"){print $(i+1);exit}}\')\n[ -n \"$TBOX_TABLE\" ] || TBOX_TABLE=tbox0\nTBOX_IMPLICIT=$(printf \'%s\\n\' \"$R\" | awk -v tab=\"$TBOX_TABLE\" \'/^19[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}\')\nTBOX_REF=$(printf \'%s\\n\' \"$R\" | awk -v tab=\"$TBOX_TABLE\" \'/^13[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}\')\n# Sem tbox0, a marca fixa 100 pode divergir da rede que o netd usa para DNS/socket.\n# A rede padr\u00e3o pode continuar registrada ap\u00f3s a STA cair; seguir seu netId real.\nif [ -z \"$TBOX_IMPLICIT\" ]; then\n  ROUTE_DEFAULT=$(dumpsys netd 2>/dev/null | sed -n \'s/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p\')\n  case \"$ROUTE_DEFAULT\" in\n    \'\'|*[!0-9]*) ;;\n    *) if [ \"$ROUTE_DEFAULT\" -gt 0 ] && [ \"$ROUTE_DEFAULT\" -le 65535 ]; then\n         TBOX_IMPLICIT=$(printf \'0x%x/0x1ffff\' \"$ROUTE_DEFAULT\")\n       fi ;;\n  esac\nfi\n        DNS_MARK=\"$TBOX_IMPLICIT\"\n        [ -n \"$DNS_MARK\" ] || DNS_MARK=0x64/0x1ffff\n        NETID=$(printf \'%d\' \"${DNS_MARK%/*}\")\n        DNS_DEFAULT=$(dumpsys netd 2>/dev/null | sed -n \'s/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p\')\nDNS_RC=sim\nsetprop net.dns1 8.8.8.8; setprop net.dns2 8.8.4.4\nDNS_OUT=$(ndc resolver setnetdns \"$NETID\" \'\' 8.8.8.8 8.8.4.4 2>&1)\necho \"$DNS_OUT\"\ncase \"$DNS_OUT\" in \"200 \"*) ;; *) DNS_RC=nao ;; esac\nif [ \"$DNS_DEFAULT\" = 0 ]; then\n  DNS_OUT=$(ndc resolver setnetdns 0 \'\' 8.8.8.8 8.8.4.4 2>&1)\n  echo \"$DNS_OUT\"\n  case \"$DNS_OUT\" in\n    \"200 \"*) settings put global exsapo_route_dns_zero_owned 1 ;;\n    *) DNS_RC=nao ;;\n  esac\nfi\necho \"ROTA_DNS_OK=$DNS_RC\"\necho \"DNS_DEFAULT_NETID=$DNS_DEFAULT\"\n    "

    invoke-static {v2}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Le0/b;

    const/4 v10, 0x1

    invoke-direct {v9, v10, v5}, Le0/b;-><init>(ILjava/lang/Object;)V

    const/16 v5, 0x4e20

    const/4 v12, 0x0

    invoke-static {v2, v5, v12, v9}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v6, v8}, Lcom/ex/auto/CentralWatchdogService;->q0(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "ROTA_DNS_OK"

    invoke-static {v2, v5}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "sim"

    invoke-static {v5, v9}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iput-object v1, v7, Lcom/ex/auto/CentralWatchdogService;->c0:Ljava/lang/String;

    goto :goto_b

    :catchall_5
    move-exception v0

    goto :goto_10

    :cond_c
    :goto_b
    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "CentralWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "DNS_DEFAULT_NETID"

    invoke-static {v2, v0}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " resultado="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ROTA_DNS_OK"

    invoke-static {v2, v0}, Lw0/t1;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_c

    :cond_d
    const/4 v10, 0x1

    :goto_c
    if-eq v3, v4, :cond_e

    move v5, v10

    goto :goto_d

    :cond_e
    const/4 v5, 0x0

    :goto_d
    iget-object v0, v7, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v1, Lw0/i2;

    invoke-direct {v1, v8, v7, v6, v5}, Lw0/i2;-><init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v19, v15

    goto/16 :goto_5

    :cond_f
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v19, v15

    :goto_e
    :try_start_d
    monitor-exit v16
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :goto_f
    iget-object v0, v7, Lcom/ex/auto/CentralWatchdogService;->f0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_12

    :catchall_7
    move-exception v0

    goto/16 :goto_13

    :catch_2
    move-exception v0

    goto :goto_11

    :goto_10
    :try_start_e
    monitor-exit v16

    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catch_3
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v19, v15

    :goto_11
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " erro="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    const-string v2, "sem mensagem"

    :cond_10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CentralWatchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "CentralWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    invoke-static {v0, v1, v15}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v7, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v1, Lw0/i2;

    const/4 v2, 0x4

    invoke-direct {v1, v7, v8, v6, v2}, Lw0/i2;-><init>(Lcom/ex/auto/CentralWatchdogService;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto/16 :goto_f

    :goto_12
    return-void

    :goto_13
    iget-object v1, v7, Lcom/ex/auto/CentralWatchdogService;->f0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
