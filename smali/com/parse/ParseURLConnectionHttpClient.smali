.class Lcom/parse/ParseURLConnectionHttpClient;
.super Lcom/parse/ParseHttpClient;
.source "ParseURLConnectionHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseHttpClient",
        "<",
        "Ljava/net/HttpURLConnection;",
        "Ljava/net/HttpURLConnection;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCEPT_ENCODING_HEADER:Ljava/lang/String; = "Accept-encoding"

.field private static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "Content-Length"

.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final GZIP_ENCODING:Ljava/lang/String; = "gzip"


# instance fields
.field private socketOperationTimeout:I


# direct methods
.method public constructor <init>(ILandroid/net/SSLSessionCache;)V
    .locals 0
    .param p1, "socketOperationTimeout"    # I
    .param p2, "sslSessionCache"    # Landroid/net/SSLSessionCache;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/parse/ParseHttpClient;-><init>()V

    .line 39
    iput p1, p0, Lcom/parse/ParseURLConnectionHttpClient;->socketOperationTimeout:I

    .line 40
    return-void
.end method


# virtual methods
.method executeInternal(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;
    .locals 4
    .param p1, "parseRequest"    # Lcom/parse/http/ParseHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/parse/ParseURLConnectionHttpClient;->getRequest(Lcom/parse/http/ParseHttpRequest;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 46
    .local v1, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getBody()Lcom/parse/http/ParseHttpBody;

    move-result-object v0

    .line 47
    .local v0, "body":Lcom/parse/http/ParseHttpBody;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 49
    .local v2, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v0, v2}, Lcom/parse/http/ParseHttpBody;->writeTo(Ljava/io/OutputStream;)V

    .line 50
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 51
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 54
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/parse/ParseURLConnectionHttpClient;->getResponse(Ljava/net/HttpURLConnection;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v3

    return-object v3
.end method

.method bridge synthetic getRequest(Lcom/parse/http/ParseHttpRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/parse/ParseURLConnectionHttpClient;->getRequest(Lcom/parse/http/ParseHttpRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method getRequest(Lcom/parse/http/ParseHttpRequest;)Ljava/net/HttpURLConnection;
    .locals 9
    .param p1, "parseRequest"    # Lcom/parse/http/ParseHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 61
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 65
    .local v1, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getMethod()Lcom/parse/http/ParseHttpRequest$Method;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/http/ParseHttpRequest$Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 67
    iget v4, p0, Lcom/parse/ParseURLConnectionHttpClient;->socketOperationTimeout:I

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 68
    iget v4, p0, Lcom/parse/ParseURLConnectionHttpClient;->socketOperationTimeout:I

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 69
    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 73
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 76
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getAllHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 77
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseURLConnectionHttpClient;->disableHttpLibraryAutoDecompress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    const-string v4, "Accept-encoding"

    const-string v5, "gzip"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getBody()Lcom/parse/http/ParseHttpBody;

    move-result-object v0

    .line 87
    .local v0, "body":Lcom/parse/http/ParseHttpBody;
    if-eqz v0, :cond_2

    .line 89
    const-string v4, "Content-Length"

    invoke-virtual {v0}, Lcom/parse/http/ParseHttpBody;->getContentLength()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v4, "Content-Type"

    invoke-virtual {v0}, Lcom/parse/http/ParseHttpBody;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Lcom/parse/http/ParseHttpBody;->getContentLength()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    .line 94
    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 96
    :cond_2
    return-object v1
.end method

.method bridge synthetic getResponse(Ljava/lang/Object;)Lcom/parse/http/ParseHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Lcom/parse/ParseURLConnectionHttpClient;->getResponse(Ljava/net/HttpURLConnection;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method getResponse(Ljava/net/HttpURLConnection;)Lcom/parse/http/ParseHttpResponse;
    .locals 11
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 107
    .local v5, "statusCode":I
    const/16 v7, 0x190

    if-ge v5, v7, :cond_1

    .line 108
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 114
    .local v0, "content":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    .line 117
    .local v6, "totalSize":I
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "reasonPhrase":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 124
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 125
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v7, ""

    :goto_2
    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 110
    .end local v0    # "content":Ljava/io/InputStream;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "reasonPhrase":Ljava/lang/String;
    .end local v6    # "totalSize":I
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .restart local v0    # "content":Ljava/io/InputStream;
    goto :goto_0

    .line 125
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "reasonPhrase":Ljava/lang/String;
    .restart local v6    # "totalSize":I
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_2

    .line 130
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "contentType":Ljava/lang/String;
    new-instance v7, Lcom/parse/http/ParseHttpResponse$Builder;

    invoke-direct {v7}, Lcom/parse/http/ParseHttpResponse$Builder;-><init>()V

    .line 133
    invoke-virtual {v7, v5}, Lcom/parse/http/ParseHttpResponse$Builder;->setStatusCode(I)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v7

    .line 134
    invoke-virtual {v7, v0}, Lcom/parse/http/ParseHttpResponse$Builder;->setContent(Ljava/io/InputStream;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v7

    int-to-long v8, v6

    .line 135
    invoke-virtual {v7, v8, v9}, Lcom/parse/http/ParseHttpResponse$Builder;->setTotalSize(J)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v7

    .line 136
    invoke-virtual {v7, v4}, Lcom/parse/http/ParseHttpResponse$Builder;->setReasonPhrase(Ljava/lang/String;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v7

    .line 137
    invoke-virtual {v7, v3}, Lcom/parse/http/ParseHttpResponse$Builder;->setHeaders(Ljava/util/Map;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v7

    .line 138
    invoke-virtual {v7, v1}, Lcom/parse/http/ParseHttpResponse$Builder;->setContentType(Ljava/lang/String;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v7

    .line 139
    invoke-virtual {v7}, Lcom/parse/http/ParseHttpResponse$Builder;->build()Lcom/parse/http/ParseHttpResponse;

    move-result-object v7

    .line 132
    return-object v7
.end method
