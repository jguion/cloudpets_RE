.class Lcom/parse/ParsePlugins$Android;
.super Lcom/parse/ParsePlugins;
.source "ParsePlugins.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParsePlugins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Android"
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/parse/ParsePlugins;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParsePlugins$1;)V

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    .line 165
    return-void
.end method

.method static get()Lcom/parse/ParsePlugins$Android;
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    check-cast v0, Lcom/parse/ParsePlugins$Android;

    return-object v0
.end method

.method static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Lcom/parse/ParsePlugins$Android;

    invoke-direct {v0, p0, p1, p2}, Lcom/parse/ParsePlugins$Android;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/parse/ParsePlugins;->set(Lcom/parse/ParsePlugins;)V

    .line 154
    return-void
.end method


# virtual methods
.method applicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method getCacheDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 209
    iget-object v1, p0, Lcom/parse/ParsePlugins$Android;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.parse"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parse/ParsePlugins$Android;->cacheDir:Ljava/io/File;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->cacheDir:Ljava/io/File;

    # invokes: Lcom/parse/ParsePlugins;->createFileDir(Ljava/io/File;)Ljava/io/File;
    invoke-static {v0}, Lcom/parse/ParsePlugins;->access$300(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getFilesDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 219
    iget-object v1, p0, Lcom/parse/ParsePlugins$Android;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->filesDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.parse"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parse/ParsePlugins$Android;->filesDir:Ljava/io/File;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->filesDir:Ljava/io/File;

    # invokes: Lcom/parse/ParsePlugins;->createFileDir(Ljava/io/File;)Ljava/io/File;
    invoke-static {v0}, Lcom/parse/ParsePlugins;->access$300(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getParseDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 199
    iget-object v1, p0, Lcom/parse/ParsePlugins$Android;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->parseDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    const-string v2, "Parse"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePlugins$Android;->parseDir:Ljava/io/File;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->parseDir:Ljava/io/File;

    # invokes: Lcom/parse/ParsePlugins;->createFileDir(Ljava/io/File;)Ljava/io/File;
    invoke-static {v0}, Lcom/parse/ParsePlugins;->access$300(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newHttpClient()Lcom/parse/ParseHttpClient;
    .locals 3

    .prologue
    .line 173
    new-instance v1, Landroid/net/SSLSessionCache;

    iget-object v2, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    .line 174
    .local v1, "sslSessionCache":Landroid/net/SSLSessionCache;
    const/16 v0, 0x2710

    .line 175
    .local v0, "socketOperationTimeout":I
    invoke-static {v0, v1}, Lcom/parse/ParseHttpClient;->createClient(ILandroid/net/SSLSessionCache;)Lcom/parse/ParseHttpClient;

    move-result-object v2

    return-object v2
.end method

.method userAgent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 182
    const-string v1, "unknown"

    .line 184
    .local v1, "packageVersion":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    .line 186
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 187
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 189
    .local v2, "versionCode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 193
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "versionCode":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse Android SDK 1.13.1 ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") API Level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 190
    :catch_0
    move-exception v3

    goto :goto_0
.end method
