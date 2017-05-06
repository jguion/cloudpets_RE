.class public Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;
.super Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;
.source "ToyCommandSetIdentifier.java"


# instance fields
.field private mIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;->mIdentifier:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 26
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetIdentifier;

    invoke-direct {v0, p2, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetIdentifier;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;)V

    return-object v0
.end method
