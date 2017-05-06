.class public Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;
.super Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;
.source "ToyCommandStartCommandSequence.java"


# instance fields
.field private mCommandSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "commandSequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;>;"
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;->mCommandSequence:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public getCommandSequence()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;->mCommandSequence:Ljava/util/ArrayList;

    return-object v0
.end method

.method public newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 28
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;

    invoke-direct {v0, p1, p2, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;-><init>(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;)V

    return-object v0
.end method
