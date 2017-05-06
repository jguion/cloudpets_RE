.class Lcom/parse/ParseAWSRequest$1;
.super Ljava/lang/Object;
.source "ParseAWSRequest.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseAWSRequest;->onResponseAsync(Lcom/parse/http/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseAWSRequest;

.field final synthetic val$downloadProgressCallback:Lcom/parse/ProgressCallback;

.field final synthetic val$response:Lcom/parse/http/ParseHttpResponse;


# direct methods
.method constructor <init>(Lcom/parse/ParseAWSRequest;Lcom/parse/http/ParseHttpResponse;Lcom/parse/ProgressCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseAWSRequest;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/parse/ParseAWSRequest$1;->this$0:Lcom/parse/ParseAWSRequest;

    iput-object p2, p0, Lcom/parse/ParseAWSRequest$1;->val$response:Lcom/parse/http/ParseHttpResponse;

    iput-object p3, p0, Lcom/parse/ParseAWSRequest$1;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/parse/ParseAWSRequest$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v7, p0, Lcom/parse/ParseAWSRequest$1;->val$response:Lcom/parse/http/ParseHttpResponse;

    invoke-virtual {v7}, Lcom/parse/http/ParseHttpResponse;->getTotalSize()J

    move-result-wide v8

    .line 55
    .local v8, "totalSize":J
    const-wide/16 v2, 0x0

    .line 56
    .local v2, "downloadedSize":J
    const/4 v5, 0x0

    .line 58
    .local v5, "responseStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lcom/parse/ParseAWSRequest$1;->val$response:Lcom/parse/http/ParseHttpResponse;

    invoke-virtual {v7}, Lcom/parse/http/ParseHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 59
    iget-object v7, p0, Lcom/parse/ParseAWSRequest$1;->this$0:Lcom/parse/ParseAWSRequest;

    # getter for: Lcom/parse/ParseAWSRequest;->tempFile:Ljava/io/File;
    invoke-static {v7}, Lcom/parse/ParseAWSRequest;->access$000(Lcom/parse/ParseAWSRequest;)Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/parse/ParseFileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 62
    .local v6, "tempFileStream":Ljava/io/FileOutputStream;
    const v7, 0x8000

    new-array v0, v7, [B

    .line 64
    .local v0, "data":[B
    :cond_0
    :goto_0
    const/4 v7, 0x0

    array-length v10, v0

    invoke-virtual {v5, v0, v7, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "nRead":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 65
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 66
    int-to-long v10, v1

    add-long/2addr v2, v10

    .line 67
    iget-object v7, p0, Lcom/parse/ParseAWSRequest$1;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    if-eqz v7, :cond_0

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 68
    long-to-float v7, v2

    long-to-float v10, v8

    div-float/2addr v7, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v7, v10

    .line 69
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 70
    .local v4, "progressToReport":I
    iget-object v7, p0, Lcom/parse/ParseAWSRequest$1;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Lcom/parse/ProgressCallback;->done(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    .end local v0    # "data":[B
    .end local v1    # "nRead":I
    .end local v4    # "progressToReport":I
    .end local v6    # "tempFileStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v7

    invoke-static {v5}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v7

    .line 73
    .restart local v0    # "data":[B
    .restart local v1    # "nRead":I
    .restart local v6    # "tempFileStream":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v7, 0x0

    .line 75
    invoke-static {v5}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 73
    return-object v7
.end method
