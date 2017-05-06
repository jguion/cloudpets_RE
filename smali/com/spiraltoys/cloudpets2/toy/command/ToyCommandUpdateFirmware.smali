.class public Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandUpdateFirmware;
.super Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;
.source "ToyCommandUpdateFirmware.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 15
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    invoke-direct {v0, p2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    return-object v0
.end method
