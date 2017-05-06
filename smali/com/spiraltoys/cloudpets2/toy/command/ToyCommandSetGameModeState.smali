.class public Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;
.super Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;
.source "ToyCommandSetGameModeState.java"


# instance fields
.field private mGameModeState:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "gameModeState"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;->mGameModeState:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getGameModeState()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;->mGameModeState:Z

    return v0
.end method

.method public newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 25
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetGameModeState;

    invoke-direct {v0, p2, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetGameModeState;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;)V

    return-object v0
.end method
