.class public Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetSpeakerVolume;
.super Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
.source "ToyTaskSetSpeakerVolume.java"


# static fields
.field private static COMMAND_SET_CURRENT_VOLUME:B


# instance fields
.field private final mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-byte v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetSpeakerVolume;->COMMAND_SET_CURRENT_VOLUME:B

    return-void
.end method

.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;)V
    .locals 0
    .param p1, "toyPeripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "toyCommandSetSpeakerVolume"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 20
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetSpeakerVolume;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;

    .line 21
    return-void
.end method


# virtual methods
.method public getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 25
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
    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    .line 41
    if-eqz p4, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetSpeakerVolume;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetSpeakerVolume;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    invoke-interface {v0, p0, v1, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetSpeakerVolume;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetSpeakerVolume;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetSpeakerVolume;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;

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
    .line 30
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V

    .line 32
    const/4 v1, 0x2

    new-array v0, v1, [B

    const/4 v1, 0x0

    sget-byte v2, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetSpeakerVolume;->COMMAND_SET_CURRENT_VOLUME:B

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetSpeakerVolume;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;->getVolume()B

    move-result v2

    aput-byte v2, v0, v1

    .line 34
    .local v0, "volumeData":[B
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetSpeakerVolume;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v1

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->VOLUME_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->writeCharacteristic(Ljava/util/UUID;[B)Z

    .line 35
    return-void
.end method
