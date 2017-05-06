.class public Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;
.super Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;
.source "ToyTaskSendAudio.java"


# static fields
.field private static final COMMAND_START_UPLOAD:B = 0x0t

.field private static final COMMAND_STOP_UPLOAD:B = 0x1t

.field private static final DATA_CHUNK_BYTES:I = 0x14

.field private static final REQUEST_TIMEOUT:J = 0x1388L

.field private static final STREAMING_PAD_SIZE:I = 0x20

.field private static final SUCCESS_SAFETY_DELAY:J = 0xfaL

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

.field private mCompressedData:[B

.field private mCompressedDataIndex:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsSafeToStartWriting:Z

.field private mPercentage:I

.field private mTimeoutRunnable:Ljava/lang/Runnable;

.field private mToyRequestedData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;Landroid/content/Context;)V
    .locals 1
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "command"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->SEND_AUDIO_CHAR_UUID:Ljava/util/UUID;

    invoke-direct {p0, p1, v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;)V

    .line 272
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$4;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$4;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 54
    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mHandler:Landroid/os/Handler;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mPercentage:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->compressAudio(Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V

    return-void
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

    return-object v0
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)[B
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedData:[B

    return-object v0
.end method

.method static synthetic access$302(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;
    .param p1, "x1"    # [B

    .prologue
    .line 30
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedData:[B

    return-object p1
.end method

.method static synthetic access$400(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->startSendAudio()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addChunk(I)V
    .locals 8
    .param p1, "chunkSize"    # I

    .prologue
    .line 203
    new-array v0, p1, [B

    .line 204
    .local v0, "chunk":[B
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedData:[B

    array-length v5, v5

    iget v6, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedDataIndex:I

    sub-int v1, v5, v6

    .line 205
    .local v1, "dataRemaining":I
    const/4 v4, 0x0

    .line 207
    .local v4, "usedCount":I
    if-lez v1, :cond_1

    .line 208
    move v3, p1

    .line 209
    .local v3, "length":I
    if-ge v1, v3, :cond_0

    move v3, v1

    .line 211
    :cond_0
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedData:[B

    iget v6, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedDataIndex:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iget v5, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedDataIndex:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedDataIndex:I

    .line 213
    move v4, v3

    .line 216
    .end local v3    # "length":I
    :cond_1
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 217
    const/16 v5, -0x80

    aput-byte v5, v0, v2

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->addData([B)V

    .line 221
    return-void
.end method

.method private compressAudio(Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V
    .locals 3
    .param p1, "wavAudio"    # Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    .prologue
    .line 93
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;

    invoke-direct {v0, p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 126
    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    return-void
.end method

.method private isWriteComplete()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedData:[B

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->hasDataRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedDataIndex:I

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedData:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadAudio()V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$1;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

    .line 89
    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;->getLocalUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    return-void
.end method

.method private declared-synchronized queueData(I)Z
    .locals 5
    .param p1, "requestedSize"    # I

    .prologue
    .line 182
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedDataIndex:I

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedData:[B

    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v4, :cond_1

    .line 183
    :cond_0
    const/4 v3, 0x0

    .line 199
    :goto_0
    monitor-exit p0

    return v3

    .line 186
    :cond_1
    :try_start_1
    div-int/lit8 v0, p1, 0x14

    .line 189
    .local v0, "chunkCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 190
    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->addChunk(I)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 194
    :cond_2
    rem-int/lit8 v2, p1, 0x14

    .line 195
    .local v2, "remainder":I
    if-lez v2, :cond_3

    .line 196
    invoke-direct {p0, v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->addChunk(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "chunkCount":I
    .end local v1    # "i":I
    .end local v2    # "remainder":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private startSendAudio()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    const/16 v1, 0x12

    new-array v0, v1, [B

    aput-byte v2, v0, v2

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

    .line 132
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;->getSlotAsByte()B

    move-result v1

    aput-byte v1, v0, v3

    aput-byte v2, v0, v4

    aput-byte v3, v0, v5

    aput-byte v4, v0, v6

    const/4 v1, 0x5

    aput-byte v5, v0, v1

    const/4 v1, 0x6

    aput-byte v6, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    .line 137
    .local v0, "data":[B
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v1

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->COMMAND_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->writeCharacteristic(Ljava/util/UUID;[B)Z

    .line 140
    return-void
.end method

.method private stopSendAudio()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 143
    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    .line 147
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v1

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->COMMAND_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->writeCharacteristic(Ljava/util/UUID;[B)Z

    .line 148
    return-void
.end method


# virtual methods
.method public getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->SENDING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    return-object v0
.end method

.method public isStreaming()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;->getSlot()Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->STREAMING:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onCharacteristicChanged(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[B)V
    .locals 8
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->onCharacteristicChanged(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[B)V

    .line 239
    sget-object v3, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->DATA_REQUEST_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v3, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p3, v3, v4}, Lcom/spiraltoys/cloudpets2/toy/ToyUtil;->getNumber([BII)I

    move-result v1

    .line 243
    .local v1, "requestedSize":I
    if-nez v1, :cond_3

    .line 244
    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-static {p3, v3, v4}, Lcom/spiraltoys/cloudpets2/toy/ToyUtil;->getNumber([BII)I

    move-result v2

    .line 245
    .local v2, "transferredCount":I
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->isWriteComplete()Z

    move-result v3

    if-eqz v3, :cond_2

    if-lez v2, :cond_2

    .line 246
    sget-object v3, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toy notified "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requests written successfully."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v1    # "requestedSize":I
    .end local v2    # "transferredCount":I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->isWriteComplete()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->STATE_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v3, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getCurrentState()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    move-result-object v3

    sget-object v4, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->IDLE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    if-ne v3, v4, :cond_1

    .line 262
    sget-object v3, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->TAG:Ljava/lang/String;

    const-string v4, "Write complete."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$3;

    invoke-direct {v4, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$3;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)V

    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_1
    monitor-exit p0

    return-void

    .line 248
    .restart local v1    # "requestedSize":I
    .restart local v2    # "transferredCount":I
    :cond_2
    :try_start_1
    sget-object v3, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->TAG:Ljava/lang/String;

    const-string v4, "Toy notified failure to transfer audio"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08009b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "error":Ljava/lang/Error;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v3

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v4

    invoke-interface {v3, p0, v4, v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 237
    .end local v0    # "error":Ljava/lang/Error;
    .end local v1    # "requestedSize":I
    .end local v2    # "transferredCount":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 253
    .restart local v1    # "requestedSize":I
    :cond_3
    :try_start_2
    sget-object v3, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toy requested "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes of data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mToyRequestedData:Z

    .line 255
    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->queueData(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mIsSafeToStartWriting:Z

    if-eqz v3, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->startWriting()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V
    .locals 3
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B
    .param p4, "error"    # Ljava/lang/Error;

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    .line 227
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->COMMAND_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mIsSafeToStartWriting:Z

    .line 229
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mToyRequestedData:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->startWriting()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_0
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onCompleted(Ljava/lang/Error;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Error;

    .prologue
    .line 163
    if-nez p1, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->isWriteComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->stopSendAudio()V

    .line 172
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    goto :goto_0
.end method

.method onProgress(I)V
    .locals 6
    .param p1, "dataRemaining"    # I

    .prologue
    .line 152
    iget v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedDataIndex:I

    mul-int/lit8 v4, p1, 0x14

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 153
    .local v2, "remaining":F
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedData:[B

    array-length v3, v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 154
    .local v1, "progress":F
    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    const/16 v5, 0x63

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 155
    .local v0, "percentage":I
    iget v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mPercentage:I

    if-eq v3, v0, :cond_0

    .line 156
    iput v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mPercentage:I

    .line 157
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;

    invoke-direct {v4, v1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;-><init>(F)V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 159
    :cond_0
    return-void
.end method

.method public start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V

    .line 73
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->loadAudio()V

    .line 74
    return-void
.end method
