.class Lcom/parse/NetworkQueryController;
.super Lcom/parse/AbstractQueryController;
.source "NetworkQueryController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkQueryController"


# instance fields
.field private final restClient:Lcom/parse/ParseHttpClient;


# direct methods
.method public constructor <init>(Lcom/parse/ParseHttpClient;)V
    .locals 0
    .param p1, "restClient"    # Lcom/parse/ParseHttpClient;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parse/AbstractQueryController;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/parse/NetworkQueryController;->restClient:Lcom/parse/ParseHttpClient;

    .line 29
    return-void
.end method


# virtual methods
.method convertFindResponse(Lcom/parse/ParseQuery$State;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 9
    .param p2, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "answer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const-string v7, "results"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 130
    .local v6, "results":Lorg/json/JSONArray;
    if-nez v6, :cond_1

    .line 131
    const-string v7, "NetworkQueryController"

    const-string v8, "null results in find response"

    invoke-static {v7, v8}, Lcom/parse/PLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    return-object v0

    .line 133
    :cond_1
    const-string v7, "className"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "resultClassName":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 135
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->className()Ljava/lang/String;

    move-result-object v5

    .line 137
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 138
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 139
    .local v1, "data":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->selectedKeys()Ljava/util/Set;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_1
    invoke-static {v1, v5, v7}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseObject;

    move-result-object v3

    .line 140
    .local v3, "object":Lcom/parse/ParseObject;, "TT;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->constraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v7

    const-string v8, "$relatedTo"

    invoke-virtual {v7, v8}, Lcom/parse/ParseQuery$QueryConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseQuery$RelationConstraint;

    .line 148
    .local v4, "relation":Lcom/parse/ParseQuery$RelationConstraint;
    if-eqz v4, :cond_3

    .line 149
    invoke-virtual {v4}, Lcom/parse/ParseQuery$RelationConstraint;->getRelation()Lcom/parse/ParseRelation;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/parse/ParseRelation;->addKnownObject(Lcom/parse/ParseObject;)V

    .line 137
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v3    # "object":Lcom/parse/ParseObject;, "TT;"
    .end local v4    # "relation":Lcom/parse/ParseQuery$RelationConstraint;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public countAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
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
    .line 41
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    .local p3, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "sessionToken":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/parse/NetworkQueryController;->countAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;ZLbolts/Task;)Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 41
    .end local v0    # "sessionToken":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method countAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;ZLbolts/Task;)Lbolts/Task;
    .locals 4
    .param p2, "sessionToken"    # Ljava/lang/String;
    .param p3, "shouldRetry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Ljava/lang/String;",
            "Z",
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
    .line 99
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    .local p4, "ct":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {p1, p2}, Lcom/parse/ParseRESTQueryCommand;->countCommand(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v0

    .line 100
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    if-eqz p3, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->enableRetrying()V

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/parse/NetworkQueryController;->restClient:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1, p4}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/NetworkQueryController$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/NetworkQueryController$3;-><init>(Lcom/parse/NetworkQueryController;Lcom/parse/ParseQuery$State;Lcom/parse/ParseRESTCommand;)V

    sget-object v3, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/NetworkQueryController$2;

    invoke-direct {v2, p0}, Lcom/parse/NetworkQueryController$2;-><init>(Lcom/parse/NetworkQueryController;)V

    .line 115
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 104
    return-object v1
.end method

.method public findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
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
    .line 34
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    .local p3, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "sessionToken":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/parse/NetworkQueryController;->findAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;ZLbolts/Task;)Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 34
    .end local v0    # "sessionToken":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method findAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;ZLbolts/Task;)Lbolts/Task;
    .locals 9
    .param p2, "sessionToken"    # Ljava/lang/String;
    .param p3, "shouldRetry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Ljava/lang/String;",
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
    .line 55
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    .local p4, "ct":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 57
    .local v6, "queryStart":J
    invoke-static {p1, p2}, Lcom/parse/ParseRESTQueryCommand;->findCommand(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v3

    .line 58
    .local v3, "command":Lcom/parse/ParseRESTCommand;
    if-eqz p3, :cond_0

    .line 59
    invoke-virtual {v3}, Lcom/parse/ParseRESTCommand;->enableRetrying()V

    .line 62
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 63
    .local v4, "querySent":J
    iget-object v0, p0, Lcom/parse/NetworkQueryController;->restClient:Lcom/parse/ParseHttpClient;

    invoke-virtual {v3, v0, p4}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;Lbolts/Task;)Lbolts/Task;

    move-result-object v8

    new-instance v0, Lcom/parse/NetworkQueryController$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/parse/NetworkQueryController$1;-><init>(Lcom/parse/NetworkQueryController;Lcom/parse/ParseQuery$State;Lcom/parse/ParseRESTCommand;JJ)V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v8, v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
