.class Lcom/parse/ParseRemoveOperation;
.super Ljava/lang/Object;
.source "ParseRemoveOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperation;


# instance fields
.field protected final objects:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    .line 28
    iget-object v0, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 29
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p1, "oldValue"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    if-nez p1, :cond_1

    .line 64
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .end local p1    # "oldValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v5

    .line 65
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_1
    instance-of v7, p1, Lorg/json/JSONArray;

    if-eqz v7, :cond_2

    .line 66
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "oldValue":Ljava/lang/Object;
    invoke-static {p1}, Lcom/parse/ParseFieldOperations;->jsonArrayAsArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    .line 68
    .local v4, "old":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0, v4, p2}, Lcom/parse/ParseRemoveOperation;->apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 69
    .local v0, "newValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 70
    .end local v0    # "newValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v4    # "old":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_2
    instance-of v7, p1, Ljava/util/List;

    if-eqz v7, :cond_6

    .line 71
    new-instance v5, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    .end local p1    # "oldValue":Ljava/lang/Object;
    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    .local v3, "objectsToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 80
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 81
    .local v2, "objectIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, "obj":Ljava/lang/Object;
    instance-of v8, v1, Lcom/parse/ParseObject;

    if-eqz v8, :cond_3

    .line 83
    check-cast v1, Lcom/parse/ParseObject;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 89
    .local v6, "resultIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 91
    .restart local v1    # "obj":Ljava/lang/Object;
    instance-of v7, v1, Lcom/parse/ParseObject;

    if-eqz v7, :cond_5

    check-cast v1, Lcom/parse/ParseObject;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 92
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 97
    .end local v2    # "objectIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "objectsToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v6    # "resultIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Operation is invalid after previous operation."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public bridge synthetic encode(Lcom/parse/ParseEncoder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/parse/ParseRemoveOperation;->encode(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "objectEncoder"    # Lcom/parse/ParseEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .local v0, "output":Lorg/json/JSONObject;
    const-string v1, "__op"

    const-string v2, "Remove"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v1, "objects"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v2}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    return-object v0
.end method

.method public mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;
    .locals 4
    .param p1, "previous"    # Lcom/parse/ParseFieldOperation;

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 55
    .end local p0    # "this":Lcom/parse/ParseRemoveOperation;
    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :goto_0
    return-object p0

    .line 43
    .end local v0    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    .restart local p0    # "this":Lcom/parse/ParseRemoveOperation;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_0
    instance-of v2, p1, Lcom/parse/ParseDeleteOperation;

    if-eqz v2, :cond_1

    .line 44
    new-instance v2, Lcom/parse/ParseSetOperation;

    iget-object v3, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    move-object p0, v2

    goto :goto_0

    .line 45
    :cond_1
    instance-of v2, p1, Lcom/parse/ParseSetOperation;

    if-eqz v2, :cond_4

    .line 46
    check-cast p1, Lcom/parse/ParseSetOperation;

    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    invoke-virtual {p1}, Lcom/parse/ParseSetOperation;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 47
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lorg/json/JSONArray;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 48
    :cond_2
    new-instance v2, Lcom/parse/ParseSetOperation;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/parse/ParseRemoveOperation;->apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    move-object p0, v2

    goto :goto_0

    .line 50
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You can only add an item to a List or JSONArray."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    .end local v1    # "value":Ljava/lang/Object;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_4
    instance-of v2, p1, Lcom/parse/ParseRemoveOperation;

    if-eqz v2, :cond_5

    .line 53
    new-instance v0, Ljava/util/HashSet;

    check-cast p1, Lcom/parse/ParseRemoveOperation;

    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    iget-object v2, p1, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 54
    .restart local v0    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 55
    new-instance p0, Lcom/parse/ParseRemoveOperation;

    .end local p0    # "this":Lcom/parse/ParseRemoveOperation;
    invoke-direct {p0, v0}, Lcom/parse/ParseRemoveOperation;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 57
    .end local v0    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    .restart local p0    # "this":Lcom/parse/ParseRemoveOperation;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Operation is invalid after previous operation."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
