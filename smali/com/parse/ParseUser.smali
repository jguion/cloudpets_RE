.class public Lcom/parse/ParseUser;
.super Lcom/parse/ParseObject;
.source "ParseUser.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_User"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseUser$State;
    }
.end annotation


# static fields
.field private static final KEY_AUTH_DATA:Ljava/lang/String; = "authData"

.field private static final KEY_EMAIL:Ljava/lang/String; = "email"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "password"

.field private static final KEY_SESSION_TOKEN:Ljava/lang/String; = "sessionToken"

.field private static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static final READ_ONLY_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static autoUserEnabled:Z

.field private static final isAutoUserEnabledMutex:Ljava/lang/Object;


# instance fields
.field private isCurrentUser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sessionToken"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "authData"

    aput-object v2, v0, v1

    .line 39
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseUser;->READ_ONLY_KEYS:Ljava/util/List;

    .line 1426
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 164
    return-void
.end method

.method static synthetic access$200(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseUser;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->restoreAnonymity(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$400(Lcom/parse/ParseUser;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->getAuthData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->removeAuthData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/parse/ParseUser;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    return-void
.end method

.method static synthetic access$700(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/util/Map;Lbolts/Task;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Lbolts/Task;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Ljava/util/Map;Lbolts/Task;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Lbolts/Task;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->upgradeToRevocableSessionAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/ParseUser;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->setSessionTokenInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static become(Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1
    .param p0, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 862
    invoke-static {p0}, Lcom/parse/ParseUser;->becomeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public static becomeInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p0, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 828
    if-nez p0, :cond_0

    .line 829
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a sessionToken for the user to log in with"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getUserController()Lcom/parse/ParseUserController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/parse/ParseUserController;->getUserAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$10;

    invoke-direct {v1}, Lcom/parse/ParseUser$10;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static becomeInBackground(Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1
    .param p0, "sessionToken"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 878
    invoke-static {p0}, Lcom/parse/ParseUser;->becomeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 879
    return-void
.end method

.method static disableAutomaticUser()V
    .locals 2

    .prologue
    .line 1445
    sget-object v1, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1446
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1447
    monitor-exit v1

    .line 1448
    return-void

    .line 1447
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static enableAutomaticUser()V
    .locals 2

    .prologue
    .line 1439
    sget-object v1, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1440
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1441
    monitor-exit v1

    .line 1442
    return-void

    .line 1441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static enableRevocableSessionInBackground()Lbolts/Task;
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
    .line 1473
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    new-instance v1, Lcom/parse/NetworkUserController;

    .line 1474
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/parse/NetworkUserController;-><init>(Lcom/parse/ParseHttpClient;Z)V

    .line 1473
    invoke-virtual {v0, v1}, Lcom/parse/ParseCorePlugins;->registerUserController(Lcom/parse/ParseUserController;)V

    .line 1476
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parse/ParseCurrentUserController;->getAsync(Z)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$17;

    invoke-direct {v1}, Lcom/parse/ParseUser$17;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private getAuthData(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static getAuthenticationManager()Lcom/parse/ParseAuthenticationManager;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getAuthenticationManager()Lcom/parse/ParseAuthenticationManager;

    move-result-object v0

    return-object v0
.end method

.method static getCurrentSessionToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 915
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 916
    .local v0, "current":Lcom/parse/ParseUser;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getCurrentSessionTokenAsync()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 921
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ParseCurrentUserController;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUser()Lcom/parse/ParseUser;
    .locals 1

    .prologue
    .line 893
    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/parse/ParseUser;->getCurrentUser(Z)Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentUser(Z)Lcom/parse/ParseUser;
    .locals 2
    .param p0, "shouldAutoCreateUser"    # Z

    .prologue
    .line 906
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/parse/ParseCurrentUserController;->getAsync(Z)Lbolts/Task;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    :goto_0
    return-object v1

    .line 907
    :catch_0
    move-exception v0

    .line 909
    .local v0, "e":Lcom/parse/ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getCurrentUserAsync()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 883
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ParseCurrentUserController;->getAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static getCurrentUserController()Lcom/parse/ParseCurrentUserController;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v0

    return-object v0
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
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

    .prologue
    .line 47
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method static getUserController()Lcom/parse/ParseUserController;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getUserController()Lcom/parse/ParseUserController;

    move-result-object v0

    return-object v0
.end method

.method static isAutomaticUserEnabled()Z
    .locals 2

    .prologue
    .line 1451
    sget-object v1, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1452
    :try_start_0
    sget-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    monitor-exit v1

    return v0

    .line 1453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private linkWithAsync(Ljava/lang/String;Ljava/util/Map;Lbolts/Task;Ljava/lang/String;)Lbolts/Task;
    .locals 5
    .param p1, "authType"    # Ljava/lang/String;
    .param p4, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1269
    .local p2, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1270
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    .line 1271
    .local v0, "isLazy":Z
    const-string v2, "anonymous"

    invoke-direct {p0, v2}, Lcom/parse/ParseUser;->getAuthData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1273
    .local v1, "oldAnonymousData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    .line 1274
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    .line 1276
    invoke-virtual {p0, p4, v0, p3}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;ZLbolts/Task;)Lbolts/Task;

    move-result-object v2

    new-instance v4, Lcom/parse/ParseUser$14;

    invoke-direct {v4, p0, v1, p1}, Lcom/parse/ParseUser$14;-><init>(Lcom/parse/ParseUser;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 1288
    .end local v0    # "isLazy":Z
    .end local v1    # "oldAnonymousData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private linkWithAsync(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "authType"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1295
    .local p2, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/parse/ParseUser$15;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 755
    if-nez p0, :cond_0

    .line 756
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a username for the user to log in with"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_0
    if-nez p1, :cond_1

    .line 759
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a password for the user to log in with"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_1
    invoke-static {}, Lcom/parse/ParseUser;->getUserController()Lcom/parse/ParseUserController;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/parse/ParseUserController;->logInAsync(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$9;

    invoke-direct {v1}, Lcom/parse/ParseUser$9;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 812
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 813
    return-void
.end method

.method public static logInWithInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
    .locals 4
    .param p0, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1106
    .local p1, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 1107
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid authType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1110
    :cond_0
    new-instance v0, Lcom/parse/ParseUser$11;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseUser$11;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 1130
    .local v0, "logInWithTask":Lbolts/Continuation;, "Lbolts/Continuation<Ljava/lang/Void;Lbolts/Task<Lcom/parse/ParseUser;>;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/parse/ParseCurrentUserController;->getAsync(Z)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$12;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParseUser$12;-><init>(Ljava/lang/String;Ljava/util/Map;Lbolts/Continuation;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static logOut()V
    .locals 1

    .prologue
    .line 977
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->logOutInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    :goto_0
    return-void

    .line 978
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static logOutInBackground()Lbolts/Task;
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
    .line 950
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ParseCurrentUserController;->logOutAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static logOutInBackground(Lcom/parse/LogOutCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/parse/LogOutCallback;

    .prologue
    .line 961
    invoke-static {}, Lcom/parse/ParseUser;->logOutInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 962
    return-void
.end method

.method static pinCurrentUserIfNeededAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .param p0, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/parse/ParseCurrentUserController;->setIfNeededAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static registerAuthenticationCallback(Ljava/lang/String;Lcom/parse/AuthenticationCallback;)V
    .locals 1
    .param p0, "authType"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/AuthenticationCallback;

    .prologue
    .line 1089
    invoke-static {}, Lcom/parse/ParseUser;->getAuthenticationManager()Lcom/parse/ParseAuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/parse/ParseAuthenticationManager;->register(Ljava/lang/String;Lcom/parse/AuthenticationCallback;)V

    .line 1090
    return-void
.end method

.method private removeAuthData(Ljava/lang/String;)V
    .locals 3
    .param p1, "authType"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 353
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    .line 354
    .local v0, "newAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v1, "authData"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseUser;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    monitor-exit v2

    .line 357
    return-void

    .line 356
    .end local v0    # "newAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static requestPasswordReset(Ljava/lang/String;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1047
    invoke-static {p0}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 1048
    return-void
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
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
    .line 1030
    invoke-static {}, Lcom/parse/ParseUser;->getUserController()Lcom/parse/ParseUserController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/parse/ParseUserController;->requestPasswordResetAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;Lcom/parse/RequestPasswordResetCallback;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/RequestPasswordResetCallback;

    .prologue
    .line 1065
    invoke-static {p0}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1066
    return-void
.end method

.method private restoreAnonymity(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "anonymousData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    if-eqz p1, :cond_0

    .line 444
    :try_start_0
    const-string v0, "anonymous"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    .line 446
    :cond_0
    monitor-exit v1

    .line 447
    return-void

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 926
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/parse/ParseCurrentUserController;->setAsync(Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private setSessionTokenInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 4
    .param p1, "newSessionToken"    # Ljava/lang/String;
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
    .line 313
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v1

    .line 315
    .local v1, "state":Lcom/parse/ParseUser$State;
    invoke-virtual {v1}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    monitor-exit v3

    .line 322
    :goto_0
    return-object v2

    .line 319
    :cond_0
    invoke-virtual {v1}, Lcom/parse/ParseUser$State;->newBuilder()Lcom/parse/ParseUser$State$Builder;

    move-result-object v2

    .line 320
    invoke-virtual {v2, p1}, Lcom/parse/ParseUser$State$Builder;->sessionToken(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;

    move-result-object v0

    .line 321
    .local v0, "builder":Lcom/parse/ParseUser$State$Builder;
    invoke-virtual {v0}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/parse/ParseUser;->setState(Lcom/parse/ParseObject$State;)V

    .line 322
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 323
    .end local v0    # "builder":Lcom/parse/ParseUser$State$Builder;
    .end local v1    # "state":Lcom/parse/ParseUser$State;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private stripAnonymity()V
    .locals 3

    .prologue
    .line 429
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 432
    const-string v0, "anonymous"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    .line 437
    :cond_0
    :goto_0
    monitor-exit v1

    .line 438
    return-void

    .line 434
    :cond_1
    const-string v0, "anonymous"

    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->removeAuthData(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synchronizeAuthDataAsync(Lcom/parse/ParseAuthenticationManager;Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .param p1, "manager"    # Lcom/parse/ParseAuthenticationManager;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseAuthenticationManager;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1252
    .local p3, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, p2, p3}, Lcom/parse/ParseAuthenticationManager;->restoreAuthenticationAsync(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$13;

    invoke-direct {v1, p0, p2}, Lcom/parse/ParseUser$13;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private upgradeToRevocableSessionAsync(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 1498
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, "sessionToken":Ljava/lang/String;
    new-instance v1, Lcom/parse/ParseUser$20;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseUser$20;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$19;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$19;-><init>(Lcom/parse/ParseUser;)V

    .line 1504
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 1499
    return-object v1
.end method


# virtual methods
.method cleanUpAuthDataAsync()Lbolts/Task;
    .locals 9
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
    const/4 v8, 0x0

    .line 242
    invoke-static {}, Lcom/parse/ParseUser;->getAuthenticationManager()Lcom/parse/ParseAuthenticationManager;

    move-result-object v1

    .line 244
    .local v1, "controller":Lcom/parse/ParseAuthenticationManager;
    iget-object v7, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v7

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/ParseUser$State;->authData()Ljava/util/Map;

    move-result-object v0

    .line 246
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 247
    const/4 v6, 0x0

    invoke-static {v6}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v6

    monitor-exit v7

    .line 266
    :goto_0
    return-object v6

    .line 249
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 253
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 254
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 255
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 256
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 257
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6, v8}, Lcom/parse/ParseAuthenticationManager;->restoreAuthenticationAsync(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    move-result-object v6

    invoke-virtual {v6}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 249
    .end local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v5    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 261
    .restart local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v5    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/ParseUser$State;->newBuilder()Lcom/parse/ParseUser$State$Builder;

    move-result-object v6

    .line 262
    invoke-virtual {v6, v0}, Lcom/parse/ParseUser$State$Builder;->authData(Ljava/util/Map;)Lcom/parse/ParseUser$State$Builder;

    move-result-object v6

    .line 263
    invoke-virtual {v6}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v4

    .line 264
    .local v4, "newState":Lcom/parse/ParseUser$State;
    invoke-virtual {p0, v4}, Lcom/parse/ParseUser;->setState(Lcom/parse/ParseObject$State;)V

    .line 266
    invoke-static {v5}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v6

    goto :goto_0
.end method

.method public bridge synthetic fetch()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetch()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetch()Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-super {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method fetchAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 3
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
    .line 543
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 568
    :cond_0
    :goto_0
    return-object v0

    .line 547
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->fetchAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    .line 549
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    new-instance v1, Lcom/parse/ParseUser$5;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$5;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$4;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$4;-><init>(Lcom/parse/ParseUser;)V

    .line 555
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$3;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$3;-><init>(Lcom/parse/ParseUser;)V

    .line 560
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method fetchFromLocalDatastoreAsync()Lbolts/Task;
    .locals 1
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
    .line 1418
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1419
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 1421
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/parse/ParseObject;->fetchFromLocalDatastoreAsync()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetchIfNeeded()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetchIfNeeded()Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1071
    invoke-super {p0}, Lcom/parse/ParseObject;->fetchIfNeeded()Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method getAuthData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 328
    :try_start_0
    const-string v1, "authData"

    invoke-virtual {p0, v1}, Lcom/parse/ParseUser;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 329
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 335
    .restart local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    monitor-exit v2

    return-object v0

    .line 336
    .end local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getState()Lcom/parse/ParseObject$State;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v0

    return-object v0
.end method

.method getState()Lcom/parse/ParseUser$State;
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 2
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
    .line 272
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 273
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 274
    const-string v1, "password"

    invoke-virtual {p2, v1}, Lcom/parse/ParseOperationSet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 272
    .end local v0    # "success":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthenticated()Z
    .locals 4

    .prologue
    .line 203
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 204
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 205
    .local v0, "current":Lcom/parse/ParseUser;
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    .line 205
    return v1

    .line 208
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 209
    .end local v0    # "current":Lcom/parse/ParseUser;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isCurrentUser()Z
    .locals 2

    .prologue
    .line 293
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    monitor-exit v1

    return v0

    .line 295
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
    .line 173
    sget-object v0, Lcom/parse/ParseUser;->READ_ONLY_KEYS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLazy()Z
    .locals 2

    .prologue
    .line 192
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLinked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "authType"    # Ljava/lang/String;

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    .line 1217
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser$State;->isNew()Z

    move-result v0

    return v0
.end method

.method public linkWithInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
    .locals 3
    .param p1, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1317
    .local p2, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid authType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1320
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method logOutAsync()Lbolts/Task;
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
    .line 986
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->logOutAsync(Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method logOutAsync(Z)Lbolts/Task;
    .locals 8
    .param p1, "revoke"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 990
    invoke-static {}, Lcom/parse/ParseUser;->getAuthenticationManager()Lcom/parse/ParseAuthenticationManager;

    move-result-object v0

    .line 991
    .local v0, "controller":Lcom/parse/ParseAuthenticationManager;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 994
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    iget-object v6, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 995
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;

    move-result-object v3

    .line 997
    .local v3, "oldSessionToken":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 998
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/parse/ParseAuthenticationManager;->deauthenticateAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1007
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "oldSessionToken":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1001
    .restart local v3    # "oldSessionToken":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParseUser$State;->newBuilder()Lcom/parse/ParseUser$State$Builder;

    move-result-object v5

    const/4 v7, 0x0

    .line 1002
    invoke-virtual {v5, v7}, Lcom/parse/ParseUser$State$Builder;->sessionToken(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;

    move-result-object v5

    const/4 v7, 0x0

    .line 1003
    invoke-virtual {v5, v7}, Lcom/parse/ParseUser$State$Builder;->isNew(Z)Lcom/parse/ParseUser$State$Builder;

    move-result-object v5

    .line 1004
    invoke-virtual {v5}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v2

    .line 1005
    .local v2, "newState":Lcom/parse/ParseUser$State;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 1006
    invoke-virtual {p0, v2}, Lcom/parse/ParseUser;->setState(Lcom/parse/ParseObject$State;)V

    .line 1007
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1009
    if-eqz p1, :cond_1

    .line 1010
    invoke-static {v3}, Lcom/parse/ParseSession;->revokeAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    :cond_1
    invoke-static {v4}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v5

    return-object v5
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method bridge synthetic newStateBuilder(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->newStateBuilder(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method newStateBuilder(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 178
    new-instance v0, Lcom/parse/ParseUser$State$Builder;

    invoke-direct {v0}, Lcom/parse/ParseUser$State$Builder;-><init>()V

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 419
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    :try_start_0
    const-string v0, "username"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    .line 424
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 425
    monitor-exit v1

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method putAuthData(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p2, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 345
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    .line 346
    .local v0, "newAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v1, "authData"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseUser;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    monitor-exit v2

    .line 349
    return-void

    .line 348
    .end local v0    # "newAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 214
    const-string v0, "username"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the username key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->remove(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method resolveLazinessAsync(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 1363
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1364
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1366
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->signUpAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    .line 1372
    :goto_0
    return-object v1

    .line 1369
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v0

    .line 1372
    .local v0, "operations":Lcom/parse/ParseOperationSet;
    new-instance v1, Lcom/parse/ParseUser$16;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseUser$16;-><init>(Lcom/parse/ParseUser;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {p1, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 1411
    .end local v0    # "operations":Lcom/parse/ParseOperationSet;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
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
    .line 475
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;ZLbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method saveAsync(Ljava/lang/String;ZLbolts/Task;)Lbolts/Task;
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "isLazy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
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
    .line 480
    .local p3, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    if-eqz p2, :cond_1

    .line 481
    invoke-virtual {p0, p3}, Lcom/parse/ParseUser;->resolveLazinessAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    .line 486
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    new-instance v1, Lcom/parse/ParseUser$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$2;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$1;-><init>(Lcom/parse/ParseUser;)V

    .line 493
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 501
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    return-object v0

    .line 483
    :cond_1
    invoke-super {p0, p1, p3}, Lcom/parse/ParseObject;->saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    .restart local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 397
    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    return-void
.end method

.method setIsCurrentUser(Z)V
    .locals 2
    .param p1, "isCurrentUser"    # Z

    .prologue
    .line 299
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_0
    iput-boolean p1, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 301
    monitor-exit v1

    .line 302
    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 383
    const-string v0, "password"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    return-void
.end method

.method setState(Lcom/parse/ParseObject$State;)V
    .locals 3
    .param p1, "newState"    # Lcom/parse/ParseObject$State;

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 507
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State$Builder;

    .line 509
    .local v0, "newStateBuilder":Lcom/parse/ParseUser$State$Builder;
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "sessionToken"

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 510
    const-string v1, "sessionToken"

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseUser$State$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "authData"

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 514
    const-string v1, "authData"

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseUser$State$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    .line 516
    :cond_1
    invoke-virtual {v0}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object p1

    .line 518
    .end local v0    # "newStateBuilder":Lcom/parse/ParseUser$State$Builder;
    :cond_2
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V

    .line 519
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 366
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    return-void
.end method

.method public signUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/parse/ParseUser;->signUpInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 721
    return-void
.end method

.method signUpAsync(Lbolts/Task;)Lbolts/Task;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 593
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    .line 594
    .local v2, "user":Lcom/parse/ParseUser;
    iget-object v10, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v10

    .line 595
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v9

    .line 596
    .local v9, "sessionToken":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username cannot be missing or blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10

    .line 679
    :goto_1
    return-object v0

    .line 595
    .end local v9    # "sessionToken":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 600
    .restart local v9    # "sessionToken":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Password cannot be missing or blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10

    goto :goto_1

    .line 702
    .end local v9    # "sessionToken":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 604
    .restart local v9    # "sessionToken":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 609
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v6

    .line 610
    .local v6, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "anonymous"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "anonymous"

    .line 611
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 612
    invoke-virtual {p0, v9, p1}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10

    goto :goto_1

    .line 616
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot sign up a user that has already signed up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10

    goto :goto_1

    .line 622
    .end local v6    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    iget-object v0, p0, Lcom/parse/ParseUser;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot sign up a user that is already signing up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10

    goto :goto_1

    .line 629
    :cond_5
    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 633
    if-ne p0, v2, :cond_6

    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to merge currentUser with itself."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10

    goto :goto_1

    .line 638
    :cond_6
    invoke-virtual {v2}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v7

    .line 639
    .local v7, "isLazy":Z
    invoke-virtual {v2}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, "oldUsername":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/parse/ParseUser;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 641
    .local v4, "oldPassword":Ljava/lang/String;
    const-string v0, "anonymous"

    invoke-direct {v2, v0}, Lcom/parse/ParseUser;->getAuthData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 643
    .local v5, "anonymousData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, p0}, Lcom/parse/ParseUser;->copyChangesFrom(Lcom/parse/ParseObject;)V

    .line 644
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/parse/ParseUser;->setUsername(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/parse/ParseUser;->setPassword(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lcom/parse/ParseUser;->revert()V

    .line 648
    invoke-virtual {v2, v9, v7, p1}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;ZLbolts/Task;)Lbolts/Task;

    move-result-object v11

    new-instance v0, Lcom/parse/ParseUser$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseUser$7;-><init>(Lcom/parse/ParseUser;Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v11, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10

    goto/16 :goto_1

    .line 677
    .end local v3    # "oldUsername":Ljava/lang/String;
    .end local v4    # "oldPassword":Ljava/lang/String;
    .end local v5    # "anonymousData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "isLazy":Z
    :cond_7
    invoke-virtual {p0}, Lcom/parse/ParseUser;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v8

    .line 679
    .local v8, "operations":Lcom/parse/ParseOperationSet;
    new-instance v0, Lcom/parse/ParseUser$8;

    invoke-direct {v0, p0, v8, v9}, Lcom/parse/ParseUser$8;-><init>(Lcom/parse/ParseUser;Lcom/parse/ParseOperationSet;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public signUpInBackground()Lbolts/Task;
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
    .line 584
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$6;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$6;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public signUpInBackground(Lcom/parse/SignUpCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SignUpCallback;

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/parse/ParseUser;->signUpInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 738
    return-void
.end method

.method synchronizeAllAuthDataAsync()Lbolts/Task;
    .locals 5
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
    .line 1226
    iget-object v4, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 1227
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1228
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    monitor-exit v4

    .line 1236
    :goto_0
    return-object v3

    .line 1230
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    .line 1231
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1232
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1233
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1234
    .local v1, "authType":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/parse/ParseUser;->synchronizeAuthDataAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1231
    .end local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "authType":Ljava/lang/String;
    .end local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1236
    .restart local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    :cond_1
    invoke-static {v2}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v3

    goto :goto_0
.end method

.method synchronizeAuthDataAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p1, "authType"    # Ljava/lang/String;
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
    .line 1241
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1242
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1243
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    .line 1247
    :goto_0
    return-object v1

    .line 1245
    :cond_0
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->getAuthData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1246
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    invoke-static {}, Lcom/parse/ParseUser;->getAuthenticationManager()Lcom/parse/ParseAuthenticationManager;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lcom/parse/ParseUser;->synchronizeAuthDataAsync(Lcom/parse/ParseAuthenticationManager;Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    move-result-object v1

    goto :goto_0

    .line 1246
    .end local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method toRest(Lcom/parse/ParseObject$State;Ljava/util/List;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 5
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
    .line 226
    .local p2, "operationSetQueue":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    move-object v0, p2

    .line 227
    .local v0, "cleanOperationSetQueue":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 228
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseOperationSet;

    .line 229
    .local v3, "operations":Lcom/parse/ParseOperationSet;
    const-string v4, "password"

    invoke-virtual {v3, v4}, Lcom/parse/ParseOperationSet;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    if-ne v0, p2, :cond_0

    .line 231
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "cleanOperationSetQueue":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    invoke-direct {v0, p2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 233
    .restart local v0    # "cleanOperationSetQueue":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    :cond_0
    new-instance v1, Lcom/parse/ParseOperationSet;

    invoke-direct {v1, v3}, Lcom/parse/ParseOperationSet;-><init>(Lcom/parse/ParseOperationSet;)V

    .line 234
    .local v1, "cleanOperations":Lcom/parse/ParseOperationSet;
    const-string v4, "password"

    invoke-virtual {v1, v4}, Lcom/parse/ParseOperationSet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v1    # "cleanOperations":Lcom/parse/ParseOperationSet;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v3    # "operations":Lcom/parse/ParseOperationSet;
    :cond_2
    invoke-super {p0, p1, v0, p3}, Lcom/parse/ParseObject;->toRest(Lcom/parse/ParseObject$State;Ljava/util/List;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v4

    return-object v4
.end method

.method public unlinkFromInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "authType"    # Ljava/lang/String;
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
    const/4 v0, 0x0

    .line 1335
    if-nez p1, :cond_0

    .line 1336
    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 1346
    :goto_0
    return-object v0

    .line 1339
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1340
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1341
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1343
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    .line 1344
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1346
    invoke-virtual {p0}, Lcom/parse/ParseUser;->saveInBackground()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method upgradeToRevocableSessionAsync()Lbolts/Task;
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
    .line 1489
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$18;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$18;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method validateDelete()V
    .locals 3

    .prologue
    .line 523
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 524
    :try_start_0
    invoke-super {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 525
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot delete a ParseUser that is not authenticated."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    return-void
.end method

.method validateSave()V
    .locals 4

    .prologue
    .line 451
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 452
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 453
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot save a ParseUser until it has been signed up. Call signUp first."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 460
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 457
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 458
    :cond_1
    monitor-exit v2

    .line 466
    :cond_2
    return-void

    .line 460
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 464
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 465
    .local v0, "current":Lcom/parse/ParseUser;
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 470
    .end local v0    # "current":Lcom/parse/ParseUser;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot save a ParseUser that is not authenticated."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method validateSaveEventually()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 282
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->isDirty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Lcom/parse/ParseException;

    const/4 v1, -0x1

    const-string v2, "Unable to saveEventually on a ParseUser with dirty password"

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    return-void
.end method
