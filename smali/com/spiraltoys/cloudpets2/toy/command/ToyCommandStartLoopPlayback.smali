.class public Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;
.super Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;
.source "ToyCommandStartLoopPlayback.java"


# static fields
.field private static final MAX_AUDIO_LENGTH_MS:I = 0xffff


# instance fields
.field private final mAudioLengthMs:I

.field private final mNumberOfLoops:S


# direct methods
.method public constructor <init>(SI)V
    .locals 2
    .param p1, "numberOfLoops"    # S
    .param p2, "audioLengthMs"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;-><init>()V

    .line 19
    const v0, 0xffff

    if-le p2, v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio length must be less than 65535"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iput-short p1, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;->mNumberOfLoops:S

    .line 24
    iput p2, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;->mAudioLengthMs:I

    .line 25
    return-void
.end method


# virtual methods
.method public getAudioLengthMs()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;->mAudioLengthMs:I

    return v0
.end method

.method public getNumberOfLoops()S
    .locals 1

    .prologue
    .line 28
    iget-short v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;->mNumberOfLoops:S

    return v0
.end method

.method public newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 37
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;

    invoke-direct {v0, p2, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;)V

    return-object v0
.end method
