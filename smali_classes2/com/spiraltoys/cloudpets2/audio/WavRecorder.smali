.class public Lcom/spiraltoys/cloudpets2/audio/WavRecorder;
.super Ljava/lang/Object;
.source "WavRecorder.java"


# static fields
.field public static final CHANNELS:I = 0x10

.field public static final ENCODING:I = 0x2

.field public static final SAMPLE_RATE:I = 0x3e80


# instance fields
.field private final mBufferSize:I

.field private mIsRecording:Z

.field private mOutputFile:Ljava/io/File;

.field private mRecorder:Landroid/media/AudioRecord;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "outputFile"    # Ljava/io/File;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output file cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    const/16 v0, 0x3e80

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mBufferSize:I

    .line 31
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mOutputFile:Ljava/io/File;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/audio/WavRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->writeAudioDataToFile()V

    return-void
.end method

.method private writeAudioDataToFile()V
    .locals 7

    .prologue
    .line 65
    iget v4, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mBufferSize:I

    new-array v0, v4, [B

    .line 66
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 68
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mOutputFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    iget-boolean v4, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mIsRecording:Z

    if-eqz v4, :cond_1

    .line 70
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mRecorder:Landroid/media/AudioRecord;

    const/4 v5, 0x0

    iget v6, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mBufferSize:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/AudioRecord;->read([BII)I

    .line 71
    const/4 v4, 0x0

    iget v5, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mBufferSize:I

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 74
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    if-eqz v2, :cond_0

    .line 78
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 84
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 77
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :cond_1
    if-eqz v3, :cond_2

    .line 78
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v2, v3

    .line 82
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 80
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 81
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 83
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 80
    :catch_2
    move-exception v1

    .line 81
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 77
    :goto_3
    if-eqz v2, :cond_3

    .line 78
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 82
    :cond_3
    :goto_4
    throw v4

    .line 80
    :catch_3
    move-exception v1

    .line 81
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 73
    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getOutputFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mOutputFile:Ljava/io/File;

    return-object v0
.end method

.method public startRecording()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 35
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    iget v5, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mBufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mRecorder:Landroid/media/AudioRecord;

    .line 42
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 43
    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mIsRecording:Z

    .line 44
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/spiraltoys/cloudpets2/audio/WavRecorder$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/audio/WavRecorder$1;-><init>(Lcom/spiraltoys/cloudpets2/audio/WavRecorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 49
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mIsRecording:Z

    .line 54
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 55
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->mRecorder:Landroid/media/AudioRecord;

    .line 58
    :cond_0
    return-void
.end method
