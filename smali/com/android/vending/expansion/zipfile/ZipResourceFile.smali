.class public Lcom/android/vending/expansion/zipfile/ZipResourceFile;
.super Ljava/lang/Object;
.source "ZipResourceFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    }
.end annotation


# static fields
.field static final LOGV:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "zipro"

.field static final kCDECRC:I = 0x10

.field static final kCDECommentLen:I = 0x20

.field static final kCDECompLen:I = 0x14

.field static final kCDEExtraLen:I = 0x1e

.field static final kCDELen:I = 0x2e

.field static final kCDELocalOffset:I = 0x2a

.field static final kCDEMethod:I = 0xa

.field static final kCDEModWhen:I = 0xc

.field static final kCDENameLen:I = 0x1c

.field static final kCDESignature:I = 0x2014b50

.field static final kCDEUncompLen:I = 0x18

.field static final kCompressDeflated:I = 0x8

.field static final kCompressStored:I = 0x0

.field static final kEOCDFileOffset:I = 0x10

.field static final kEOCDLen:I = 0x16

.field static final kEOCDNumEntries:I = 0x8

.field static final kEOCDSignature:I = 0x6054b50

.field static final kEOCDSize:I = 0xc

.field static final kLFHExtraLen:I = 0x1c

.field static final kLFHLen:I = 0x1e

.field static final kLFHNameLen:I = 0x1a

.field static final kLFHSignature:I = 0x4034b50

.field static final kMaxCommentLen:I = 0xffff

.field static final kMaxEOCDSearch:I = 0x10015

.field static final kZipEntryAdj:I = 0x2710


# instance fields
.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;",
            ">;"
        }
    .end annotation
.end field

.field mLEByteBuffer:Ljava/nio/ByteBuffer;

