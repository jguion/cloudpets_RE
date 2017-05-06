.class final Lcom/parse/ParseObject$41;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;
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
.field final synthetic val$filesComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$remaining:Lbolts/Capture;

.field final synthetic val$sessionToken:Ljava/lang/String;

.field final synthetic val$usersComplete:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lbolts/Capture;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2437
    iput-object p1, p0, Lcom/parse/ParseObject$41;->val$remaining:Lbolts/Capture;

    iput-object p2, p0, Lcom/parse/ParseObject$41;->val$filesComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/parse/ParseObject$41;->val$usersComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/parse/ParseObject$41;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 5
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
    .line 2442
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2443
    .local v0, "current":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2444
    .local v1, "nextBatch":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    iget-object v3, p0, Lcom/parse/ParseObject$41;->val$remaining:Lbolts/Capture;

    invoke-virtual {v3}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    .line 2445
    .local v2, "obj":Lcom/parse/ParseObject;
    # invokes: Lcom/parse/ParseObject;->canBeSerialized()Z
    invoke-static {v2}, Lcom/parse/ParseObject;->access$1500(Lcom/parse/ParseObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2446
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2448
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2451
    .end local v2    # "obj":Lcom/parse/ParseObject;
    :cond_1
    iget-object v3, p0, Lcom/parse/ParseObject$41;->val$remaining:Lbolts/Capture;

    invoke-virtual {v3, v1}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 2453
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/parse/ParseObject$41;->val$filesComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/parse/ParseObject$41;->val$usersComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2457
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unable to save a ParseObject with a relation to a cycle."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2461
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 2462
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    .line 2465
    :goto_1
    return-object v3

    :cond_3
    new-instance v3, Lcom/parse/ParseObject$41$1;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseObject$41$1;-><init>(Lcom/parse/ParseObject$41;Ljava/util/List;)V

    invoke-static {v0, v3}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    goto :goto_1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2437
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$41;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
