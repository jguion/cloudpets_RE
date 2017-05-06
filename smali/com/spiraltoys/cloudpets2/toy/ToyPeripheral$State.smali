.class public final enum Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
.super Ljava/lang/Enum;
.source "ToyPeripheral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum AUDIO_DOWNLOAD:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum AUDIO_GET_RECORD_LENGTH:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum AUDIO_GET_RETURN_VALUE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum AUDIO_PLAYBACK:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum AUDIO_RECORD:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum AUDIO_STREAMING:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum AUDIO_UPLOAD:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum BUFFER_PRIME:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum GAME_MODE_PLAY_PAW_PRESSED:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum GAME_MODE_RECORD_PAW_PRESSED:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum IDLE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum INITIALIZE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum INVALID:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum SECURITY_KEY_CHECK_FAILED:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum TEST_MODE_IDLE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum TEST_MODE_PLAYBACK:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum TEST_MODE_RECORD:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum TEST_MODE_RECORD_END:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum TEST_MODE_STARTUP:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field public static final enum UNPLAYED_RECORDING:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v4, v4}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->INVALID:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 43
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->IDLE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 44
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "AUDIO_RECORD"

    invoke-direct {v0, v1, v6, v6}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_RECORD:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 45
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "AUDIO_UPLOAD"

    invoke-direct {v0, v1, v7, v7}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_UPLOAD:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 46
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "UNPLAYED_RECORDING"

    invoke-direct {v0, v1, v8, v8}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->UNPLAYED_RECORDING:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 47
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "AUDIO_PLAYBACK"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_PLAYBACK:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 48
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "AUDIO_STREAMING"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_STREAMING:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 49
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "AUDIO_DOWNLOAD"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_DOWNLOAD:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 50
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "AUDIO_GET_RECORD_LENGTH"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_GET_RECORD_LENGTH:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 51
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "BUFFER_PRIME"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->BUFFER_PRIME:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 52
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "TEST_MODE_STARTUP"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->TEST_MODE_STARTUP:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 53
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "TEST_MODE_RECORD"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->TEST_MODE_RECORD:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 54
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "TEST_MODE_RECORD_END"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->TEST_MODE_RECORD_END:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 55
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "TEST_MODE_IDLE"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->TEST_MODE_IDLE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 56
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "TEST_MODE_PLAYBACK"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->TEST_MODE_PLAYBACK:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 57
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "SECURITY_KEY_CHECK_FAILED"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->SECURITY_KEY_CHECK_FAILED:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 58
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "INITIALIZE"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->INITIALIZE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 59
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "AUDIO_GET_RETURN_VALUE"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_GET_RETURN_VALUE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 60
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "GAME_MODE_RECORD_PAW_PRESSED"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->GAME_MODE_RECORD_PAW_PRESSED:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 61
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    const-string v1, "GAME_MODE_PLAY_PAW_PRESSED"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->GAME_MODE_PLAY_PAW_PRESSED:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 41
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->INVALID:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->IDLE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_RECORD:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_UPLOAD:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->UNPLAYED_RECORDING:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_PLAYBACK:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_STREAMING:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_DOWNLOAD:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_GET_RECORD_LENGTH:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->BUFFER_PRIME:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->TEST_MODE_STARTUP:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->TEST_MODE_RECORD:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->TEST_MODE_RECORD_END:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->TEST_MODE_IDLE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->TEST_MODE_PLAYBACK:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->SECURITY_KEY_CHECK_FAILED:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->INITIALIZE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_GET_RETURN_VALUE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->GAME_MODE_RECORD_PAW_PRESSED:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->GAME_MODE_PLAY_PAW_PRESSED:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->$VALUES:[Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->mValue:I

    .line 67
    return-void
.end method

.method static synthetic access$500(I)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .locals 1
    .param p0, "x0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->getState(I)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    move-result-object v0

    return-object v0
.end method

.method private static getState(I)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .locals 5
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->values()[Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 71
    .local v0, "state":Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    iget v4, v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->mValue:I

    if-ne v4, p0, :cond_0

    .line 72
    return-object v0

    .line 70
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "state":Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    return-object v0
.end method

.method public static values()[Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->$VALUES:[Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    invoke-virtual {v0}, [Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    return-object v0
.end method
