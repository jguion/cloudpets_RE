.class Lcom/spiraltoys/cloudpets2/toy/ToyScanner$2;
.super Ljava/lang/Object;
.source "ToyScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->onToyDiscovered(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

.field final synthetic val$peripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$2;->val$peripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 135
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventDiscovered;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$2;->val$peripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventDiscovered;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mListener:Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->access$600(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;)Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mListener:Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->access$600(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;)Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$2;->val$peripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;->onToyDiscovered(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 140
    :cond_0
    return-void
.end method
