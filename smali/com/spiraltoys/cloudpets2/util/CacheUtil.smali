.class public Lcom/spiraltoys/cloudpets2/util/CacheUtil;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_SECONDS:I = 0x1e

.field private static final MAX_STALE_CACHE_DAYS:I = 0x16d

.field private static final READ_TIMEOUT_SECONDS:I = 0x1e

.field private static final SIZE_OF_CACHE_BYTES:J = 0x3200000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/CacheUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/CacheUtil;->getTmpFileUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static fetchToTemporaryFileAndCache(Landroid/content/Context;Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remoteUri"    # Landroid/net/Uri;
    .param p2, "callback"    # Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;

    .prologue
    .line 40
    new-instance v1, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    new-instance v2, Lcom/squareup/okhttp/CacheControl$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp/CacheControl$Builder;-><init>()V

    const/16 v3, 0x16d

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 42
    invoke-virtual {v2, v3, v4}, Lcom/squareup/okhttp/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/squareup/okhttp/CacheControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/CacheControl$Builder;->build()Lcom/squareup/okhttp/CacheControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Request$Builder;->cacheControl(Lcom/squareup/okhttp/CacheControl;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 45
    .local v0, "request":Lcom/squareup/okhttp/Request;
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/CacheUtil;->getClient(Landroid/content/Context;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v1

    new-instance v2, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;

    invoke-direct {v2, p2, p0}, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;-><init>(Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;)V

    .line 84
    return-void
.end method

.method private static getClient(Landroid/content/Context;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x1e

    .line 107
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 110
    .local v0, "client":Lcom/squareup/okhttp/OkHttpClient;
    :try_start_0
    new-instance v2, Lcom/squareup/okhttp/Cache;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-wide/32 v4, 0x3200000

    invoke-direct {v2, v3, v4, v5}, Lcom/squareup/okhttp/Cache;-><init>(Ljava/io/File;J)V

    .line 111
    .local v2, "responseCache":Lcom/squareup/okhttp/Cache;
    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/OkHttpClient;->setCache(Lcom/squareup/okhttp/Cache;)Lcom/squareup/okhttp/OkHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v2    # "responseCache":Lcom/squareup/okhttp/Cache;
    :goto_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v3}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 117
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v3}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 119
    return-object v0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const-string v1, "tempFile.tmp"

    .line 124
    .local v1, "localTmpFilename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private static getTmpFileUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/CacheUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isAvailableInOfflineCache(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remoteUri"    # Landroid/net/Uri;
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p1}, Landroid/net/Uri;->isRelative()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    :goto_0
    return v2

    .line 92
    :cond_0
    new-instance v3, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v3}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    sget-object v4, Lcom/squareup/okhttp/CacheControl;->FORCE_CACHE:Lcom/squareup/okhttp/CacheControl;

    .line 94
    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Request$Builder;->cacheControl(Lcom/squareup/okhttp/CacheControl;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 95
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    .line 98
    .local v1, "request":Lcom/squareup/okhttp/Request;
    :try_start_0
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/CacheUtil;->getClient(Landroid/content/Context;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Response;->isSuccessful()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
