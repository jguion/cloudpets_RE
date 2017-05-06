.class public Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;
.super Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;
.source "ToyCommandSetLedState.java"


# instance fields
.field private mLedState:Lcom/spiraltoys/cloudpets2/toy/ToyLedState;

.field private mPeriod:I


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyLedState;I)V
    .locals 0
    .param p1, "state"    # Lcom/spiraltoys/cloudpets2/toy/ToyLedState;
    .param p2, "period"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;->mLedState:Lcom/spiraltoys/cloudpets2/toy/ToyLedState;

    .line 20
    iput p2, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;->mPeriod:I

    .line 21
    return-void
.end method


# virtual methods
.method public getLedState()B
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;->mLedState:Lcom/spiraltoys/cloudpets2/toy/ToyLedState;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyLedState;->getValue()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getPeriod()S
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;->mLedState:Lcom/spiraltoys/cloudpets2/toy/ToyLedState;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyLedState;->BLINKING:Lcom/spiraltoys/cloudpets2/toy/ToyLedState;

    if-ne v0, v1, :cond_0

    .line 29
    iget v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;->mPeriod:I

    int-to-short v0, v0

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 37
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;

    invoke-direct {v0, p2, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;)V

    return-object v0
.end method
