.class public Lcom/parse/ParseObject;
.super Ljava/lang/Object;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseObject$State;
    }
.end annotation


# static fields
.field private static final AUTO_CLASS_NAME:Ljava/lang/String; = "_Automatic"

.field public static final DEFAULT_PIN:Ljava/lang/String; = "_default"

.field private static final KEY_ACL:Ljava/lang/String; = "ACL"

.field private static final KEY_CLASS_NAME:Ljava/lang/String; = "className"

.field private static final KEY_COMPLETE:Ljava/lang/String; = "__complete"

.field private static final KEY_CREATED_AT:Ljava/lang/String; = "createdAt"

.field static final KEY_IS_DELETING_EVENTUALLY:Ljava/lang/String; = "__isDeletingEventually"

.field private static final KEY_IS_DELETING_EVENTUALLY_OLD:Ljava/lang/String; = "isDeletingEventually"

.field private static final KEY_OBJECT_ID:Ljava/lang/String; = "objectId"

.field private static final KEY_OPERATIONS:Ljava/lang/String; = "__operations"

.field private static final KEY_UPDATED_AT:Ljava/lang/String; = "updatedAt"

.field private static final NEW_OFFLINE_OBJECT_ID_PLACEHOLDER:Ljava/lang/String; = "*** Offline Object ***"

.field static final VERSION_NAME:Ljava/lang/String; = "1.13.1"

.field private static final isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final estimatedData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field isDeleted:Z

.field isDeletingEventually:I

.field private localId:Ljava/lang/String;

.field final mutex:Ljava/lang/Object;

.field final operationSetQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/parse/ParseOperationSet;",
            ">;"
        }
    .end annotation
.end field

.field private final saveEvent:Lcom/parse/ParseMulticastDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseMulticastDelegate",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/parse/ParseObject$State;

