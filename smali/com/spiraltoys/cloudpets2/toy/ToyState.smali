.class public final enum Lcom/spiraltoys/cloudpets2/toy/ToyState;
.super Ljava/lang/Enum;
.source "ToyState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spiraltoys/cloudpets2/toy/ToyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field public static final enum CONNECTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field public static final enum CONNECTING:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field public static final enum DISCONNECTING:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field public static final enum NOT_READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field public static final enum NOT_SUPPORTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field public static final enum PLAYING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field public static final enum READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field public static final enum RECEIVING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field public static final enum RECORDING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field public static final enum SENDING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field public static final enum UNKNOWN:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field public static final enum UPDATING_FIRMWARE:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field public static final enum WRITING_CHARACTERISTIC:Lcom/spiraltoys/cloudpets2/toy/ToyState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->UNKNOWN:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 12
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;

    const-string v1, "NOT_SUPPORTED"

    invoke-direct {v0, v1, v4}, Lcom/spiraltoys/cloudpets2/toy/ToyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_SUPPORTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 13
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v5}, Lcom/spiraltoys/cloudpets2/toy/ToyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 16
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v6}, Lcom/spiraltoys/cloudpets2/toy/ToyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 17
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/spiraltoys/cloudpets2/toy/ToyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 20
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTING:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 21
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;

    const-string v1, "DISCONNECTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->DISCONNECTING:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 24
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;

    const-string v1, "PLAYING_AUDIO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->PLAYING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 25
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;

    const-string v1, "RECORDING_AUDIO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->RECORDING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 28
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;

    const-string v1, "SENDING_AUDIO"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->SENDING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 29
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;

    const-string v1, "RECEIVING_AUDIO"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->RECEIVING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 30
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;

    const-string v1, "UPDATING_FIRMWARE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->UPDATING_FIRMWARE:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 31
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;

    const-string v1, "WRITING_CHARACTERISTIC"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->WRITING_CHARACTERISTIC:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 8
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/spiraltoys/cloudpets2/toy/ToyState;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->UNKNOWN:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_SUPPORTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTING:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyState;->DISCONNECTING:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyState;->PLAYING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyState;->RECORDING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyState;->SENDING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyState;->RECEIVING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyState;->UPDATING_FIRMWARE:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyState;->WRITING_CHARACTERISTIC:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->$VALUES:[Lcom/spiraltoys/cloudpets2/toy/ToyState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;

    return-object v0
.end method

.method public static values()[Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->$VALUES:[Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v0}, [Lcom/spiraltoys/cloudpets2/toy/ToyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spiraltoys/cloudpets2/toy/ToyState;

    return-object v0
.end method


# virtual methods
.method public getLocalizedStringId()I
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState$1;->$SwitchMap$com$spiraltoys$cloudpets2$toy$ToyState:[I

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    const v0, 0x7f0800d2

    :goto_0
    return v0

    .line 74
    :pswitch_0
    const v0, 0x7f0800c8

    goto :goto_0

    .line 76
    :pswitch_1
    const v0, 0x7f0800d5

    goto :goto_0

    .line 78
    :pswitch_2
    const v0, 0x7f0800d7

    goto :goto_0

    .line 80
    :pswitch_3
    const v0, 0x7f0800d3

    goto :goto_0

    .line 82
    :pswitch_4
    const v0, 0x7f0800d6

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInUse()Z
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->PLAYING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->RECORDING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->SENDING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->RECEIVING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->UPDATING_FIRMWARE:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->WRITING_CHARACTERISTIC:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->UNKNOWN:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_SUPPORTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
