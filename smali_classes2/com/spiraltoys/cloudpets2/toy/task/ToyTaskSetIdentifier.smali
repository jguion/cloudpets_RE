.class public Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetIdentifier;
.super Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
.source "ToyTaskSetIdentifier.java"


# instance fields
.field private mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "command"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 18
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetIdentifier;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;

    .line 19
    return-void
.end method


# virtual methods
.method public getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->WRITING_CHARACTERISTIC:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    return-object v0
.end method

.method public onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V
    .locals 3
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B
    .param p4, "error"    # Ljava/lang/Error;

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    .line 38
    if-eqz p4, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetIdentifier;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetIdentifier;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    invoke-interface {v0, p0, v1, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetIdentifier;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetIdentifier;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetIdentifier;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;

    invoke-interface {v0, p0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V

    .line 30
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetIdentifier;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 31
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetIdentifier;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v1

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->CONFIG_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->writeCharacteristic(Ljava/util/UUID;[B)Z

    .line 32
    return-void
.end method
