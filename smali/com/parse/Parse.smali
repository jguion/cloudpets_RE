.class public Lcom/parse/Parse;
.super Ljava/lang/Object;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/Parse$ParseCallbacks;,
        Lcom/parse/Parse$Configuration;
    }
.end annotation


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x3

.field public static final LOG_LEVEL_ERROR:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x4

.field public static final LOG_LEVEL_NONE:I = 0x7fffffff

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field public static final LOG_LEVEL_WARNING:I = 0x5

.field private static final MUTEX:Ljava/lang/Object;

.field private static final MUTEX_CALLBACKS:Ljava/lang/Object;

.field private static final PARSE_APPLICATION_ID:Ljava/lang/String; = "com.parse.APPLICATION_ID"

.field private static final PARSE_CLIENT_KEY:Ljava/lang/String; = "com.parse.CLIENT_KEY"

.field private static callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/Parse$ParseCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

.field private static interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/http/ParseNetworkInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static isLocalDatastoreEnabled:Z

.field private static offlineStore:Lcom/parse/OfflineStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    .line 230
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 678
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    .line 679
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic access$800(Landroid/content/Context;)Lcom/parse/ParseEventuallyQueue;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/parse/Parse;->getEventuallyQueue(Landroid/content/Context;)Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    return-object v0
.end method

.method public static addParseNetworkInterceptor(Lcom/parse/http/ParseNetworkInterceptor;)V
    .locals 2
    .param p0, "interceptor"    # Lcom/parse/http/ParseNetworkInterceptor;

    .prologue
    .line 826
    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`Parse#addParseNetworkInterceptor(ParseNetworkInterceptor)` must be invoked before `Parse#initialize(Context)`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_0
    sget-object v0, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    if-nez v0, :cond_1

    .line 831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    .line 833
    :cond_1
    sget-object v0, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    return-void
.end method

