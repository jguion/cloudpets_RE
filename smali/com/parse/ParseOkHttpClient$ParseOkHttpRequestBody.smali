.class Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;
.super Lokhttp3/RequestBody;
.source "ParseOkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseOkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseOkHttpRequestBody"
.end annotation


# instance fields
.field private parseBody:Lcom/parse/http/ParseHttpBody;


# direct methods
.method public constructor <init>(Lcom/parse/http/ParseHttpBody;)V
    .locals 0
    .param p1, "parseBody"    # Lcom/parse/http/ParseHttpBody;

    .prologue
    .line 286
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/http/ParseHttpBody;

    .line 288
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/http/ParseHttpBody;

    invoke-virtual {v0}, Lcom/parse/http/ParseHttpBody;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 2

    .prologue
    .line 297
    iget-object v1, p0, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/http/ParseHttpBody;

    invoke-virtual {v1}, Lcom/parse/http/ParseHttpBody;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "contentType":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/http/ParseHttpBody;

    invoke-virtual {v1}, Lcom/parse/http/ParseHttpBody;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    goto :goto_0
.end method

.method public getParseHttpBody()Lcom/parse/http/ParseHttpBody;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/http/ParseHttpBody;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2
    .param p1, "bufferedSink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/http/ParseHttpBody;

    invoke-interface {p1}, Lokio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/http/ParseHttpBody;->writeTo(Ljava/io/OutputStream;)V

    .line 304
    return-void
.end method
