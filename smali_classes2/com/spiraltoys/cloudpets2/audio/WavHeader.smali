.class Lcom/spiraltoys/cloudpets2/audio/WavHeader;
.super Ljava/lang/Object;
.source "WavHeader.java"


# static fields
.field private static final CHUNKID:Ljava/lang/String; = "RIFF"

.field private static final FORMAT:Ljava/lang/String; = "WAVE"


# instance fields
.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/audio/WavHeader;-><init>(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "inSize"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/spiraltoys/cloudpets2/audio/WavHeader;->size:I

    .line 57
    return-void
.end method

.method public static tryDeserialize(Ljava/nio/ByteBuffer;)Lcom/spiraltoys/cloudpets2/audio/WavHeader;
    .locals 11
    .param p0, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v10, 0xc

    const/4 v7, 0x0

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-ge v8, v10, :cond_0

    .line 43
    :goto_0
    return-object v7

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 19
    .local v0, "byteOrderPrev":Ljava/nio/ByteOrder;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 22
    .local v2, "chunkStartPos":I
    :try_start_0
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 24
    const/4 v8, 0x4

    new-array v6, v8, [B

    .line 26
    .local v6, "stringId":[B
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {p0, v6, v8, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 27
    new-instance v1, Ljava/lang/String;

    const-string v8, "US-ASCII"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v1, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 29
    .local v1, "chunkId":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 31
    .local v5, "size":I
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {p0, v6, v8, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 32
    new-instance v4, Ljava/lang/String;

    const-string v8, "US-ASCII"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v4, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 34
    .local v4, "format":Ljava/lang/String;
    const-string v8, "RIFF"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "WAVE"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-ge v5, v10, :cond_2

    .line 35
    :cond_1
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 39
    :cond_2
    :try_start_1
    new-instance v8, Lcom/spiraltoys/cloudpets2/audio/WavHeader;

    invoke-direct {v8, v5}, Lcom/spiraltoys/cloudpets2/audio/WavHeader;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object v7, v8

    .line 39
    goto :goto_0

    .line 40
    .end local v1    # "chunkId":Ljava/lang/String;
    .end local v4    # "format":Ljava/lang/String;
    .end local v5    # "size":I
    .end local v6    # "stringId":[B
    :catch_0
    move-exception v3

    .line 41
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v7
.end method


# virtual methods
.method public getChunkSize()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0xc

    return v0
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
    .line 60
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 61
    .local v0, "endianBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    const-string v1, "RIFF"

    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 64
    iget v1, p0, Lcom/spiraltoys/cloudpets2/audio/WavHeader;->size:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 65
    const-string v1, "WAVE"

    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 66
    return-void
.end method
