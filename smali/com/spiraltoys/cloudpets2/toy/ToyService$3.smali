.class Lcom/spiraltoys/cloudpets2/toy/ToyService$3;
.super Landroid/content/BroadcastReceiver;
.source "ToyService.java"


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
    .line 449
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 452
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->updateState()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$000(Lcom/spiraltoys/cloudpets2/toy/ToyService;)V

    .line 455
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$100(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$100(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_SUPPORTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq v0, v1, :cond_1

    .line 456
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$200(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->stop()V

    .line 457
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$200(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->forgetAll()V

    .line 459
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$300(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$300(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->clear()V

    .line 462
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    const v2, 0x7f080097

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->postError(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/String;)V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->setActivePeripheral(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    invoke-static {v0, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$400(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 466
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # setter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;
    invoke-static {v0, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$502(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    .line 469
    :cond_1
    return-void
.end method
