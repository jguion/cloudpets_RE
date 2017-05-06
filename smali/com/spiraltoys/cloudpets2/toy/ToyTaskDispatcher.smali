.class public Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;
.super Ljava/lang/Object;
.source "ToyTaskDispatcher.java"


# instance fields
.field private mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

.field private mHandler:Landroid/os/Handler;

.field private final mInternalListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

.field private mListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

.field private mTaskQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mTaskQueue:Ljava/util/LinkedList;

    .line 19
    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    .line 20
    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    .line 70
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mInternalListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    .line 24
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    return-object v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->startNextTask()V

    return-void
.end method

.method private declared-synchronized startNextTask()V
    .locals 2
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    .line 66
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mInternalListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addToFront(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V
    .locals 1
    .param p1, "task"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    if-nez v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->startNextTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 54
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->stop()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V
    .locals 1
    .param p1, "task"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    if-nez v0, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->startNextTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
