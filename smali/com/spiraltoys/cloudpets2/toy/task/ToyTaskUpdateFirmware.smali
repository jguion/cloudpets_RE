.class public Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;
.super Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;
.source "ToyTaskUpdateFirmware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;
    }
.end annotation


# static fields
.field private static final DATA_CHUNK_BYTES:I = 0x10

.field private static final DATA_SIZE_BYTE_OFFSET:I = 0x6

.field private static final FIRMWARE_UPDATE_ENABLED:I = 0x1

.field private static final FIRMWARE_VERSION:Ljava/lang/String; = "1.0.19"

.field private static final HEADER_BYTE_OFFSET:I = 0x2

.field private static final HEADER_SIZE_BYTES:I = 0xc

.field private static final TAG:Ljava/lang/String;

.field private static final UID_BYTE_OFFSET:I = 0x8

.field private static final VERSION_BYTE_OFFSET:I = 0x4


# instance fields
.field private mImageA:Z

.field private mImageHeader:[B

.field private mImageSize:I

.field private mPercentage:I

.field private mState:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 100
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->IMAGE_BLOCK_REQUEST_CHAR_UUID:Ljava/util/UUID;

    invoke-direct {p0, p1, v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;)V

    .line 102
    iput v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageSize:I

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageHeader:[B

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageA:Z

    .line 105
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->IDLE:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mState:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    .line 106
    iput v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mPercentage:I

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageA:Z

    return v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;)[B
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageHeader:[B

    return-object v0
.end method

.method static synthetic access$102(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;
    .param p1, "x1"    # [B

    .prologue
    .line 23
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageHeader:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;)I
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    .prologue
    .line 23
    iget v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageSize:I

    return v0
.end method

.method static synthetic access$202(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;I)I
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageSize:I

    return p1
.end method

.method static synthetic access$302(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mState:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->setNotifying(Z)V

    return-void
.end method

.method private isCompatibleFirmware([B)Z
    .locals 7
    .param p1, "firmware"    # [B

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 181
    iget v4, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageSize:I

    const/4 v5, 0x6

    if-ge v4, v5, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v3

    .line 184
    :cond_1
    if-eqz p1, :cond_0

    array-length v4, p1

    if-lt v4, v6, :cond_0

    .line 188
    new-array v2, v6, [B

    .line 190
    .local v2, "versionBytes":[B
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageHeader:[B

    const/4 v5, 0x4

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    invoke-static {v2, v3, v6}, Lcom/spiraltoys/cloudpets2/toy/ToyUtil;->getNumber([BII)I

    move-result v1

    .line 194
    .local v1, "pendingVersion":I
    invoke-static {p1, v3, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    invoke-static {v2, v3, v6}, Lcom/spiraltoys/cloudpets2/toy/ToyUtil;->getNumber([BII)I

    move-result v0

    .line 198
    .local v0, "firmwareVersion":I
    and-int/lit8 v4, v1, 0x1

    and-int/lit8 v5, v0, 0x1

    if-eq v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isValidFirmware(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Z
    .locals 12
    .param p0, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getName()Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 62
    const-string v8, "\\s+"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "components":[Ljava/lang/String;
    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    aget-object v3, v1, v8

    .line 69
    .local v3, "firmwareVersion":Ljava/lang/String;
    :try_start_0
    const-string v8, "1.0.19"

    invoke-static {v8}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->splitVersionStringToIntegers(Ljava/lang/String;)[I

    move-result-object v0

    .line 70
    .local v0, "bundledFirmwareVersionParts":[I
    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->splitVersionStringToIntegers(Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 76
    .local v5, "toyFirmwareVersionParts":[I
    array-length v8, v0

    array-length v9, v5

    if-eq v8, v9, :cond_1

    .line 85
    .end local v0    # "bundledFirmwareVersionParts":[I
    .end local v1    # "components":[Ljava/lang/String;
    .end local v3    # "firmwareVersion":Ljava/lang/String;
    .end local v5    # "toyFirmwareVersionParts":[I
    :cond_0
    :goto_0
    return v7

    .line 71
    .restart local v1    # "components":[Ljava/lang/String;
    .restart local v3    # "firmwareVersion":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "bundledFirmwareVersionParts":[I
    .restart local v5    # "toyFirmwareVersionParts":[I
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v8

    aget v9, v0, v7

    aget v10, v5, v7

    .line 81
    invoke-virtual {v8, v9, v10}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v8

    aget v9, v0, v6

    aget v10, v5, v6

    .line 82
    invoke-virtual {v8, v9, v10}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v8

    aget v9, v0, v11

    aget v10, v5, v11

    .line 83
    invoke-virtual {v8, v9, v10}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v8

    if-gtz v8, :cond_2

    :goto_1
    move v7, v6

    .line 80
    goto :goto_0

    :cond_2
    move v6, v7

    .line 83
    goto :goto_1
.end method

.method private loadFirmware()V
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->LOAD:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mState:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    .line 132
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 173
    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 174
    return-void
.end method

.method private requestSendFirmware()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    new-array v0, v1, [B

    iget-boolean v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageA:Z

    if-eqz v3, :cond_0

    :goto_0
    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 205
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v1

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->IMAGE_NOTIFY_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->writeCharacteristic(Ljava/util/UUID;[B)Z

    .line 206
    return-void

    .end local v0    # "data":[B
    :cond_0
    move v1, v2

    .line 202
    goto :goto_0
.end method

.method private setNotifying(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->IMAGE_NOTIFY_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->setCharacteristicNotification(Ljava/util/UUID;Z)V

    .line 178
    return-void
.end method

.method private static splitVersionStringToIntegers(Ljava/lang/String;)[I
    .locals 4
    .param p0, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 89
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [I

    .line 92
    .local v1, "ints":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 93
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-object v1
.end method

.method private startSendFirmware()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    .line 209
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 212
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageHeader:[B

    invoke-virtual {v3, v4, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 215
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageHeader:[B

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 218
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageHeader:[B

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 222
    const/16 v4, 0xc

    :try_start_0
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/toy/ToyUtil;->getBytes(S)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 223
    const/16 v4, 0xf

    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/toy/ToyUtil;->getBytes(S)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 224
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    sget-object v4, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->WRITE:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    iput-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mState:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    .line 233
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 234
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v4

    sget-object v5, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->IMAGE_NOTIFY_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v4, v5, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->writeCharacteristic(Ljava/util/UUID;[B)Z

    .line 235
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/Error;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08007b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 227
    .local v2, "error":Ljava/lang/Error;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, p0, v5, v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    goto :goto_0
.end method


# virtual methods
.method public getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->UPDATING_FIRMWARE:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    return-object v0
.end method

.method public onCharacteristicChanged(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[B)V
    .locals 2
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B

    .prologue
    .line 274
    invoke-super {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->onCharacteristicChanged(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[B)V

    .line 276
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->IMAGE_NOTIFY_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mState:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->VERIFY:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    if-ne v0, v1, :cond_0

    .line 278
    invoke-direct {p0, p3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->isCompatibleFirmware([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->INVALID:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mState:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->VALID:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mState:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->setNotifying(Z)V

    goto :goto_0
.end method

.method public declared-synchronized onCharacteristicSetNotify(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;Ljava/lang/Error;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "error"    # Ljava/lang/Error;

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->onCharacteristicSetNotify(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;Ljava/lang/Error;)V

    .line 292
    if-eqz p3, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 297
    :cond_1
    :try_start_1
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->IMAGE_NOTIFY_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mState:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->VERIFY:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    if-ne v0, v1, :cond_2

    .line 299
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->requestSendFirmware()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 300
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mState:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->VALID:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    if-ne v0, v1, :cond_3

    .line 301
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->startSendFirmware()V

    goto :goto_0

    .line 303
    :cond_3
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring onCharacteristicChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B
    .param p4, "error"    # Ljava/lang/Error;

    .prologue
    .line 259
    invoke-super {p0, p1, p2, p3, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    .line 261
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->IMAGE_NOTIFY_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    if-eqz p4, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mState:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->WRITE:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    if-ne v0, v1, :cond_2

    .line 265
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->startWriting()V

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mState:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->VALID:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    if-ne v0, v1, :cond_0

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->setNotifying(Z)V

    goto :goto_0
.end method

.method onCompleted(Ljava/lang/Error;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Error;

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->hasDataRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->TAG:Ljava/lang/String;

    const-string v1, "Firmware update completed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v2, v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    invoke-interface {v0, p0, v2, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    goto :goto_0
.end method

.method onProgress(I)V
    .locals 5
    .param p1, "dataRemaining"    # I

    .prologue
    .line 239
    iget v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageSize:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageSize:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 240
    .local v1, "progress":F
    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 241
    .local v0, "percentage":I
    iget v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mPercentage:I

    if-eq v2, v0, :cond_0

    .line 242
    iput v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mPercentage:I

    .line 243
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;

    invoke-direct {v3, v1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;-><init>(F)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 245
    :cond_0
    return-void
.end method

.method public start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V
    .locals 5
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V

    .line 118
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getName()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 120
    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "components":[Ljava/lang/String;
    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v0, v3

    const-string v4, "A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->mImageA:Z

    .line 122
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->loadFirmware()V

    .line 127
    .end local v0    # "components":[Ljava/lang/String;
    :goto_1
    return-void

    .line 121
    .restart local v0    # "components":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 124
    .end local v0    # "components":[Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08007b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, "error":Ljava/lang/Error;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4, v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    goto :goto_1
.end method
