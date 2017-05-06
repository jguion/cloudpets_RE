.class public Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;
.super Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
.source "ToyTaskSequence.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;


# instance fields
.field private mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;

.field private mContext:Landroid/content/Context;

.field private mCurrentTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

.field private mCurrentTaskIndex:I

.field private mPeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

.field private mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p3, "command"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 25
    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;

    .line 26
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p3}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;->getCommandSequence()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mCurrentTaskIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;

    invoke-virtual {v0, p1, p2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;->newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mCurrentTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    .line 28
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mPeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .line 29
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    .line 30
    return-void
.end method

.method private hasMoreTasks()Z
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mCurrentTaskIndex:I

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;->getCommandSequence()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextTask()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;->getCommandSequence()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mCurrentTaskIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mCurrentTaskIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mPeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;->newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mCurrentTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    return-object v0
.end method


# virtual methods
.method public getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mCurrentTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V
    .locals 2
    .param p1, "task"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .param p2, "toyCommandIdentifier"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .param p3, "error"    # Ljava/lang/Error;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    invoke-interface {v0, p0, v1, p3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 60
    return-void
.end method

.method public onStart(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V
    .locals 0
    .param p1, "task"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    .prologue
    .line 46
    return-void
.end method

.method public onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V
    .locals 3
    .param p1, "task"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .param p2, "toyCommandIdentifier"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->hasMoreTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->nextTask()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;

    invoke-interface {v0, p0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V

    .line 35
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSequence;->mCurrentTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    .line 36
    return-void
.end method
