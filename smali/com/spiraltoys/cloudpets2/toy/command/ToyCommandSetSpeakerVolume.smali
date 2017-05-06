.class public Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;
.super Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;
.source "ToyCommandSetSpeakerVolume.java"


# instance fields
.field private final mVolume:B


# direct methods
.method public constructor <init>(B)V
    .locals 0
    .param p1, "volume"    # B

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;-><init>()V

    .line 16
    iput-byte p1, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;->mVolume:B

    .line 17
    return-void
.end method


# virtual methods
.method public getVolume()B
    .locals 1

    .prologue
    .line 20
    iget-byte v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;->mVolume:B

    return v0
.end method

.method public newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 25
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetSpeakerVolume;

    invoke-direct {v0, p2, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetSpeakerVolume;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;)V

    return-object v0
.end method
