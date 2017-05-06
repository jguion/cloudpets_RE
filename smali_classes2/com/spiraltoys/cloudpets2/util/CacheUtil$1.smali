.class final Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;
.super Ljava/lang/Object;
.source "CacheUtil.java"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/util/CacheUtil;->fetchToTemporaryFileAndCache(Landroid/content/Context;Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;->val$callback:Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .locals 2
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$1;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$1;-><init>(Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/Response;)V
    .locals 7
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    if-nez v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;->val$callback:Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Response body was null"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;->done(Landroid/net/Uri;Ljava/lang/Exception;)V

    .line 82
    :goto_0
    return-void

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/spiraltoys/cloudpets2/util/CacheUtil;->access$000(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v4}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->close()V

    .line 74
    :goto_1
    move-object v2, v1

    .line 76
    .local v2, "responseException":Ljava/lang/Exception;
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$2;

    invoke-direct {v4, p0, v2}, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$2;-><init>(Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;Ljava/lang/Exception;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 67
    .end local v2    # "responseException":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    .line 69
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->close()V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/ResponseBody;->close()V

    throw v3
.end method