.method private static allParsePushIntentReceiversInternal()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 497
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "com.parse.push.intent.RECEIVE"

    aput-object v5, v4, v2

    const-string v5, "com.parse.push.intent.DELETE"

    aput-object v5, v4, v3

    const/4 v5, 0x2

    const-string v6, "com.parse.push.intent.OPEN"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/parse/ManifestInfo;->getIntentReceivers([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 502
    .local v0, "intentReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 503
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v5, :cond_0

    .line 507
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method static checkCacheApplicationId()V
    .locals 12

    .prologue
    .line 552
    sget-object v9, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v9

    .line 553
    :try_start_0
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parse/ParsePlugins;->applicationId()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "applicationId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 555
    invoke-static {}, Lcom/parse/Parse;->getParseCacheDir()Ljava/io/File;

    move-result-object v3

    .line 558
    .local v3, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v8, "applicationId"

    invoke-direct {v1, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 559
    .local v1, "applicationIdFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    .line 561
    const/4 v6, 0x0

    .line 563
    .local v6, "matches":Z
    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v5, v1, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 564
    .local v5, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v8, v10

    new-array v2, v8, [B

    .line 565
    .local v2, "bytes":[B
    invoke-virtual {v5, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 566
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 567
    new-instance v4, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v4, v2, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 568
    .local v4, "diskApplicationId":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 577
    .end local v2    # "bytes":[B
    .end local v4    # "diskApplicationId":Ljava/lang/String;
    .end local v5    # "f":Ljava/io/RandomAccessFile;
    :goto_0
    if-nez v6, :cond_0

    .line 579
    :try_start_2
    invoke-static {v3}, Lcom/parse/ParseFileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 587
    .end local v6    # "matches":Z
    :cond_0
    :goto_1
    :try_start_3
    new-instance v1, Ljava/io/File;

    .end local v1    # "applicationIdFile":Ljava/io/File;
    const-string v8, "applicationId"

    invoke-direct {v1, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 589
    .restart local v1    # "applicationIdFile":Ljava/io/File;
    :try_start_4
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 590
    .local v7, "out":Ljava/io/FileOutputStream;
    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 591
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 601
    .end local v1    # "applicationIdFile":Ljava/io/File;
    .end local v3    # "dir":Ljava/io/File;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    :try_start_5
    monitor-exit v9

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 580
    .restart local v1    # "applicationIdFile":Ljava/io/File;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v6    # "matches":Z
    :catch_0
    move-exception v8

    goto :goto_1

    .line 597
    .end local v6    # "matches":Z
    :catch_1
    move-exception v8

    goto :goto_2

    .line 594
    :catch_2
    move-exception v8

    goto :goto_2

    .line 592
    :catch_3
    move-exception v8

    goto :goto_2

    .line 571
    .restart local v6    # "matches":Z
    :catch_4
    move-exception v8

    goto :goto_0

    .line 569
    :catch_5
    move-exception v8

    goto :goto_0
.end method

.method static checkContext()V
    .locals 2

    .prologue
    .line 657
    invoke-static {}, Lcom/parse/ParsePlugins$Android;->get()Lcom/parse/ParsePlugins$Android;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins$Android;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationContext is null. You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_0
    return-void
.end method

.method static checkInit()V
    .locals 2

    .prologue
    .line 639
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->applicationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 645
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationId is null. You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_1
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->clientKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 650
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "clientKey is null. You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_2
    return-void
.end method

.method private static collectParseCallbacks()[Lcom/parse/Parse$ParseCallbacks;
    .locals 3

    .prologue
    .line 727
    sget-object v2, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v2

    .line 728
    :try_start_0
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 729
    const/4 v0, 0x0

    monitor-exit v2

    .line 736
    .local v0, "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    :goto_0
    return-object v0

    .line 731
    .end local v0    # "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    :cond_0
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [Lcom/parse/Parse$ParseCallbacks;

    .line 732
    .restart local v0    # "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 733
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    check-cast v0, [Lcom/parse/Parse$ParseCallbacks;

    .line 735
    .restart local v0    # "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static destroy()V
    .locals 3

    .prologue
    .line 462
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 463
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 464
    .local v0, "queue":Lcom/parse/ParseEventuallyQueue;
    const/4 v1, 0x0

    sput-object v1, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 465
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->onDestroy()V

    .line 470
    :cond_0
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseCorePlugins;->reset()V

    .line 471
    invoke-static {}, Lcom/parse/ParsePlugins;->reset()V

    .line 472
    return-void

    .line 465
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static disableLocalDatastore()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/Parse;->setLocalDatastore(Lcom/parse/OfflineStore;)V

    .line 266
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->reset()V

    .line 267
    return-void
.end method

.method private static dispatchOnParseInitialized()V
    .locals 4

    .prologue
    .line 717
    invoke-static {}, Lcom/parse/Parse;->collectParseCallbacks()[Lcom/parse/Parse$ParseCallbacks;

    move-result-object v1

    .line 718
    .local v1, "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    if-eqz v1, :cond_0

    .line 719
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 720
    .local v0, "callback":Lcom/parse/Parse$ParseCallbacks;
    invoke-interface {v0}, Lcom/parse/Parse$ParseCallbacks;->onParseInitialized()V

    .line 719
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 723
    .end local v0    # "callback":Lcom/parse/Parse$ParseCallbacks;
    :cond_0
    return-void
.end method

.method public static enableLocalDatastore(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`Parse#enableLocalDatastore(Context)` must be invoked before `Parse#initialize(Context)`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    .line 260
    return-void
.end method

.method static externalVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    const-string v0, "a1.13.1"

    return-object v0
.end method

.method static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 482
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 483
    invoke-static {}, Lcom/parse/ParsePlugins$Android;->get()Lcom/parse/ParsePlugins$Android;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins$Android;->applicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;
    .locals 2

    .prologue
    .line 611
    invoke-static {}, Lcom/parse/ParsePlugins$Android;->get()Lcom/parse/ParsePlugins$Android;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParsePlugins$Android;->applicationContext()Landroid/content/Context;

    move-result-object v0

    .line 612
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/parse/Parse;->getEventuallyQueue(Landroid/content/Context;)Lcom/parse/ParseEventuallyQueue;

    move-result-object v1

    return-object v1
.end method

.method private static getEventuallyQueue(Landroid/content/Context;)Lcom/parse/ParseEventuallyQueue;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 616
    sget-object v3, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v3

    .line 617
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v1

    .line 618
    .local v1, "isLocalDatastoreEnabled":Z
    sget-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    instance-of v2, v2, Lcom/parse/ParseCommandCache;

    if-nez v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    sget-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    instance-of v2, v2, Lcom/parse/ParsePinningEventuallyQueue;

    if-eqz v2, :cond_2

    .line 621
    :cond_1
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 622
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v0

    .line 623
    .local v0, "httpClient":Lcom/parse/ParseHttpClient;
    if-eqz v1, :cond_3

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParsePinningEventuallyQueue;-><init>(Landroid/content/Context;Lcom/parse/ParseHttpClient;)V

    :goto_0
    sput-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 630
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/parse/ParseCommandCache;->getPendingCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 631
    new-instance v2, Lcom/parse/ParseCommandCache;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;Lcom/parse/ParseHttpClient;)V

    .line 634
    .end local v0    # "httpClient":Lcom/parse/ParseHttpClient;
    :cond_2
    sget-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    monitor-exit v3

    return-object v2

    .line 623
    .restart local v0    # "httpClient":Lcom/parse/ParseHttpClient;
    :cond_3
    new-instance v2, Lcom/parse/ParseCommandCache;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;Lcom/parse/ParseHttpClient;)V

    goto :goto_0

    .line 635
    .end local v0    # "httpClient":Lcom/parse/ParseHttpClient;
    .end local v1    # "isLocalDatastoreEnabled":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getLocalDatastore()Lcom/parse/OfflineStore;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/parse/Parse;->offlineStore:Lcom/parse/OfflineStore;

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 779
    invoke-static {}, Lcom/parse/PLog;->getLogLevel()I

    move-result v0

    return v0
.end method

.method static getParseCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 520
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getParseCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "subDir"    # Ljava/lang/String;

    .prologue
    .line 524
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 525
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 526
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 529
    :cond_0
    monitor-exit v2

    return-object v0

    .line 530
    .end local v0    # "dir":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getParseDir()Ljava/io/File;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 516
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->getParseDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getParseFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 534
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getParseFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "subDir"    # Ljava/lang/String;

    .prologue
    .line 538
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 539
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 540
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 543
    :cond_0
    monitor-exit v2

    return-object v0

    .line 544
    .end local v0    # "dir":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 665
    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    new-instance v0, Lcom/parse/Parse$Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/parse/Parse$Configuration$Builder;-><init>(Landroid/content/Context;)V

    .line 325
    .local v0, "builder":Lcom/parse/Parse$Configuration$Builder;
    # getter for: Lcom/parse/Parse$Configuration$Builder;->applicationId:Ljava/lang/String;
    invoke-static {v0}, Lcom/parse/Parse$Configuration$Builder;->access$200(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 326
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ApplicationId not defined. You must provide ApplicationId in AndroidManifest.xml.\n<meta-data\n    android:name=\"com.parse.APPLICATION_ID\"\n    android:value=\"<Your Application Id>\" />"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :cond_0
    # getter for: Lcom/parse/Parse$Configuration$Builder;->clientKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/parse/Parse$Configuration$Builder;->access$300(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 332
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ClientKey not defined. You must provide ClientKey in AndroidManifest.xml.\n<meta-data\n    android:name=\"com.parse.CLIENT_KEY\"\n    android:value=\"<Your Client Key>\" />"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_1
    sget-object v1, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/parse/Parse$Configuration$Builder;->setNetworkInterceptors(Ljava/util/Collection;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    .line 339
    # invokes: Lcom/parse/Parse$Configuration$Builder;->setLocalDatastoreEnabled(Z)Lcom/parse/Parse$Configuration$Builder;
    invoke-static {v1, v2}, Lcom/parse/Parse$Configuration$Builder;->access$700(Lcom/parse/Parse$Configuration$Builder;Z)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v1

    .line 340
    invoke-virtual {v1}, Lcom/parse/Parse$Configuration$Builder;->build()Lcom/parse/Parse$Configuration;

    move-result-object v1

    .line 338
    invoke-static {v1}, Lcom/parse/Parse;->initialize(Lcom/parse/Parse$Configuration;)V

    .line 342
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 371
    new-instance v0, Lcom/parse/Parse$Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/parse/Parse$Configuration$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    invoke-virtual {v0, p1}, Lcom/parse/Parse$Configuration$Builder;->applicationId(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    .line 373
    invoke-virtual {v0, p2}, Lcom/parse/Parse$Configuration$Builder;->clientKey(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    sget-object v1, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    .line 374
    invoke-virtual {v0, v1}, Lcom/parse/Parse$Configuration$Builder;->setNetworkInterceptors(Ljava/util/Collection;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    .line 375
    # invokes: Lcom/parse/Parse$Configuration$Builder;->setLocalDatastoreEnabled(Z)Lcom/parse/Parse$Configuration$Builder;
    invoke-static {v0, v1}, Lcom/parse/Parse$Configuration$Builder;->access$700(Lcom/parse/Parse$Configuration$Builder;Z)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/parse/Parse$Configuration$Builder;->build()Lcom/parse/Parse$Configuration;

    move-result-object v0

    .line 371
    invoke-static {v0}, Lcom/parse/Parse;->initialize(Lcom/parse/Parse$Configuration;)V

    .line 378
    return-void
.end method

.method public static initialize(Lcom/parse/Parse$Configuration;)V
    .locals 6
    .param p0, "configuration"    # Lcom/parse/Parse$Configuration;

    .prologue
    .line 383
    iget-boolean v3, p0, Lcom/parse/Parse$Configuration;->localDataStoreEnabled:Z

    sput-boolean v3, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    .line 385
    iget-object v3, p0, Lcom/parse/Parse$Configuration;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/parse/Parse$Configuration;->applicationId:Ljava/lang/String;

    iget-object v5, p0, Lcom/parse/Parse$Configuration;->clientKey:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/parse/ParsePlugins$Android;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/parse/Parse$Configuration;->server:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/parse/ParseRESTCommand;->server:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    iget-object v3, p0, Lcom/parse/Parse$Configuration;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 395
    .local v0, "applicationContext":Landroid/content/Context;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/parse/ParseHttpClient;->setKeepAlive(Z)V

    .line 396
    const/16 v3, 0x14

    invoke-static {v3}, Lcom/parse/ParseHttpClient;->setMaxConnections(I)V

    .line 398
    iget-object v3, p0, Lcom/parse/Parse$Configuration;->interceptors:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parse/Parse$Configuration;->interceptors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 399
    iget-object v3, p0, Lcom/parse/Parse$Configuration;->interceptors:Ljava/util/List;

    invoke-static {v3}, Lcom/parse/Parse;->initializeParseHttpClientsWithParseNetworkInterceptors(Ljava/util/List;)V

    .line 402
    :cond_0
    invoke-static {}, Lcom/parse/ParseObject;->registerParseSubclasses()V

    .line 404
    iget-boolean v3, p0, Lcom/parse/Parse$Configuration;->localDataStoreEnabled:Z

    if-eqz v3, :cond_1

    .line 405
    new-instance v3, Lcom/parse/OfflineStore;

    iget-object v4, p0, Lcom/parse/Parse$Configuration;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/parse/OfflineStore;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/parse/Parse;->offlineStore:Lcom/parse/OfflineStore;

    .line 412
    :goto_0
    invoke-static {}, Lcom/parse/Parse;->checkCacheApplicationId()V

    .line 413
    iget-object v1, p0, Lcom/parse/Parse$Configuration;->context:Landroid/content/Context;

    .line 414
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Lcom/parse/Parse$1;

    invoke-direct {v3, v1}, Lcom/parse/Parse$1;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    .line 422
    invoke-static {}, Lcom/parse/ParseFieldOperations;->registerDefaultDecoders()V

    .line 424
    invoke-static {}, Lcom/parse/Parse;->allParsePushIntentReceiversInternal()Z

    move-result v3

    if-nez v3, :cond_2

    .line 425
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "To prevent external tampering to your app\'s notifications, all receivers registered to handle the following actions must have their exported attributes set to false: com.parse.push.intent.RECEIVE, com.parse.push.intent.OPEN, com.parse.push.intent.DELETE"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 389
    .end local v0    # "applicationContext":Landroid/content/Context;
    .end local v1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 390
    .local v2, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 407
    .end local v2    # "ex":Ljava/net/MalformedURLException;
    .restart local v0    # "applicationContext":Landroid/content/Context;
    :cond_1
    iget-object v3, p0, Lcom/parse/Parse$Configuration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/parse/ParseKeyValueCache;->initialize(Landroid/content/Context;)V

    goto :goto_0

    .line 433
    .restart local v1    # "context":Landroid/content/Context;
    :cond_2
    invoke-static {}, Lcom/parse/GcmRegistrar;->getInstance()Lcom/parse/GcmRegistrar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/GcmRegistrar;->registerAsync()Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/Parse$3;

    invoke-direct {v4}, Lcom/parse/Parse$3;-><init>()V

    invoke-virtual {v3, v4}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/Parse$2;

    invoke-direct {v4}, Lcom/parse/Parse$2;-><init>()V

    sget-object v5, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 439
    invoke-virtual {v3, v4, v5}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    .line 448
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v3

    sget-object v4, Lcom/parse/PushType;->PPNS:Lcom/parse/PushType;

    if-ne v3, v4, :cond_3

    .line 449
    invoke-static {v0}, Lcom/parse/PushService;->startServiceIfRequired(Landroid/content/Context;)V

    .line 452
    :cond_3
    invoke-static {}, Lcom/parse/Parse;->dispatchOnParseInitialized()V

    .line 455
    sget-object v4, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v4

    .line 456
    const/4 v3, 0x0

    :try_start_1
    sput-object v3, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    .line 457
    monitor-exit v4

    .line 458
    return-void

    .line 457
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static initializeParseHttpClientsWithParseNetworkInterceptors(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/http/ParseNetworkInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    .local p0, "interceptors":Ljava/util/List;, "Ljava/util/List<Lcom/parse/http/ParseNetworkInterceptor;>;"
    if-nez p0, :cond_1

    .line 814
    :cond_0
    return-void

    .line 798
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .local v0, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseHttpClient;>;"
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/ParseCorePlugins;->getFileController()Lcom/parse/ParseFileController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/ParseFileController;->awsClient()Lcom/parse/ParseHttpClient;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseHttpClient;

    .line 809
    .local v2, "parseHttpClient":Lcom/parse/ParseHttpClient;
    new-instance v4, Lcom/parse/ParseDecompressInterceptor;

    invoke-direct {v4}, Lcom/parse/ParseDecompressInterceptor;-><init>()V

    invoke-virtual {v2, v4}, Lcom/parse/ParseHttpClient;->addInternalInterceptor(Lcom/parse/http/ParseNetworkInterceptor;)V

    .line 810
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/http/ParseNetworkInterceptor;

    .line 811
    .local v1, "interceptor":Lcom/parse/http/ParseNetworkInterceptor;
    invoke-virtual {v2, v1}, Lcom/parse/ParseHttpClient;->addExternalInterceptor(Lcom/parse/http/ParseNetworkInterceptor;)V

    goto :goto_0
.end method

.method static isInitialized()Z
    .locals 1

    .prologue
    .line 478
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLocalDatastoreEnabled()Z
    .locals 1

    .prologue
    .line 279
    sget-boolean v0, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    return v0
.end method

.method static registerParseCallbacks(Lcom/parse/Parse$ParseCallbacks;)V
    .locals 2
    .param p0, "listener"    # Lcom/parse/Parse$ParseCallbacks;

    .prologue
    .line 689
    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must register callbacks before Parse.initialize(Context)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_0
    sget-object v1, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v1

    .line 695
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 696
    monitor-exit v1

    .line 700
    :goto_0
    return-void

    .line 698
    :cond_1
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 699
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeParseNetworkInterceptor(Lcom/parse/http/ParseNetworkInterceptor;)V
    .locals 2
    .param p0, "interceptor"    # Lcom/parse/http/ParseNetworkInterceptor;

    .prologue
    .line 845
    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`Parse#addParseNetworkInterceptor(ParseNetworkInterceptor)` must be invoked before `Parse#initialize(Context)`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_0
    sget-object v0, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    if-nez v0, :cond_1

    .line 853
    :goto_0
    return-void

    .line 852
    :cond_1
    sget-object v0, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static requirePermission(Ljava/lang/String;)V
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 670
    invoke-static {p0}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To use this functionality, add this to your AndroidManifest.xml:\n<uses-permission android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_0
    return-void
.end method

.method static setLocalDatastore(Lcom/parse/OfflineStore;)V
    .locals 1
    .param p0, "offlineStore"    # Lcom/parse/OfflineStore;

    .prologue
    .line 274
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    .line 275
    sput-object p0, Lcom/parse/Parse;->offlineStore:Lcom/parse/OfflineStore;

    .line 276
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "logLevel"    # I

    .prologue
    .line 772
    invoke-static {p0}, Lcom/parse/PLog;->setLogLevel(I)V

    .line 773
    return-void
.end method

.method static unregisterParseCallbacks(Lcom/parse/Parse$ParseCallbacks;)V
    .locals 2
    .param p0, "listener"    # Lcom/parse/Parse$ParseCallbacks;

    .prologue
    .line 708
    sget-object v1, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v1

    .line 709
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 710
    monitor-exit v1

    .line 714
    :goto_0
    return-void

    .line 712
    :cond_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 713
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
