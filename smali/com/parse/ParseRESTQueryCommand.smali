.class Lcom/parse/ParseRESTQueryCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTQueryCommand.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/http/ParseHttpRequest$Method;
    .param p4, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/http/ParseHttpRequest$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static countCommand(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lcom/parse/ParseRESTQueryCommand;
    .locals 7
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRESTQueryCommand;"
        }
    .end annotation

    .prologue
    .local p0, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    const/4 v6, 0x1

    .line 32
    const-string v2, "classes/%s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->className()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "httpPath":Ljava/lang/String;
    invoke-static {p0, v6}, Lcom/parse/ParseRESTQueryCommand;->encode(Lcom/parse/ParseQuery$State;Z)Ljava/util/Map;

    move-result-object v1

    .line 34
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/parse/ParseRESTQueryCommand;

    sget-object v3, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    invoke-direct {v2, v0, v3, v1, p1}, Lcom/parse/ParseRESTQueryCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    return-object v2
.end method

.method static encode(Lcom/parse/ParseQuery$State;Z)Ljava/util/Map;
    .locals 15
    .param p1, "count"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v3

    .line 41
    .local v3, "encoder":Lcom/parse/ParseEncoder;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v9, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->order()Ljava/util/List;

    move-result-object v8

    .line 43
    .local v8, "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 44
    const-string v12, "order"

    const-string v13, ","

    invoke-static {v13, v8}, Lcom/parse/ParseTextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->constraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v0

    .line 48
    .local v0, "conditions":Lcom/parse/ParseQuery$QueryConstraints;
    invoke-virtual {v0}, Lcom/parse/ParseQuery$QueryConstraints;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 50
    invoke-virtual {v3, v0}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 51
    .local v1, "encodedConditions":Lorg/json/JSONObject;
    const-string v12, "where"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v1    # "encodedConditions":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->selectedKeys()Ljava/util/Set;

    move-result-object v10

    .line 56
    .local v10, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_2

    .line 57
    const-string v12, "keys"

    const-string v13, ","

    invoke-static {v13, v10}, Lcom/parse/ParseTextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->includes()Ljava/util/Set;

    move-result-object v6

    .line 61
    .local v6, "includeds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 62
    const-string v12, "include"

    const-string v13, ","

    invoke-static {v13, v6}, Lcom/parse/ParseTextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_3
    if-eqz p1, :cond_5

    .line 66
    const-string v12, "count"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->extraOptions()Ljava/util/Map;

    move-result-object v5

    .line 80
    .local v5, "extraOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 81
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    .local v2, "encodedExtraOptions":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 68
    .end local v2    # "encodedExtraOptions":Ljava/lang/Object;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "extraOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->limit()I

    move-result v7

    .line 69
    .local v7, "limit":I
    if-ltz v7, :cond_6

    .line 70
    const-string v12, "limit"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_6
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->skip()I

    move-result v11

    .line 74
    .local v11, "skip":I
    if-lez v11, :cond_4

    .line 75
    const-string v12, "skip"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    .end local v7    # "limit":I
    .end local v11    # "skip":I
    .restart local v5    # "extraOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->isTracingEnabled()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 86
    const-string v12, "trace"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_8
    return-object v9
.end method

.method public static findCommand(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lcom/parse/ParseRESTQueryCommand;
    .locals 6
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRESTQueryCommand;"
        }
    .end annotation

    .prologue
    .local p0, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    const/4 v5, 0x0

    .line 24
    const-string v2, "classes/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->className()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "httpPath":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/parse/ParseRESTQueryCommand;->encode(Lcom/parse/ParseQuery$State;Z)Ljava/util/Map;

    move-result-object v1

    .line 26
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/parse/ParseRESTQueryCommand;

    sget-object v3, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    invoke-direct {v2, v0, v3, v1, p1}, Lcom/parse/ParseRESTQueryCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    return-object v2
.end method
