.class Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback$1;
.super Ljava/lang/Object;
.source "ToyTaskStartLoopPlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;->onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;
    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskStartLoopPlayback;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V

    .line 56
    return-void
.end method
