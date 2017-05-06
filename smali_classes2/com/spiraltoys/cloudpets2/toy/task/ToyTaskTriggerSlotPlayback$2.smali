.class Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback$2;
.super Ljava/lang/Object;
.source "ToyTaskTriggerSlotPlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->onToyStateChange(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;
    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskTriggerSlotPlayback;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V

    .line 75
    return-void
.end method
