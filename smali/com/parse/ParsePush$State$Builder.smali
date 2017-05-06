.class Lcom/parse/ParsePush$State$Builder;
.super Ljava/lang/Object;
.source "ParsePush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParsePush$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private channelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private data:Lorg/json/JSONObject;

.field private expirationTime:Ljava/lang/Long;

.field private expirationTimeInterval:Ljava/lang/Long;

.field private pushToAndroid:Ljava/lang/Boolean;

.field private pushToIOS:Ljava/lang/Boolean;

.field private query:Lcom/parse/ParseQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParsePush$State;)V
    .locals 5
    .param p1, "state"    # Lcom/parse/ParsePush$State;

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->channelSet()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v3

    .line 69
    :goto_0
    iput-object v2, p0, Lcom/parse/ParsePush$State$Builder;->channelSet:Ljava/util/Set;

    .line 70
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->queryState()Lcom/parse/ParseQuery$State;

    move-result-object v2

    if-nez v2, :cond_1

    .line 72
    :goto_1
    iput-object v3, p0, Lcom/parse/ParsePush$State$Builder;->query:Lcom/parse/ParseQuery;

    .line 73
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->expirationTime()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParsePush$State$Builder;->expirationTime:Ljava/lang/Long;

    .line 74
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->expirationTimeInterval()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParsePush$State$Builder;->expirationTimeInterval:Ljava/lang/Long;

    .line 75
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->pushToIOS()Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParsePush$State$Builder;->pushToIOS:Ljava/lang/Boolean;

    .line 76
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->pushToAndroid()Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParsePush$State$Builder;->pushToAndroid:Ljava/lang/Boolean;

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "copyData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->data()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "copyData":Lorg/json/JSONObject;
    .local v1, "copyData":Lorg/json/JSONObject;
    move-object v0, v1

    .line 84
    .end local v1    # "copyData":Lorg/json/JSONObject;
    .restart local v0    # "copyData":Lorg/json/JSONObject;
    :goto_2
    iput-object v0, p0, Lcom/parse/ParsePush$State$Builder;->data:Lorg/json/JSONObject;

    .line 85
    return-void

    .line 67
    .end local v0    # "copyData":Lorg/json/JSONObject;
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    .line 69
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->channelSet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    .line 70
    :cond_1
    new-instance v3, Lcom/parse/ParseQuery;

    new-instance v2, Lcom/parse/ParseQuery$State$Builder;

    .line 72
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->queryState()Lcom/parse/ParseQuery$State;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/parse/ParseQuery$State$Builder;-><init>(Lcom/parse/ParseQuery$State;)V

    invoke-direct {v3, v2}, Lcom/parse/ParseQuery;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    goto :goto_1

    .line 81
    .restart local v0    # "copyData":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method static synthetic access$300(Lcom/parse/ParsePush$State$Builder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->channelSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParsePush$State$Builder;)Lcom/parse/ParseQuery;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->query:Lcom/parse/ParseQuery;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->expirationTime:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->expirationTimeInterval:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->pushToIOS:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->pushToAndroid:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/ParsePush$State$Builder;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->data:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/parse/ParsePush$State;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->data:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot send a push without calling either setMessage or setData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    new-instance v0, Lcom/parse/ParsePush$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/ParsePush$State;-><init>(Lcom/parse/ParsePush$State$Builder;Lcom/parse/ParsePush$1;)V

    return-object v0
.end method

