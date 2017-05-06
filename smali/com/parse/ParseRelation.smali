.class public Lcom/parse/ParseRelation;
.super Ljava/lang/Object;
.source "ParseRelation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private knownObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mutex:Ljava/lang/Object;

.field private parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private parentClassName:Ljava/lang/String;

.field private parentObjectId:Ljava/lang/String;

.field private targetClass:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lcom/parse/ParseObject;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    .line 47
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 51
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "targetClass"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    .line 54
    iput-object v1, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    .line 55
    iput-object v1, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 59
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;

    .prologue
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    .line 43
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    .line 65
    iput-object v3, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    .line 66
    iput-object v3, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    .line 67
    iput-object v3, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    .line 68
    iput-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 69
    const-string v2, "className"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 70
    const-string v2, "objects"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 71
    .local v1, "objectsArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 73
    iget-object v3, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/parse/ParseObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    iget-object v2, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 107
    :try_start_0
    new-instance v0, Lcom/parse/ParseRelationOperation;

    .line 108
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/parse/ParseRelationOperation;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 109
    .local v0, "operation":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    invoke-virtual {v0}, Lcom/parse/ParseRelationOperation;->getTargetClass()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/parse/ParseRelation;->getParent()Lcom/parse/ParseObject;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 112
    iget-object v1, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    monitor-exit v2

    .line 114
    return-void

    .line 113
    .end local v0    # "operation":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addKnownObject(Lcom/parse/ParseObject;)V
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 186
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method encodeToJSON(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "objectEncoder"    # Lcom/parse/ParseEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v4, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 154
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 155
    .local v2, "relation":Lorg/json/JSONObject;
    const-string v3, "__type"

    const-string v5, "Relation"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v3, "className"

    iget-object v5, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 158
    .local v1, "knownObjectsArray":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .local v0, "knownObject":Lcom/parse/ParseObject;
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/parse/ParseEncoder;->encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v5

    goto :goto_0

    .line 165
    .end local v0    # "knownObject":Lcom/parse/ParseObject;
    :cond_0
    :try_start_2
    const-string v3, "objects"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    monitor-exit v4

    return-object v2

    .line 167
    .end local v1    # "knownObjectsArray":Lorg/json/JSONArray;
    .end local v2    # "relation":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "someParent"    # Lcom/parse/ParseObject;
    .param p2, "someKey"    # Ljava/lang/String;

    .prologue
    .line 79
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    .line 82
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 86
    iput-object p2, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Internal error. One ParseRelation retrieved from two different ParseObjects."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 92
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Internal error. One ParseRelation retrieved from two different keys."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    return-void
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    return-object v0
.end method

.method getKnownObjects()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    return-object v0
.end method

.method getParent()Lcom/parse/ParseObject;
    .locals 2

    .prologue
    .line 211
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    iget-object v1, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    goto :goto_0
.end method

.method public getQuery()Lcom/parse/ParseQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Lcom/parse/ParseQuery$State$Builder;

    iget-object v3, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/parse/ParseQuery$State$Builder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 143
    invoke-virtual {v1, v3}, Lcom/parse/ParseQuery$State$Builder;->redirectClassNameForKey(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    .line 147
    .local v0, "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/parse/ParseRelation;->getParent()Lcom/parse/ParseObject;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/parse/ParseQuery$State$Builder;->whereRelatedTo(Lcom/parse/ParseObject;Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    .line 148
    new-instance v1, Lcom/parse/ParseQuery;

    invoke-direct {v1, v0}, Lcom/parse/ParseQuery;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    monitor-exit v2

    return-object v1

    .line 145
    .end local v0    # "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    :cond_0
    new-instance v0, Lcom/parse/ParseQuery$State$Builder;

    iget-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery$State$Builder;-><init>(Ljava/lang/String;)V

    .restart local v0    # "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    goto :goto_0

    .line 149
    .end local v0    # "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getTargetClass()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasKnownObject(Lcom/parse/ParseObject;)Z
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 205
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Lcom/parse/ParseObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    iget-object v2, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    :try_start_0
    new-instance v0, Lcom/parse/ParseRelationOperation;

    const/4 v1, 0x0

    .line 125
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/parse/ParseRelationOperation;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 126
    .local v0, "operation":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    invoke-virtual {v0}, Lcom/parse/ParseRelationOperation;->getTargetClass()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/parse/ParseRelation;->getParent()Lcom/parse/ParseObject;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 129
    iget-object v1, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 130
    monitor-exit v2

    .line 131
    return-void

    .line 130
    .end local v0    # "operation":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeKnownObject(Lcom/parse/ParseObject;)V
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 195
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 197
    monitor-exit v1

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setTargetClass(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 177
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iput-object p1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 179
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
