.class Lcom/parse/NetworkObjectController$3;
.super Ljava/lang/Object;
.source "NetworkObjectController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/NetworkObjectController;->saveAllAsync(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lorg/json/JSONObject;",
        "Lcom/parse/ParseObject$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/NetworkObjectController;

.field final synthetic val$decoder:Lcom/parse/ParseDecoder;

.field final synthetic val$state:Lcom/parse/ParseObject$State;


# direct methods
.method constructor <init>(Lcom/parse/NetworkObjectController;Lcom/parse/ParseObject$State;Lcom/parse/ParseDecoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/NetworkObjectController;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/parse/NetworkObjectController$3;->this$0:Lcom/parse/NetworkObjectController;

    iput-object p2, p0, Lcom/parse/NetworkObjectController$3;->val$state:Lcom/parse/ParseObject$State;

    iput-object p3, p0, Lcom/parse/NetworkObjectController$3;->val$decoder:Lcom/parse/ParseDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseObject$State;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/parse/ParseObject$State;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 113
    .local v1, "result":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/NetworkObjectController$3;->val$state:Lcom/parse/ParseObject$State;

    invoke-virtual {v2}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseObject$State$Init;->clear()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    .line 114
    .local v0, "builder":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<*>;"
    iget-object v2, p0, Lcom/parse/NetworkObjectController$3;->this$0:Lcom/parse/NetworkObjectController;

    # getter for: Lcom/parse/NetworkObjectController;->coder:Lcom/parse/ParseObjectCoder;
    invoke-static {v2}, Lcom/parse/NetworkObjectController;->access$000(Lcom/parse/NetworkObjectController;)Lcom/parse/ParseObjectCoder;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/NetworkObjectController$3;->val$decoder:Lcom/parse/ParseDecoder;

    invoke-virtual {v2, v0, v1, v3}, Lcom/parse/ParseObjectCoder;->decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;

    move-result-object v2

    const/4 v3, 0x0

    .line 115
    invoke-virtual {v2, v3}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v2

    .line 114
    return-object v2
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/parse/NetworkObjectController$3;->then(Lbolts/Task;)Lcom/parse/ParseObject$State;

    move-result-object v0

    return-object v0
.end method
