.class public Lcom/parse/ParsePush;
.super Ljava/lang/Object;
.source "ParsePush.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParsePush$State;
    }
.end annotation


# static fields
.field static KEY_DATA_MESSAGE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePush"


# instance fields
.field final builder:Lcom/parse/ParsePush$State$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "alert"

    sput-object v0, Lcom/parse/ParsePush;->KEY_DATA_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lcom/parse/ParsePush$State$Builder;

    invoke-direct {v0}, Lcom/parse/ParsePush$State$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/parse/ParsePush;-><init>(Lcom/parse/ParsePush$State$Builder;)V

    .line 226
    return-void
.end method

.method private constructor <init>(Lcom/parse/ParsePush$State$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    .line 240
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParsePush;)V
    .locals 2
    .param p1, "push"    # Lcom/parse/ParsePush;

    .prologue
    .line 235
    new-instance v0, Lcom/parse/ParsePush$State$Builder;

    iget-object v1, p1, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v1}, Lcom/parse/ParsePush$State$Builder;->build()Lcom/parse/ParsePush$State;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/ParsePush$State$Builder;-><init>(Lcom/parse/ParsePush$State;)V

    invoke-direct {p0, v0}, Lcom/parse/ParsePush;-><init>(Lcom/parse/ParsePush$State$Builder;)V

    .line 236
    return-void
.end method

.method static synthetic access$000(ZLjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Z
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/parse/ParsePush;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100()Lcom/parse/ParseObjectSubclassingController;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/parse/ParsePush;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    return-object v0
.end method

.method private static checkArgument(ZLjava/lang/Object;)V
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/Object;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method

.method static getPushChannelsController()Lcom/parse/ParsePushChannelsController;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getPushChannelsController()Lcom/parse/ParsePushChannelsController;

    move-result-object v0

    return-object v0
.end method

.method static getPushController()Lcom/parse/ParsePushController;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getPushController()Lcom/parse/ParsePushController;

    move-result-object v0

    return-object v0
.end method

.method private static getSubclassingController()Lcom/parse/ParseObjectSubclassingController;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    return-object v0
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;)Lbolts/Task;
    .locals 2
    .param p0, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    new-instance v0, Lcom/parse/ParsePush;

    invoke-direct {v0}, Lcom/parse/ParsePush;-><init>()V

    .line 341
    .local v0, "push":Lcom/parse/ParsePush;
    invoke-virtual {v0, p1}, Lcom/parse/ParsePush;->setQuery(Lcom/parse/ParseQuery;)V

    .line 342
    invoke-virtual {v0, p0}, Lcom/parse/ParsePush;->setData(Lorg/json/JSONObject;)V

    .line 343
    invoke-virtual {v0}, Lcom/parse/ParsePush;->sendInBackground()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V
    .locals 1
    .param p0, "data"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/parse/SendCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;",
            "Lcom/parse/SendCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    invoke-static {p0, p1}, Lcom/parse/ParsePush;->sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 362
    return-void
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;)Lbolts/Task;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    new-instance v0, Lcom/parse/ParsePush;

    invoke-direct {v0}, Lcom/parse/ParsePush;-><init>()V

    .line 305
    .local v0, "push":Lcom/parse/ParsePush;
    invoke-virtual {v0, p1}, Lcom/parse/ParsePush;->setQuery(Lcom/parse/ParseQuery;)V

    .line 306
    invoke-virtual {v0, p0}, Lcom/parse/ParsePush;->setMessage(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Lcom/parse/ParsePush;->sendInBackground()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/SendCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;",
            "Lcom/parse/SendCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    invoke-static {p0, p1}, Lcom/parse/ParsePush;->sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 325
    return-void
.end method

.method public static subscribeInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "channel"    # Ljava/lang/String;
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
    .line 251
    invoke-static {}, Lcom/parse/ParsePush;->getPushChannelsController()Lcom/parse/ParsePushChannelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParsePushChannelsController;->subscribeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static subscribeInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "channel"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 264
    invoke-static {p0}, Lcom/parse/ParsePush;->subscribeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 265
    return-void
.end method

.method public static unsubscribeInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "channel"    # Ljava/lang/String;
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
    .line 276
    invoke-static {}, Lcom/parse/ParsePush;->getPushChannelsController()Lcom/parse/ParsePushChannelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParsePushChannelsController;->unsubscribeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unsubscribeInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "channel"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 288
    invoke-static {p0}, Lcom/parse/ParsePush;->unsubscribeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 289
    return-void
.end method


# virtual methods
.method public clearExpiration()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->expirationTime(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;

    .line 421
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->expirationTimeInterval(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;

    .line 422
    return-void
.end method

.method public send()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/parse/ParsePush;->sendInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 506
    return-void
.end method

.method public sendInBackground()Lbolts/Task;
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
    .line 486
    iget-object v1, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v1}, Lcom/parse/ParsePush$State$Builder;->build()Lcom/parse/ParsePush$State;

    move-result-object v0

    .line 487
    .local v0, "state":Lcom/parse/ParsePush$State;
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParsePush$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParsePush$1;-><init>(Lcom/parse/ParsePush;Lcom/parse/ParsePush$State;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public sendInBackground(Lcom/parse/SendCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SendCallback;

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/parse/ParsePush;->sendInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 517
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->channelSet(Ljava/util/Collection;)Lcom/parse/ParsePush$State$Builder;

    .line 371
    return-void
.end method

.method public setChannels(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "channels":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParsePush$State$Builder;->channelSet(Ljava/util/Collection;)Lcom/parse/ParsePush$State$Builder;

    .line 380
    return-void
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParsePush$State$Builder;->data(Lorg/json/JSONObject;)Lcom/parse/ParsePush$State$Builder;

    .line 462
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 402
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->expirationTime(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;

    .line 403
    return-void
.end method

.method public setExpirationTimeInterval(J)V
    .locals 3
    .param p1, "timeInterval"    # J

    .prologue
    .line 413
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->expirationTimeInterval(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;

    .line 414
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 469
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 471
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    sget-object v2, Lcom/parse/ParsePush;->KEY_DATA_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    invoke-virtual {p0, v0}, Lcom/parse/ParsePush;->setData(Lorg/json/JSONObject;)V

    .line 476
    return-void

    .line 472
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "com.parse.ParsePush"

    const-string v3, "JSONException in setMessage"

    invoke-static {v2, v3, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPushToAndroid(Z)V
    .locals 2
    .param p1, "pushToAndroid"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->pushToAndroid(Ljava/lang/Boolean;)Lcom/parse/ParsePush$State$Builder;

    .line 454
    return-void
.end method

.method public setPushToIOS(Z)V
    .locals 2
    .param p1, "pushToIOS"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->pushToIOS(Ljava/lang/Boolean;)Lcom/parse/ParsePush$State$Builder;

    .line 439
    return-void
.end method

.method public setQuery(Lcom/parse/ParseQuery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParsePush$State$Builder;->query(Lcom/parse/ParseQuery;)Lcom/parse/ParsePush$State$Builder;

    .line 392
    return-void
.end method
