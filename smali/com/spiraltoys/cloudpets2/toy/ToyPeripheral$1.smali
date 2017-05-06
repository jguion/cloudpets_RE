.class Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "ToyPeripheral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v5, 0x0

    .line 345
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 347
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->STATE_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$100(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    move-result-object v2

    # setter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mLastState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$002(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 350
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->getState(I)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->access$500(I)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    move-result-object v2

    # setter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$102(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 351
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$300(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mLastState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$000(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    move-result-object v3

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$100(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onToyStateChange(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$300(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onCharacteristicChanged(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[B)V

    .line 358
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid toy state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    aget-byte v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 319
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 321
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {v1, p3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForStatus(I)Ljava/lang/Error;

    move-result-object v0

    .line 323
    .local v0, "error":Ljava/lang/Error;
    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->CONFIG_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    # setter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mIdentifier:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$402(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$300(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onCharacteristicRead(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    .line 328
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 332
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 334
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {v1, p3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForStatus(I)Ljava/lang/Error;

    move-result-object v0

    .line 336
    .local v0, "error":Ljava/lang/Error;
    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->CONFIG_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    # setter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mIdentifier:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$402(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$300(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    .line 341
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 295
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 297
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$100(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    move-result-object v1

    # setter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mLastState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$002(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 298
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->IDLE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    :goto_0
    # setter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    invoke-static {v1, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$102(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 301
    const/16 v0, 0x85

    if-eq p2, v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 302
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->INVALID:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    # setter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$102(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 303
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 304
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    const/4 v1, 0x0

    # setter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$202(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$300(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {v2, p2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForStatus(I)Ljava/lang/Error;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onConnectionStateChange(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/Error;)V

    .line 308
    return-void

    .line 298
    :cond_2
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->INVALID:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    goto :goto_0
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 362
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 364
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$300(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {v3, p3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForStatus(I)Ljava/lang/Error;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onCharacteristicSetNotify(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;Ljava/lang/Error;)V

    .line 365
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 312
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 314
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$300(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {v2, p2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForStatus(I)Ljava/lang/Error;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onServicesDiscovered(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/Error;)V

    .line 315
    return-void
.end method
