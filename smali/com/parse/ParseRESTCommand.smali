.class Lcom/parse/ParseRESTCommand;
.super Lcom/parse/ParseRequest;
.source "ParseRESTCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseRESTCommand$Builder;,
        Lcom/parse/ParseRESTCommand$Init;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseRequest",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field static final HEADER_APPLICATION_ID:Ljava/lang/String; = "X-Parse-Application-Id"

.field static final HEADER_APP_BUILD_VERSION:Ljava/lang/String; = "X-Parse-App-Build-Version"

.field static final HEADER_APP_DISPLAY_VERSION:Ljava/lang/String; = "X-Parse-App-Display-Version"

.field static final HEADER_CLIENT_KEY:Ljava/lang/String; = "X-Parse-Client-Key"

.field static final HEADER_CLIENT_VERSION:Ljava/lang/String; = "X-Parse-Client-Version"

.field static final HEADER_INSTALLATION_ID:Ljava/lang/String; = "X-Parse-Installation-Id"

.field private static final HEADER_MASTER_KEY:Ljava/lang/String; = "X-Parse-Master-Key"

.field static final HEADER_OS_VERSION:Ljava/lang/String; = "X-Parse-OS-Version"

.field private static final HEADER_SESSION_TOKEN:Ljava/lang/String; = "X-Parse-Session-Token"

.field private static final PARAMETER_METHOD_OVERRIDE:Ljava/lang/String; = "_method"

.field static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field static server:Ljava/net/URL;


# instance fields
.field httpPath:Ljava/lang/String;

.field private installationId:Ljava/lang/String;

.field final jsonParameters:Lorg/json/JSONObject;

.field private localId:Ljava/lang/String;

.field public masterKey:Ljava/lang/String;

.field private operationSetUUID:Ljava/lang/String;

.field private final sessionToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseRESTCommand;->server:Ljava/net/URL;

    return-void
.end method

