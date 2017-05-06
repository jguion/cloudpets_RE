.class Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;
.super Ljava/lang/Object;
.source "WavChunkFiller.java"


# static fields
.field private static final CHUNKID:Ljava/lang/String; = "FLLR"


# instance fields
.field private padding:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method protected constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;->padding:I

    .line 68
    iget v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;->padding:I

    if-gez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad WAV filler chunk"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;->padding:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    return-void
.end method

.method public static tryDeserialize(Ljava/nio/ByteBuffer;)Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;
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
    const-string v6, "FLLR"

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
    new-instance v6, Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;

    invoke-direct {v6, p0}, Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;-><init>(Ljava/nio/ByteBuffer;)V
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
    .line 60
    iget v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;->padding:I

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 51
    .local v0, "endianBuffer":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    const-string v2, "FLLR"

    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 54
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;->getChunkSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 55
    const/4 v1, 0x0

    .local v1, "paddingCount":I
    :goto_0
    iget v2, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;->padding:I

    if-ge v1, v2, :cond_0

    .line 56
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public setPadding(I)V
    .locals 1
    .param p1, "inPadding"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;->padding:I

    .line 47
    return-void
.end method
