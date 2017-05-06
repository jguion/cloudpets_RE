.class Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;
.super Landroid/os/AsyncTask;
.source "ExpansionDownloaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->validateXAPKZipFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 40
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 137
    sget-object v34, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils;->EXPANSION_FILE_DESCRIPTORS:[Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v35, v0

    const/4 v3, 0x0

    move/from16 v33, v3

    :goto_0
    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_c

    aget-object v30, v34, v33

    .line 138
    .local v30, "xf":Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    invoke-virtual/range {v30 .. v30}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->isMain()Z

    move-result v6

    invoke-virtual/range {v30 .. v30}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->getFileVersion()I

    move-result v7

    invoke-static {v3, v6, v7}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v20

    .line 139
    .local v20, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    invoke-virtual/range {v30 .. v30}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->getFileSize()J

    move-result-wide v6

    const/16 v32, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-static {v3, v0, v6, v7, v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 140
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 227
    .end local v20    # "fileName":Ljava/lang/String;
    .end local v30    # "xf":Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;
    :cond_0
    :goto_1
    return-object v3

    .line 141
    .restart local v20    # "fileName":Ljava/lang/String;
    .restart local v30    # "xf":Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 143
    const/high16 v3, 0x40000

    new-array v2, v3, [B

    .line 145
    .local v2, "buf":[B
    :try_start_0
    new-instance v31, Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;-><init>(Ljava/lang/String;)V

    .line 146
    .local v31, "zrf":Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    invoke-virtual/range {v31 .. v31}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAllEntries()[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    move-result-object v18

    .line 150
    .local v18, "entries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    const-wide/16 v4, 0x0

    .line 151
    .local v4, "totalCompressedLength":J
    move-object/from16 v0, v18

    array-length v6, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v19, v18, v3

    .line 152
    .local v19, "entry":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCompressedLength:J

    move-wide/from16 v36, v0

    add-long v4, v4, v36

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 154
    .end local v19    # "entry":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    :cond_2
    const/4 v10, 0x0

    .line 155
    .local v10, "averageVerifySpeed":F
    move-wide/from16 v28, v4

    .line 163
    .local v28, "totalBytesRemaining":J
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v36, v0

    const/4 v3, 0x0

    move/from16 v32, v3

    :goto_3
    move/from16 v0, v32

    move/from16 v1, v36

    if-ge v0, v1, :cond_b

    aget-object v19, v18, v32

    .line 164
    .restart local v19    # "entry":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    const-wide/16 v6, -0x1

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCRC32:J

    move-wide/from16 v38, v0

    cmp-long v3, v6, v38

    if-eqz v3, :cond_9

    .line 165
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    move-wide/from16 v22, v0

    .line 166
    .local v22, "length":J
    new-instance v11, Ljava/util/zip/CRC32;

    invoke-direct {v11}, Ljava/util/zip/CRC32;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .local v11, "crc":Ljava/util/zip/CRC32;
    const/4 v13, 0x0

    .line 169
    .local v13, "dis":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v16, Ljava/io/DataInputStream;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    .line 170
    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .end local v13    # "dis":Ljava/io/DataInputStream;
    .local v16, "dis":Ljava/io/DataInputStream;
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 173
    .local v24, "startTime":J
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v3, v22, v6

    if-lez v3, :cond_7

    .line 174
    array-length v3, v2

    int-to-long v6, v3

    cmp-long v3, v22, v6

    if-lez v3, :cond_5

    array-length v3, v2

    int-to-long v6, v3

    :goto_4
    long-to-int v0, v6

    move/from16 v21, v0

    .line 176
    .local v21, "seek":I
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 177
    const/4 v3, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v2, v3, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 178
    move/from16 v0, v21

    int-to-long v6, v0

    sub-long v22, v22, v6

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 180
    .local v14, "currentTime":J
    sub-long v26, v14, v24

    .line 181
    .local v26, "timePassed":J
    const-wide/16 v6, 0x0

    cmp-long v3, v26, v6

    if-lez v3, :cond_4

    .line 182
    move/from16 v0, v21

    int-to-float v3, v0

    move-wide/from16 v0, v26

    long-to-float v6, v0

    div-float v12, v3, v6

    .line 184
    .local v12, "currentSpeedSample":F
    const/4 v3, 0x0

    cmpl-float v3, v3, v10

    if-eqz v3, :cond_6

    .line 185
    const v3, 0x3ba3d70a    # 0.005f

    mul-float/2addr v3, v12

    const v6, 0x3f7eb852    # 0.995f

    mul-float/2addr v6, v10

    add-float v10, v3, v6

    .line 192
    :goto_5
    move/from16 v0, v21

    int-to-long v6, v0

    sub-long v28, v28, v6

    .line 193
    move-wide/from16 v0, v28

    long-to-float v3, v0

    div-float/2addr v3, v10

    float-to-long v8, v3

    .line 194
    .local v8, "timeRemaining":J
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    new-instance v3, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    sub-long v6, v4, v28

    invoke-direct/range {v3 .. v10}, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;-><init>(JJJF)V

    aput-object v3, v37, v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->publishProgress([Ljava/lang/Object;)V

    .line 203
    .end local v8    # "timeRemaining":J
    .end local v12    # "currentSpeedSample":F
    :cond_4
    move-wide/from16 v24, v14

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mCancelValidation:Z
    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$300(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 216
    if-eqz v16, :cond_0

    .line 217
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 222
    .end local v4    # "totalCompressedLength":J
    .end local v10    # "averageVerifySpeed":F
    .end local v11    # "crc":Ljava/util/zip/CRC32;
    .end local v14    # "currentTime":J
    .end local v16    # "dis":Ljava/io/DataInputStream;
    .end local v18    # "entries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .end local v19    # "entry":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .end local v21    # "seek":I
    .end local v22    # "length":J
    .end local v24    # "startTime":J
    .end local v26    # "timePassed":J
    .end local v28    # "totalBytesRemaining":J
    .end local v31    # "zrf":Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    :catch_0
    move-exception v17

    .line 223
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    .line 224
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_1

    .end local v17    # "e":Ljava/io/IOException;
    .restart local v4    # "totalCompressedLength":J
    .restart local v10    # "averageVerifySpeed":F
    .restart local v11    # "crc":Ljava/util/zip/CRC32;
    .restart local v16    # "dis":Ljava/io/DataInputStream;
    .restart local v18    # "entries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .restart local v19    # "entry":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .restart local v22    # "length":J
    .restart local v24    # "startTime":J
    .restart local v28    # "totalBytesRemaining":J
    .restart local v31    # "zrf":Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    :cond_5
    move-wide/from16 v6, v22

    .line 174
    goto :goto_4

    .line 190
    .restart local v12    # "currentSpeedSample":F
    .restart local v14    # "currentTime":J
    .restart local v21    # "seek":I
    .restart local v26    # "timePassed":J
    :cond_6
    move v10, v12

    goto :goto_5

    .line 207
    .end local v12    # "currentSpeedSample":F
    .end local v14    # "currentTime":J
    .end local v21    # "seek":I
    .end local v26    # "timePassed":J
    :cond_7
    :try_start_4
    invoke-virtual {v11}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCRC32:J

    move-wide/from16 v38, v0

    cmp-long v3, v6, v38

    if-eqz v3, :cond_8

    .line 208
    const-string v3, "LVLDL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CRC does not match for entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v3, "LVLDL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 212
    invoke-virtual/range {v19 .. v19}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    .line 216
    if-eqz v16, :cond_0

    .line 217
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V

    goto/16 :goto_1

    .line 216
    :cond_8
    if-eqz v16, :cond_9

    .line 217
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V

    .line 163
    .end local v11    # "crc":Ljava/util/zip/CRC32;
    .end local v16    # "dis":Ljava/io/DataInputStream;
    .end local v22    # "length":J
    .end local v24    # "startTime":J
    :cond_9
    add-int/lit8 v3, v32, 0x1

    move/from16 v32, v3

    goto/16 :goto_3

    .line 216
    .restart local v11    # "crc":Ljava/util/zip/CRC32;
    .restart local v13    # "dis":Ljava/io/DataInputStream;
    .restart local v22    # "length":J
    :catchall_0
    move-exception v3

    :goto_6
    if-eqz v13, :cond_a

    .line 217
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    :cond_a
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 137
    .end local v11    # "crc":Ljava/util/zip/CRC32;
    .end local v13    # "dis":Ljava/io/DataInputStream;
    .end local v19    # "entry":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .end local v22    # "length":J
    :cond_b
    add-int/lit8 v3, v33, 0x1

    move/from16 v33, v3

    goto/16 :goto_0

    .line 227
    .end local v2    # "buf":[B
    .end local v4    # "totalCompressedLength":J
    .end local v10    # "averageVerifySpeed":F
    .end local v18    # "entries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .end local v20    # "fileName":Ljava/lang/String;
    .end local v28    # "totalBytesRemaining":J
    .end local v30    # "xf":Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;
    .end local v31    # "zrf":Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    :cond_c
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_1

    .line 216
    .restart local v2    # "buf":[B
    .restart local v4    # "totalCompressedLength":J
    .restart local v10    # "averageVerifySpeed":F
    .restart local v11    # "crc":Ljava/util/zip/CRC32;
    .restart local v16    # "dis":Ljava/io/DataInputStream;
    .restart local v18    # "entries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .restart local v19    # "entry":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .restart local v20    # "fileName":Ljava/lang/String;
    .restart local v22    # "length":J
    .restart local v28    # "totalBytesRemaining":J
    .restart local v30    # "xf":Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;
    .restart local v31    # "zrf":Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    :catchall_1
    move-exception v3

    move-object/from16 v13, v16

    .end local v16    # "dis":Ljava/io/DataInputStream;
    .restart local v13    # "dis":Ljava/io/DataInputStream;
    goto :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 238
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->finish()V

    .line 261
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 262
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mDashboard:Landroid/view/View;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$000(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mCellMessage:Landroid/view/View;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$100(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mStatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$200(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080154

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 253
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mPauseButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$400(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1$2;-><init>(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mPauseButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$400(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mDashboard:Landroid/view/View;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$000(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mCellMessage:Landroid/view/View;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$100(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mStatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$200(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080155

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mPauseButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$400(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1$1;-><init>(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mPauseButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$400(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f08014d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 132
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 133
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 2
    .param p1, "values"    # [Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    .line 233
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, [Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->onProgressUpdate([Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    return-void
.end method
