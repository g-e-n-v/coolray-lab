.class public final Lw0/t0;
.super Landroid/bluetooth/BluetoothGattServerCallback;
.source "SourceFile"


# virtual methods
.method public final onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6

    const-string v0, "d"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ch"

    invoke-static {p4, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lw0/u0;->a:Lw0/u0;

    invoke-static {}, Lw0/u0;->c()[B

    move-result-object p4

    array-length v0, p4

    if-lt p3, v0, :cond_0

    const/4 p4, 0x0

    new-array p4, p4, [B

    :goto_0
    move-object v5, p4

    goto :goto_1

    :cond_0
    array-length v0, p4

    invoke-static {p4, p3, v0}, Ly1/f;->W([BII)[B

    move-result-object p4

    goto :goto_0

    :goto_1
    sget-object v0, Lw0/u0;->h:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    :cond_1
    return-void
.end method

.method public final onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    const-string p2, "d"

    invoke-static {p1, p2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    sget-object p2, Lw0/u0;->j:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object p1, Lw0/ae;->a:Lw0/ae;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "gatt: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p3, p2, :cond_1

    const-string p2, "conectou"

    goto :goto_0

    :cond_1
    const-string p2, "saiu"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lw0/u0;->j:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " inscrito(s))"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "BleCarro"

    invoke-static {p3, p1, p2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 6

    const-string p4, "d"

    invoke-static {p1, p4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "desc"

    invoke-static {p3, p4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "valor"

    invoke-static {p7, p4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p3

    sget-object p4, Lw0/u0;->d:Ljava/util/UUID;

    invoke-static {p3, p4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-static {p7, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lw0/u0;->j:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p3, Lw0/u0;->j:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    sget-object v0, Lw0/u0;->h:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    :cond_2
    return-void
.end method
