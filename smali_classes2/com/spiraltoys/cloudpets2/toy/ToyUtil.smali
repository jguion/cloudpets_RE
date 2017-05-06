.class public Lcom/spiraltoys/cloudpets2/toy/ToyUtil;
.super Ljava/lang/Object;
.source "ToyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getByteString([B)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # [B

    .prologue
    .line 61
    array-length v2, p0

    .line 62
    .local v2, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 64
    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "hexString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 66
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 72
    .end local v0    # "hexString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getBytes(S)[B
    .locals 3
    .param p0, "value"    # S

    .prologue
    .line 28
    const/4 v1, 0x2

    new-array v0, v1, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 32
    .local v0, "bytes":[B
    return-object v0
.end method

.method public static getNumber([BII)I
    .locals 5
    .param p0, "value"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 18
    const/4 v1, 0x0

    .line 19
    .local v1, "result":I
    const/4 v2, 0x0

    .line 20
    .local v2, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int v3, v0, p1

    array-length v4, p0

    if-ge v3, v4, :cond_0

    if-ge v0, p2, :cond_0

    .line 21
    add-int v3, v0, p1

    aget-byte v3, p0, v3

    shl-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 22
    add-int/lit8 v2, v2, 0x8

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    return v1
.end method

.method public static final parseName([B)Ljava/lang/String;
    .locals 6
    .param p0, "scanRecord"    # [B

    .prologue
    .line 36
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 37
    .local v2, "scanRecordBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 40
    .local v1, "length":B
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 48
    .local v3, "type":B
    add-int/lit8 v4, v1, -0x1

    new-array v0, v4, [B

    .line 49
    .local v0, "data":[B
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 51
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 57
    .end local v0    # "data":[B
    .end local v1    # "length":B
    .end local v3    # "type":B
    :goto_1
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
