.class public Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;
.super Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
.source "ToyTaskConnect.java"


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTING:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    return-object v0
.end method

.method public onCharacteristicRead(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B
    .param p4, "error"    # Ljava/lang/Error;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->onCharacteristicRead(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    .line 60
    if-eqz p4, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->STATE_CHAR_UUID:Ljava/util/UUID;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->setCharacteristicNotification(Ljava/util/UUID;Z)V

    goto :goto_0
.end method

.method public onCharacteristicSetNotify(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;Ljava/lang/Error;)V
    .locals 3
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "error"    # Ljava/lang/Error;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->onCharacteristicSetNotify(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;Ljava/lang/Error;)V

    .line 71
    if-eqz p3, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    invoke-interface {v0, p0, v2, p3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->STATE_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->RECEIVE_AUDIO_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->setCharacteristicNotification(Ljava/util/UUID;Z)V

    goto :goto_0

    .line 75
    :cond_2
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->RECEIVE_AUDIO_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->DATA_REQUEST_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->setCharacteristicNotification(Ljava/util/UUID;Z)V

    goto :goto_0

    .line 77
    :cond_3
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->DATA_REQUEST_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v2, v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onConnectionStateChange(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/Error;)V
    .locals 5
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "error"    # Ljava/lang/Error;

    .prologue
    const/4 v4, 0x0

    .line 36
    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    invoke-interface {v0, p0, v4, p2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->discoverServices()V

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    new-instance v1, Ljava/lang/Error;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08009b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v4, v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    goto :goto_0
.end method

.method public onServicesDiscovered(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/Error;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "error"    # Ljava/lang/Error;

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->onServicesDiscovered(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/Error;)V

    .line 49
    if-eqz p2, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->CONFIG_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->readCharacteristic(Ljava/util/UUID;)Z

    goto :goto_0
.end method

.method public start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V

    .line 27
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->discoverServices()V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->connect()V

    goto :goto_0
.end method
