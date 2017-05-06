.class Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;
.super Ljava/lang/Object;
.source "ToyTaskWriteData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 143
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-static {v5}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 144
    :try_start_0
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-static {v6}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 145
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-static {v6}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 146
    .local v0, "chunk":[B
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-static {v6}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ne v6, v3, :cond_3

    move v1, v3

    .line 147
    .local v1, "isLastChunk":Z
    :goto_0
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-static {v6}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$108(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)J

    move-result-wide v6

    const-wide/16 v8, 0x80

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    move v2, v3

    .line 149
    .local v2, "isResponseRequired":Z
    :goto_1
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$200()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 150
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Write cycle took: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-static {v10}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$400(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$402(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;J)J

    .line 154
    :cond_1
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v6

    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-static {v7}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$500(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)Ljava/util/UUID;

    move-result-object v7

    if-nez v2, :cond_5

    :goto_2
    invoke-virtual {v6, v7, v0, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->writeCharacteristic(Ljava/util/UUID;[BZ)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 155
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$600(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 162
    .end local v0    # "chunk":[B
    .end local v1    # "isLastChunk":Z
    .end local v2    # "isResponseRequired":Z
    :cond_2
    :goto_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->onProgress(I)V

    .line 164
    return-void

    .restart local v0    # "chunk":[B
    :cond_3
    move v1, v4

    .line 146
    goto/16 :goto_0

    .restart local v1    # "isLastChunk":Z
    :cond_4
    move v2, v4

    .line 147
    goto :goto_1

    .restart local v2    # "isResponseRequired":Z
    :cond_5
    move v3, v4

    .line 154
    goto :goto_2

    .line 158
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Writing chunk busy with "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-static {v6}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " remaining..."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$700(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;Z)V

    goto :goto_3

    .line 162
    .end local v0    # "chunk":[B
    .end local v1    # "isLastChunk":Z
    .end local v2    # "isResponseRequired":Z
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
