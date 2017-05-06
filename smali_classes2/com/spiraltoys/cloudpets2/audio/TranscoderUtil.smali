.class public Lcom/spiraltoys/cloudpets2/audio/TranscoderUtil;
.super Ljava/lang/Object;
.source "TranscoderUtil.java"


# static fields
.field static final ENCODER_BUFFER_SIZE:I = 0x140

.field static final HEADER_LENGTH:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([SI)Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    .locals 14
    .param p0, "source"    # [S
    .param p1, "sampleRate"    # I

    .prologue
    const/4 v10, 0x0

    const/16 v13, 0x10

    const/4 v12, 0x0

    .line 81
    array-length v11, p0

    if-ge v11, v13, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-object v10

    .line 85
    :cond_1
    new-array v4, v13, [S

    .line 86
    .local v4, "header":[S
    invoke-static {p0, v12, v4, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    invoke-static {v4}, Lcom/android/AudioCodec/MsAdpcm;->init([S)Z

    move-result v7

    .line 89
    .local v7, "initResult":Z
    if-eqz v7, :cond_0

    .line 90
    invoke-static {}, Lcom/android/AudioCodec/MsAdpcm;->getInputSize()S

    move-result v6

    .line 91
    .local v6, "inSize":S
    invoke-static {}, Lcom/android/AudioCodec/MsAdpcm;->getOutputSize()S

    move-result v8

    .line 92
    .local v8, "outSize":S
    const/16 v2, 0x10

    .line 94
    .local v2, "dataStart":I
    array-length v10, p0

    add-int/lit8 v10, v10, -0x10

    div-int v1, v10, v6

    .line 95
    .local v1, "chunkCount":I
    array-length v10, p0

    sub-int/2addr v10, v2

    rem-int/2addr v10, v6

    if-lez v10, :cond_2

    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 99
    :cond_2
    new-array v0, v6, [S

    .line 100
    .local v0, "buffer":[S
    mul-int v10, v8, v1

    add-int/2addr v10, v2

    new-array v9, v10, [S

    .line 102
    .local v9, "output":[S
    new-array v3, v8, [S

    .line 103
    .local v3, "deData":[S
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_4

    .line 104
    array-length v10, p0

    sub-int/2addr v10, v2

    mul-int v11, v5, v6

    add-int/2addr v11, v6

    if-le v10, v11, :cond_3

    .line 105
    mul-int v10, v5, v6

    add-int/2addr v10, v2

    invoke-static {p0, v10, v0, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    invoke-static {v0, v3}, Lcom/android/AudioCodec/MsAdpcm;->decode([S[S)V

    .line 108
    mul-int v10, v5, v8

    add-int/lit8 v10, v10, 0x10

    invoke-static {v3, v12, v9, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 111
    :cond_4
    new-instance v10, Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    const/4 v11, 0x4

    const/4 v12, 0x2

    invoke-direct {v10, v9, p1, v11, v12}, Lcom/spiraltoys/cloudpets2/audio/WavAudio;-><init>([SIII)V

    goto :goto_0
.end method

.method public static encode(Lcom/spiraltoys/cloudpets2/audio/WavAudio;)[S
    .locals 16
    .param p0, "wavAudio"    # Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/spiraltoys/cloudpets2/audio/AudioFormatException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v3, Lcom/android/Convert;

    invoke-direct {v3}, Lcom/android/Convert;-><init>()V

    .line 25
    .local v3, "convert":Lcom/android/Convert;
    invoke-virtual/range {p0 .. p0}, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->getData()[S

    move-result-object v4

    .line 27
    .local v4, "data":[S
    array-length v11, v4

    int-to-double v12, v11

    const-wide/high16 v14, 0x4074000000000000L    # 320.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v2, v12

    .line 29
    .local v2, "chunkCount":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    .local v5, "dataOutputStream":Ljava/io/DataOutputStream;
    const/16 v11, 0x3e80

    invoke-static {v11}, Lcom/android/AudioCodec/Audio32Encoder;->init(I)V

    .line 34
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v2, :cond_2

    .line 35
    mul-int/lit16 v10, v9, 0x140

    .line 36
    .local v10, "offset":I
    add-int/lit16 v11, v10, 0x140

    array-length v12, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v4, v10, v11}, Ljava/util/Arrays;->copyOfRange([SII)[S

    move-result-object v1

    .line 38
    .local v1, "chunk":[S
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->getSampleRate()I

    move-result v11

    const/16 v12, 0x3e80

    if-ne v11, v12, :cond_0

    .line 39
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/audio/TranscoderUtil;->encodeFrom16KHzPCMMono([S)[S

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/Convert;->Shorts2Bytes([S)[B

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 34
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->getSampleRate()I

    move-result v11

    const/16 v12, 0x1f40

    if-ne v11, v12, :cond_1

    .line 41
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/audio/TranscoderUtil;->encodeFrom8KHzPCMMono([S)[S

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/Convert;->Shorts2Bytes([S)[B

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 45
    :catch_0
    move-exception v6

    .line 46
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 43
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    new-instance v11, Lcom/spiraltoys/cloudpets2/audio/AudioFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->getSampleRate()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Hz wav audio is not supported. Use 16KHz or 8KHz"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/spiraltoys/cloudpets2/audio/AudioFormatException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    .end local v1    # "chunk":[S
    .end local v10    # "offset":I
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/Convert;->Bytes2Shorts([B)[S

    move-result-object v7

    .line 51
    .local v7, "encodedData":[S
    const/16 v11, 0x10

    new-array v8, v11, [S

    .line 53
    .local v8, "header":[S
    invoke-static {v8}, Lcom/android/AudioCodec/Audio32Encoder;->getHeader([S)V

    .line 55
    const/4 v11, 0x2

    new-array v11, v11, [[S

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    invoke-static {v11}, Lcom/google/common/primitives/Shorts;->concat([[S)[S

    move-result-object v11

    return-object v11
.end method

.method private static encodeFrom16KHzPCMMono([S)[S
    .locals 1
    .param p0, "data16KHzPCM"    # [S

    .prologue
    .line 62
    new-instance v0, Lcom/android/Convert;

    invoke-direct {v0}, Lcom/android/Convert;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/Convert;->Shorts2Bytes([S)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/AudioCodec/Audio32Encoder;->encode([B)[S

    move-result-object v0

    return-object v0
.end method

.method private static encodeFrom8KHzPCMMono([S)[S
    .locals 9
    .param p0, "data8KHzPCM"    # [S

    .prologue
    const/4 v7, 0x0

    .line 66
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [S

    .line 67
    .local v0, "data16KHzPCM":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 68
    aget-short v3, p0, v1

    .line 69
    .local v3, "sample8kHz":S
    mul-int/lit8 v2, v1, 0x2

    .line 70
    .local v2, "j":I
    aput-short v3, v0, v2

    .line 71
    add-int/lit8 v4, v2, 0x1

    aput-short v3, v0, v4

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "j":I
    .end local v3    # "sample8kHz":S
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [[S

    new-instance v5, Lcom/android/Convert;

    invoke-direct {v5}, Lcom/android/Convert;-><init>()V

    array-length v6, v0

    div-int/lit8 v6, v6, 0x2

    .line 74
    invoke-static {v0, v7, v6}, Ljava/util/Arrays;->copyOfRange([SII)[S

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/Convert;->Shorts2Bytes([S)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/AudioCodec/Audio32Encoder;->encode([B)[S

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    new-instance v6, Lcom/android/Convert;

    invoke-direct {v6}, Lcom/android/Convert;-><init>()V

    array-length v7, v0

    div-int/lit8 v7, v7, 0x2

    array-length v8, v0

    .line 75
    invoke-static {v0, v7, v8}, Ljava/util/Arrays;->copyOfRange([SII)[S

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/Convert;->Shorts2Bytes([S)[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/AudioCodec/Audio32Encoder;->encode([B)[S

    move-result-object v6

    aput-object v6, v4, v5

    .line 73
    invoke-static {v4}, Lcom/google/common/primitives/Shorts;->concat([[S)[S

    move-result-object v4

    return-object v4
.end method