.method constructor <init>(Lcom/parse/ParseRESTCommand$Init;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseRESTCommand$Init",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "builder":Lcom/parse/ParseRESTCommand$Init;, "Lcom/parse/ParseRESTCommand$Init<*>;"
    # getter for: Lcom/parse/ParseRESTCommand$Init;->method:Lcom/parse/http/ParseHttpRequest$Method;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$000(Lcom/parse/ParseRESTCommand$Init;)Lcom/parse/http/ParseHttpRequest$Method;

    move-result-object v0

    # getter for: Lcom/parse/ParseRESTCommand$Init;->httpPath:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$100(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/ParseRESTCommand;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseRequest;-><init>(Lcom/parse/http/ParseHttpRequest$Method;Ljava/lang/String;)V

    .line 168
    # getter for: Lcom/parse/ParseRESTCommand$Init;->sessionToken:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$200(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    .line 169
    # getter for: Lcom/parse/ParseRESTCommand$Init;->installationId:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$300(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->installationId:Ljava/lang/String;

    .line 170
    iget-object v0, p1, Lcom/parse/ParseRESTCommand$Init;->masterKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->masterKey:Ljava/lang/String;

    .line 172
    # getter for: Lcom/parse/ParseRESTCommand$Init;->httpPath:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$100(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    .line 173
    # getter for: Lcom/parse/ParseRESTCommand$Init;->jsonParameters:Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$400(Lcom/parse/ParseRESTCommand$Init;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    .line 174
    # getter for: Lcom/parse/ParseRESTCommand$Init;->operationSetUUID:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$500(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->operationSetUUID:Ljava/lang/String;

    .line 175
    # getter for: Lcom/parse/ParseRESTCommand$Init;->localId:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$600(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
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
    .line 138
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p3, :cond_0

    .line 141
    invoke-static {}, Lcom/parse/NoObjectsEncoder;->get()Lcom/parse/NoObjectsEncoder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/parse/NoObjectsEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 138
    :goto_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 143
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/http/ParseHttpRequest$Method;
    .param p3, "jsonParameters"    # Lorg/json/JSONObject;
    .param p4, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/http/ParseHttpRequest$Method;
    .param p3, "jsonParameters"    # Lorg/json/JSONObject;
    .param p4, "localId"    # Ljava/lang/String;
    .param p5, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p1}, Lcom/parse/ParseRESTCommand;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/parse/ParseRequest;-><init>(Lcom/parse/http/ParseHttpRequest$Method;Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    .line 161
    iput-object p3, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    .line 162
    iput-object p4, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    .line 163
    iput-object p5, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    .line 164
    return-void
.end method

.method private static addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V
    .locals 8
    .param p0, "stringer"    # Lorg/json/JSONStringer;
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 352
    instance-of v6, p1, Lorg/json/JSONObject;

    if-eqz v6, :cond_2

    .line 353
    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-object v5, p1

    .line 354
    check-cast v5, Lorg/json/JSONObject;

    .line 355
    .local v5, "object":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 356
    .local v3, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v4, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 358
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 362
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 363
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 364
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/parse/ParseRESTCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    goto :goto_1

    .line 367
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 382
    .end local v3    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "object":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 371
    :cond_2
    instance-of v6, p1, Lorg/json/JSONArray;

    if-eqz v6, :cond_4

    move-object v0, p1

    .line 372
    check-cast v0, Lorg/json/JSONArray;

    .line 373
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 375
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/parse/ParseRESTCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 377
    :cond_3
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    goto :goto_2

    .line 381
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p0, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_2
.end method

.method private static createUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "httpPath"    # Ljava/lang/String;

    .prologue
    .line 197
    if-nez p0, :cond_0

    .line 198
    sget-object v1, Lcom/parse/ParseRESTCommand;->server:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    sget-object v2, Lcom/parse/ParseRESTCommand;->server:Ljava/net/URL;

    invoke-direct {v1, v2, p0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseRESTCommand;
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 179
    const-string v0, "httpPath"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "httpPath":Ljava/lang/String;
    const-string v0, "httpMethod"

    .line 181
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/http/ParseHttpRequest$Method;->fromString(Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Method;

    move-result-object v2

    .line 182
    .local v2, "httpMethod":Lcom/parse/http/ParseHttpRequest$Method;
    const-string v0, "sessionToken"

    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "sessionToken":Ljava/lang/String;
    const-string v0, "localId"

    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "localId":Ljava/lang/String;
    const-string v0, "parameters"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 186
    .local v3, "jsonParameters":Lorg/json/JSONObject;
    new-instance v0, Lcom/parse/ParseRESTCommand;

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getLocalIdManager()Lcom/parse/LocalIdManager;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v0

    return-object v0
.end method

.method protected static getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "container"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 523
    .local p1, "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    instance-of v5, p0, Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    move-object v4, p0

    .line 524
    check-cast v4, Lorg/json/JSONObject;

    .line 525
    .local v4, "object":Lorg/json/JSONObject;
    const-string v5, "Pointer"

    const-string v6, "__type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "localId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 526
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "container":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 530
    .restart local v4    # "object":Lorg/json/JSONObject;
    .restart local p0    # "container":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 531
    .local v3, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 532
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 533
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/parse/ParseRESTCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 537
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_2
    instance-of v5, p0, Lorg/json/JSONArray;

    if-eqz v5, :cond_0

    move-object v0, p0

    .line 538
    check-cast v0, Lorg/json/JSONArray;

    .line 539
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 540
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/parse/ParseRESTCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static isValidCommandJSONObject(Lorg/json/JSONObject;)Z
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 385
    const-string v0, "httpPath"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isValidOldFormatCommandJSONObject(Lorg/json/JSONObject;)Z
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 390
    const-string v0, "op"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private maybeChangeServerOperation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 444
    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 445
    invoke-static {}, Lcom/parse/ParseRESTCommand;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/LocalIdManager;->getObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "objectId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 447
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    .line 449
    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/parse/ParseRESTCommand;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseRESTCommand;->url:Ljava/lang/String;

    .line 451
    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    const-string v2, "classes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/http/ParseHttpRequest$Method;

    sget-object v2, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    if-ne v1, v2, :cond_0

    .line 452
    sget-object v1, Lcom/parse/http/ParseHttpRequest$Method;->PUT:Lcom/parse/http/ParseHttpRequest$Method;

    iput-object v1, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/http/ParseHttpRequest$Method;

    .line 456
    .end local v0    # "objectId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 344
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 345
    .local v0, "stringer":Lorg/json/JSONStringer;
    invoke-static {v0, p0}, Lcom/parse/ParseRESTCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    .line 346
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected addAdditionalHeaders(Lcom/parse/http/ParseHttpRequest$Builder;)V
    .locals 2
    .param p1, "requestBuilder"    # Lcom/parse/http/ParseHttpRequest$Builder;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->installationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "X-Parse-Installation-Id"

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->installationId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/parse/http/ParseHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 213
    const-string v0, "X-Parse-Session-Token"

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/parse/http/ParseHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->masterKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 216
    const-string v0, "X-Parse-Master-Key"

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->masterKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/parse/http/ParseHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;

    .line 218
    :cond_2
    return-void
.end method

.method enableRetrying()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/parse/ParseRESTCommand;->setMaxRetries(I)V

    .line 192
    return-void
.end method

.method public executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p1, "client"    # Lcom/parse/ParseHttpClient;
    .param p2, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .param p3, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/ProgressCallback;",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    .local p4, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand;->resolveLocalIds()V

    .line 272
    invoke-super {p0, p1, p2, p3, p4}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 318
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 320
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/parse/ParseRESTCommand;->toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 329
    .local v1, "json":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    :cond_0
    const-string v2, "ParseRESTCommand.%s.%s.%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/http/ParseHttpRequest$Method;

    .line 335
    invoke-virtual {v5}, Lcom/parse/http/ParseHttpRequest$Method;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    .line 336
    invoke-static {v5}, Lcom/parse/ParseDigestUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 337
    invoke-static {v1}, Lcom/parse/ParseDigestUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 333
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 321
    .end local v1    # "json":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 325
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v1, ""

    .restart local v1    # "json":Ljava/lang/String;
    goto :goto_0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationSetUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->operationSetUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method protected newBody(Lcom/parse/ProgressCallback;)Lcom/parse/http/ParseHttpBody;
    .locals 7
    .param p1, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 243
    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    if-nez v3, :cond_0

    .line 244
    const-string v3, "Trying to execute a %s command without body parameters."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/http/ParseHttpRequest$Method;

    .line 245
    invoke-virtual {v6}, Lcom/parse/http/ParseHttpRequest$Method;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 244
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    .line 251
    .local v2, "parameters":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/http/ParseHttpRequest$Method;

    sget-object v4, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/http/ParseHttpRequest$Method;

    sget-object v4, Lcom/parse/http/ParseHttpRequest$Method;->DELETE:Lcom/parse/http/ParseHttpRequest$Method;

    if-ne v3, v4, :cond_2

    .line 256
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "parameters":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v2    # "parameters":Lorg/json/JSONObject;
    const-string v3, "_method"

    iget-object v4, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/http/ParseHttpRequest$Method;

    invoke-virtual {v4}, Lcom/parse/http/ParseHttpRequest$Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    :cond_2
    new-instance v3, Lcom/parse/ParseByteArrayHttpBody;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/json"

    invoke-direct {v3, v4, v5}, Lcom/parse/ParseByteArrayHttpBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 260
    .end local v2    # "parameters":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected newRequest(Lcom/parse/http/ParseHttpRequest$Method;Ljava/lang/String;Lcom/parse/ProgressCallback;)Lcom/parse/http/ParseHttpRequest;
    .locals 3
    .param p1, "method"    # Lcom/parse/http/ParseHttpRequest$Method;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 226
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/parse/http/ParseHttpRequest$Method;->PUT:Lcom/parse/http/ParseHttpRequest$Method;

    if-eq p1, v2, :cond_0

    .line 232
    sget-object v2, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    invoke-super {p0, v2, p2, p3}, Lcom/parse/ParseRequest;->newRequest(Lcom/parse/http/ParseHttpRequest$Method;Ljava/lang/String;Lcom/parse/ProgressCallback;)Lcom/parse/http/ParseHttpRequest;

    move-result-object v0

    .line 236
    .local v0, "request":Lcom/parse/http/ParseHttpRequest;
    :goto_0
    new-instance v1, Lcom/parse/http/ParseHttpRequest$Builder;

    invoke-direct {v1, v0}, Lcom/parse/http/ParseHttpRequest$Builder;-><init>(Lcom/parse/http/ParseHttpRequest;)V

    .line 237
    .local v1, "requestBuilder":Lcom/parse/http/ParseHttpRequest$Builder;
    invoke-virtual {p0, v1}, Lcom/parse/ParseRESTCommand;->addAdditionalHeaders(Lcom/parse/http/ParseHttpRequest$Builder;)V

    .line 238
    invoke-virtual {v1}, Lcom/parse/http/ParseHttpRequest$Builder;->build()Lcom/parse/http/ParseHttpRequest;

    move-result-object v2

    return-object v2

    .line 234
    .end local v0    # "request":Lcom/parse/http/ParseHttpRequest;
    .end local v1    # "requestBuilder":Lcom/parse/http/ParseHttpRequest$Builder;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/parse/ParseRequest;->newRequest(Lcom/parse/http/ParseHttpRequest$Method;Ljava/lang/String;Lcom/parse/ProgressCallback;)Lcom/parse/http/ParseHttpRequest;

    move-result-object v0

    .restart local v0    # "request":Lcom/parse/http/ParseHttpRequest;
    goto :goto_0
.end method

.method protected onResponseAsync(Lcom/parse/http/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 7
    .param p1, "response"    # Lcom/parse/http/ParseHttpResponse;
    .param p2, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/http/ParseHttpResponse;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x1f4

    .line 280
    const/4 v3, 0x0

    .line 282
    .local v3, "responseStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 283
    new-instance v0, Ljava/lang/String;

    invoke-static {v3}, Lcom/parse/ParseIOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    .local v0, "content":Ljava/lang/String;
    invoke-static {v3}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 294
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpResponse;->getStatusCode()I

    move-result v4

    .line 295
    .local v4, "statusCode":I
    const/16 v5, 0xc8

    if-lt v4, v5, :cond_2

    const/16 v5, 0x258

    if-ge v4, v5, :cond_2

    .line 298
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 300
    .local v2, "json":Lorg/json/JSONObject;
    const/16 v5, 0x190

    if-lt v4, v5, :cond_0

    if-ge v4, v6, :cond_0

    .line 301
    const-string v5, "code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "error"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/parse/ParseRESTCommand;->newPermanentException(ILjava/lang/String;)Lcom/parse/ParseException;

    move-result-object v5

    invoke-static {v5}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 312
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "statusCode":I
    :goto_0
    return-object v5

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v1}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 287
    invoke-static {v3}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-static {v3}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v5

    .line 302
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v4    # "statusCode":I
    :cond_0
    if-lt v4, v6, :cond_1

    .line 303
    :try_start_3
    const-string v5, "code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "error"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/parse/ParseRESTCommand;->newTemporaryException(ILjava/lang/String;)Lcom/parse/ParseException;

    move-result-object v5

    invoke-static {v5}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v5

    goto :goto_0

    .line 306
    :cond_1
    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    goto :goto_0

    .line 307
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 308
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "bad json response"

    invoke-virtual {p0, v5, v1}, Lcom/parse/ParseRESTCommand;->newTemporaryException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/parse/ParseException;

    move-result-object v5

    invoke-static {v5}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v5

    goto :goto_0

    .line 312
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v0}, Lcom/parse/ParseRESTCommand;->newPermanentException(ILjava/lang/String;)Lcom/parse/ParseException;

    move-result-object v5

    invoke-static {v5}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v5

    goto :goto_0
.end method

.method public releaseLocalIds()V
    .locals 5

    .prologue
    .line 506
    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 507
    invoke-static {}, Lcom/parse/ParseRESTCommand;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/parse/LocalIdManager;->releaseLocalIdOnDisk(Ljava/lang/String;)V

    .line 510
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v1, "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-static {v3, v1}, Lcom/parse/ParseRESTCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 512
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 513
    .local v2, "pointer":Lorg/json/JSONObject;
    const-string v4, "localId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 514
    .local v0, "localId":Ljava/lang/String;
    invoke-static {}, Lcom/parse/ParseRESTCommand;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/parse/LocalIdManager;->releaseLocalIdOnDisk(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    .end local v0    # "localId":Ljava/lang/String;
    .end local v1    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v2    # "pointer":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 519
    :cond_1
    return-void
.end method

.method public resolveLocalIds()V
    .locals 6

    .prologue
    .line 460
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v1, "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    iget-object v4, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-static {v4, v1}, Lcom/parse/ParseRESTCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 462
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 463
    .local v3, "pointer":Lorg/json/JSONObject;
    const-string v5, "localId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 464
    .local v0, "localId":Ljava/lang/String;
    invoke-static {}, Lcom/parse/ParseRESTCommand;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/parse/LocalIdManager;->getObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "objectId":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 466
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Tried to serialize a command referencing a new, unsaved object."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 473
    .end local v0    # "localId":Ljava/lang/String;
    .end local v1    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v2    # "objectId":Ljava/lang/String;
    .end local v3    # "pointer":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 476
    :goto_1
    return-void

    .line 469
    .restart local v0    # "localId":Ljava/lang/String;
    .restart local v1    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v2    # "objectId":Ljava/lang/String;
    .restart local v3    # "pointer":Lorg/json/JSONObject;
    :cond_0
    const-string v5, "objectId"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string v5, "localId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 472
    .end local v0    # "localId":Ljava/lang/String;
    .end local v2    # "objectId":Ljava/lang/String;
    .end local v3    # "pointer":Lorg/json/JSONObject;
    :cond_1
    invoke-direct {p0}, Lcom/parse/ParseRESTCommand;->maybeChangeServerOperation()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public retainLocalIds()V
    .locals 5

    .prologue
    .line 484
    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 485
    invoke-static {}, Lcom/parse/ParseRESTCommand;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/parse/LocalIdManager;->retainLocalIdOnDisk(Ljava/lang/String;)V

    .line 489
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v1, "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-static {v3, v1}, Lcom/parse/ParseRESTCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 491
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 492
    .local v2, "pointer":Lorg/json/JSONObject;
    const-string v4, "localId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 493
    .local v0, "localId":Ljava/lang/String;
    invoke-static {}, Lcom/parse/ParseRESTCommand;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/parse/LocalIdManager;->retainLocalIdOnDisk(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    .end local v0    # "localId":Ljava/lang/String;
    .end local v1    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v2    # "pointer":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 498
    :cond_1
    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    .line 429
    return-void
.end method

.method setOperationSetUUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "operationSetUUID"    # Ljava/lang/String;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/parse/ParseRESTCommand;->operationSetUUID:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 394
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 396
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 397
    const-string v2, "httpPath"

    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    :cond_0
    const-string v2, "httpMethod"

    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/http/ParseHttpRequest$Method;

    invoke-virtual {v3}, Lcom/parse/http/ParseHttpRequest$Method;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 401
    const-string v2, "parameters"

    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 404
    const-string v2, "sessionToken"

    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    :cond_2
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 407
    const-string v2, "localId"

    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_3
    return-object v1

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
