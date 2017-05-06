.class Lcom/parse/ParseRelationOperation;
.super Ljava/lang/Object;
.source "ParseRelationOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/parse/ParseFieldOperation;"
    }
.end annotation


# instance fields
.field private final relationsToAdd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private final relationsToRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private final targetClass:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "newTargetClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    .local p2, "newRelationsToAdd":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    .local p3, "newRelationsToRemove":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    .line 77
    return-void
.end method

.method constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/util/Set",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    .local p1, "newRelationsToAdd":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p2, "newRelationsToRemove":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "targetClass":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    .line 34
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    .line 36
    if-eqz p1, :cond_2

    .line 37
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 38
    .local v0, "object":Lcom/parse/ParseObject;, "TT;"
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    invoke-direct {p0, v0, v3}, Lcom/parse/ParseRelationOperation;->addParseObjectToSet(Lcom/parse/ParseObject;Ljava/util/Set;)V

    .line 40
    if-nez v1, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "All objects in a relation must be of the same class."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    .end local v0    # "object":Lcom/parse/ParseObject;, "TT;"
    :cond_2
    if-eqz p2, :cond_5

    .line 52
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 53
    .restart local v0    # "object":Lcom/parse/ParseObject;, "TT;"
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    invoke-direct {p0, v0, v3}, Lcom/parse/ParseRelationOperation;->addParseObjectToSet(Lcom/parse/ParseObject;Ljava/util/Set;)V

    .line 55
    if-nez v1, :cond_4

    .line 56
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 58
    :cond_4
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "All objects in a relation must be of the same class."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    .end local v0    # "object":Lcom/parse/ParseObject;, "TT;"
    :cond_5
    if-nez v1, :cond_6

    .line 67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot create a ParseRelationOperation with no objects."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_6
    iput-object v1, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private addAllParseObjectsToSet(Ljava/util/Collection;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parse/ParseObject;>;"
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 103
    .local v0, "obj":Lcom/parse/ParseObject;
    invoke-direct {p0, v0, p2}, Lcom/parse/ParseRelationOperation;->addParseObjectToSet(Lcom/parse/ParseObject;Ljava/util/Set;)V

    goto :goto_0

    .line 105
    .end local v0    # "obj":Lcom/parse/ParseObject;
    :cond_0
    return-void
.end method

.method private addParseObjectToSet(Lcom/parse/ParseObject;Ljava/util/Set;)V
    .locals 4
    .param p1, "obj"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 85
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 91
    .local v0, "existingObject":Lcom/parse/ParseObject;
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    .end local v0    # "existingObject":Lcom/parse/ParseObject;
    :cond_3
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeAllParseObjectsFromSet(Ljava/util/Collection;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parse/ParseObject;>;"
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 130
    .local v0, "obj":Lcom/parse/ParseObject;
    invoke-direct {p0, v0, p2}, Lcom/parse/ParseRelationOperation;->removeParseObjectFromSet(Lcom/parse/ParseObject;Ljava/util/Set;)V

    goto :goto_0

    .line 132
    .end local v0    # "obj":Lcom/parse/ParseObject;
    :cond_0
    return-void
.end method

.method private removeParseObjectFromSet(Lcom/parse/ParseObject;Ljava/util/Set;)V
    .locals 4
    .param p1, "obj"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 113
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 123
    :cond_1
    return-void

    .line 118
    :cond_2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 119
    .local v0, "existingObject":Lcom/parse/ParseObject;
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "oldValue"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 229
    .local p0, "this":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    if-nez p1, :cond_1

    .line 230
    new-instance v0, Lcom/parse/ParseRelation;

    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/parse/ParseRelation;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 243
    .local v1, "relationToAdd":Lcom/parse/ParseObject;
    invoke-virtual {v0, v1}, Lcom/parse/ParseRelation;->addKnownObject(Lcom/parse/ParseObject;)V

    goto :goto_0

    .line 232
    .end local v0    # "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    .end local v1    # "relationToAdd":Lcom/parse/ParseObject;
    :cond_1
    instance-of v3, p1, Lcom/parse/ParseRelation;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 233
    check-cast v0, Lcom/parse/ParseRelation;

    .line 234
    .restart local v0    # "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/parse/ParseRelation;->getTargetClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 235
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Related object object must be of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 236
    invoke-virtual {v0}, Lcom/parse/ParseRelation;->getTargetClass()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was passed in."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    .end local v0    # "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Operation is invalid after previous operation."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 245
    .restart local v0    # "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    :cond_3
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    .line 246
    .local v2, "relationToRemove":Lcom/parse/ParseObject;
    invoke-virtual {v0, v2}, Lcom/parse/ParseRelation;->removeKnownObject(Lcom/parse/ParseObject;)V

    goto :goto_1

    .line 248
    .end local v2    # "relationToRemove":Lcom/parse/ParseObject;
    :cond_4
    return-object v0
.end method

.method convertSetToArray(Ljava/util/Set;Lcom/parse/ParseEncoder;)Lorg/json/JSONArray;
    .locals 4
    .param p2, "objectEncoder"    # Lcom/parse/ParseEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/ParseEncoder;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 144
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 145
    .local v1, "obj":Lcom/parse/ParseObject;
    invoke-virtual {p2, v1}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 147
    .end local v1    # "obj":Lcom/parse/ParseObject;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic encode(Lcom/parse/ParseEncoder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseRelationOperation;->encode(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "objectEncoder"    # Lcom/parse/ParseEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    const/4 v0, 0x0

    .line 154
    .local v0, "adds":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 156
    .local v2, "removes":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 157
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "adds":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 158
    .restart local v0    # "adds":Lorg/json/JSONObject;
    const-string v4, "__op"

    const-string v5, "AddRelation"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v4, "objects"

    iget-object v5, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    invoke-virtual {p0, v5, p1}, Lcom/parse/ParseRelationOperation;->convertSetToArray(Ljava/util/Set;Lcom/parse/ParseEncoder;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 163
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "removes":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 164
    .restart local v2    # "removes":Lorg/json/JSONObject;
    const-string v4, "__op"

    const-string v5, "RemoveRelation"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v4, "objects"

    iget-object v5, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    invoke-virtual {p0, v5, p1}, Lcom/parse/ParseRelationOperation;->convertSetToArray(Ljava/util/Set;Lcom/parse/ParseEncoder;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 169
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 170
    .local v3, "result":Lorg/json/JSONObject;
    const-string v4, "__op"

    const-string v5, "Batch"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 172
    .local v1, "ops":Lorg/json/JSONArray;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 173
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 174
    const-string v4, "ops"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    .end local v1    # "ops":Lorg/json/JSONArray;
    .end local v3    # "result":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 178
    :cond_2
    if-eqz v0, :cond_3

    move-object v3, v0

    .line 179
    goto :goto_0

    .line 182
    :cond_3
    if-eqz v2, :cond_4

    move-object v3, v2

    .line 183
    goto :goto_0

    .line 186
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "A ParseRelationOperation was created without any data."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method getTargetClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    return-object v0
.end method

.method public mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;
    .locals 6
    .param p1, "previous"    # Lcom/parse/ParseFieldOperation;

    .prologue
    .line 191
    .local p0, "this":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    if-nez p1, :cond_0

    .line 217
    .end local p0    # "this":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    :goto_0
    return-object p0

    .line 194
    .restart local p0    # "this":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    :cond_0
    instance-of v3, p1, Lcom/parse/ParseDeleteOperation;

    if-eqz v3, :cond_1

    .line 195
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You can\'t modify a relation after deleting it."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    :cond_1
    instance-of v3, p1, Lcom/parse/ParseRelationOperation;

    if-eqz v3, :cond_5

    move-object v2, p1

    .line 199
    check-cast v2, Lcom/parse/ParseRelationOperation;

    .line 201
    .local v2, "previousOperation":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    iget-object v3, v2, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    iget-object v4, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    .line 202
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 203
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Related object object must be of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was passed in."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    iget-object v3, v2, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 208
    .local v0, "newRelationsToAdd":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    new-instance v1, Ljava/util/HashSet;

    iget-object v3, v2, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 209
    .local v1, "newRelationsToRemove":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    if-eqz v3, :cond_3

    .line 210
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    invoke-direct {p0, v3, v0}, Lcom/parse/ParseRelationOperation;->addAllParseObjectsToSet(Ljava/util/Collection;Ljava/util/Set;)V

    .line 211
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    invoke-direct {p0, v3, v1}, Lcom/parse/ParseRelationOperation;->removeAllParseObjectsFromSet(Ljava/util/Collection;Ljava/util/Set;)V

    .line 213
    :cond_3
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    if-eqz v3, :cond_4

    .line 214
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    invoke-direct {p0, v3, v0}, Lcom/parse/ParseRelationOperation;->removeAllParseObjectsFromSet(Ljava/util/Collection;Ljava/util/Set;)V

    .line 215
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    invoke-direct {p0, v3, v1}, Lcom/parse/ParseRelationOperation;->addAllParseObjectsToSet(Ljava/util/Collection;Ljava/util/Set;)V

    .line 217
    :cond_4
    new-instance v3, Lcom/parse/ParseRelationOperation;

    iget-object v4, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v1}, Lcom/parse/ParseRelationOperation;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    move-object p0, v3

    goto/16 :goto_0

    .line 220
    .end local v0    # "newRelationsToAdd":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    .end local v1    # "newRelationsToRemove":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    .end local v2    # "previousOperation":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Operation is invalid after previous operation."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
