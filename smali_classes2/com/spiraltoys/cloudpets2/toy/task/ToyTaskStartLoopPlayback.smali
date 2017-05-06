.class public Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;
.super Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
.source "ToyTaskStartLoopPlayback.java"


# static fields
.field private static final COMMAND_PLAY_AUDIO_LOOPED:B = 0xct

.field private static final SUCCESS_SAFETY_DELAY:J = 0xfaL


# instance fields
.field private final mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;)V
    .locals 0
    .param p1, "toyPeripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "toyCommandStartLoopPlayback"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 24
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    return-object v0
.end method


# virtual methods
.method public getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 29
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
    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    .line 49
    if-eqz p4, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    invoke-interface {v0, p0, v1, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback$1;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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
    .line 34
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V

    .line 36
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 37
    .local v0, "playAudioDataBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 38
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 39
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;->getNumberOfLoops()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 40
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;->getAudioLengthMs()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v1

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->COMMAND_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->writeCharacteristic(Ljava/util/UUID;[B)Z

    .line 43
    return-void
.end method
