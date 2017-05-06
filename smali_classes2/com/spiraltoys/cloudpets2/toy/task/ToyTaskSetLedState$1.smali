.class Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState$1;
.super Ljava/lang/Object;
.source "ToyTaskSetLedState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;->onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;
    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V

    .line 57
    return-void
.end method