.field final taskQueue:Lcom/parse/TaskQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/parse/ParseObject$1;

    invoke-direct {v0}, Lcom/parse/ParseObject$1;-><init>()V

    sput-object v0, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 334
    const-string v0, "_Automatic"

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "theClassName"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    .line 297
    new-instance v3, Lcom/parse/TaskQueue;

    invoke-direct {v3}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    .line 306
    new-instance v3, Lcom/parse/ParseMulticastDelegate;

    invoke-direct {v3}, Lcom/parse/ParseMulticastDelegate;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    .line 353
    sget-object v3, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 355
    .local v1, "objectIdForPointer":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 356
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You must specify a Parse class name when creating a new ParseObject."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 359
    :cond_0
    const-string v3, "_Automatic"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 360
    invoke-static {}, Lcom/parse/ParseObject;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 364
    :cond_1
    invoke-static {}, Lcom/parse/ParseObject;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/parse/ParseObjectSubclassingController;->isSubclassValid(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 365
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You must create this type of ParseObject using ParseObject.create() or the proper subclass."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 369
    :cond_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    .line 370
    iget-object v3, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v4, Lcom/parse/ParseOperationSet;

    invoke-direct {v4}, Lcom/parse/ParseOperationSet;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    .line 373
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->newStateBuilder(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    .line 375
    .local v0, "builder":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<*>;"
    if-nez v1, :cond_4

    .line 376
    invoke-virtual {p0}, Lcom/parse/ParseObject;->setDefaultValues()V

    .line 377
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    .line 385
    :goto_0
    invoke-virtual {v0}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v3

    iput-object v3, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    .line 387
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v2

    .line 388
    .local v2, "store":Lcom/parse/OfflineStore;
    if-eqz v2, :cond_3

    .line 389
    invoke-virtual {v2, p0}, Lcom/parse/OfflineStore;->registerNewObject(Lcom/parse/ParseObject;)V

    .line 391
    :cond_3
    return-void

    .line 379
    .end local v2    # "store":Lcom/parse/OfflineStore;
    :cond_4
    const-string v3, "*** Offline Object ***"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 380
    invoke-virtual {v0, v1}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    .line 382
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/parse/ParseObject;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lbolts/Task;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseObject;->deleteAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lbolts/Task;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/parse/ParseObject;->deleteAllAsync(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Ljava/util/List;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->deleteAllAsync(Ljava/util/List;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parse/ParseObject;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Ljava/util/Collection;
    .param p3, "x3"    # Ljava/util/Set;
    .param p4, "x4"    # Ljava/util/Set;

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/parse/ParseObject;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/parse/ParseObject;->canBeSerialized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lbolts/Task;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/parse/ParseObject;->saveAllAsync(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Ljava/util/List;Lcom/parse/ParseUser;ZLbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Lcom/parse/ParseUser;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lbolts/Task;

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/parse/ParseObject;->fetchAllAsync(Ljava/util/List;Lcom/parse/ParseUser;ZLbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParseObject;)Lcom/parse/ParseMulticastDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParseObject;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Lcom/parse/ParseObjectController;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/parse/ParseObject;->getObjectController()Lcom/parse/ParseObjectController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/ParseObject;)Lcom/parse/ParseObject$State;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    return-object v0
.end method

.method private applyOperations(Lcom/parse/ParseOperationSet;Ljava/util/Map;)V
    .locals 6
    .param p1, "operations"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2791
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2792
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseFieldOperation;

    .line 2793
    .local v3, "operation":Lcom/parse/ParseFieldOperation;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2794
    .local v2, "oldValue":Ljava/lang/Object;
    invoke-interface {v3, v2, v0}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2795
    .local v1, "newValue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2796
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2798
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2801
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "newValue":Ljava/lang/Object;
    .end local v2    # "oldValue":Ljava/lang/Object;
    .end local v3    # "operation":Lcom/parse/ParseFieldOperation;
    :cond_1
    return-void
.end method

.method private canBeSerialized()Z
    .locals 4

    .prologue
    .line 2346
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2347
    :try_start_0
    new-instance v0, Lbolts/Capture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lbolts/Capture;-><init>(Ljava/lang/Object;)V

    .line 2353
    .local v0, "result":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/parse/ParseObject$37;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$37;-><init>(Lcom/parse/ParseObject;Lbolts/Capture;)V

    const/4 v3, 0x0

    .line 2373
    invoke-virtual {v1, v3}, Lcom/parse/ParseObject$37;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/parse/ParseTraverser;->setTraverseParseObjects(Z)Lcom/parse/ParseTraverser;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 2375
    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2376
    .end local v0    # "result":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkGetAccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3436
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3437
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParseObject has no data for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Call fetchIfNeeded() to get the data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3440
    :cond_0
    return-void
.end method

.method private checkKeyIsMutable(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3007
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->isKeyMutable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3008
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot modify `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "` property of an "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3009
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3011
    :cond_0
    return-void
.end method

.method private static collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .param p0, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/ParseFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2337
    .local p1, "dirtyChildren":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parse/ParseObject;>;"
    .local p2, "dirtyFiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parse/ParseFile;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V

    .line 2340
    return-void
.end method

.method private static collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .param p0, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/ParseFile;",
            ">;",
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
    .line 2266
    .local p1, "dirtyChildren":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parse/ParseObject;>;"
    .local p2, "dirtyFiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parse/ParseFile;>;"
    .local p3, "alreadySeen":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    .local p4, "alreadySeenNew":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    new-instance v0, Lcom/parse/ParseObject$36;

    invoke-direct {v0, p2, p1, p3, p4}, Lcom/parse/ParseObject$36;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V

    const/4 v1, 0x1

    .line 2328
    invoke-virtual {v0, v1}, Lcom/parse/ParseObject$36;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 2329
    return-void
.end method

.method private collectFetchedObjects()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 803
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 804
    .local v0, "fetchedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    new-instance v1, Lcom/parse/ParseObject$4;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$4;-><init>(Lcom/parse/ParseObject;Ljava/util/Map;)V

    .line 817
    .local v1, "traverser":Lcom/parse/ParseTraverser;
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 818
    return-object v0
.end method

.method public static create(Ljava/lang/Class;)Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/parse/ParseObject;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseObject;->create(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-static {}, Lcom/parse/ParseObject;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseObjectSubclassingController;->newInstance(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public static createWithoutData(Ljava/lang/Class;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/parse/ParseObject;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public static createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 432
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v2

    .line 434
    .local v2, "store":Lcom/parse/OfflineStore;
    if-nez p1, :cond_1

    .line 435
    :try_start_0
    sget-object v3, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    const-string v4, "*** Offline Object ***"

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 439
    :goto_0
    const/4 v1, 0x0

    .line 440
    .local v1, "object":Lcom/parse/ParseObject;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 441
    invoke-virtual {v2, p0, p1}, Lcom/parse/OfflineStore;->getObject(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .line 444
    :cond_0
    if-nez v1, :cond_2

    .line 445
    invoke-static {p0}, Lcom/parse/ParseObject;->create(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .line 446
    invoke-virtual {v1}, Lcom/parse/ParseObject;->hasChanges()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 447
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "A ParseObject subclass default constructor must not make changes to the object that cause it to be dirty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    .end local v1    # "object":Lcom/parse/ParseObject;
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v3

    .line 437
    :cond_1
    :try_start_2
    sget-object v3, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 458
    :catch_1
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to create instance of subclass."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "object":Lcom/parse/ParseObject;
    :cond_2
    sget-object v3, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 454
    return-object v1
.end method

.method private currentOperations()Lcom/parse/ParseOperationSet;
    .locals 2

    .prologue
    .line 2782
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2783
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    monitor-exit v1

    return-object v0

    .line 2784
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private currentSaveEventuallyCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 3
    .param p1, "operations"    # Lcom/parse/ParseOperationSet;
    .param p2, "objectEncoder"    # Lcom/parse/ParseEncoder;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v2

    .line 1221
    .local v2, "state":Lcom/parse/ParseObject$State;
    invoke-virtual {p0, v2, p1, p2}, Lcom/parse/ParseObject;->toJSONObjectForSaving(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1223
    .local v1, "objectJSON":Lorg/json/JSONObject;
    invoke-static {v2, v1, p3}, Lcom/parse/ParseRESTObjectCommand;->saveObjectCommand(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 1227
    .local v0, "command":Lcom/parse/ParseRESTObjectCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTObjectCommand;->enableRetrying()V

    .line 1228
    return-object v0
.end method

.method private static deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;
    .locals 19
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2385
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 2386
    .local v8, "objects":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2387
    .local v4, "files":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseFile;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v8, v4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 2392
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 2393
    .local v13, "users":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseUser;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parse/ParseObject;

    .line 2394
    .local v7, "o":Lcom/parse/ParseObject;
    instance-of v0, v7, Lcom/parse/ParseUser;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object v12, v7

    .line 2395
    check-cast v12, Lcom/parse/ParseUser;

    .line 2396
    .local v12, "user":Lcom/parse/ParseUser;
    invoke-virtual {v12}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2397
    check-cast v7, Lcom/parse/ParseUser;

    .end local v7    # "o":Lcom/parse/ParseObject;
    invoke-interface {v13, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2401
    .end local v12    # "user":Lcom/parse/ParseUser;
    :cond_1
    invoke-interface {v8, v13}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2404
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2405
    .local v5, "filesComplete":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2406
    .local v11, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseFile;

    .line 2407
    .local v3, "file":Lcom/parse/ParseFile;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v3, v0, v1, v2}, Lcom/parse/ParseFile;->saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2409
    .end local v3    # "file":Lcom/parse/ParseFile;
    :cond_2
    invoke-static {v11}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v16

    new-instance v17, Lcom/parse/ParseObject$38;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/parse/ParseObject$38;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual/range {v16 .. v17}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    .line 2418
    .local v6, "filesTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2419
    .local v14, "usersComplete":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2420
    .restart local v11    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/parse/ParseUser;

    .line 2421
    .restart local v12    # "user":Lcom/parse/ParseUser;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2423
    .end local v12    # "user":Lcom/parse/ParseUser;
    :cond_3
    invoke-static {v11}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v16

    new-instance v17, Lcom/parse/ParseObject$39;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Lcom/parse/ParseObject$39;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual/range {v16 .. v17}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v15

    .line 2431
    .local v15, "usersTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v10, Lbolts/Capture;

    invoke-direct {v10, v8}, Lbolts/Capture;-><init>(Ljava/lang/Object;)V

    .line 2432
    .local v10, "remaining":Lbolts/Capture;, "Lbolts/Capture<Ljava/util/Set<Lcom/parse/ParseObject;>;>;"
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v16

    new-instance v17, Lcom/parse/ParseObject$40;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Lcom/parse/ParseObject$40;-><init>(Lbolts/Capture;)V

    new-instance v18, Lcom/parse/ParseObject$41;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v5, v14, v1}, Lcom/parse/ParseObject$41;-><init>(Lbolts/Capture;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v18}, Lbolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;)Lbolts/Task;

    move-result-object v9

    .line 2474
    .local v9, "objectsTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Lbolts/Task;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v6, v16, v17

    const/16 v17, 0x1

    aput-object v15, v16, v17

    const/16 v17, 0x2

    aput-object v9, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v16

    return-object v16
.end method

.method public static deleteAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2210
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->deleteAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 2211
    return-void
.end method

.method private static deleteAllAsync(Ljava/util/List;Ljava/lang/String;)Lbolts/Task;
    .locals 6
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2141
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 2142
    const/4 v5, 0x0

    invoke-static {v5}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v5

    .line 2157
    :goto_0
    return-object v5

    .line 2146
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 2147
    .local v3, "objectCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2148
    .local v4, "uniqueObjects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2149
    .local v1, "idSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 2150
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    .line 2151
    .local v2, "obj":Lcom/parse/ParseObject;
    invoke-virtual {v2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2152
    invoke-virtual {v2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2153
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2149
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2157
    .end local v2    # "obj":Lcom/parse/ParseObject;
    :cond_2
    new-instance v5, Lcom/parse/ParseObject$33;

    invoke-direct {v5, v4, p1}, Lcom/parse/ParseObject$33;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;Lbolts/Continuation;)Lbolts/Task;

    move-result-object v5

    goto :goto_0
.end method

.method private static deleteAllAsync(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
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

    .prologue
    .line 2167
    .local p0, "uniqueObjects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParseObject$34;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$34;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2236
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$35;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$35;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAllInBackground(Ljava/util/List;Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2223
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->deleteAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 2224
    return-void
.end method

.method private deleteAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .prologue
    .line 2038
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 2040
    new-instance v0, Lcom/parse/ParseObject$30;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$30;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$29;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$29;-><init>(Lcom/parse/ParseObject;)V

    .line 2048
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 2040
    return-object v0
.end method

.method static enqueueForAll(Ljava/util/List;Lbolts/Continuation;)Lbolts/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lbolts/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lbolts/Task",
            "<TT;>;>;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<+Lcom/parse/ParseObject;>;"
    .local p1, "taskStart":Lbolts/Continuation;, "Lbolts/Continuation<Ljava/lang/Void;Lbolts/Task<TT;>;>;"
    new-instance v6, Lbolts/TaskCompletionSource;

    invoke-direct {v6}, Lbolts/TaskCompletionSource;-><init>()V

    .line 511
    .local v6, "readyToStart":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Ljava/lang/Void;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 512
    .local v4, "locks":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/locks/Lock;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    .line 513
    .local v5, "obj":Lcom/parse/ParseObject;
    iget-object v8, v5, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    invoke-virtual {v8}, Lcom/parse/TaskQueue;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 515
    .end local v5    # "obj":Lcom/parse/ParseObject;
    :cond_0
    new-instance v3, Lcom/parse/LockSet;

    invoke-direct {v3, v4}, Lcom/parse/LockSet;-><init>(Ljava/util/Collection;)V

    .line 517
    .local v3, "lock":Lcom/parse/LockSet;
    invoke-virtual {v3}, Lcom/parse/LockSet;->lock()V

    .line 524
    :try_start_0
    invoke-virtual {v6}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v7

    invoke-interface {p1, v7}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/Task;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    .local v2, "fullTask":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v0, "childTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    .line 534
    .restart local v5    # "obj":Lcom/parse/ParseObject;
    iget-object v8, v5, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v9, Lcom/parse/ParseObject$2;

    invoke-direct {v9, v0, v2}, Lcom/parse/ParseObject$2;-><init>(Ljava/util/List;Lbolts/Task;)V

    invoke-virtual {v8, v9}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 553
    .end local v0    # "childTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    .end local v2    # "fullTask":Lbolts/Task;, "Lbolts/Task<TT;>;"
    .end local v5    # "obj":Lcom/parse/ParseObject;
    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Lcom/parse/LockSet;->unlock()V

    throw v7

    .line 525
    :catch_0
    move-exception v1

    .line 526
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    throw v1

    .line 527
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 528
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 544
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "childTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    .restart local v2    # "fullTask":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :cond_1
    invoke-static {v0}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v7

    new-instance v8, Lcom/parse/ParseObject$3;

    invoke-direct {v8, v6}, Lcom/parse/ParseObject$3;-><init>(Lbolts/TaskCompletionSource;)V

    invoke-virtual {v7, v8}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    invoke-virtual {v3}, Lcom/parse/LockSet;->unlock()V

    .line 551
    return-object v2
.end method

.method private enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 2
    .param p1, "operationSet"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1658
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->isSaveEventually()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1659
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should only be used to enqueue saveEventually operation sets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1663
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$15;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$15;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAll(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2762
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static fetchAllAsync(Ljava/util/List;Lcom/parse/ParseUser;ZLbolts/Task;)Lbolts/Task;
    .locals 7
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "onlyIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Z",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2676
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 2677
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v5

    .line 2706
    :goto_0
    return-object v5

    .line 2680
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2681
    .local v3, "objectIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2682
    .local v0, "className":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 2683
    .local v1, "object":Lcom/parse/ParseObject;, "TT;"
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2687
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2688
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "All objects should have the same class"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2690
    :cond_3
    invoke-virtual {v1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2692
    invoke-virtual {v1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    .line 2693
    .local v2, "objectId":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 2694
    invoke-virtual {v1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2695
    :cond_4
    if-nez p2, :cond_1

    .line 2696
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "All objects must exist on the server"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2700
    .end local v1    # "object":Lcom/parse/ParseObject;, "TT;"
    .end local v2    # "objectId":Ljava/lang/String;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 2701
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v5

    goto :goto_0

    .line 2704
    :cond_6
    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v5

    const-string v6, "objectId"

    .line 2705
    invoke-virtual {v5, v6, v3}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    move-result-object v4

    .line 2706
    .local v4, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v5, Lcom/parse/ParseObject$47;

    invoke-direct {v5, v4, p1}, Lcom/parse/ParseObject$47;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    invoke-virtual {p3, v5}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v5

    new-instance v6, Lcom/parse/ParseObject$46;

    invoke-direct {v6, p0, p2}, Lcom/parse/ParseObject$46;-><init>(Ljava/util/List;Z)V

    .line 2711
    invoke-virtual {v5, v6}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v5

    goto :goto_0
.end method

.method private static fetchAllAsync(Ljava/util/List;Z)Lbolts/Task;
    .locals 2
    .param p1, "onlyIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;Z)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2654
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$45;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$45;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAllIfNeeded(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2636
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllIfNeededInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2622
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->fetchAllAsync(Ljava/util/List;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2649
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "callback":Lcom/parse/FindCallback;, "Lcom/parse/FindCallback<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllIfNeededInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 2650
    return-void
.end method

.method public static fetchAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2749
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->fetchAllAsync(Ljava/util/List;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAllInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2775
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "callback":Lcom/parse/FindCallback;, "Lcom/parse/FindCallback<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 2776
    return-void
.end method

.method static from(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject;
    .locals 4
    .param p0, "state"    # Lcom/parse/ParseObject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseObject$State;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .line 567
    .local v1, "object":Lcom/parse/ParseObject;, "TT;"
    iget-object v3, v1, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 569
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    move-object v0, p0

    .line 574
    .local v0, "newState":Lcom/parse/ParseObject$State;
    :goto_0
    invoke-virtual {v1, v0}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V

    .line 575
    monitor-exit v3

    .line 576
    return-object v1

    .line 572
    .end local v0    # "newState":Lcom/parse/ParseObject$State;
    :cond_0
    invoke-virtual {v1}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/parse/ParseObject$State$Init;->apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject$State$Init;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v0

    .restart local v0    # "newState":Lcom/parse/ParseObject$State;
    goto :goto_0

    .line 575
    .end local v0    # "newState":Lcom/parse/ParseObject$State;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseObject;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "defaultClassName"    # Ljava/lang/String;
    .param p2, "isComplete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 591
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/parse/ParseDecoder;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method static fromJSON(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/parse/ParseDecoder;)Lcom/parse/ParseObject;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "defaultClassName"    # Ljava/lang/String;
    .param p2, "isComplete"    # Z
    .param p3, "decoder"    # Lcom/parse/ParseDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/parse/ParseDecoder;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 608
    const-string v4, "className"

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 617
    :goto_0
    return-object v2

    .line 612
    :cond_0
    const-string v4, "objectId"

    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, "objectId":Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v2

    .line 615
    .local v2, "object":Lcom/parse/ParseObject;, "TT;"
    invoke-virtual {v2}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v4

    invoke-virtual {v2, v4, p0, p3, p2}, Lcom/parse/ParseObject;->mergeFromServer(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)Lcom/parse/ParseObject$State;

    move-result-object v1

    .line 616
    .local v1, "newState":Lcom/parse/ParseObject$State;
    invoke-virtual {v2, v1}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V

    goto :goto_0
.end method

.method static fromJSONPayload(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "decoder"    # Lcom/parse/ParseDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseDecoder;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 638
    const-string v3, "className"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/parse/ParseTextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-object v1

    .line 642
    :cond_1
    const-string v3, "objectId"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 644
    .local v2, "objectId":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .line 645
    .local v1, "object":Lcom/parse/ParseObject;, "TT;"
    invoke-virtual {v1, p0, p1}, Lcom/parse/ParseObject;->build(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    goto :goto_0
.end method

.method private getACL(Z)Lcom/parse/ParseACL;
    .locals 6
    .param p1, "mayCopy"    # Z

    .prologue
    .line 3332
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 3333
    :try_start_0
    const-string v3, "ACL"

    invoke-direct {p0, v3}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3334
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v5, "ACL"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3335
    .local v1, "acl":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 3336
    const/4 v2, 0x0

    monitor-exit v4

    .line 3346
    .end local v1    # "acl":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3338
    .restart local v1    # "acl":Ljava/lang/Object;
    :cond_0
    instance-of v3, v1, Lcom/parse/ParseACL;

    if-nez v3, :cond_1

    .line 3339
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "only ACLs can be stored in the ACL key"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3347
    .end local v1    # "acl":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3341
    .restart local v1    # "acl":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/parse/ParseACL;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/parse/ParseACL;->isShared()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3342
    new-instance v2, Lcom/parse/ParseACL;

    check-cast v1, Lcom/parse/ParseACL;

    .end local v1    # "acl":Ljava/lang/Object;
    invoke-direct {v2, v1}, Lcom/parse/ParseACL;-><init>(Lcom/parse/ParseACL;)V

    .line 3343
    .local v2, "copy":Lcom/parse/ParseACL;
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v5, "ACL"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3344
    monitor-exit v4

    goto :goto_0

    .line 3346
    .end local v2    # "copy":Lcom/parse/ParseACL;
    .restart local v1    # "acl":Ljava/lang/Object;
    :cond_2
    check-cast v1, Lcom/parse/ParseACL;

    .end local v1    # "acl":Ljava/lang/Object;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    goto :goto_0
.end method

.method private static getLocalIdManager()Lcom/parse/LocalIdManager;
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v0

    return-object v0
.end method

.method private static getObjectController()Lcom/parse/ParseObjectController;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getObjectController()Lcom/parse/ParseObjectController;

    move-result-object v0

    return-object v0
.end method

.method private static getSubclassingController()Lcom/parse/ParseObjectSubclassingController;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    return-object v0
.end method

.method private hasDirtyChildren()Z
    .locals 4

    .prologue
    .line 1092
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1096
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    .local v0, "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1098
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1099
    .end local v0    # "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyObjectIdChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "oldObjectId"    # Ljava/lang/String;
    .param p2, "newObjectId"    # Ljava/lang/String;

    .prologue
    .line 1198
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1200
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 1201
    .local v0, "store":Lcom/parse/OfflineStore;
    if-eqz v0, :cond_0

    .line 1202
    invoke-virtual {v0, p0, p1, p2}, Lcom/parse/OfflineStore;->updateObjectId(Lcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1206
    invoke-static {}, Lcom/parse/ParseObject;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    invoke-virtual {v1, v3, p2}, Lcom/parse/LocalIdManager;->setObjectId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 1209
    :cond_1
    monitor-exit v2

    .line 1210
    return-void

    .line 1209
    .end local v0    # "store":Lcom/parse/OfflineStore;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static pinAll(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3636
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 3637
    return-void
.end method

.method public static pinAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3693
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 3694
    return-void
.end method

.method public static pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3551
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "includeAllChildren"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3556
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3557
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3561
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 3564
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 3565
    .local v0, "object":Lcom/parse/ParseObject;
    new-instance v3, Lcom/parse/ParseObject$48;

    invoke-direct {v3, v0}, Lcom/parse/ParseObject$48;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 3585
    goto :goto_0

    .line 3587
    .end local v0    # "object":Lcom/parse/ParseObject;
    :cond_1
    new-instance v2, Lcom/parse/ParseObject$50;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/ParseObject$50;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$49;

    invoke-direct {v3, p0, p1}, Lcom/parse/ParseObject$49;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 3595
    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 3587
    return-object v2
.end method

.method public static pinAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3675
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static pinAllInBackground(Ljava/lang/String;Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3530
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3531
    return-void
.end method

.method public static pinAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3656
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3657
    return-void
.end method

.method private rebuildEstimatedData()V
    .locals 6

    .prologue
    .line 2807
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 2808
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2809
    iget-object v2, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v2}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2810
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    iget-object v5, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v5, v0}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2815
    .end local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2812
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseOperationSet;

    .line 2813
    .local v1, "operations":Lcom/parse/ParseOperationSet;
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-direct {p0, v1, v4}, Lcom/parse/ParseObject;->applyOperations(Lcom/parse/ParseOperationSet;Ljava/util/Map;)V

    goto :goto_1

    .line 2815
    .end local v1    # "operations":Lcom/parse/ParseOperationSet;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2816
    return-void
.end method

.method static registerParseSubclasses()V
    .locals 1

    .prologue
    .line 3485
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3486
    const-class v0, Lcom/parse/ParseRole;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3487
    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3488
    const-class v0, Lcom/parse/ParseSession;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3490
    const-class v0, Lcom/parse/ParsePin;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3491
    const-class v0, Lcom/parse/EventuallyPin;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3492
    return-void
.end method

.method public static registerSubclass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    invoke-static {}, Lcom/parse/ParseObject;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseObjectSubclassingController;->registerSubclass(Ljava/lang/Class;)V

    .line 492
    return-void
.end method

.method public static saveAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2537
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 2538
    return-void
.end method

.method private static saveAllAsync(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
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

    .prologue
    .line 2479
    .local p0, "uniqueObjects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParseObject$42;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$42;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static saveAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2563
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$44;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$44;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$43;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$43;-><init>(Ljava/util/List;)V

    .line 2603
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 2563
    return-object v0
.end method

.method public static saveAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2550
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 2551
    return-void
.end method

.method private setState(Lcom/parse/ParseObject$State;Z)V
    .locals 4
    .param p1, "newState"    # Lcom/parse/ParseObject$State;
    .param p2, "notifyIfObjectIdChanges"    # Z

    .prologue
    .line 673
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 674
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v2}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, "oldObjectId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "newObjectId":Ljava/lang/String;
    iput-object p1, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    .line 679
    if-eqz p2, :cond_0

    invoke-static {v1, v0}, Lcom/parse/ParseTextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 680
    invoke-direct {p0, v1, v0}, Lcom/parse/ParseObject;->notifyObjectIdChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 684
    monitor-exit v3

    .line 685
    return-void

    .line 684
    .end local v0    # "newObjectId":Ljava/lang/String;
    .end local v1    # "oldObjectId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static unpinAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3883
    invoke-static {}, Lcom/parse/ParseObject;->unpinAllInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 3884
    return-void
.end method

.method public static unpinAll(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3846
    invoke-static {p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 3847
    return-void
.end method

.method public static unpinAll(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3751
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 3752
    return-void
.end method

.method public static unpinAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3797
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 3798
    return-void
.end method

.method public static unpinAllInBackground()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3871
    const-string v0, "_default"

    invoke-static {v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3825
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3826
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3829
    :cond_0
    if-nez p0, :cond_1

    .line 3830
    const-string p0, "_default"

    .line 3832
    :cond_1
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/OfflineStore;->unpinAllObjectsAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3727
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3728
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3731
    :cond_0
    if-nez p0, :cond_1

    .line 3732
    const-string p0, "_default"

    .line 3734
    :cond_1
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/parse/OfflineStore;->unpinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3782
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 3859
    invoke-static {}, Lcom/parse/ParseObject;->unpinAllInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3860
    return-void
.end method

.method public static unpinAllInBackground(Ljava/lang/String;Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 3811
    invoke-static {p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3812
    return-void
.end method

.method public static unpinAllInBackground(Ljava/lang/String;Ljava/util/List;Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/DeleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3710
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3711
    return-void
.end method

.method public static unpinAllInBackground(Ljava/util/List;Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3767
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3768
    return-void
.end method

.method static unregisterParseSubclasses()V
    .locals 1

    .prologue
    .line 3495
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3496
    const-class v0, Lcom/parse/ParseRole;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3497
    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3498
    const-class v0, Lcom/parse/ParseSession;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3500
    const-class v0, Lcom/parse/ParsePin;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3501
    const-class v0, Lcom/parse/EventuallyPin;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3502
    return-void
.end method

.method static unregisterSubclass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    invoke-static {}, Lcom/parse/ParseObject;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseObjectSubclassingController;->unregisterSubclass(Ljava/lang/Class;)V

    .line 496
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2921
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->addAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 2922
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2934
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Lcom/parse/ParseAddOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseAddOperation;-><init>(Ljava/util/Collection;)V

    .line 2935
    .local v0, "operation":Lcom/parse/ParseAddOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2936
    return-void
.end method

.method public addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2962
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Lcom/parse/ParseAddUniqueOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseAddUniqueOperation;-><init>(Ljava/util/Collection;)V

    .line 2963
    .local v0, "operation":Lcom/parse/ParseAddUniqueOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2964
    return-void
.end method

.method public addUnique(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2948
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 2949
    return-void
.end method

.method build(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 9
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;

    .prologue
    .line 835
    :try_start_0
    new-instance v7, Lcom/parse/ParseObject$State$Builder;

    iget-object v8, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-direct {v7, v8}, Lcom/parse/ParseObject$State$Builder;-><init>(Lcom/parse/ParseObject$State;)V

    const/4 v8, 0x1

    .line 836
    invoke-virtual {v7, v8}, Lcom/parse/ParseObject$State$Builder;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject$State$Builder;

    .line 838
    .local v0, "builder":Lcom/parse/ParseObject$State$Builder;
    invoke-virtual {v0}, Lcom/parse/ParseObject$State$Builder;->clear()Lcom/parse/ParseObject$State$Init;

    .line 840
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 841
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 842
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 846
    .local v3, "key":Ljava/lang/String;
    const-string v7, "className"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 849
    const-string v7, "objectId"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 850
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 851
    .local v5, "newObjectId":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/parse/ParseObject$State$Builder;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 874
    .end local v0    # "builder":Lcom/parse/ParseObject$State$Builder;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v5    # "newObjectId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 875
    .local v2, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 854
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "builder":Lcom/parse/ParseObject$State$Builder;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :try_start_1
    const-string v7, "createdAt"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 855
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v7

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/parse/ParseObject$State$Builder;->createdAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_0

    .line 858
    :cond_2
    const-string v7, "updatedAt"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 859
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v7

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/parse/ParseObject$State$Builder;->updatedAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_0

    .line 863
    :cond_3
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 864
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {p2, v6}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 865
    .local v1, "decodedObject":Ljava/lang/Object;
    instance-of v7, v1, Lcom/parse/ParseFieldOperation;

    if-eqz v7, :cond_4

    .line 866
    check-cast v1, Lcom/parse/ParseFieldOperation;

    .end local v1    # "decodedObject":Ljava/lang/Object;
    invoke-virtual {p0, v3, v1}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    goto :goto_0

    .line 869
    .restart local v1    # "decodedObject":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0, v3, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 873
    .end local v1    # "decodedObject":Ljava/lang/Object;
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Lcom/parse/ParseObject$State$Builder;->build()Lcom/parse/ParseObject$State;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 877
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3025
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3026
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3027
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method copyChangesFrom(Lcom/parse/ParseObject;)V
    .locals 5
    .param p1, "other"    # Lcom/parse/ParseObject;

    .prologue
    .line 741
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 742
    :try_start_0
    iget-object v2, p1, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseOperationSet;

    .line 743
    .local v1, "operations":Lcom/parse/ParseOperationSet;
    invoke-virtual {v1}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 744
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseFieldOperation;

    invoke-virtual {p0, v0, v2}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    goto :goto_0

    .line 746
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "operations":Lcom/parse/ParseOperationSet;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "operations":Lcom/parse/ParseOperationSet;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    return-void
.end method

.method public final delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2122
    invoke-virtual {p0}, Lcom/parse/ParseObject;->deleteInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 2123
    return-void
.end method

.method deleteAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2059
    invoke-static {}, Lcom/parse/ParseObject;->getObjectController()Lcom/parse/ParseObjectController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/parse/ParseObjectController;->deleteAsync(Lcom/parse/ParseObject$State;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public final deleteEventually()Lbolts/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1748
    iget-object v6, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 1749
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 1750
    iget v5, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    .line 1752
    const/4 v2, 0x0

    .line 1753
    .local v2, "localId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1754
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v2

    .line 1758
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v4

    .line 1762
    .local v4, "sessionToken":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v5

    .line 1761
    invoke-static {v5, v4}, Lcom/parse/ParseRESTObjectCommand;->deleteObjectCommand(Lcom/parse/ParseObject$State;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 1763
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->enableRetrying()V

    .line 1764
    invoke-virtual {v0, v2}, Lcom/parse/ParseRESTCommand;->setLocalId(Ljava/lang/String;)V

    .line 1766
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v5

    invoke-virtual {v5, v0, p0}, Lcom/parse/ParseEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v3

    .line 1767
    .local v3, "runEventuallyTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1770
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1772
    invoke-virtual {v3}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    .line 1782
    .local v1, "handleDeleteResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    return-object v1

    .line 1767
    .end local v0    # "command":Lcom/parse/ParseRESTCommand;
    .end local v1    # "handleDeleteResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .end local v2    # "localId":Ljava/lang/String;
    .end local v3    # "runEventuallyTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    .end local v4    # "sessionToken":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1774
    .restart local v0    # "command":Lcom/parse/ParseRESTCommand;
    .restart local v2    # "localId":Ljava/lang/String;
    .restart local v3    # "runEventuallyTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    .restart local v4    # "sessionToken":Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/parse/ParseObject$17;

    invoke-direct {v5, p0}, Lcom/parse/ParseObject$17;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v3, v5}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .restart local v1    # "handleDeleteResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_0
.end method

.method public final deleteEventually(Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 1727
    invoke-virtual {p0}, Lcom/parse/ParseObject;->deleteEventually()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1728
    return-void
.end method

.method public final deleteInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2101
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$32;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$32;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public final deleteInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 2133
    invoke-virtual {p0}, Lcom/parse/ParseObject;->deleteInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 2134
    return-void
.end method

.method public fetch()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1915
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method fetchAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1921
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParseObject$26;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$26;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$25;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$25;-><init>(Lcom/parse/ParseObject;)V

    .line 1933
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$24;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$24;-><init>(Lcom/parse/ParseObject;)V

    .line 1939
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 1921
    return-object v0
.end method

.method public fetchFromLocalDatastore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3917
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchFromLocalDatastoreAsync()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 3918
    return-void
.end method

.method fetchFromLocalDatastoreAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3893
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3894
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3897
    :cond_0
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public fetchFromLocalDatastoreInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 3906
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchFromLocalDatastoreAsync()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 3907
    return-void
.end method

.method public fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2017
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchIfNeededInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method public final fetchIfNeededInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1987
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1988
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 1990
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$28;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$28;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public final fetchIfNeededInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2029
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchIfNeededInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 2030
    return-void
.end method

.method public final fetchInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1954
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$27;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$27;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public final fetchInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1976
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1977
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3417
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 3418
    :try_start_0
    const-string v2, "ACL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3419
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v1

    monitor-exit v3

    .line 3431
    :goto_0
    return-object v1

    .line 3422
    :cond_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3423
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3427
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lcom/parse/ParseRelation;

    if-eqz v2, :cond_1

    .line 3428
    move-object v0, v1

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v2, v0

    invoke-virtual {v2, p0, p1}, Lcom/parse/ParseRelation;->ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 3431
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 3432
    .end local v1    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getACL()Lcom/parse/ParseACL;
    .locals 1

    .prologue
    .line 3328
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3225
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3226
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3227
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3228
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 3229
    const/4 v1, 0x0

    monitor-exit v2

    .line 3231
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 3232
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3056
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3057
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3058
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3059
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [B

    if-nez v1, :cond_0

    .line 3060
    const/4 v0, 0x0

    monitor-exit v2

    .line 3063
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, [B

    .end local v0    # "value":Ljava/lang/Object;
    check-cast v0, [B

    monitor-exit v2

    goto :goto_0

    .line 3064
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 691
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 4

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v0

    .line 719
    .local v0, "createdAt":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3243
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3244
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3245
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3246
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Date;

    if-nez v1, :cond_0

    .line 3247
    const/4 v0, 0x0

    monitor-exit v2

    .line 3249
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/util/Date;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3250
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3195
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 3196
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 3197
    const-wide/16 v2, 0x0

    .line 3199
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3180
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 3181
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 3182
    const/4 v1, 0x0

    .line 3184
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3093
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3094
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3095
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3097
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3098
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncoder;->get()Lcom/parse/PointerOrLocalIdEncoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/PointerOrLocalIdEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3101
    :cond_0
    instance-of v1, v0, Lorg/json/JSONArray;

    if-nez v1, :cond_1

    .line 3102
    const/4 v0, 0x0

    monitor-exit v2

    .line 3104
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3105
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3156
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3157
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3158
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3160
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 3161
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncoder;->get()Lcom/parse/PointerOrLocalIdEncoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/PointerOrLocalIdEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3164
    :cond_0
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 3165
    const/4 v0, 0x0

    monitor-exit v2

    .line 3168
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3169
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3117
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 3118
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3119
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/List;

    if-nez v3, :cond_0

    .line 3120
    const/4 v1, 0x0

    monitor-exit v4

    .line 3124
    :goto_0
    return-object v1

    .line 3123
    :cond_0
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 3124
    .local v1, "returnValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-exit v4

    goto :goto_0

    .line 3125
    .end local v1    # "returnValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3210
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 3211
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 3212
    const-wide/16 v2, 0x0

    .line 3214
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 3137
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 3138
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3139
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Map;

    if-nez v3, :cond_0

    .line 3140
    const/4 v1, 0x0

    monitor-exit v4

    .line 3144
    :goto_0
    return-object v1

    .line 3143
    :cond_0
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 3144
    .local v1, "returnValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    monitor-exit v4

    goto :goto_0

    .line 3145
    .end local v1    # "returnValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    .end local v2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3075
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3076
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3077
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3078
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_0

    .line 3079
    const/4 v0, 0x0

    monitor-exit v2

    .line 3081
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3082
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1156
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1157
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getOrCreateLocalId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1184
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1185
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1186
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Attempted to get a localId for an object with an objectId."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1190
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/parse/ParseObject;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/LocalIdManager;->createLocalId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 1192
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getParseFile(Ljava/lang/String;)Lcom/parse/ParseFile;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3299
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3300
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseFile;

    if-nez v1, :cond_0

    .line 3301
    const/4 v0, 0x0

    .line 3303
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseFile;

    goto :goto_0
.end method

.method public getParseGeoPoint(Ljava/lang/String;)Lcom/parse/ParseGeoPoint;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3314
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3315
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3316
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3317
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseGeoPoint;

    if-nez v1, :cond_0

    .line 3318
    const/4 v0, 0x0

    monitor-exit v2

    .line 3320
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseGeoPoint;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3321
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3264
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3265
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseObject;

    if-nez v1, :cond_0

    .line 3266
    const/4 v0, 0x0

    .line 3268
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseObject;

    goto :goto_0
.end method

.method public getParseUser(Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3282
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3283
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseUser;

    if-nez v1, :cond_0

    .line 3284
    const/4 v0, 0x0

    .line 3286
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseUser;

    goto :goto_0
.end method

.method public getRelation(Ljava/lang/String;)Lcom/parse/ParseRelation;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRelation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3384
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 3386
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3387
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/parse/ParseRelation;

    if-eqz v4, :cond_0

    .line 3389
    move-object v0, v3

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v1, v0

    .line 3390
    .local v1, "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    invoke-virtual {v1, p0, p1}, Lcom/parse/ParseRelation;->ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 3391
    monitor-exit v5

    move-object v2, v1

    .line 3403
    .end local v1    # "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    .local v2, "relation":Ljava/lang/Object;, "Lcom/parse/ParseRelation<TT;>;"
    :goto_0
    return-object v2

    .line 3393
    .end local v2    # "relation":Ljava/lang/Object;, "Lcom/parse/ParseRelation<TT;>;"
    :cond_0
    new-instance v1, Lcom/parse/ParseRelation;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseRelation;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 3402
    .restart local v1    # "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3403
    monitor-exit v5

    move-object v2, v1

    .restart local v2    # "relation":Ljava/lang/Object;, "Lcom/parse/ParseRelation<TT;>;"
    goto :goto_0

    .line 3405
    .end local v1    # "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    .end local v2    # "relation":Ljava/lang/Object;, "Lcom/parse/ParseRelation<TT;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method getState()Lcom/parse/ParseObject$State;
    .locals 2

    .prologue
    .line 656
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    monitor-exit v1

    return-object v0

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3038
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3039
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3040
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3041
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3042
    const/4 v0, 0x0

    monitor-exit v2

    .line 3044
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3045
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 4

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v0

    .line 705
    .local v0, "updatedAt":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method handleDeleteEventuallyResultAsync()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1791
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1792
    :try_start_0
    iget v1, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    .line 1793
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1794
    invoke-virtual {p0}, Lcom/parse/ParseObject;->handleDeleteResultAsync()Lbolts/Task;

    move-result-object v0

    .line 1796
    .local v0, "handleDeleteResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v1, Lcom/parse/ParseObject$18;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$18;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 1793
    .end local v0    # "handleDeleteResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method handleDeleteResultAsync()Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2068
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 2070
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 2071
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/parse/ParseObject;->isDeleted:Z

    .line 2072
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2074
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 2075
    .local v0, "store":Lcom/parse/OfflineStore;
    if-eqz v0, :cond_0

    .line 2076
    new-instance v2, Lcom/parse/ParseObject$31;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$31;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 2091
    :cond_0
    return-object v1

    .line 2072
    .end local v0    # "store":Lcom/parse/OfflineStore;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method handleFetchResultAsync(Lcom/parse/ParseObject$State;)Lbolts/Task;
    .locals 4
    .param p1, "result"    # Lcom/parse/ParseObject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1812
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 1818
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 1819
    .local v0, "store":Lcom/parse/OfflineStore;
    if-eqz v0, :cond_0

    .line 1820
    new-instance v2, Lcom/parse/ParseObject$20;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$20;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$19;

    invoke-direct {v3, p0}, Lcom/parse/ParseObject$19;-><init>(Lcom/parse/ParseObject;)V

    .line 1825
    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 1838
    :cond_0
    new-instance v2, Lcom/parse/ParseObject$21;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseObject$21;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseObject$State;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 1856
    if-eqz v0, :cond_1

    .line 1857
    new-instance v2, Lcom/parse/ParseObject$23;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$23;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$22;

    invoke-direct {v3, p0}, Lcom/parse/ParseObject$22;-><init>(Lcom/parse/ParseObject;)V

    .line 1862
    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 1875
    :cond_1
    return-object v1
.end method

.method handleSaveEventuallyResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "operationSet"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1686
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1687
    .local v1, "success":Z
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v0

    .line 1689
    .local v0, "handleSaveResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v2, Lcom/parse/ParseObject$16;

    invoke-direct {v2, p0, v1}, Lcom/parse/ParseObject$16;-><init>(Lcom/parse/ParseObject;Z)V

    invoke-virtual {v0, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 1686
    .end local v0    # "handleSaveResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .end local v1    # "success":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 9
    .param p1, "result"    # Lcom/parse/ParseObject$State;
    .param p2, "operationsBeforeSave"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1300
    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Void;

    invoke-static {v6}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    .line 1302
    .local v4, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1303
    .local v3, "success":Z
    :goto_0
    iget-object v7, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v7

    .line 1306
    :try_start_0
    iget-object v6, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    iget-object v8, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    .line 1307
    invoke-virtual {v8, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 1308
    .local v1, "opIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/parse/ParseOperationSet;>;"
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1309
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 1311
    if-nez v3, :cond_1

    .line 1313
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    .line 1314
    .local v0, "nextOperation":Lcom/parse/ParseOperationSet;
    invoke-virtual {v0, p2}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    .line 1315
    monitor-exit v7

    move-object v5, v4

    .line 1372
    .end local v0    # "nextOperation":Lcom/parse/ParseOperationSet;
    .end local v4    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .local v5, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_1
    return-object v5

    .line 1302
    .end local v1    # "opIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/parse/ParseOperationSet;>;"
    .end local v3    # "success":Z
    .end local v5    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .restart local v4    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1317
    .restart local v1    # "opIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/parse/ParseOperationSet;>;"
    .restart local v3    # "success":Z
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v2

    .line 1324
    .local v2, "store":Lcom/parse/OfflineStore;
    if-eqz v2, :cond_2

    .line 1325
    new-instance v6, Lcom/parse/ParseObject$5;

    invoke-direct {v6, p0, v2}, Lcom/parse/ParseObject$5;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v4, v6}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    .line 1334
    :cond_2
    new-instance v6, Lcom/parse/ParseObject$6;

    invoke-direct {v6, p0, p1, p2}, Lcom/parse/ParseObject$6;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v4, v6}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    .line 1355
    if-eqz v2, :cond_3

    .line 1356
    new-instance v6, Lcom/parse/ParseObject$7;

    invoke-direct {v6, p0, v2}, Lcom/parse/ParseObject$7;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v4, v6}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    .line 1364
    :cond_3
    new-instance v6, Lcom/parse/ParseObject$8;

    invoke-direct {v6, p0}, Lcom/parse/ParseObject$8;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v4, v6}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    move-object v5, v4

    .line 1372
    .end local v4    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .restart local v5    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_1

    .line 1317
    .end local v1    # "opIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/parse/ParseOperationSet;>;"
    .end local v2    # "store":Lcom/parse/OfflineStore;
    .end local v5    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .restart local v4    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 6
    .param p1, "result"    # Lorg/json/JSONObject;
    .param p2, "operationsBeforeSave"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1278
    const/4 v2, 0x0

    .line 1280
    .local v2, "newState":Lcom/parse/ParseObject$State;
    if-eqz p1, :cond_0

    .line 1281
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 1282
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;

    move-result-object v1

    .line 1283
    .local v1, "fetchedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    new-instance v0, Lcom/parse/KnownParseObjectDecoder;

    invoke-direct {v0, v1}, Lcom/parse/KnownParseObjectDecoder;-><init>(Ljava/util/Map;)V

    .line 1284
    .local v0, "decoder":Lcom/parse/ParseDecoder;
    invoke-static {}, Lcom/parse/ParseObjectCoder;->get()Lcom/parse/ParseObjectCoder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParseObject$State$Init;->clear()Lcom/parse/ParseObject$State$Init;

    move-result-object v5

    invoke-virtual {v3, v5, p1, v0}, Lcom/parse/ParseObjectCoder;->decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;

    move-result-object v3

    const/4 v5, 0x0

    .line 1285
    invoke-virtual {v3, v5}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v3

    .line 1286
    invoke-virtual {v3}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v2

    .line 1287
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    .end local v0    # "decoder":Lcom/parse/ParseDecoder;
    .end local v1    # "fetchedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    :cond_0
    invoke-virtual {p0, v2, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v3

    return-object v3

    .line 1287
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2886
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method hasChanges()Z
    .locals 2

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1120
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseOperationSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasOutstandingOperations()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1129
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1131
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasSameId(Lcom/parse/ParseObject;)Z
    .locals 3
    .param p1, "other"    # Lcom/parse/ParseObject;

    .prologue
    .line 3443
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3444
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3445
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3446
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    .line 3444
    return v0

    .line 3446
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3447
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public increment(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2896
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2897
    return-void
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "amount"    # Ljava/lang/Number;

    .prologue
    .line 2908
    new-instance v0, Lcom/parse/ParseIncrementOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseIncrementOperation;-><init>(Ljava/lang/Number;)V

    .line 2909
    .local v0, "operation":Lcom/parse/ParseIncrementOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2910
    return-void
.end method

.method public isDataAvailable()Z
    .locals 2

    .prologue
    .line 3364
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3365
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isDataAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3370
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3371
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 1109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v0

    return v0
.end method

.method public isDirty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1144
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseOperationSet;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isDirty(Z)Z
    .locals 2
    .param p1, "considerChildren"    # Z

    .prologue
    .line 1113
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1114
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseObject;->isDeleted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/parse/ParseObject;->hasDirtyChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isKeyMutable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3014
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 733
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method mergeFromObject(Lcom/parse/ParseObject;)V
    .locals 3
    .param p1, "other"    # Lcom/parse/ParseObject;

    .prologue
    .line 750
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 752
    if-ne p0, p1, :cond_0

    .line 753
    :try_start_0
    monitor-exit v2

    .line 765
    :goto_0
    return-void

    .line 756
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v0

    .line 763
    .local v0, "copy":Lcom/parse/ParseObject$State;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;Z)V

    .line 764
    monitor-exit v2

    goto :goto_0

    .end local v0    # "copy":Lcom/parse/ParseObject$State;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method mergeFromServer(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)Lcom/parse/ParseObject$State;
    .locals 10
    .param p1, "state"    # Lcom/parse/ParseObject$State;
    .param p2, "json"    # Lorg/json/JSONObject;
    .param p3, "decoder"    # Lcom/parse/ParseDecoder;
    .param p4, "completeData"    # Z

    .prologue
    .line 890
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    .line 891
    .local v1, "builder":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<*>;"
    if-eqz p4, :cond_0

    .line 892
    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Init;->clear()Lcom/parse/ParseObject$State$Init;

    .line 894
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz p4, :cond_3

    :cond_1
    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v1, v8}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    .line 896
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 897
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 898
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 903
    .local v4, "key":Ljava/lang/String;
    const-string v8, "__type"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "className"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 906
    const-string v8, "objectId"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 907
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 908
    .local v6, "newObjectId":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 931
    .end local v1    # "builder":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<*>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "newObjectId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 932
    .local v3, "e":Lorg/json/JSONException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 894
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v1    # "builder":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<*>;"
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 911
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    :try_start_1
    const-string v8, "createdAt"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 912
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v8

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/parse/ParseObject$State$Init;->createdAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 915
    :cond_5
    const-string v8, "updatedAt"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 916
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v8

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/parse/ParseObject$State$Init;->updatedAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 919
    :cond_6
    const-string v8, "ACL"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 920
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, p3}, Lcom/parse/ParseACL;->createACLFromJSONObject(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseACL;

    move-result-object v0

    .line 921
    .local v0, "acl":Lcom/parse/ParseACL;
    const-string v8, "ACL"

    invoke-virtual {v1, v8, v0}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 925
    .end local v0    # "acl":Lcom/parse/ParseACL;
    :cond_7
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 926
    .local v7, "value":Ljava/lang/Object;
    invoke-virtual {p3, v7}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 927
    .local v2, "decodedObject":Ljava/lang/Object;
    invoke-virtual {v1, v4, v2}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    goto/16 :goto_1

    .line 930
    .end local v2    # "decodedObject":Ljava/lang/Object;
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    return-object v8
.end method

.method mergeREST(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 24
    .param p1, "state"    # Lcom/parse/ParseObject$State;
    .param p2, "json"    # Lorg/json/JSONObject;
    .param p3, "decoder"    # Lcom/parse/ParseDecoder;

    .prologue
    .line 1013
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    .local v16, "saveEventuallyOperationSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/ParseOperationSet;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1017
    :try_start_0
    const-string v17, "__complete"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1018
    .local v7, "isComplete":Z
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const-string v20, "__isDeletingEventually"

    aput-object v20, v17, v19

    const/16 v19, 0x1

    const-string v20, "isDeletingEventually"

    aput-object v20, v17, v19

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/parse/ParseJSONUtils;->getInt(Lorg/json/JSONObject;Ljava/util/List;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parse/ParseObject;->isDeletingEventually:I

    .line 1022
    const-string v17, "__operations"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 1024
    .local v14, "operations":Lorg/json/JSONArray;
    invoke-direct/range {p0 .. p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v11

    .line 1025
    .local v11, "newerOperations":Lcom/parse/ParseOperationSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->clear()V

    .line 1029
    const/4 v4, 0x0

    .line 1030
    .local v4, "current":Lcom/parse/ParseOperationSet;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_3

    .line 1031
    invoke-virtual {v14, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 1032
    .local v13, "operationSetJSON":Lorg/json/JSONObject;
    move-object/from16 v0, p3

    invoke-static {v13, v0}, Lcom/parse/ParseOperationSet;->fromRest(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseOperationSet;

    move-result-object v12

    .line 1034
    .local v12, "operationSet":Lcom/parse/ParseOperationSet;
    invoke-virtual {v12}, Lcom/parse/ParseOperationSet;->isSaveEventually()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1035
    if-eqz v4, :cond_0

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1037
    const/4 v4, 0x0

    .line 1039
    :cond_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1030
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1044
    :cond_1
    if-eqz v4, :cond_2

    .line 1045
    invoke-virtual {v12, v4}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    .line 1047
    :cond_2
    move-object v4, v12

    goto :goto_1

    .line 1049
    .end local v12    # "operationSet":Lcom/parse/ParseOperationSet;
    .end local v13    # "operationSetJSON":Lorg/json/JSONObject;
    :cond_3
    if-eqz v4, :cond_4

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1054
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    .line 1059
    const/4 v9, 0x0

    .line 1060
    .local v9, "mergeServerData":Z
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v17, v20, v22

    if-gez v17, :cond_7

    .line 1061
    const/4 v9, 0x1

    .line 1069
    :cond_5
    :goto_2
    if-eqz v9, :cond_6

    .line 1071
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const-string v20, "__complete"

    aput-object v20, v17, v19

    const/16 v19, 0x1

    const-string v20, "__isDeletingEventually"

    aput-object v20, v17, v19

    const/16 v19, 0x2

    const-string v20, "isDeletingEventually"

    aput-object v20, v17, v19

    const/16 v19, 0x3

    const-string v20, "__operations"

    aput-object v20, v17, v19

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/parse/ParseJSONUtils;->create(Lorg/json/JSONObject;Ljava/util/Collection;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1075
    .local v8, "mergeJSON":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v8, v2, v7}, Lcom/parse/ParseObject;->mergeFromServer(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)Lcom/parse/ParseObject$State;

    move-result-object v10

    .line 1076
    .local v10, "newState":Lcom/parse/ParseObject$State;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    .end local v8    # "mergeJSON":Lorg/json/JSONObject;
    .end local v10    # "newState":Lcom/parse/ParseObject$State;
    :cond_6
    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1084
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/parse/ParseOperationSet;

    .line 1085
    .restart local v12    # "operationSet":Lcom/parse/ParseOperationSet;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/parse/ParseObject;->enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)Lbolts/Task;

    goto :goto_3

    .line 1062
    .end local v12    # "operationSet":Lcom/parse/ParseOperationSet;
    :cond_7
    :try_start_2
    const-string v17, "updatedAt"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1063
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v17

    const-string v19, "updatedAt"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    .line 1064
    .local v15, "otherUpdatedAt":Ljava/util/Date;
    new-instance v17, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    if-gez v17, :cond_5

    .line 1065
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1078
    .end local v4    # "current":Lcom/parse/ParseOperationSet;
    .end local v6    # "i":I
    .end local v7    # "isComplete":Z
    .end local v9    # "mergeServerData":Z
    .end local v11    # "newerOperations":Lcom/parse/ParseOperationSet;
    .end local v14    # "operations":Lorg/json/JSONArray;
    .end local v15    # "otherUpdatedAt":Ljava/util/Date;
    :catch_0
    move-exception v5

    .line 1079
    .local v5, "e":Lorg/json/JSONException;
    :try_start_3
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 1081
    .end local v5    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v17

    .line 1087
    .restart local v4    # "current":Lcom/parse/ParseOperationSet;
    .restart local v6    # "i":I
    .restart local v7    # "isComplete":Z
    .restart local v9    # "mergeServerData":Z
    .restart local v11    # "newerOperations":Lcom/parse/ParseOperationSet;
    .restart local v14    # "operations":Lorg/json/JSONArray;
    :cond_8
    return-void
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 3476
    const/4 v0, 0x1

    return v0
.end method

.method newStateBuilder(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseObject$State$Init",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 652
    new-instance v0, Lcom/parse/ParseObject$State$Builder;

    invoke-direct {v0, p1}, Lcom/parse/ParseObject$State$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "operation"    # Lcom/parse/ParseFieldOperation;

    .prologue
    .line 2823
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 2824
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2825
    .local v3, "oldValue":Ljava/lang/Object;
    invoke-interface {p2, v3, p1}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2826
    .local v1, "newValue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2827
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2832
    :goto_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseFieldOperation;

    .line 2833
    .local v2, "oldOperation":Lcom/parse/ParseFieldOperation;
    invoke-interface {p2, v2}, Lcom/parse/ParseFieldOperation;->mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;

    move-result-object v0

    .line 2834
    .local v0, "newOperation":Lcom/parse/ParseFieldOperation;
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/parse/ParseOperationSet;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2835
    monitor-exit v5

    .line 2836
    return-void

    .line 2829
    .end local v0    # "newOperation":Lcom/parse/ParseFieldOperation;
    .end local v2    # "oldOperation":Lcom/parse/ParseFieldOperation;
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2835
    .end local v1    # "newValue":Ljava/lang/Object;
    .end local v3    # "oldValue":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method performPut(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2855
    if-nez p1, :cond_0

    .line 2856
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "key may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2859
    :cond_0
    if-nez p2, :cond_1

    .line 2860
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "value may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2863
    :cond_1
    instance-of v1, p2, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 2864
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v0

    .line 2865
    .local v0, "decoder":Lcom/parse/ParseDecoder;
    check-cast p2, Lorg/json/JSONObject;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/parse/ParseDecoder;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    .line 2871
    .end local v0    # "decoder":Lcom/parse/ParseDecoder;
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/parse/ParseEncoder;->isValidType(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2872
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid type for value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2866
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p2, Lorg/json/JSONArray;

    if-eqz v1, :cond_2

    .line 2867
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v0

    .line 2868
    .restart local v0    # "decoder":Lcom/parse/ParseDecoder;
    check-cast p2, Lorg/json/JSONArray;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/parse/ParseDecoder;->convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p2

    .local p2, "value":Ljava/util/List;
    goto :goto_0

    .line 2875
    .end local v0    # "decoder":Lcom/parse/ParseDecoder;
    .end local p2    # "value":Ljava/util/List;
    :cond_4
    new-instance v1, Lcom/parse/ParseSetOperation;

    invoke-direct {v1, p2}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2876
    return-void
.end method

.method performRemove(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2979
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2980
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2982
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 2983
    invoke-static {}, Lcom/parse/ParseDeleteOperation;->getInstance()Lcom/parse/ParseDeleteOperation;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2985
    :cond_0
    monitor-exit v2

    .line 2986
    return-void

    .line 2985
    .end local v0    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4022
    invoke-virtual {p0}, Lcom/parse/ParseObject;->pinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4023
    return-void
.end method

.method public pin(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3970
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->pinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 3971
    return-void
.end method

.method public pinInBackground()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4005
    const-string v0, "_default"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/parse/ParseObject;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public pinInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3950
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method pinInBackground(Ljava/lang/String;Z)Lbolts/Task;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "includeAllChildren"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3954
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public pinInBackground(Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 3988
    invoke-virtual {p0}, Lcom/parse/ParseObject;->pinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3989
    return-void
.end method

.method public pinInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 3934
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->pinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3935
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2849
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 2851
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2852
    return-void
.end method

.method public final refresh()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1889
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    .line 1890
    return-void
.end method

.method public final refreshInBackground(Lcom/parse/RefreshCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/RefreshCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1903
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1904
    return-void
.end method

.method registerSaveListener(Lcom/parse/GetCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3451
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3452
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->subscribe(Lcom/parse/ParseCallback2;)V

    .line 3453
    monitor-exit v1

    .line 3454
    return-void

    .line 3453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2973
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 2975
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->performRemove(Ljava/lang/String;)V

    .line 2976
    return-void
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3000
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 3002
    new-instance v0, Lcom/parse/ParseRemoveOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseRemoveOperation;-><init>(Ljava/util/Collection;)V

    .line 3003
    .local v0, "operation":Lcom/parse/ParseRemoveOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 3004
    return-void
.end method

.method public revert()V
    .locals 2

    .prologue
    .line 787
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 788
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseOperationSet;->clear()V

    .line 790
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 792
    :cond_0
    monitor-exit v1

    .line 793
    return-void

    .line 792
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public revert(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 774
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 775
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->isDirty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseOperationSet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 779
    :cond_0
    monitor-exit v1

    .line 780
    return-void

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1395
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 1396
    return-void
.end method

.method saveAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ParseOperationSet;Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "client"    # Lcom/parse/ParseHttpClient;
    .param p2, "operationSet"    # Lcom/parse/ParseOperationSet;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/ParseOperationSet;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1516
    .line 1517
    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v1

    invoke-direct {p0, p2, v1, p3}, Lcom/parse/ParseObject;->currentSaveEventuallyCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 1518
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0, p1}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method saveAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$11;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$11;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .prologue
    .line 1459
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1460
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 1482
    :goto_0
    return-object v2

    .line 1464
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1465
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->updateBeforeSave()V

    .line 1466
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateSave()V

    .line 1467
    invoke-virtual {p0}, Lcom/parse/ParseObject;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v0

    .line 1468
    .local v0, "operations":Lcom/parse/ParseOperationSet;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1471
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1479
    :try_start_1
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-static {v2, p1}, Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    .line 1480
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1483
    invoke-static {p2}, Lcom/parse/TaskQueue;->waitFor(Lbolts/Task;)Lbolts/Continuation;

    move-result-object v2

    .line 1482
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$13;

    invoke-direct {v3, p0, v0, p1}, Lcom/parse/ParseObject$13;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;Ljava/lang/String;)V

    .line 1484
    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$12;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseObject$12;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V

    .line 1491
    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    goto :goto_0

    .line 1468
    .end local v0    # "operations":Lcom/parse/ParseOperationSet;
    .end local v1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1480
    .restart local v0    # "operations":Lcom/parse/ParseOperationSet;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public final saveEventually()Lbolts/Task;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1572
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1573
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/parse/ParseEventuallyQueue;->fakeObjectUpdate()V

    .line 1574
    invoke-static {v12}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    .line 1651
    :goto_0
    return-object v4

    .line 1581
    :cond_0
    iget-object v12, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v12

    .line 1582
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->updateBeforeSave()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1584
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateSaveEventually()V
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1594
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1595
    .local v10, "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v11, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const/4 v13, 0x0

    invoke-static {v11, v10, v13}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1597
    const/4 v5, 0x0

    .line 1598
    .local v5, "localId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    .line 1599
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v5

    .line 1602
    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseObject;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v7

    .line 1603
    .local v7, "operationSet":Lcom/parse/ParseOperationSet;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/parse/ParseOperationSet;->setIsSaveEventually(Z)V

    .line 1606
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 1610
    .local v9, "sessionToken":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncoder;->get()Lcom/parse/PointerOrLocalIdEncoder;

    move-result-object v11

    invoke-direct {p0, v7, v11, v9}, Lcom/parse/ParseObject;->currentSaveEventuallyCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v1

    .line 1614
    .local v1, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v1, v5}, Lcom/parse/ParseRESTCommand;->setLocalId(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {v7}, Lcom/parse/ParseOperationSet;->getUUID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/parse/ParseRESTCommand;->setOperationSetUUID(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->retainLocalIds()V

    .line 1622
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 1623
    .local v6, "object":Lcom/parse/ParseObject;
    invoke-virtual {v6}, Lcom/parse/ParseObject;->saveEventually()Lbolts/Task;
    :try_end_3
    .catch Lcom/parse/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1625
    .end local v1    # "command":Lcom/parse/ParseRESTCommand;
    .end local v6    # "object":Lcom/parse/ParseObject;
    :catch_0
    move-exception v3

    .line 1626
    .local v3, "exception":Lcom/parse/ParseException;
    :try_start_4
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v13, "Unable to saveEventually."

    invoke-direct {v11, v13, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 1628
    .end local v3    # "exception":Lcom/parse/ParseException;
    .end local v5    # "localId":Ljava/lang/String;
    .end local v7    # "operationSet":Lcom/parse/ParseOperationSet;
    .end local v9    # "sessionToken":Ljava/lang/String;
    .end local v10    # "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v11

    .line 1585
    :catch_1
    move-exception v2

    .line 1586
    .local v2, "e":Lcom/parse/ParseException;
    :try_start_5
    invoke-static {v2}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v4

    monitor-exit v12

    goto :goto_0

    .line 1628
    .end local v2    # "e":Lcom/parse/ParseException;
    .restart local v1    # "command":Lcom/parse/ParseRESTCommand;
    .restart local v5    # "localId":Ljava/lang/String;
    .restart local v7    # "operationSet":Lcom/parse/ParseOperationSet;
    .restart local v9    # "sessionToken":Ljava/lang/String;
    .restart local v10    # "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :cond_2
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1631
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    .line 1632
    .local v0, "cache":Lcom/parse/ParseEventuallyQueue;
    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v8

    .line 1633
    .local v8, "runEventuallyTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-direct {p0, v7}, Lcom/parse/ParseObject;->enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)Lbolts/Task;

    .line 1636
    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->releaseLocalIds()V

    .line 1639
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1641
    invoke-virtual {v8}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v4

    .local v4, "handleSaveResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto/16 :goto_0

    .line 1643
    .end local v4    # "handleSaveResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_3
    new-instance v11, Lcom/parse/ParseObject$14;

    invoke-direct {v11, p0, v7}, Lcom/parse/ParseObject$14;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v8, v11}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    .restart local v4    # "handleSaveResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto/16 :goto_0
.end method

.method public final saveEventually(Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 1553
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveEventually()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1554
    return-void
.end method

.method public final saveInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1405
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$10;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$10;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$9;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$9;-><init>(Lcom/parse/ParseObject;)V

    .line 1440
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 1405
    return-object v0
.end method

.method public final saveInBackground(Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 1529
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1530
    return-void
.end method

.method public setACL(Lcom/parse/ParseACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/parse/ParseACL;

    .prologue
    .line 3354
    const-string v0, "ACL"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3355
    return-void
.end method

.method setDefaultValues()V
    .locals 1

    .prologue
    .line 3466
    invoke-virtual {p0}, Lcom/parse/ParseObject;->needsDefaultACL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3467
    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->setACL(Lcom/parse/ParseACL;)V

    .line 3469
    :cond_0
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 3
    .param p1, "newObjectId"    # Ljava/lang/String;

    .prologue
    .line 1167
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1168
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, "oldObjectId":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/parse/ParseTextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1170
    monitor-exit v2

    .line 1177
    :goto_0
    return-void

    .line 1174
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    .line 1175
    invoke-direct {p0, v0, p1}, Lcom/parse/ParseObject;->notifyObjectIdChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    monitor-exit v2

    goto :goto_0

    .end local v0    # "oldObjectId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setState(Lcom/parse/ParseObject$State;)V
    .locals 2
    .param p1, "newState"    # Lcom/parse/ParseObject$State;

    .prologue
    .line 667
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 668
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;Z)V

    .line 669
    monitor-exit v1

    .line 670
    return-void

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startSave()Lcom/parse/ParseOperationSet;
    .locals 4

    .prologue
    .line 1376
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1377
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    .line 1378
    .local v0, "currentOperations":Lcom/parse/ParseOperationSet;
    iget-object v1, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v3, Lcom/parse/ParseOperationSet;

    invoke-direct {v3}, Lcom/parse/ParseOperationSet;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1379
    monitor-exit v2

    return-object v0

    .line 1380
    .end local v0    # "currentOperations":Lcom/parse/ParseOperationSet;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method toJSONObjectForSaving(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 6
    .param p2, "operations"    # Lcom/parse/ParseOperationSet;
    .param p3, "objectEncoder"    # Lcom/parse/ParseEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject$State;",
            ">(TT;",
            "Lcom/parse/ParseOperationSet;",
            "Lcom/parse/ParseEncoder;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 1248
    .local p1, "state":Lcom/parse/ParseObject$State;, "TT;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1252
    .local v2, "objectJSON":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p2}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1253
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseFieldOperation;

    .line 1254
    .local v3, "operation":Lcom/parse/ParseFieldOperation;
    invoke-virtual {p3, v3}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1262
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "operation":Lcom/parse/ParseFieldOperation;
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "could not serialize object to JSON"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1259
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1260
    const-string v4, "objectId"

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1266
    :cond_1
    return-object v2
.end method

.method toRest(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "encoder"    # Lcom/parse/ParseEncoder;

    .prologue
    .line 946
    iget-object v7, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v7

    .line 949
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v5

    .line 952
    .local v5, "state":Lcom/parse/ParseObject$State;
    iget-object v6, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 953
    .local v3, "operationSetQueueSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 954
    .local v2, "operationSetQueueCopy":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 955
    iget-object v6, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseOperationSet;

    .line 956
    .local v4, "original":Lcom/parse/ParseOperationSet;
    new-instance v0, Lcom/parse/ParseOperationSet;

    invoke-direct {v0, v4}, Lcom/parse/ParseOperationSet;-><init>(Lcom/parse/ParseOperationSet;)V

    .line 957
    .local v0, "copy":Lcom/parse/ParseOperationSet;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 959
    .end local v0    # "copy":Lcom/parse/ParseOperationSet;
    .end local v4    # "original":Lcom/parse/ParseOperationSet;
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    invoke-virtual {p0, v5, v2, p1}, Lcom/parse/ParseObject;->toRest(Lcom/parse/ParseObject$State;Ljava/util/List;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v6

    return-object v6

    .line 959
    .end local v1    # "i":I
    .end local v2    # "operationSetQueueCopy":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    .end local v3    # "operationSetQueueSize":I
    .end local v5    # "state":Lcom/parse/ParseObject$State;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method toRest(Lcom/parse/ParseObject$State;Ljava/util/List;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "state"    # Lcom/parse/ParseObject$State;
    .param p3, "objectEncoder"    # Lcom/parse/ParseEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseOperationSet;",
            ">;",
            "Lcom/parse/ParseEncoder;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 966
    .local p2, "operationSetQueue":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 970
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "className"

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 971
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 972
    const-string v6, "objectId"

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 974
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 975
    const-string v6, "createdAt"

    .line 976
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lcom/parse/ParseDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 975
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 978
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 979
    const-string v6, "updatedAt"

    .line 980
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lcom/parse/ParseDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 979
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 982
    :cond_2
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 983
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 984
    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {p3, v5}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1000
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1001
    .local v0, "e":Lorg/json/JSONException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "could not serialize object to JSON"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 990
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    :try_start_1
    const-string v6, "__complete"

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 991
    const-string v6, "__isDeletingEventually"

    iget v7, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 994
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 995
    .local v4, "operations":Lorg/json/JSONArray;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseOperationSet;

    .line 996
    .local v3, "operationSet":Lcom/parse/ParseOperationSet;
    invoke-virtual {v3, p3}, Lcom/parse/ParseOperationSet;->toRest(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 998
    .end local v3    # "operationSet":Lcom/parse/ParseOperationSet;
    :cond_4
    const-string v6, "__operations"

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1004
    return-object v1
.end method

.method public unpin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4089
    invoke-virtual {p0}, Lcom/parse/ParseObject;->unpinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4090
    return-void
.end method

.method public unpin(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4054
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->unpinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4055
    return-void
.end method

.method public unpinInBackground()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4079
    const-string v0, "_default"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/parse/ParseObject;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public unpinInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4045
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/parse/ParseObject;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public unpinInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 4067
    invoke-virtual {p0}, Lcom/parse/ParseObject;->unpinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 4068
    return-void
.end method

.method public unpinInBackground(Ljava/lang/String;Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 4034
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->unpinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 4035
    return-void
.end method

.method unregisterSaveListener(Lcom/parse/GetCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3457
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3458
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->unsubscribe(Lcom/parse/ParseCallback2;)V

    .line 3459
    monitor-exit v1

    .line 3460
    return-void

    .line 3459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateBeforeSave()V
    .locals 0

    .prologue
    .line 1708
    return-void
.end method

.method validateDelete()V
    .locals 0

    .prologue
    .line 2035
    return-void
.end method

.method validateSave()V
    .locals 0

    .prologue
    .line 1385
    return-void
.end method

.method validateSaveEventually()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1534
    return-void
.end method
