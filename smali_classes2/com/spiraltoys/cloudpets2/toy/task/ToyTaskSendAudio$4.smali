.class Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$4;
.super Ljava/lang/Object;
.source "ToyTaskSendAudio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;
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
    .line 272
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$4;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 275
    # getter for: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ERROR: Audio transfer timed out!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v0, Ljava/lang/Error;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$4;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08009b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "error":Ljava/lang/Error;
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$4;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$4;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$4;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;
    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->access$200(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 279
    return-void
.end method
