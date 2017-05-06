.class Lcom/spiraltoys/cloudpets2/toy/ToyService$4;
.super Ljava/lang/Object;
.source "ToyService.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;


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
    .line 472
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$4;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToyDiscovered(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    .locals 4
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 475
    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$4;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->getPeripheralDescription(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$700(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Discovered with name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$4;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->isToyOfInterest(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Z
    invoke-static {v1, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$800(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Z

    move-result v0

    .line 481
    .local v0, "shouldConnect":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$4;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$500(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$4;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$500(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 485
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 486
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$4;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$200(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->stop()V

    .line 487
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$4;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->connectToy(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    invoke-static {v1, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$900(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 489
    :cond_1
    return-void

    .line 482
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
