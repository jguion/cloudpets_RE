.class public Lcom/spiraltoys/cloudpets2/audio/WavAudio;
.super Ljava/lang/Object;
.source "WavAudio.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private audioFormat:I

.field private channelConfig:I

.field private channelsNum:I

.field private data:[S

.field private framesNum:I

.field private sampleRate:I


# direct methods
.method public constructor <init>([SIII)V
    .locals 1
    .param p1, "inData"    # [S
    .param p2, "inSampleRate"    # I
    .param p3, "inChannelConfig"    # I
    .param p4, "inAudioFormat"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->framesNum:I

    .line 49
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->data:[S

    .line 50
    iput p2, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->sampleRate:I

    .line 51
    iput p3, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->channelConfig:I

    .line 52
    iput p4, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->audioFormat:I

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->channelsNum:I

    .line 55
    iget v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->channelConfig:I

    sparse-switch v0, :sswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 58
    :sswitch_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->channelsNum:I

    goto :goto_0

    .line 62
    :sswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->channelsNum:I

    goto :goto_0

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0xcc -> :sswitch_0
        0x41c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->audioFormat:I

    return v0
.end method

.method public getChannelConfig()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->channelConfig:I

    return v0
.end method

.method public getChannelsNum()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->channelsNum:I

    return v0
.end method

.method public getData()[S
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->data:[S

    return-object v0
.end method

.method public getDataSizeBytes()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->data:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getFramesNum()I
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->framesNum:I

    if-gez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->data:[S

    array-length v0, v0

    iget v1, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->channelsNum:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->framesNum:I

    .line 45
    :cond_0
    iget v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->framesNum:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->sampleRate:I

    return v0
.end method
