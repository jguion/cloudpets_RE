.class Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2$6;
.super Ljava/lang/Object;
.source "ToyPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2;->onCharacteristicSetNotify(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;Ljava/lang/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2;

.field final synthetic val$characteristic:Ljava/util/UUID;

.field final synthetic val$error:Ljava/lang/Error;

.field final synthetic val$peripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;Ljava/lang/Error;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2$6;->this$1:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2$6;->val$peripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2$6;->val$characteristic:Ljava/util/UUID;

    iput-object p4, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2$6;->val$error:Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 457
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2$6;->this$1:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->access$700(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 458
    .local v1, "listenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    .line 459
    .local v0, "listener":Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2$6;->val$peripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2$6;->val$characteristic:Ljava/util/UUID;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2$6;->val$error:Ljava/lang/Error;

    invoke-interface {v0, v3, v4, v5}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onCharacteristicSetNotify(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;Ljava/lang/Error;)V

    goto :goto_0

    .line 461
    .end local v0    # "listener":Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;
    :cond_0
    return-void
.end method
