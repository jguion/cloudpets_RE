.class Lcom/spiraltoys/cloudpets2/audio/WavChunkData;
.super Ljava/lang/Object;
.source "WavChunkData.java"


# static fields
.field private static final CHUNKID:Ljava/lang/String; = "data"


# instance fields
.field private data:[B

.field private shortData:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->setBytes([B)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    add-int/lit8 v0, v1, -0x8

    .line 109
    .local v0, "dataSize":I
    if-gez v0, :cond_0

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad WAV data chunk"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->data:[B

    .line 113
    if-lez v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->data:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 115
    :cond_1
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "inData"    # [B

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->setBytes([B)V

    .line 49
    return-void
.end method

.method public constructor <init>([S)V
    .locals 0
    .param p1, "inData"    # [S

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->setShorts([S)V

    .line 53
    return-void
.end method

.method public static tryDeserialize(Ljava/nio/ByteBuffer;)Lcom/spiraltoys/cloudpets2/audio/WavChunkData;
    .locals 8
    .param p0, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x0

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const/16 v7, 0x8

    if-ge v6, v7, :cond_0

    .line 37
    :goto_0
    return-object v5

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 18
    .local v0, "byteOrderPrev":Ljava/nio/ByteOrder;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 20
    .local v2, "chunkStartPos":I
    :try_start_0
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 22
    const/4 v6, 0x4

    new-array v4, v6, [B

    .line 23
    .local v4, "tag":[B
    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {p0, v4, v6, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26
    new-instance v1, Ljava/lang/String;

    const-string v6, "US-ASCII"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 27
    .local v1, "chunkId":Ljava/lang/String;
    const-string v6, "data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 34
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 30
    :cond_1
    :try_start_1
    new-instance v6, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;

    invoke-direct {v6, p0}, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object v5, v6

    .line 30
    goto :goto_0

    .line 31
    .end local v1    # "chunkId":Ljava/lang/String;
    .end local v4    # "tag":[B
    :catch_0
    move-exception v3

    .line 32
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v5
.end method


# virtual methods
.method public getChunkSize()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->data:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x8

    return v0

    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->data:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public getDataAsBytes()[B
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->data:[B

    return-object v0
.end method

.method public getDataAsShorts()[S
    .locals 5

    .prologue
    .line 78
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->data:[B

    if-nez v2, :cond_0

    .line 79
    const/4 v2, 0x0

    .line 88
    :goto_0
    return-object v2

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->shortData:[S

    if-nez v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->data:[B

    array-length v2, v2

    shr-int/lit8 v2, v2, 0x1

    new-array v2, v2, [S

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->shortData:[S

    .line 84
    const/4 v1, 0x0

    .local v1, "shortIdx":I
    const/4 v0, 0x0

    .local v0, "byteBaseIdx":I
    :goto_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->shortData:[S

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->shortData:[S

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->data:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->data:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 88
    .end local v0    # "byteBaseIdx":I
    .end local v1    # "shortIdx":I
    :cond_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->shortData:[S

    goto :goto_0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 93
    .local v0, "endianBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 95
    const-string v1, "data"

    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 96
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->getChunkSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 97
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->data:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 98
    return-void
.end method

.method public setBytes([B)V
    .locals 1
    .param p1, "inData"    # [B

    .prologue
    .line 56
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->data:[B

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->shortData:[S

    .line 58
    return-void
.end method

.method public setShorts([S)V
    .locals 4
    .param p1, "inData"    # [S

    .prologue
    .line 61
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->shortData:[S

    .line 63
    if-nez p1, :cond_1

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->shortData:[S

    .line 71
    :cond_0
    return-void

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->shortData:[S

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->data:[B

    .line 69
    const/4 v0, 0x0

    .local v0, "byteIdx":I
    :goto_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->data:[B

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->shortData:[S

    shr-int/lit8 v3, v0, 0x1

    aget-short v1, v1, v3

    :goto_1
    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->shortData:[S

    shr-int/lit8 v3, v0, 0x1

    aget-short v1, v1, v3

    shr-int/lit8 v1, v1, 0x8

    goto :goto_1
.end method
