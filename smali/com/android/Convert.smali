.class public Lcom/android/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public Bytes2Shorts([B)[S
    .locals 6
    .param p1, "buf"    # [B

    .prologue
    .line 65
    const/4 v0, 0x2

    .line 66
    .local v0, "bLength":B
    array-length v5, p1

    div-int/2addr v5, v0

    new-array v3, v5, [S

    .line 67
    .local v3, "s":[S
    const/4 v1, 0x0

    .local v1, "iLoop":I
    :goto_0
    array-length v5, v3

    if-lt v1, v5, :cond_0

    .line 74
    return-object v3

    .line 68
    :cond_0
    new-array v4, v0, [B

    .line 69
    .local v4, "temp":[B
    const/4 v2, 0x0

    .local v2, "jLoop":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 72
    invoke-virtual {p0, v4}, Lcom/android/Convert;->getShort([B)S

    move-result v5

    aput-short v5, v3, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_1
    mul-int v5, v1, v0

    add-int/2addr v5, v2

    aget-byte v5, p1, v5

    aput-byte v5, v4, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public Shorts2Bytes([S)[B
    .locals 7
    .param p1, "s"    # [S

    .prologue
    .line 78
    const/4 v0, 0x2

    .line 79
    .local v0, "bLength":B
    array-length v5, p1

    mul-int/2addr v5, v0

    new-array v1, v5, [B

    .line 80
    .local v1, "buf":[B
    const/4 v2, 0x0

    .local v2, "iLoop":I
    :goto_0
    array-length v5, p1

    if-lt v2, v5, :cond_0

    .line 86
    return-object v1

    .line 81
    :cond_0
    aget-short v5, p1, v2

    invoke-virtual {p0, v5}, Lcom/android/Convert;->getBytes(S)[B

    move-result-object v4

    .line 82
    .local v4, "temp":[B
    const/4 v3, 0x0

    .local v3, "jLoop":I
    :goto_1
    if-lt v3, v0, :cond_1

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_1
    mul-int v5, v2, v0

    add-int/2addr v5, v3

    aget-byte v6, v4, v3

    aput-byte v6, v1, v5

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getBytes(JZ)[B
    .locals 9
    .param p1, "s"    # J
    .param p3, "bBigEnding"    # Z

    .prologue
    const-wide/16 v6, 0xff

    const/16 v4, 0x8

    .line 50
    new-array v0, v4, [B

    .line 51
    .local v0, "buf":[B
    if-eqz p3, :cond_2

    .line 52
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_1

    .line 61
    :cond_0
    return-object v0

    .line 53
    :cond_1
    and-long v2, p1, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 54
    shr-long/2addr p1, v4

    .line 52
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 57
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 58
    and-long v2, p1, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 59
    shr-long/2addr p1, v4

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getBytes(S)[B
    .locals 3
    .param p1, "s"    # S

    .prologue
    .line 23
    int-to-long v0, p1

    invoke-virtual {p0}, Lcom/android/Convert;->testCPU()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/Convert;->getBytes(JZ)[B

    move-result-object v0

    return-object v0
.end method

.method public getShort([B)S
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/Convert;->testCPU()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/Convert;->getShort([BZ)S

    move-result v0

    return v0
.end method

.method public getShort([BZ)S
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "bBigEnding"    # Z

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "byte array is null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_0
    array-length v2, p1

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 31
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "byte array size > 2 !"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    .local v1, "r":S
    if-eqz p2, :cond_4

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_3

    .line 46
    :cond_2
    return v1

    .line 36
    :cond_3
    shl-int/lit8 v2, v1, 0x8

    int-to-short v1, v2

    .line 37
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v1

    int-to-short v1, v2

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "i":I
    :cond_4
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 41
    shl-int/lit8 v2, v1, 0x8

    int-to-short v1, v2

    .line 42
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v1

    int-to-short v1, v2

    .line 40
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public testCPU()Z
    .locals 2

    .prologue
    .line 11
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 14
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
