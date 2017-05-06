.class Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;
.super Ljava/lang/Object;
.source "ToyTaskDispatcher.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V
    .locals 3
    .param p1, "task"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .param p2, "toyCommandIdentifier"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .param p3, "error"    # Ljava/lang/Error;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->access$000(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 115
    monitor-exit v1

    .line 131
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->access$000(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->stop()V

    .line 120
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->access$100(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->access$200(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$3;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->startNextTask()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->access$300(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)V

    .line 130
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStart(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V
    .locals 3
    .param p1, "task"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->access$000(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 75
    monitor-exit v1

    .line 87
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->access$100(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->access$200(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$1;

    invoke-direct {v2, p0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$1;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V
    .locals 3
    .param p1, "task"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .param p2, "identifier"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->access$000(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 93
    monitor-exit v1

    .line 109
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mActiveTask:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->access$000(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->stop()V

    .line 98
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->access$100(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->access$200(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$2;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->startNextTask()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->access$300(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)V

    .line 108
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
