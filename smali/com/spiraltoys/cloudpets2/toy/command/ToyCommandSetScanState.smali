.class public Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState;
.super Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;
.source "ToyCommandSetScanState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;
    }
.end annotation


# instance fields
.field private mScanState:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;)V
    .locals 0
    .param p1, "scanState"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState;->mScanState:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;

    .line 17
    return-void
.end method


# virtual methods
.method public getScanState()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState;->mScanState:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;

    return-object v0
.end method

.method public newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No toy task exists for ToyCommandSetScanState"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
