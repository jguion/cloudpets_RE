.class Lcom/spiraltoys/cloudpets2/toy/ToyService$5;
.super Ljava/lang/Object;
.source "ToyService.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/ToyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V
    .locals 4
    .param p1, "task"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .param p2, "toyCommandIdentifier"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .param p3, "error"    # Ljava/lang/Error;

    .prologue
    .line 536
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v0

    .line 537
    .local v0, "peripheral":Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->getPeripheralDescription(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$700(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Error;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    invoke-virtual {p3}, Ljava/lang/Error;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->postError(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->setState(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V
    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$1000(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    .line 546
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    const/4 v2, 0x1

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->onDisconnected(Z)V
    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$1300(Lcom/spiraltoys/cloudpets2/toy/ToyService;Z)V

    goto :goto_0
.end method

.method public onStart(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V
    .locals 4
    .param p1, "task"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    .prologue
    .line 495
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v0

    .line 496
    .local v0, "peripheral":Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->getPeripheralDescription(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$700(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " started."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v2

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->setState(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V
    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$1000(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    .line 499
    return-void
.end method

.method public onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V
    .locals 6
    .param p1, "task"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .param p2, "toyCommandIdentifier"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 503
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v1

    .line 504
    .local v1, "peripheral":Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->getPeripheralDescription(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$700(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " succeeded."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getCurrentState()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    move-result-object v2

    sget-object v3, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_PLAYBACK:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    if-eq v2, v3, :cond_0

    .line 508
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    sget-object v3, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->setState(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V
    invoke-static {v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$1000(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    .line 512
    :cond_0
    instance-of v2, p1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;

    if-eqz v2, :cond_4

    .line 513
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v3

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->isToyOfInterest(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Z
    invoke-static {v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$800(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Z

    move-result v0

    .line 514
    .local v0, "isToyOfInterest":Z
    if-eqz v0, :cond_3

    .line 515
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v3

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->setActivePeripheral(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    invoke-static {v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$400(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 517
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->isValidFirmware(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 518
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    new-instance v3, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->postEvent(Ljava/lang/Object;Z)V

    .line 529
    .end local v0    # "isToyOfInterest":Z
    .end local p3    # "data":Ljava/lang/Object;
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 530
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    new-instance v3, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;

    invoke-direct {v3, p2}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;-><init>(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;)V

    invoke-virtual {v2, v3, v5}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->postEvent(Ljava/lang/Object;Z)V

    .line 532
    :cond_2
    return-void

    .line 520
    .restart local v0    # "isToyOfInterest":Z
    .restart local p3    # "data":Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->isSearching()Z
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$1100(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 521
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$300(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    move-result-object v2

    new-instance v3, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskDisconnect;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$1200(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskDisconnect;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    invoke-virtual {v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    goto :goto_0

    .line 523
    .end local v0    # "isToyOfInterest":Z
    :cond_4
    instance-of v2, p1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskDisconnect;

    if-eqz v2, :cond_5

    .line 524
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    const/4 v3, 0x0

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->onDisconnected(Z)V
    invoke-static {v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$1300(Lcom/spiraltoys/cloudpets2/toy/ToyService;Z)V

    goto :goto_0

    .line 525
    :cond_5
    instance-of v2, p1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;

    if-eqz v2, :cond_1

    .line 526
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    new-instance v3, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;

    check-cast p3, Landroid/net/Uri;

    .end local p3    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p3, v4}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->postEvent(Ljava/lang/Object;Z)V

    goto :goto_0
.end method
