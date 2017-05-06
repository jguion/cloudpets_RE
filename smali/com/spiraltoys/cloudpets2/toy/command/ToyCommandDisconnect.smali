.class public Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandDisconnect;
.super Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;
.source "ToyCommandDisconnect.java"


# instance fields
.field private mPerformImmediately:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "performImmediately"    # Z

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandDisconnect;->mPerformImmediately:Z

    .line 18
    return-void
.end method


# virtual methods
.method public isToBePerformedImmediately()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandDisconnect;->mPerformImmediately:Z

    return v0
.end method

.method public newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 26
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskDisconnect;

    invoke-direct {v0, p2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskDisconnect;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    return-object v0
.end method
