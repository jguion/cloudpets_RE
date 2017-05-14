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
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 37

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "toy_recordings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".wmv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/String;)V

    return-object v1

.end method
