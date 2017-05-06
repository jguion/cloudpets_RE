.class Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$3;
.super Ljava/lang/Object;
.source "ToyTaskSendAudio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->onCharacteristicChanged(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->access$200(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V

    .line 267
    return-void
.end method
