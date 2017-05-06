.class Lcom/parse/ParseDecompressInterceptor;
.super Ljava/lang/Object;
.source "ParseDecompressInterceptor.java"

# interfaces
.implements Lcom/parse/http/ParseNetworkInterceptor;


# static fields
.field private static final CONTENT_ENCODING_HEADER:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "Content-Length"

.field private static final GZIP_ENCODING:Ljava/lang/String; = "gzip"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/parse/http/ParseNetworkInterceptor$Chain;)Lcom/parse/http/ParseHttpResponse;
    .locals 6
    .param p1, "chain"    # Lcom/parse/http/ParseNetworkInterceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-interface {p1}, Lcom/parse/http/ParseNetworkInterceptor$Chain;->getRequest()Lcom/parse/http/ParseHttpRequest;

    move-result-object v1

    .line 30
    .local v1, "request":Lcom/parse/http/ParseHttpRequest;
    invoke-interface {p1, v1}, Lcom/parse/http/ParseNetworkInterceptor$Chain;->proceed(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v2

    .line 32
    .local v2, "response":Lcom/parse/http/ParseHttpResponse;
    const-string v3, "gzip"

    const-string v4, "Content-Encoding"

    invoke-virtual {v2, v4}, Lcom/parse/http/ParseHttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/parse/http/ParseHttpResponse;->getAllHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 34
    .local v0, "newHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Content-Encoding"

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v3, "Content-Length"

    const-string v4, "-1"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v3, Lcom/parse/http/ParseHttpResponse$Builder;

    invoke-direct {v3, v2}, Lcom/parse/http/ParseHttpResponse$Builder;-><init>(Lcom/parse/http/ParseHttpResponse;)V

    const-wide/16 v4, -0x1

    .line 41
    invoke-virtual {v3, v4, v5}, Lcom/parse/http/ParseHttpResponse$Builder;->setTotalSize(J)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v3

    .line 42
    invoke-virtual {v3, v0}, Lcom/parse/http/ParseHttpResponse$Builder;->setHeaders(Ljava/util/Map;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v3

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    .line 43
    invoke-virtual {v2}, Lcom/parse/http/ParseHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v4}, Lcom/parse/http/ParseHttpResponse$Builder;->setContent(Ljava/io/InputStream;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/parse/http/ParseHttpResponse$Builder;->build()Lcom/parse/http/ParseHttpResponse;

    move-result-object v2

    .line 46
    .end local v0    # "newHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v2
.end method
