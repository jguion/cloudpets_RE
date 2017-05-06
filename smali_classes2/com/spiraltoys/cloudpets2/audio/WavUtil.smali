.class public Lcom/spiraltoys/cloudpets2/audio/WavUtil;
.super Ljava/lang/Object;
.source "WavUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadSync(Landroid/content/Context;I)Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 47
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/audio/WavUtil;->loadSync(Ljava/io/InputStream;)Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    move-result-object v1

    return-object v1
.end method

.method public static loadSync(Landroid/content/Context;Landroid/net/Uri;)Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 52
    const-string v7, "android.resource"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 53
    const/4 v2, 0x0

    .line 55
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 56
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v7, "r"

    invoke-virtual {v5, p1, v7}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 58
    if-nez v2, :cond_1

    .line 67
    if-eqz v2, :cond_0

    .line 69
    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-object v6

    .line 70
    .restart local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v5    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v4, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, v2}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    .line 63
    .local v4, "is":Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/audio/WavUtil;->loadSync(Ljava/io/InputStream;)Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 67
    if-eqz v2, :cond_0

    .line 69
    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "is":Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 65
    .local v1, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    if-eqz v2, :cond_0

    .line 69
    :try_start_5
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 70
    :catch_3
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_2

    .line 69
    :try_start_6
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 72
    :cond_2
    :goto_2
    throw v6

    .line 70
    :catch_4
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 77
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_3
    :try_start_7
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v3, "filePath":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 79
    .local v4, "is":Ljava/io/FileInputStream;
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/audio/WavUtil;->loadSync(Ljava/io/InputStream;)Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v6

    goto :goto_0

    .line 80
    .end local v3    # "filePath":Ljava/io/File;
    .end local v4    # "is":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    .line 81
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_6
    move-exception v7

    move-object v1, v7

    goto :goto_1
.end method

