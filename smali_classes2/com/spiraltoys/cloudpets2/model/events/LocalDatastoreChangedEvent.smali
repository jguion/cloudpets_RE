.class public Lcom/spiraltoys/cloudpets2/model/events/LocalDatastoreChangedEvent;
.super Ljava/lang/Object;
.source "LocalDatastoreChangedEvent.java"


# instance fields
.field mObjectsDeleted:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field mObjectsInserted:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field mObjectsUpdated:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/Set",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/Set",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "objectsInserted":Ljava/util/Set;, "Ljava/util/Set<+Lcom/parse/ParseObject;>;"
    .local p2, "objectsUpdated":Ljava/util/Set;, "Ljava/util/Set<+Lcom/parse/ParseObject;>;"
    .local p3, "objectsDeleted":Ljava/util/Set;, "Ljava/util/Set<+Lcom/parse/ParseObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    .end local p1    # "objectsInserted":Ljava/util/Set;, "Ljava/util/Set<+Lcom/parse/ParseObject;>;"
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/events/LocalDatastoreChangedEvent;->mObjectsInserted:Ljava/util/Set;

    .line 21
    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashSet;

    .end local p2    # "objectsUpdated":Ljava/util/Set;, "Ljava/util/Set<+Lcom/parse/ParseObject;>;"
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/events/LocalDatastoreChangedEvent;->mObjectsUpdated:Ljava/util/Set;

    .line 22
    if-nez p3, :cond_2

    new-instance p3, Ljava/util/HashSet;

    .end local p3    # "objectsDeleted":Ljava/util/Set;, "Ljava/util/Set<+Lcom/parse/ParseObject;>;"
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    :cond_2
    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/model/events/LocalDatastoreChangedEvent;->mObjectsDeleted:Ljava/util/Set;

    .line 23
    return-void
.end method


# virtual methods
.method public getObjectsDeleted()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/events/LocalDatastoreChangedEvent;->mObjectsDeleted:Ljava/util/Set;

    return-object v0
.end method

.method public getObjectsInserted()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/events/LocalDatastoreChangedEvent;->mObjectsInserted:Ljava/util/Set;

    return-object v0
.end method

.method public getObjectsUpdated()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/events/LocalDatastoreChangedEvent;->mObjectsUpdated:Ljava/util/Set;

    return-object v0
.end method
