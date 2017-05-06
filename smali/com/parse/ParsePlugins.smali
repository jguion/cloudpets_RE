.class Lcom/parse/ParsePlugins;
.super Ljava/lang/Object;
.source "ParsePlugins.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParsePlugins$Android;
    }
.end annotation


# static fields
.field private static final INSTALLATION_ID_LOCATION:Ljava/lang/String; = "installationId"

.field private static final LOCK:Ljava/lang/Object;

.field private static instance:Lcom/parse/ParsePlugins;


# instance fields
.field private final applicationId:Ljava/lang/String;

.field cacheDir:Ljava/io/File;

.field private final clientKey:Ljava/lang/String;

.field filesDir:Ljava/io/File;

.field private installationId:Lcom/parse/InstallationId;

.field final lock:Ljava/lang/Object;

.field parseDir:Ljava/io/File;

.field private restClient:Lcom/parse/ParseHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParsePlugins;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePlugins;->lock:Ljava/lang/Object;

    .line 69
    iput-object p1, p0, Lcom/parse/ParsePlugins;->applicationId:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/parse/ParsePlugins;->clientKey:Ljava/lang/String;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParsePlugins$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/parse/ParsePlugins$1;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/parse/ParsePlugins;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParsePlugins;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePlugins;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parse/ParsePlugins;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParsePlugins;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePlugins;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parse/ParsePlugins;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/parse/ParsePlugins;->createFileDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static createFileDir(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 229
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    :cond_0
    return-object p0
.end method

.method static get()Lcom/parse/ParsePlugins;
    .locals 2

    .prologue
    .line 46
    sget-object v1, Lcom/parse/ParsePlugins;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/parse/ParsePlugins;->instance:Lcom/parse/ParsePlugins;

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Lcom/parse/ParsePlugins;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParsePlugins;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/parse/ParsePlugins;->set(Lcom/parse/ParsePlugins;)V

    .line 34
    return-void
.end method

.method static reset()V
    .locals 2

    .prologue
    .line 52
    sget-object v1, Lcom/parse/ParsePlugins;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/ParsePlugins;->instance:Lcom/parse/ParsePlugins;

    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static set(Lcom/parse/ParsePlugins;)V
    .locals 3
    .param p0, "plugins"    # Lcom/parse/ParsePlugins;

    .prologue
    .line 37
    sget-object v1, Lcom/parse/ParsePlugins;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/parse/ParsePlugins;->instance:Lcom/parse/ParsePlugins;

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ParsePlugins is already initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 41
    :cond_0
    :try_start_1
    sput-object p0, Lcom/parse/ParsePlugins;->instance:Lcom/parse/ParsePlugins;

    .line 42
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    return-void
.end method


# virtual methods
.method applicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parse/ParsePlugins;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method clientKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parse/ParsePlugins;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method getCacheDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getFilesDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getParseDir()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method installationId()Lcom/parse/InstallationId;
    .locals 5

    .prologue
    .line 129
    iget-object v1, p0, Lcom/parse/ParsePlugins;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePlugins;->installationId:Lcom/parse/InstallationId;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/parse/InstallationId;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/parse/ParsePlugins;->getParseDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "installationId"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/parse/InstallationId;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/parse/ParsePlugins;->installationId:Lcom/parse/InstallationId;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePlugins;->installationId:Lcom/parse/InstallationId;

    monitor-exit v1

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method newHttpClient()Lcom/parse/ParseHttpClient;
    .locals 2

    .prologue
    .line 82
    const/16 v0, 0x2710

    .line 83
    .local v0, "socketOperationTimeout":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parse/ParseHttpClient;->createClient(ILandroid/net/SSLSessionCache;)Lcom/parse/ParseHttpClient;

    move-result-object v1

    return-object v1
.end method

.method restClient()Lcom/parse/ParseHttpClient;
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/parse/ParsePlugins;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePlugins;->restClient:Lcom/parse/ParseHttpClient;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/parse/ParsePlugins;->newHttpClient()Lcom/parse/ParseHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePlugins;->restClient:Lcom/parse/ParseHttpClient;

    .line 92
    iget-object v0, p0, Lcom/parse/ParsePlugins;->restClient:Lcom/parse/ParseHttpClient;

    new-instance v2, Lcom/parse/ParsePlugins$1;

    invoke-direct {v2, p0}, Lcom/parse/ParsePlugins$1;-><init>(Lcom/parse/ParsePlugins;)V

    invoke-virtual {v0, v2}, Lcom/parse/ParseHttpClient;->addInternalInterceptor(Lcom/parse/http/ParseNetworkInterceptor;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePlugins;->restClient:Lcom/parse/ParseHttpClient;

    monitor-exit v1

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method userAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "Parse Java SDK"

    return-object v0
.end method
