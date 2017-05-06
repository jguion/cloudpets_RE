.class public Lcom/parse/ParseQuery;
.super Ljava/lang/Object;
.source "ParseQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseQuery$CacheThenNetworkCallable;,
        Lcom/parse/ParseQuery$State;,
        Lcom/parse/ParseQuery$CachePolicy;,
        Lcom/parse/ParseQuery$RelationConstraint;,
        Lcom/parse/ParseQuery$KeyConstraints;,
        Lcom/parse/ParseQuery$QueryConstraints;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final builder:Lcom/parse/ParseQuery$State$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation
.end field

.field private cts:Lbolts/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Z

.field private final lock:Ljava/lang/Object;

.field private user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$State$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 929
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->lock:Ljava/lang/Object;

    .line 893
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseQuery;->isRunning:Z

    .line 930
    iput-object p1, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    .line 931
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 925
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {p1}, Lcom/parse/ParseQuery;->getBuilder()Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery$State$Builder;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    .line 926
    iget-object v0, p1, Lcom/parse/ParseQuery;->user:Lcom/parse/ParseUser;

    iput-object v0, p0, Lcom/parse/ParseQuery;->user:Lcom/parse/ParseUser;

    .line 927
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 904
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 905
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "theClassName"    # Ljava/lang/String;

    .prologue
    .line 915
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$State$Builder;

    invoke-direct {v0, p1}, Lcom/parse/ParseQuery$State$Builder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    .line 916
    return-void
.end method

.method static synthetic access$000()Lcom/parse/ParseObjectSubclassingController;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/parse/ParseQuery;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 90
    invoke-static {}, Lcom/parse/ParseQuery;->throwIfLDSEnabled()V

    return-void
.end method

.method static synthetic access$1800(Lcom/parse/ParseQuery;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parse/ParseQuery;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/parse/ParseQuery;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/parse/ParseQuery;->isRunning:Z

    return p1
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 90
    invoke-static {}, Lcom/parse/ParseQuery;->throwIfLDSDisabled()V

    return-void
.end method

.method static synthetic access$2000(Lcom/parse/ParseQuery;)Lbolts/TaskCompletionSource;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parse/ParseQuery;->cts:Lbolts/TaskCompletionSource;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/parse/ParseQuery;Lbolts/TaskCompletionSource;)Lbolts/TaskCompletionSource;
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lbolts/TaskCompletionSource;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/parse/ParseQuery;->cts:Lbolts/TaskCompletionSource;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lcom/parse/ParseQuery$State;
    .param p2, "x2"    # Lcom/parse/ParseUser;
    .param p3, "x3"    # Lbolts/Task;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseQuery;->getFirstAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lcom/parse/ParseQuery$State;
    .param p2, "x2"    # Lcom/parse/ParseUser;
    .param p3, "x3"    # Lbolts/Task;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseQuery;->countAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private checkIfRunning()V
    .locals 1

    .prologue
    .line 964
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 965
    return-void
.end method

.method private checkIfRunning(Z)V
    .locals 3
    .param p1, "grabLock"    # Z

    .prologue
    .line 968
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseQuery;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 969
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseQuery;->isRunning:Z

    if-eqz v0, :cond_0

    .line 970
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "This query has an outstanding network connection. You have to wait until it\'s done."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 972
    :cond_0
    if-eqz p1, :cond_1

    .line 973
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/parse/ParseQuery;->isRunning:Z

    .line 974
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->cts:Lbolts/TaskCompletionSource;

    .line 976
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 977
    return-void
.end method

.method public static clearAllCachedResults()V
    .locals 0

    .prologue
    .line 1453
    invoke-static {}, Lcom/parse/ParseQuery;->throwIfLDSEnabled()V

    .line 1455
    invoke-static {}, Lcom/parse/ParseKeyValueCache;->clearKeyValueCacheDir()V

    .line 1456
    return-void
.end method

