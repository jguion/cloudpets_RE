.class public Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;
.super Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
.source "ToyTaskReceiveAudio.java"


# static fields
.field private static final COMMAND_DOWNLOAD:B = 0x2t


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mOutputStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/String;)V
    .locals 1
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 26
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->mOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 32
    if-nez p2, :cond_0

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->mFilePath:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method private saveAudio()V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio$1;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->mOutputStream:Ljava/io/ByteArrayOutputStream;

    aput-object v3, v1, v2

    .line 95
    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method

.method private writeChunk([B)V
    .locals 4
    .param p1, "chunk"    # [B

    .prologue
    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->mOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080078

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "error":Ljava/lang/Error;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3, v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    goto :goto_0
.end method


# virtual methods
.method public getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->RECEIVING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    return-object v0
.end method

.method public onCharacteristicChanged(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[B)V
    .locals 1
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->onCharacteristicChanged(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[B)V

    .line 111
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->RECEIVE_AUDIO_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, p3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->writeChunk([B)V

    .line 114
    :cond_0
    return-void
.end method

.method public onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B
    .param p4, "error"    # Ljava/lang/Error;

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    .line 102
    if-eqz p4, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onToyStateChange(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)V
    .locals 1
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "oldState"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .param p3, "newState"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .prologue
    .line 118
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->IDLE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    if-ne p3, v0, :cond_0

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_DOWNLOAD:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    if-ne p2, v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->saveAudio()V

    .line 121
    :cond_0
    return-void
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
    .line 46
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V

    .line 48
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 52
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v1

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->COMMAND_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->writeCharacteristic(Ljava/util/UUID;[B)Z

    .line 53
    return-void
.end method
