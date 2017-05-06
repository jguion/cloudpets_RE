.class public Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;
.super Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;
.source "ToyCommandSendAudio.java"


# instance fields
.field private mLocalUri:Landroid/net/Uri;

.field private mSlot:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;)V
    .locals 0
    .param p1, "localUri"    # Landroid/net/Uri;
    .param p2, "slot"    # Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;->mLocalUri:Landroid/net/Uri;

    .line 20
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;->mSlot:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    .line 21
    return-void
.end method


# virtual methods
.method public getLocalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;->mLocalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSlot()Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;->mSlot:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    return-object v0
.end method

.method public getSlotAsByte()B
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;->mSlot:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->getValue()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 37
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    invoke-direct {v0, p2, p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;Landroid/content/Context;)V

    return-object v0
.end method
