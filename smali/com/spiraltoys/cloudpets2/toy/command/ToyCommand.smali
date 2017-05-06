.class public abstract Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;
.super Ljava/lang/Object;
.source "ToyCommand.java"


# instance fields
.field private final mCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;->mCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 13
    return-void
.end method


# virtual methods
.method public getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;->mCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    return-object v0
.end method

.method public abstract newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
.end method