.field public mZipFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Ljava/util/zip/ZipFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "zipFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    .line 263
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mLEByteBuffer:Ljava/nio/ByteBuffer;

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->addPatchFile(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private static read4LE(Ljava/io/RandomAccessFile;)I
    .locals 1
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->swapEndian(I)I

    move-result v0

    return v0
.end method

.method private static swapEndian(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 50
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private static swapEndian(S)I
    .locals 2
    .param p0, "i"    # S

    .prologue
    .line 57
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method addPatchFile(Ljava/lang/String;)V
    .locals 36
    .param p1, "zipFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v19, "file":Ljava/io/File;
    new-instance v18, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 277
    .local v18, "f":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v20

    .line 279
    .local v20, "fileLength":J
    const-wide/16 v4, 0x16

    cmp-long v4, v20, v4

    if-gez v4, :cond_0

    .line 280
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 283
    :cond_0
    const-wide/32 v26, 0x10015

    .line 284
    .local v26, "readAmount":J
    cmp-long v4, v26, v20

    if-lez v4, :cond_1

    .line 285
    move-wide/from16 v26, v20

    .line 290
    :cond_1
    const-wide/16 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 292
    invoke-static/range {v18 .. v18}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->read4LE(Ljava/io/RandomAccessFile;)I

    move-result v23

    .line 293
    .local v23, "header":I
    const v4, 0x6054b50

    move/from16 v0, v23

    if-ne v0, v4, :cond_2

    .line 294
    const-string v4, "zipro"

    const-string v5, "Found Zip archive, but it looks empty"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 296
    :cond_2
    const v4, 0x4034b50

    move/from16 v0, v23

    if-eq v0, v4, :cond_3

    .line 297
    const-string v4, "zipro"

    const-string v5, "Not a Zip archive"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 310
    :cond_3
    sub-long v28, v20, v26

    .line 312
    .local v28, "searchStart":J
    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 313
    move-wide/from16 v0, v26

    long-to-int v4, v0

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 314
    .local v10, "bbuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    .line 315
    .local v12, "buffer":[B
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 316
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 327
    array-length v4, v12

    add-int/lit8 v16, v4, -0x16

    .local v16, "eocdIdx":I
    :goto_0
    if-ltz v16, :cond_4

    .line 328
    aget-byte v4, v12, v16

    const/16 v5, 0x50

    if-ne v4, v5, :cond_6

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    const v5, 0x6054b50

    if-ne v4, v5, :cond_6

    .line 337
    :cond_4
    if-gez v16, :cond_5

    .line 338
    const-string v4, "zipro"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Zip: EOCD not found, "

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v33, " is not zip"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_5
    add-int/lit8 v4, v16, 0x8

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v25

    .line 347
    .local v25, "numEntries":I
    add-int/lit8 v4, v16, 0xc

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v34, 0xffffffffL

    and-long v8, v4, v34

    .line 348
    .local v8, "dirSize":J
    add-int/lit8 v4, v16, 0x10

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v34, 0xffffffffL

    and-long v6, v4, v34

    .line 351
    .local v6, "dirOffset":J
    add-long v4, v6, v8

    cmp-long v4, v4, v20

    if-lez v4, :cond_7

    .line 352
    const-string v4, "zipro"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "bad offsets (dir "

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v33, ", size "

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v33, ", eocd "

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v33, ")"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 327
    .end local v6    # "dirOffset":J
    .end local v8    # "dirSize":J
    .end local v25    # "numEntries":I
    :cond_6
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_0

    .line 356
    .restart local v6    # "dirOffset":J
    .restart local v8    # "dirSize":J
    .restart local v25    # "numEntries":I
    :cond_7
    if-nez v25, :cond_8

    .line 357
    const-string v4, "zipro"

    const-string v5, "empty archive?"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 366
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 367
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v15

    .line 368
    .local v15, "directoryMap":Ljava/nio/MappedByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 370
    const v4, 0xffff

    new-array v0, v4, [B

    move-object/from16 v31, v0

    .line 376
    .local v31, "tempBuf":[B
    const/4 v14, 0x0

    .line 381
    .local v14, "currentOffset":I
    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 382
    .local v11, "buf":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 384
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 385
    invoke-virtual {v15, v14}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v4

    const v5, 0x2014b50

    if-eq v4, v5, :cond_9

    .line 386
    const-string v4, "zipro"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Missed a central dir sig (at "

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v33, ")"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 391
    :cond_9
    add-int/lit8 v4, v14, 0x1c

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v4

    const v5, 0xffff

    and-int v22, v4, v5

    .line 392
    .local v22, "fileNameLen":I
    add-int/lit8 v4, v14, 0x1e

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v4

    const v5, 0xffff

    and-int v17, v4, v5

    .line 393
    .local v17, "extraLen":I
    add-int/lit8 v4, v14, 0x20

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v4

    const v5, 0xffff

    and-int v13, v4, v5

    .line 397
    .local v13, "commentLen":I
    add-int/lit8 v4, v14, 0x2e

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 398
    const/4 v4, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v15, v0, v4, v1}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 399
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 402
    new-instance v30, Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v22

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 407
    .local v30, "str":Ljava/lang/String;
    new-instance v32, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 408
    .local v32, "ze":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    add-int/lit8 v4, v14, 0xa

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    move-object/from16 v0, v32

    iput v4, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mMethod:I

    .line 409
    add-int/lit8 v4, v14, 0xc

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v34, 0xffffffffL

    and-long v4, v4, v34

    move-object/from16 v0, v32

    iput-wide v4, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mWhenModified:J

    .line 410
    add-int/lit8 v4, v14, 0x10

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v4

    const-wide v34, 0xffffffffL

    and-long v4, v4, v34

    move-object/from16 v0, v32

    iput-wide v4, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCRC32:J

    .line 411
    add-int/lit8 v4, v14, 0x14

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v4

    const-wide v34, 0xffffffffL

    and-long v4, v4, v34

    move-object/from16 v0, v32

    iput-wide v4, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCompressedLength:J

    .line 412
    add-int/lit8 v4, v14, 0x18

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v4

    const-wide v34, 0xffffffffL

    and-long v4, v4, v34

    move-object/from16 v0, v32

    iput-wide v4, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    .line 413
    add-int/lit8 v4, v14, 0x2a

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v34, 0xffffffffL

    and-long v4, v4, v34

    move-object/from16 v0, v32

    iput-wide v4, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mLocalHdrOffset:J

    .line 416
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 417
    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->setOffsetFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    add-int/lit8 v4, v22, 0x2e

    add-int v4, v4, v17

    add-int/2addr v4, v13

    add-int/2addr v14, v4

    .line 384
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 428
    .end local v13    # "commentLen":I
    .end local v17    # "extraLen":I
    .end local v22    # "fileNameLen":I
    .end local v30    # "str":Ljava/lang/String;
    .end local v32    # "ze":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    :cond_a
    return-void
.end method

.method public getAllEntries()[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .locals 2

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 212
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    return-object v1
.end method

.method public getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    .line 228
    .local v0, "entry":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntriesAt(Ljava/lang/String;)[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 194
    .local v5, "zev":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;>;"
    iget-object v6, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 195
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;>;"
    if-nez p1, :cond_0

    .line 196
    const-string p1, ""

    .line 197
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 198
    .local v1, "length":I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    .line 199
    .local v4, "ze":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    iget-object v7, v4, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 200
    iget-object v7, v4, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    const/16 v8, 0x2f

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 201
    .local v2, "subpathSeparatorIndex":I
    const/4 v7, -0x1

    if-ne v7, v2, :cond_2

    iget-object v7, v4, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v1, :cond_3

    :cond_2
    iget-object v7, v4, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_1

    .line 202
    :cond_3
    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    .end local v2    # "subpathSeparatorIndex":I
    .end local v4    # "ze":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    :cond_4
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v0, v6, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    .line 207
    .local v0, "entries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    invoke-virtual {v5, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    return-object v6
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v3, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    .line 245
    .local v0, "entry":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->isUncompressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    .line 260
    :goto_0
    return-object v3

    .line 249
    :cond_0
    iget-object v3, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipFile;

    .line 251
    .local v1, "zf":Ljava/util/zip/ZipFile;
    if-nez v1, :cond_1

    .line 252
    new-instance v1, Ljava/util/zip/ZipFile;

    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 253
    .restart local v1    # "zf":Ljava/util/zip/ZipFile;
    iget-object v3, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 256
    .local v2, "zi":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_2

    .line 257
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 260
    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    .end local v2    # "zi":Ljava/util/zip/ZipEntry;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
