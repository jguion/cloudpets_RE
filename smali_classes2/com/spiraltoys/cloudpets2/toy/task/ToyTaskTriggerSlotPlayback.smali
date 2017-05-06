.class public Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;
.super Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
.source "ToyTaskTriggerSlotPlayback.java"


# static fields
.field private static final COMMAND_SEND_SNC7232_COMMAND:B = 0x8t

.field private static final SNC7232_COMMAND_PLAY_SLOT:B = 0x1t

.field private static final SUCCESS_SAFETY_DELAY:J = 0xfaL


# instance fields
.field private mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "command"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 26
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;

    return-object v0
.end method


# virtual methods
.method public getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->WRITING_CHARACTERISTIC:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    return-object v0
.end method

.method public onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V
    .locals 4
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B
    .param p4, "error"    # Ljava/lang/Error;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    .line 51
    if-eqz p4, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    invoke-interface {v0, p0, v1, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;->isSuccessDelayedUntilPlaybackCompeltion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback$1;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onToyStateChange(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)V
    .locals 4
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "oldState"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .param p3, "newState"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->onToyStateChange(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)V

    .line 69
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;->isSuccessDelayedUntilPlaybackCompeltion()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->IDLE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    if-ne p3, v0, :cond_1

    .line 70
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_PLAYBACK:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->GAME_MODE_PLAY_PAW_PRESSED:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->GAME_MODE_RECORD_PAW_PRESSED:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    if-ne p2, v0, :cond_2

    .line 71
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback$2;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    new-instance v2, Ljava/lang/Error;

    const-string v3, "Unexpected toy state change."

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    goto :goto_0
.end method

.method public start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V
    .locals 4
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V

    .line 38
    const/4 v1, 0x3

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    aput-byte v3, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;

    .line 41
    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;->getSlot()Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 44
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v1

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->COMMAND_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->writeCharacteristic(Ljava/util/UUID;[B)Z

    .line 45
    return-void
.end method
