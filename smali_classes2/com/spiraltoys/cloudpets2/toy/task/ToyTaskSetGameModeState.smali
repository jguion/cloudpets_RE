.class public Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetGameModeState;
.super Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
.source "ToyTaskSetGameModeState.java"


# static fields
.field private static final COMMAND_SET_GAME_MODE:B = 0xbt

.field private static final FLAG_GAME_MODE_OFF:B = 0x0t

.field private static final FLAG_GAME_MODE_ON:B = 0x1t


# instance fields
.field private mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "toyCommandSetGameModeState"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 23
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetGameModeState;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;

    .line 24
    return-void
.end method


# virtual methods
.method public getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 28
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
    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    .line 49
    if-eqz p4, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetGameModeState;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetGameModeState;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    invoke-interface {v0, p0, v1, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetGameModeState;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetGameModeState;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetGameModeState;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;

    invoke-interface {v0, p0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V
    .locals 5
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 33
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V

    .line 35
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetGameModeState;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;->getGameModeState()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 37
    .local v0, "gameMode":B
    :goto_0
    const/4 v4, 0x2

    new-array v1, v4, [B

    const/16 v4, 0xb

    aput-byte v4, v1, v3

    aput-byte v0, v1, v2

    .line 42
    .local v1, "gameModeData":[B
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetGameModeState;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v2

    sget-object v3, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->COMMAND_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->writeCharacteristic(Ljava/util/UUID;[B)Z

    .line 43
    return-void

    .end local v0    # "gameMode":B
    .end local v1    # "gameModeData":[B
    :cond_0
    move v0, v3

    .line 35
    goto :goto_0
.end method
