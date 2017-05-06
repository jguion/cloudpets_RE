.class public Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;
.super Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;
.source "ToyCommandTriggerSlotPlayback.java"


# instance fields
.field private mIsSuccessDelayedUntilPlaybackCompletion:Z

.field private mSlot:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;Z)V
    .locals 0
    .param p1, "slot"    # Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;
    .param p2, "isSuccessDelayedUntilPlaybackCompletion"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;->mSlot:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    .line 20
    iput-boolean p2, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;->mIsSuccessDelayedUntilPlaybackCompletion:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getSlot()Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;->mSlot:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    return-object v0
.end method

.method public isSuccessDelayedUntilPlaybackCompeltion()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;->mIsSuccessDelayedUntilPlaybackCompletion:Z

    return v0
.end method

.method public newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 33
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;

    invoke-direct {v0, p2, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;)V

    return-object v0
.end method
