.class Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;
.super Ljava/lang/Object;
.source "WavChunkFormat.java"


# static fields
.field public static final AUDIOFORMAT_PCM:I = 0x1

.field private static final BEXT_CHUNKID:Ljava/lang/String; = "bext"

.field private static final CHUNKID:Ljava/lang/String; = "fmt "

.field private static final JUNK_CHUNKID:Ljava/lang/String; = "JUNK"


# instance fields
.field public audioFormat:I

.field public bitsPerSample:I

.field public channelsNum:I

.field public padding:I

.field public sampleRate:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "inSampleRate"    # I
    .param p2, "inChannelsNum"    # I
    .param p3, "inBitsPerSample"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->audioFormat:I

    .line 71
    iput p1, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->sampleRate:I

    .line 72
    iput p2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->channelsNum:I

    .line 73
    iput p3, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->bitsPerSample:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->padding:I

    .line 75
    return-void
.end method

.method protected constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 109
    .local v0, "dataSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 111
    .local v1, "dataSizeStartPos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput v2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->audioFormat:I

    .line 112
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput v2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->channelsNum:I

    .line 113
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->sampleRate:I

    .line 114
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 115
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput v2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->bitsPerSample:I

    .line 118
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int v2, v0, v2

    iput v2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->padding:I

    .line 119
    iget v2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->padding:I

    if-gez v2, :cond_0

    .line 120
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bad WAV format chunk"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_0
    add-int v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    return-void
.end method

.method public static tryDeserialize(Ljava/nio/ByteBuffer;)Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;
    .locals 9
    .param p0, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v6, 0x0

    .line 17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    const/16 v8, 0x8

    if-ge v7, v8, :cond_0

    .line 59
    :goto_0
    return-object v6

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 21
    .local v0, "byteOrderPrev":Ljava/nio/ByteOrder;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 23
    .local v2, "chunkStartPos":I
    :try_start_0
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    const/4 v7, 0x4

    new-array v5, v7, [B

    .line 26
    .local v5, "tag":[B
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 28
    new-instance v1, Ljava/lang/String;

    const-string v7, "US-ASCII"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 31
    .local v1, "chunkId":Ljava/lang/String;
    const-string v7, "JUNK"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 32
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 33
    .local v4, "junkSize":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 36
    new-instance v1, Ljava/lang/String;

    .end local v1    # "chunkId":Ljava/lang/String;
    const-string v7, "US-ASCII"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 40
    .end local v4    # "junkSize":I
    .restart local v1    # "chunkId":Ljava/lang/String;
    :cond_1
    const-string v7, "bext"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 41
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 42
    .restart local v4    # "junkSize":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 45
    new-instance v1, Ljava/lang/String;

    .end local v1    # "chunkId":Ljava/lang/String;
    const-string v7, "US-ASCII"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 48
    .end local v4    # "junkSize":I
    .restart local v1    # "chunkId":Ljava/lang/String;
    :cond_2
    const-string v7, "fmt "

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_3

    .line 56
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 52
    :cond_3
    :try_start_1
    new-instance v7, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;

    invoke-direct {v7, p0}, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object v6, v7

    .line 52
    goto :goto_0

    .line 53
    .end local v1    # "chunkId":Ljava/lang/String;
    .end local v5    # "tag":[B
    :catch_0
    move-exception v3

    .line 54
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v6
.end method


# virtual methods
.method public getChunkSize()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->padding:I

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 78
    iget v4, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->channelsNum:I

    iget v5, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->bitsPerSample:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x8

    int-to-short v0, v4

    .line 79
    .local v0, "blockAlign":S
    iget v4, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->sampleRate:I

    mul-int v1, v4, v0

    .line 81
    .local v1, "byteRate":I
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 82
    .local v2, "endianBuffer":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 84
    const-string v4, "fmt "

    const-string v5, "US-ASCII"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 85
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->getChunkSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 86
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 87
    iget v4, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->audioFormat:I

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p1, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 88
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 89
    iget v4, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->channelsNum:I

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p1, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 90
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 91
    iget v4, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->sampleRate:I

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p1, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 92
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 93
    int-to-short v4, v1

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p1, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 94
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 95
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p1, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 96
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 97
    iget v4, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->bitsPerSample:I

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p1, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 98
    const/4 v3, 0x0

    .local v3, "paddingCount":I
    :goto_0
    iget v4, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->padding:I

    if-ge v3, v4, :cond_0

    .line 99
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method