.method private countAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1359
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$8;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$8;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$State;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private countAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1374
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    .local p3, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->getQueryController()Lcom/parse/ParseQueryController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/parse/ParseQueryController;->countAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private doCacheThenNetwork(Lcom/parse/ParseQuery$State;Lcom/parse/ParseCallback2;Lcom/parse/ParseQuery$CacheThenNetworkCallable;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseCallback2",
            "<TTResult;",
            "Lcom/parse/ParseException;",
            ">;",
            "Lcom/parse/ParseQuery$CacheThenNetworkCallable",
            "<TT;",
            "Lbolts/Task",
            "<TTResult;>;>;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 1528
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    .local p2, "callback":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<TTResult;Lcom/parse/ParseException;>;"
    .local p3, "delegate":Lcom/parse/ParseQuery$CacheThenNetworkCallable;, "Lcom/parse/ParseQuery$CacheThenNetworkCallable<TT;Lbolts/Task<TTResult;>;>;"
    new-instance v0, Lcom/parse/ParseQuery$10;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/parse/ParseQuery$10;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$State;Lcom/parse/ParseQuery$CacheThenNetworkCallable;Lcom/parse/ParseCallback2;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lbolts/Task",
            "<TTResult;>;>;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 1151
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "runnable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lbolts/Task<TTResult;>;>;"
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 1154
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    :goto_0
    new-instance v2, Lcom/parse/ParseQuery$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseQuery$1;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 1155
    .end local v1    # "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v1

    .restart local v1    # "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    goto :goto_0
.end method

.method private findAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1215
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$3;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$3;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$State;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private getFirstAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1282
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$5;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$5;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$State;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private getFirstAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1297
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    .local p3, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->getQueryController()Lcom/parse/ParseQueryController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/parse/ParseQueryController;->getFirstAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/parse/ParseQuery;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getQueryController()Lcom/parse/ParseQueryController;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getQueryController()Lcom/parse/ParseQueryController;

    move-result-object v0

    return-object v0
.end method

.method private static getSubclassingController()Lcom/parse/ParseObjectSubclassingController;
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    return-object v0
.end method

.method public static getUserQuery()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Lcom/parse/ParseUser;->getQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public static or(Ljava/util/List;)Lcom/parse/ParseQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQuery",
            "<TT;>;>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "queries":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseQuery<TT;>;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t take an or of an empty list of queries"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "builders":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseQuery$State$Builder<TT;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseQuery;

    .line 183
    .local v1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {v1}, Lcom/parse/ParseQuery;->getBuilder()Lcom/parse/ParseQuery$State$Builder;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v1    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    :cond_1
    new-instance v2, Lcom/parse/ParseQuery;

    invoke-static {v0}, Lcom/parse/ParseQuery$State$Builder;->or(Ljava/util/List;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parse/ParseQuery;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    return-object v2
.end method

.method private static throwIfLDSDisabled()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/parse/ParseQuery;->throwIfLDSEnabled(Z)V

    .line 287
    return-void
.end method

.method private static throwIfLDSEnabled()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseQuery;->throwIfLDSEnabled(Z)V

    .line 283
    return-void
.end method

.method private static throwIfLDSEnabled(Z)V
    .locals 3
    .param p0, "enabled"    # Z

    .prologue
    .line 290
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v0

    .line 291
    .local v0, "ldsEnabled":Z
    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    .line 292
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_0
    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    .line 296
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported method when Local Datastore is enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_1
    return-void
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2058
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2059
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->addAscendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    .line 2060
    return-object p0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2086
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2087
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->addDescendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    .line 2088
    return-object p0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 984
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseQuery;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 985
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->cts:Lbolts/TaskCompletionSource;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/parse/ParseQuery;->cts:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->trySetCancelled()Z

    .line 987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseQuery;->cts:Lbolts/TaskCompletionSource;

    .line 989
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseQuery;->isRunning:Z

    .line 990
    monitor-exit v1

    .line 991
    return-void

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearCachedResult()V
    .locals 5

    .prologue
    .line 1429
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->throwIfLDSEnabled()V

    .line 1433
    iget-object v4, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v4}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v2

    .line 1435
    .local v2, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    const/4 v3, 0x0

    .line 1437
    .local v3, "user":Lcom/parse/ParseUser;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/parse/ParseQuery;->getUserAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v4

    invoke-static {v4}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/parse/ParseUser;

    move-object v3, v0
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 1445
    .local v1, "sessionToken":Ljava/lang/String;
    :goto_1
    invoke-static {v2, v1}, Lcom/parse/ParseRESTQueryCommand;->findCommand(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseRESTQueryCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    .line 1444
    invoke-static {v4}, Lcom/parse/ParseKeyValueCache;->clearFromKeyValueCache(Ljava/lang/String;)V

    .line 1447
    return-void

    .line 1441
    .end local v1    # "sessionToken":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1438
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public count()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1307
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->countInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public countInBackground()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1317
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$State$Builder;

    iget-object v2, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-direct {v0, v2}, Lcom/parse/ParseQuery$State$Builder;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    .line 1318
    .local v0, "copy":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/parse/ParseQuery$State$Builder;->setLimit(I)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v1

    .line 1319
    .local v1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->countAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v2

    return-object v2
.end method

.method public countInBackground(Lcom/parse/CountCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/parse/CountCallback;

    .prologue
    .line 1330
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v1, Lcom/parse/ParseQuery$State$Builder;

    iget-object v4, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-direct {v1, v4}, Lcom/parse/ParseQuery$State$Builder;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    .line 1331
    .local v1, "copy":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/parse/ParseQuery$State$Builder;->setLimit(I)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v2

    .line 1334
    .local v2, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    if-eqz p1, :cond_1

    new-instance v0, Lcom/parse/ParseQuery$6;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$6;-><init>(Lcom/parse/ParseQuery;Lcom/parse/CountCallback;)V

    .line 1344
    .local v0, "c":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<Ljava/lang/Integer;Lcom/parse/ParseException;>;"
    :goto_0
    invoke-virtual {v2}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v4

    sget-object v5, Lcom/parse/ParseQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v4, v5, :cond_0

    .line 1345
    invoke-virtual {v2}, Lcom/parse/ParseQuery$State;->isFromLocalDatastore()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1346
    :cond_0
    invoke-direct {p0, v2}, Lcom/parse/ParseQuery;->countAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v3

    .line 1355
    .local v3, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Integer;>;"
    :goto_1
    invoke-static {v3, v0}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1356
    return-void

    .line 1334
    .end local v0    # "c":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<Ljava/lang/Integer;Lcom/parse/ParseException;>;"
    .end local v3    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1348
    .restart local v0    # "c":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<Ljava/lang/Integer;Lcom/parse/ParseException;>;"
    :cond_2
    new-instance v4, Lcom/parse/ParseQuery$7;

    invoke-direct {v4, p0}, Lcom/parse/ParseQuery$7;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v2, v0, v4}, Lcom/parse/ParseQuery;->doCacheThenNetwork(Lcom/parse/ParseQuery$State;Lcom/parse/ParseCallback2;Lcom/parse/ParseQuery$CacheThenNetworkCallable;)Lbolts/Task;

    move-result-object v3

    .restart local v3    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Integer;>;"
    goto :goto_1
.end method

.method public find()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 1003
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->findInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
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
    .line 1230
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    .local p3, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->getQueryController()Lcom/parse/ParseQueryController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/parse/ParseQueryController;->findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public findInBackground()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1183
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->findAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public findInBackground(Lcom/parse/FindCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1197
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "callback":Lcom/parse/FindCallback;, "Lcom/parse/FindCallback<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v2}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    .line 1200
    .local v0, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    invoke-virtual {v0}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v2

    sget-object v3, Lcom/parse/ParseQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v2, v3, :cond_0

    .line 1201
    invoke-virtual {v0}, Lcom/parse/ParseQuery$State;->isFromLocalDatastore()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1202
    :cond_0
    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->findAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v1

    .line 1211
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/util/List<TT;>;>;"
    :goto_0
    invoke-static {v1, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1212
    return-void

    .line 1204
    .end local v1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/util/List<TT;>;>;"
    :cond_1
    new-instance v2, Lcom/parse/ParseQuery$2;

    invoke-direct {v2, p0}, Lcom/parse/ParseQuery$2;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v0, p1, v2}, Lcom/parse/ParseQuery;->doCacheThenNetwork(Lcom/parse/ParseQuery$State;Lcom/parse/ParseCallback2;Lcom/parse/ParseQuery$CacheThenNetworkCallable;)Lbolts/Task;

    move-result-object v1

    .restart local v1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/util/List<TT;>;>;"
    goto :goto_0
.end method

.method public fromLocalDatastore()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1076
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->fromLocalDatastore()Lcom/parse/ParseQuery$State$Builder;

    .line 1077
    return-object p0
.end method

.method fromNetwork()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1056
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1058
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->fromNetwork()Lcom/parse/ParseQuery$State$Builder;

    .line 1059
    return-object p0
.end method

.method public fromPin()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1091
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1092
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->fromPin()Lcom/parse/ParseQuery$State$Builder;

    .line 1093
    return-object p0
.end method

.method public fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1108
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1109
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    .line 1110
    return-object p0
.end method

.method public get(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1391
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery;->getInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method getBuilder()Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 934
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    return-object v0
.end method

.method public getCachePolicy()Lcom/parse/ParseQuery$CachePolicy;
    .locals 1

    .prologue
    .line 1043
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->getCachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2138
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1018
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->getFirstInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method public getFirstInBackground()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1245
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery$State$Builder;->setLimit(I)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    .line 1246
    invoke-virtual {v1}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    .line 1247
    .local v0, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->getFirstAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public getFirstInBackground(Lcom/parse/GetCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1263
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/parse/ParseQuery$State$Builder;->setLimit(I)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v2

    .line 1264
    invoke-virtual {v2}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    .line 1267
    .local v0, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    invoke-virtual {v0}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v2

    sget-object v3, Lcom/parse/ParseQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v2, v3, :cond_0

    .line 1268
    invoke-virtual {v0}, Lcom/parse/ParseQuery$State;->isFromLocalDatastore()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1269
    :cond_0
    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->getFirstAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v1

    .line 1278
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :goto_0
    invoke-static {v1, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1279
    return-void

    .line 1271
    .end local v1    # "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :cond_1
    new-instance v2, Lcom/parse/ParseQuery$4;

    invoke-direct {v2, p0}, Lcom/parse/ParseQuery$4;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v0, p1, v2}, Lcom/parse/ParseQuery;->doCacheThenNetwork(Lcom/parse/ParseQuery$State;Lcom/parse/ParseCallback2;Lcom/parse/ParseQuery$CacheThenNetworkCallable;)Lbolts/Task;

    move-result-object v1

    .restart local v1    # "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    goto :goto_0
.end method

.method public getInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1474
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery$State$Builder;->setSkip(I)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    .line 1475
    invoke-virtual {v1, p1}, Lcom/parse/ParseQuery$State$Builder;->whereObjectIdEquals(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    .line 1476
    invoke-virtual {v1}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    .line 1477
    .local v0, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->getFirstAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public getInBackground(Ljava/lang/String;Lcom/parse/GetCallback;)V
    .locals 4
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1496
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p2, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/parse/ParseQuery$State$Builder;->setSkip(I)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v2

    .line 1497
    invoke-virtual {v2, p1}, Lcom/parse/ParseQuery$State$Builder;->whereObjectIdEquals(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v2

    .line 1498
    invoke-virtual {v2}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    .line 1501
    .local v0, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    invoke-virtual {v0}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v2

    sget-object v3, Lcom/parse/ParseQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v2, v3, :cond_0

    .line 1502
    invoke-virtual {v0}, Lcom/parse/ParseQuery$State;->isFromLocalDatastore()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1503
    :cond_0
    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->getFirstAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v1

    .line 1512
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :goto_0
    invoke-static {v1, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1513
    return-void

    .line 1505
    .end local v1    # "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :cond_1
    new-instance v2, Lcom/parse/ParseQuery$9;

    invoke-direct {v2, p0}, Lcom/parse/ParseQuery$9;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v0, p2, v2}, Lcom/parse/ParseQuery;->doCacheThenNetwork(Lcom/parse/ParseQuery$State;Lcom/parse/ParseCallback2;Lcom/parse/ParseQuery$CacheThenNetworkCallable;)Lbolts/Task;

    move-result-object v1

    .restart local v1    # "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    goto :goto_0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 2110
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->getLimit()I

    move-result v0

    return v0
.end method

.method public getMaxCacheAge()J
    .locals 2

    .prologue
    .line 1144
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->getMaxCacheAge()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 2131
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->getSkip()I

    move-result v0

    return v0
.end method

.method getUserAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 954
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->ignoreACLs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 960
    :goto_0
    return-object v0

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->user:Lcom/parse/ParseUser;

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/parse/ParseQuery;->user:Lcom/parse/ParseUser;

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 960
    :cond_1
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserAsync()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public hasCachedResult()Z
    .locals 10

    .prologue
    .line 1399
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->throwIfLDSEnabled()V

    .line 1403
    iget-object v6, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v6}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v4

    .line 1405
    .local v4, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    const/4 v5, 0x0

    .line 1407
    .local v5, "user":Lcom/parse/ParseUser;
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/parse/ParseQuery;->getUserAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v6

    invoke-static {v6}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/parse/ParseUser;

    move-object v5, v0
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 1418
    .local v3, "sessionToken":Ljava/lang/String;
    :goto_1
    invoke-static {v4, v3}, Lcom/parse/ParseRESTQueryCommand;->findCommand(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/ParseRESTQueryCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/parse/ParseQuery$State;->maxCacheAge()J

    move-result-wide v8

    .line 1417
    invoke-static {v6, v8, v9}, Lcom/parse/ParseKeyValueCache;->loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 1420
    .local v2, "raw":Ljava/lang/String;
    if-eqz v2, :cond_1

    const/4 v6, 0x1

    :goto_2
    return v6

    .line 1411
    .end local v2    # "raw":Ljava/lang/String;
    .end local v3    # "sessionToken":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1420
    .restart local v2    # "raw":Ljava/lang/String;
    .restart local v3    # "sessionToken":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 1408
    .end local v2    # "raw":Ljava/lang/String;
    .end local v3    # "sessionToken":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public ignoreACLs()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1121
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1123
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->ignoreACLs()Lcom/parse/ParseQuery$State$Builder;

    .line 1124
    return-object p0
.end method

.method public include(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1982
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1983
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->include(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    .line 1984
    return-object p0
.end method

.method isFromNetwork()Z
    .locals 1

    .prologue
    .line 1063
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->isFromNetwork()Z

    move-result v0

    return v0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2043
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2044
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    .line 2045
    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2071
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2072
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    .line 2073
    return-object p0
.end method

.method public selectKeys(Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2002
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2003
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->selectKeys(Ljava/util/Collection;)Lcom/parse/ParseQuery$State$Builder;

    .line 2004
    return-object p0
.end method

.method public setCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "newCachePolicy"    # Lcom/parse/ParseQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1033
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1035
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->setCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/ParseQuery$State$Builder;

    .line 1036
    return-object p0
.end method

.method public setLimit(I)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "newLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2101
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2102
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->setLimit(I)Lcom/parse/ParseQuery$State$Builder;

    .line 2103
    return-object p0
.end method

.method public setMaxCacheAge(J)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "maxAgeInMilliseconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1133
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1135
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/parse/ParseQuery$State$Builder;->setMaxCacheAge(J)Lcom/parse/ParseQuery$State$Builder;

    .line 1136
    return-object p0
.end method

.method public setSkip(I)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "newSkip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2122
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2123
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->setSkip(I)Lcom/parse/ParseQuery$State$Builder;

    .line 2124
    return-object p0
.end method

.method public setTrace(Z)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "shouldTrace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2149
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2150
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->setTracingEnabled(Z)Lcom/parse/ParseQuery$State$Builder;

    .line 2151
    return-object p0
.end method

.method setUser(Lcom/parse/ParseUser;)Lcom/parse/ParseQuery;
    .locals 0
    .param p1, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 944
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iput-object p1, p0, Lcom/parse/ParseQuery;->user:Lcom/parse/ParseUser;

    .line 945
    return-object p0
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1672
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1673
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$in"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery$State$Builder;

    .line 1674
    return-object p0
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "substring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1933
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1934
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1935
    return-object p0
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1692
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1693
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$all"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery$State$Builder;

    .line 1694
    return-object p0
.end method

.method public whereDoesNotExist(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2030
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2031
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$exists"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 2032
    return-object p0
.end method

.method public whereDoesNotMatchKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyInQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1765
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p3, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<*>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1766
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {p3}, Lcom/parse/ParseQuery;->getBuilder()Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/parse/ParseQuery$State$Builder;->whereDoesNotMatchKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;

    .line 1767
    return-object p0
.end method

.method public whereDoesNotMatchQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1728
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p2, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<*>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1729
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {p2}, Lcom/parse/ParseQuery;->getBuilder()Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/parse/ParseQuery$State$Builder;->whereDoesNotMatchQuery(Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;

    .line 1730
    return-object p0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1967
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1968
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1969
    return-object p0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1576
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1577
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/parse/ParseQuery$State$Builder;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1578
    return-object p0
.end method

.method public whereExists(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2016
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2017
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$exists"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 2018
    return-object p0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1624
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1625
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$gt"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1626
    return-object p0
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1656
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1657
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$gte"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1658
    return-object p0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1592
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1593
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$lt"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1594
    return-object p0
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1640
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1641
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$lte"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1642
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1891
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1892
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$regex"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1893
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "modifiers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1913
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1914
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$regex"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1915
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$options"

    invoke-virtual {v0, p1, v1, p3}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1918
    :cond_0
    return-object p0
.end method

.method public whereMatchesKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyInQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1746
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p3, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<*>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1747
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {p3}, Lcom/parse/ParseQuery;->getBuilder()Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/parse/ParseQuery$State$Builder;->whereMatchesKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;

    .line 1748
    return-object p0
.end method

.method public whereMatchesQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1710
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p2, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<*>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1711
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {p2}, Lcom/parse/ParseQuery;->getBuilder()Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/parse/ParseQuery$State$Builder;->whereMatchesQuery(Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;

    .line 1712
    return-object p0
.end method

.method public whereNear(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/parse/ParseGeoPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1797
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1798
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/parse/ParseQuery$State$Builder;->whereNear(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery$State$Builder;

    .line 1799
    return-object p0
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1781
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1782
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$nin"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery$State$Builder;

    .line 1783
    return-object p0
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1608
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1609
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$ne"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1610
    return-object p0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1950
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1951
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1952
    return-object p0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/parse/ParseGeoPoint;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "southwest"    # Lcom/parse/ParseGeoPoint;
    .param p3, "northeast"    # Lcom/parse/ParseGeoPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "Lcom/parse/ParseGeoPoint;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1873
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1874
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parse/ParseQuery$State$Builder;->whereWithin(Ljava/lang/String;Lcom/parse/ParseGeoPoint;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery$State$Builder;

    .line 1875
    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/parse/ParseGeoPoint;
    .param p3, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "D)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1836
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1837
    sget-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    div-double v0, p3, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parse/ParseQuery;->whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/parse/ParseGeoPoint;
    .param p3, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "D)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1817
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1818
    sget-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_MILE:D

    div-double v0, p3, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parse/ParseQuery;->whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/parse/ParseGeoPoint;
    .param p3, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "D)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1853
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1854
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/parse/ParseQuery$State$Builder;->whereNear(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    .line 1855
    invoke-virtual {v0, p1, p3, p4}, Lcom/parse/ParseQuery$State$Builder;->maxDistance(Ljava/lang/String;D)Lcom/parse/ParseQuery$State$Builder;

    .line 1856
    return-object p0
.end method
