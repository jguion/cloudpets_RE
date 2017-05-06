.class final Lcom/parse/ParseObject$42;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveAllAsync(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$sessionToken:Ljava/lang/String;

.field final synthetic val$uniqueObjects:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2479
    iput-object p1, p0, Lcom/parse/ParseObject$42;->val$uniqueObjects:Ljava/util/List;

    iput-object p2, p0, Lcom/parse/ParseObject$42;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2482
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v12, p0, Lcom/parse/ParseObject$42;->val$uniqueObjects:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    .line 2483
    .local v7, "objectCount":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2484
    .local v10, "states":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject$State;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2485
    .local v9, "operationsList":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2486
    .local v2, "decoders":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseDecoder;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_0

    .line 2487
    iget-object v12, p0, Lcom/parse/ParseObject$42;->val$uniqueObjects:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    .line 2488
    .local v5, "object":Lcom/parse/ParseObject;
    invoke-virtual {v5}, Lcom/parse/ParseObject;->updateBeforeSave()V

    .line 2489
    invoke-virtual {v5}, Lcom/parse/ParseObject;->validateSave()V

    .line 2491
    invoke-virtual {v5}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2492
    invoke-virtual {v5}, Lcom/parse/ParseObject;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2493
    # invokes: Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;
    invoke-static {v5}, Lcom/parse/ParseObject;->access$700(Lcom/parse/ParseObject;)Ljava/util/Map;

    move-result-object v3

    .line 2494
    .local v3, "fetchedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    new-instance v12, Lcom/parse/KnownParseObjectDecoder;

    invoke-direct {v12, v3}, Lcom/parse/KnownParseObjectDecoder;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2486
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2496
    .end local v3    # "fetchedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    .end local v5    # "object":Lcom/parse/ParseObject;
    :cond_0
    # invokes: Lcom/parse/ParseObject;->getObjectController()Lcom/parse/ParseObjectController;
    invoke-static {}, Lcom/parse/ParseObject;->access$800()Lcom/parse/ParseObjectController;

    move-result-object v12

    iget-object v13, p0, Lcom/parse/ParseObject$42;->val$sessionToken:Ljava/lang/String;

    invoke-interface {v12, v10, v9, v13, v2}, Lcom/parse/ParseObjectController;->saveAllAsync(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 2499
    .local v1, "batchTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Lcom/parse/ParseObject$State;>;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2500
    .local v11, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_1

    .line 2501
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .line 2502
    .local v0, "batchTask":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseObject$State;>;"
    iget-object v12, p0, Lcom/parse/ParseObject$42;->val$uniqueObjects:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 2503
    .local v6, "object":Lcom/parse/ParseObject;, "TT;"
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parse/ParseOperationSet;

    .line 2504
    .local v8, "operations":Lcom/parse/ParseOperationSet;
    new-instance v12, Lcom/parse/ParseObject$42$1;

    invoke-direct {v12, p0, v6, v8}, Lcom/parse/ParseObject$42$1;-><init>(Lcom/parse/ParseObject$42;Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v0, v12}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2500
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2522
    .end local v0    # "batchTask":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseObject$State;>;"
    .end local v6    # "object":Lcom/parse/ParseObject;, "TT;"
    .end local v8    # "operations":Lcom/parse/ParseOperationSet;
    :cond_1
    invoke-static {v11}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v12

    return-object v12
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2479
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$42;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