.method private static loadSync(Ljava/io/InputStream;)Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v8, 0x0

    .line 92
    .local v8, "wavData":[B
    const/4 v5, 0x0

    .line 94
    .local v5, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .local v6, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-static {p0, v6}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    const/4 v7, 0x1

    .line 96
    .local v7, "success":Z
    :goto_0
    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 101
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    :goto_2
    if-eqz v6, :cond_a

    .line 107
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v6

    .line 114
    .end local v6    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "success":Z
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_3
    if-nez v8, :cond_4

    .line 115
    const/4 v9, 0x0

    .line 175
    :goto_4
    return-object v9

    .line 95
    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 96
    .restart local v7    # "success":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v3

    .line 103
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 108
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 109
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 110
    .end local v6    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 97
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "success":Z
    :catch_2
    move-exception v3

    .line 98
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 105
    :goto_6
    if-eqz v5, :cond_0

    .line 107
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 108
    :catch_3
    move-exception v3

    .line 109
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 102
    :catch_4
    move-exception v3

    .line 103
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 100
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 101
    :goto_7
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 105
    :goto_8
    if-eqz v5, :cond_3

    .line 107
    :try_start_8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 110
    :cond_3
    :goto_9
    throw v9

    .line 102
    :catch_5
    move-exception v3

    .line 103
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 108
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 109
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 117
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 118
    .local v1, "dataBuffer":Ljava/nio/ByteBuffer;
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 121
    :try_start_9
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/audio/WavHeader;->tryDeserialize(Ljava/nio/ByteBuffer;)Lcom/spiraltoys/cloudpets2/audio/WavHeader;

    move-result-object v9

    if-nez v9, :cond_5

    .line 122
    const/4 v9, 0x0

    goto :goto_4

    .line 124
    :cond_5
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->tryDeserialize(Ljava/nio/ByteBuffer;)Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;

    move-result-object v4

    .line 125
    .local v4, "formatChunk":Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;
    if-nez v4, :cond_6

    .line 126
    const/4 v9, 0x0

    goto :goto_4

    .line 129
    :cond_6
    iget v9, v4, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->audioFormat:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_7

    .line 130
    const/4 v9, 0x0

    goto :goto_4

    .line 133
    :cond_7
    iget v9, v4, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->bitsPerSample:I

    const/16 v10, 0x10

    if-eq v9, v10, :cond_8

    .line 134
    const/4 v9, 0x0

    goto :goto_4

    .line 137
    :cond_8
    iget v9, v4, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->channelsNum:I

    packed-switch v9, :pswitch_data_0

    .line 149
    :pswitch_0
    const/4 v9, 0x0

    goto :goto_4

    .line 139
    :pswitch_1
    const/4 v0, 0x4

    .line 153
    .local v0, "channelConfig":I
    :goto_a
    const/4 v2, 0x0

    .line 155
    .local v2, "dataChunk":Lcom/spiraltoys/cloudpets2/audio/WavChunkData;
    :goto_b
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->tryDeserialize(Ljava/nio/ByteBuffer;)Lcom/spiraltoys/cloudpets2/audio/WavChunkData;

    move-result-object v2

    .line 156
    if-eqz v2, :cond_9

    .line 165
    new-instance v9, Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    .line 166
    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->getDataAsShorts()[S

    move-result-object v10

    iget v11, v4, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->sampleRate:I

    const/4 v12, 0x2

    invoke-direct {v9, v10, v11, v0, v12}, Lcom/spiraltoys/cloudpets2/audio/WavAudio;-><init>([SIII)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_4

    .line 171
    .end local v0    # "channelConfig":I
    .end local v2    # "dataChunk":Lcom/spiraltoys/cloudpets2/audio/WavChunkData;
    .end local v4    # "formatChunk":Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;
    :catch_7
    move-exception v3

    .line 172
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 142
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "formatChunk":Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;
    :pswitch_2
    const/16 v0, 0xc

    .line 143
    .restart local v0    # "channelConfig":I
    goto :goto_a

    .line 145
    .end local v0    # "channelConfig":I
    :pswitch_3
    const/16 v0, 0xcc

    .line 146
    .restart local v0    # "channelConfig":I
    goto :goto_a

    .line 159
    .restart local v2    # "dataChunk":Lcom/spiraltoys/cloudpets2/audio/WavChunkData;
    :cond_9
    :try_start_a
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/audio/WavUtil;->skipChunk(Ljava/nio/ByteBuffer;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_b

    .line 100
    .end local v0    # "channelConfig":I
    .end local v1    # "dataBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "dataChunk":Lcom/spiraltoys/cloudpets2/audio/WavChunkData;
    .end local v4    # "formatChunk":Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;
    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "os":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 97
    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_8
    move-exception v3

    move-object v5, v6

    .end local v6    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "success":Z
    :cond_a
    move-object v5, v6

    .end local v6    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_3

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static sampleToFileBytesSync(Lcom/spiraltoys/cloudpets2/audio/WavAudio;)[B
    .locals 3
    .param p0, "sample"    # Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    .prologue
    .line 26
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 27
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v1, p0}, Lcom/spiraltoys/cloudpets2/audio/WavUtil;->writeFileData(Ljava/io/OutputStream;Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V

    .line 28
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 30
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v2

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static saveSync(Lcom/spiraltoys/cloudpets2/audio/WavAudio;Ljava/io/File;)Z
    .locals 3
    .param p0, "sample"    # Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 36
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 37
    .local v1, "os":Ljava/io/FileOutputStream;
    invoke-static {v1, p0}, Lcom/spiraltoys/cloudpets2/audio/WavUtil;->writeFileData(Ljava/io/OutputStream;Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const/4 v2, 0x1

    .line 41
    .end local v1    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 41
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static skipChunk(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 206
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 207
    .local v1, "chunkTag":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 210
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 211
    .local v0, "chunkSize":I
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 212
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered a bad size for chunk \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string v5, "US-ASCII"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_0
    const-string v2, "WavUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping chunk \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string v5, "US-ASCII"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 217
    return-void
.end method

.method public static writeFileData(Ljava/io/OutputStream;Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V
    .locals 7
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "sample"    # Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    :try_start_0
    new-instance v3, Lcom/spiraltoys/cloudpets2/audio/WavHeader;

    invoke-direct {v3}, Lcom/spiraltoys/cloudpets2/audio/WavHeader;-><init>()V

    .line 182
    .local v3, "header":Lcom/spiraltoys/cloudpets2/audio/WavHeader;
    new-instance v2, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->getSampleRate()I

    move-result v4

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->getChannelsNum()I

    move-result v5

    const/16 v6, 0x10

    invoke-direct {v2, v4, v5, v6}, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;-><init>(III)V

    .line 183
    .local v2, "formatChunk":Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;
    new-instance v1, Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;-><init>()V

    .line 184
    .local v1, "fillerChunk":Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;
    new-instance v0, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;-><init>()V

    .line 187
    .local v0, "dataChunk":Lcom/spiraltoys/cloudpets2/audio/WavChunkData;
    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/audio/WavHeader;->getChunkSize()I

    move-result v4

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->getChunkSize()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;->getChunkSize()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->getChunkSize()I

    move-result v5

    add-int/2addr v4, v5

    rsub-int v4, v4, 0x1000

    invoke-virtual {v1, v4}, Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;->setPadding(I)V

    .line 190
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->getData()[S

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->setShorts([S)V

    .line 193
    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/audio/WavHeader;->getChunkSize()I

    move-result v4

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->getChunkSize()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->getChunkSize()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/spiraltoys/cloudpets2/audio/WavHeader;->size:I

    .line 196
    invoke-virtual {v3, p0}, Lcom/spiraltoys/cloudpets2/audio/WavHeader;->serialize(Ljava/io/OutputStream;)V

    .line 197
    invoke-virtual {v2, p0}, Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;->serialize(Ljava/io/OutputStream;)V

    .line 198
    invoke-virtual {v1, p0}, Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;->serialize(Ljava/io/OutputStream;)V

    .line 199
    invoke-virtual {v0, p0}, Lcom/spiraltoys/cloudpets2/audio/WavChunkData;->serialize(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 203
    return-void

    .line 201
    .end local v0    # "dataChunk":Lcom/spiraltoys/cloudpets2/audio/WavChunkData;
    .end local v1    # "fillerChunk":Lcom/spiraltoys/cloudpets2/audio/WavChunkFiller;
    .end local v2    # "formatChunk":Lcom/spiraltoys/cloudpets2/audio/WavChunkFormat;
    .end local v3    # "header":Lcom/spiraltoys/cloudpets2/audio/WavHeader;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    throw v4
.end method