.method public channelSet(Ljava/util/Collection;)Lcom/parse/ParsePush$State$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/ParsePush$State$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "channelSet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "channels collection cannot be null"

    # invokes: Lcom/parse/ParsePush;->checkArgument(ZLjava/lang/Object;)V
    invoke-static {v1, v4}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    .line 120
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    .local v0, "channel":Ljava/lang/String;
    if-eqz v0, :cond_1

    move v1, v2

    :goto_2
    const-string v5, "channel cannot be null"

    # invokes: Lcom/parse/ParsePush;->checkArgument(ZLjava/lang/Object;)V
    invoke-static {v1, v5}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    goto :goto_1

    .end local v0    # "channel":Ljava/lang/String;
    :cond_0
    move v1, v3

    .line 119
    goto :goto_0

    .restart local v0    # "channel":Ljava/lang/String;
    :cond_1
    move v1, v3

    .line 121
    goto :goto_2

    .line 123
    .end local v0    # "channel":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/parse/ParsePush$State$Builder;->channelSet:Ljava/util/Set;

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/ParsePush$State$Builder;->query:Lcom/parse/ParseQuery;

    .line 125
    return-object p0
.end method

.method public data(Lorg/json/JSONObject;)Lcom/parse/ParsePush$State$Builder;
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/parse/ParsePush$State$Builder;->data:Lorg/json/JSONObject;

    .line 115
    return-object p0
.end method

.method public expirationTime(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;
    .locals 1
    .param p1, "expirationTime"    # Ljava/lang/Long;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/parse/ParsePush$State$Builder;->expirationTime:Ljava/lang/Long;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush$State$Builder;->expirationTimeInterval:Ljava/lang/Long;

    .line 90
    return-object p0
.end method

.method public expirationTimeInterval(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;
    .locals 1
    .param p1, "expirationTimeInterval"    # Ljava/lang/Long;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/parse/ParsePush$State$Builder;->expirationTimeInterval:Ljava/lang/Long;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush$State$Builder;->expirationTime:Ljava/lang/Long;

    .line 96
    return-object p0
.end method

.method public pushToAndroid(Ljava/lang/Boolean;)Lcom/parse/ParsePush$State$Builder;
    .locals 2
    .param p1, "pushToAndroid"    # Ljava/lang/Boolean;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->query:Lcom/parse/ParseQuery;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    # invokes: Lcom/parse/ParsePush;->checkArgument(ZLjava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    .line 109
    iput-object p1, p0, Lcom/parse/ParsePush$State$Builder;->pushToAndroid:Ljava/lang/Boolean;

    .line 110
    return-object p0

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushToIOS(Ljava/lang/Boolean;)Lcom/parse/ParsePush$State$Builder;
    .locals 2
    .param p1, "pushToIOS"    # Ljava/lang/Boolean;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->query:Lcom/parse/ParseQuery;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    # invokes: Lcom/parse/ParsePush;->checkArgument(ZLjava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    .line 102
    iput-object p1, p0, Lcom/parse/ParsePush$State$Builder;->pushToIOS:Ljava/lang/Boolean;

    .line 103
    return-object p0

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Lcom/parse/ParseQuery;)Lcom/parse/ParsePush$State$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)",
            "Lcom/parse/ParsePush$State$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Cannot target a null query"

    # invokes: Lcom/parse/ParsePush;->checkArgument(ZLjava/lang/Object;)V
    invoke-static {v0, v3}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->pushToIOS:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->pushToAndroid:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    # invokes: Lcom/parse/ParsePush;->checkArgument(ZLjava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    .line 133
    invoke-virtual {p1}, Lcom/parse/ParseQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 134
    # invokes: Lcom/parse/ParsePush;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;
    invoke-static {}, Lcom/parse/ParsePush;->access$100()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v1

    const-class v2, Lcom/parse/ParseInstallation;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Can only push to a query for Installations"

    .line 132
    # invokes: Lcom/parse/ParsePush;->checkArgument(ZLjava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush$State$Builder;->channelSet:Ljava/util/Set;

    .line 137
    iput-object p1, p0, Lcom/parse/ParsePush$State$Builder;->query:Lcom/parse/ParseQuery;

    .line 138
    return-object p0

    :cond_0
    move v0, v2

    .line 129
    goto :goto_0

    :cond_1
    move v1, v2

    .line 130
    goto :goto_1
.end method
