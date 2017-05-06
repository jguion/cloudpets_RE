.class Lcom/parse/ParseApacheHttpClient;
.super Lcom/parse/ParseHttpClient;
.source "ParseApacheHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseApacheHttpClient$ParseApacheHttpEntity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseHttpClient",
        "<",
        "Lorg/apache/http/client/methods/HttpUriRequest;",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTENT_ENCODING_HEADER:Ljava/lang/String; = "Content-Encoding"


# instance fields
.field private apacheClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>(ILandroid/net/SSLSessionCache;)V
    .locals 13
    .param p1, "socketOperationTimeout"    # I
    .param p2, "sslSessionCache"    # Landroid/net/SSLSessionCache;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/parse/ParseHttpClient;-><init>()V

    .line 62
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 66
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    const/4 v9, 0x0

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 68
    invoke-static {v4, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 69
    invoke-static {v4, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 70
    const/16 v9, 0x2000

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 74
    const/4 v9, 0x0

    invoke-static {v4, v9}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 77
    new-instance v8, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 78
    .local v8, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v11

    const/16 v12, 0x50

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v8, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 79
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "https"

    invoke-static {p1, p2}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v11

    const/16 v12, 0x1bb

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v8, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 84
    const-string v9, "http.maxConnections"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "maxConnectionsStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 87
    .local v2, "maxConnections":I
    new-instance v9, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v9, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v4, v9}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 88
    invoke-static {v4, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 92
    .end local v2    # "maxConnections":I
    :cond_0
    const-string v9, "http.proxyHost"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "host":Ljava/lang/String;
    const-string v9, "http.proxyPort"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "portString":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 96
    .local v5, "port":I
    new-instance v7, Lorg/apache/http/HttpHost;

    const-string v9, "http"

    invoke-direct {v7, v0, v5, v9}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    .local v7, "proxy":Lorg/apache/http/HttpHost;
    const-string v9, "http.route.default-proxy"

    invoke-interface {v4, v9, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 100
    .end local v5    # "port":I
    .end local v7    # "proxy":Lorg/apache/http/HttpHost;
    :cond_1
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v4, v8}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 101
    .local v1, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9, v1, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v9, p0, Lcom/parse/ParseApacheHttpClient;->apacheClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 109
    iget-object v9, p0, Lcom/parse/ParseApacheHttpClient;->apacheClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v9, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 110
    return-void
.end method


# virtual methods
.method executeInternal(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;
    .locals 3
    .param p1, "parseRequest"    # Lcom/parse/http/ParseHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/parse/ParseApacheHttpClient;->getRequest(Lcom/parse/http/ParseHttpRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 116
    .local v0, "apacheRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v2, p0, Lcom/parse/ParseApacheHttpClient;->apacheClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 118
    .local v1, "apacheResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0, v1}, Lcom/parse/ParseApacheHttpClient;->getResponse(Lorg/apache/http/HttpResponse;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v2

    return-object v2
.end method

.method bridge synthetic getRequest(Lcom/parse/http/ParseHttpRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/parse/ParseApacheHttpClient;->getRequest(Lcom/parse/http/ParseHttpRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method getRequest(Lcom/parse/http/ParseHttpRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 8
    .param p1, "parseRequest"    # Lcom/parse/http/ParseHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 181
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "ParseHttpRequest passed to getApacheRequest should not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getMethod()Lcom/parse/http/ParseHttpRequest$Method;

    move-result-object v3

    .line 188
    .local v3, "method":Lcom/parse/http/ParseHttpRequest$Method;
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "url":Ljava/lang/String;
    sget-object v5, Lcom/parse/ParseApacheHttpClient$1;->$SwitchMap$com$parse$http$ParseHttpRequest$Method:[I

    invoke-virtual {v3}, Lcom/parse/http/ParseHttpRequest$Method;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 205
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported http method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/parse/http/ParseHttpRequest$Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 191
    :pswitch_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "apacheRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getAllHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 210
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 194
    .end local v0    # "apacheRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 195
    .restart local v0    # "apacheRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 197
    .end local v0    # "apacheRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :pswitch_2
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 198
    .restart local v0    # "apacheRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 200
    .end local v0    # "apacheRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :pswitch_3
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 201
    .restart local v0    # "apacheRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 212
    :cond_1
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 215
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getBody()Lcom/parse/http/ParseHttpBody;

    move-result-object v1

    .line 216
    .local v1, "body":Lcom/parse/http/ParseHttpBody;
    sget-object v5, Lcom/parse/ParseApacheHttpClient$1;->$SwitchMap$com$parse$http$ParseHttpRequest$Method:[I

    invoke-virtual {v3}, Lcom/parse/http/ParseHttpRequest$Method;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 226
    :goto_2
    return-object v0

    :pswitch_4
    move-object v5, v0

    .line 218
    check-cast v5, Lorg/apache/http/client/methods/HttpPost;

    new-instance v6, Lcom/parse/ParseApacheHttpClient$ParseApacheHttpEntity;

    invoke-direct {v6, v1}, Lcom/parse/ParseApacheHttpClient$ParseApacheHttpEntity;-><init>(Lcom/parse/http/ParseHttpBody;)V

    invoke-virtual {v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_2

    :pswitch_5
    move-object v5, v0

    .line 221
    check-cast v5, Lorg/apache/http/client/methods/HttpPut;

    new-instance v6, Lcom/parse/ParseApacheHttpClient$ParseApacheHttpEntity;

    invoke-direct {v6, v1}, Lcom/parse/ParseApacheHttpClient$ParseApacheHttpEntity;-><init>(Lcom/parse/http/ParseHttpBody;)V

    invoke-virtual {v5, v6}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_2

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 216
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method bridge synthetic getResponse(Ljava/lang/Object;)Lcom/parse/http/ParseHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    check-cast p1, Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/parse/ParseApacheHttpClient;->getResponse(Lorg/apache/http/HttpResponse;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method getResponse(Lorg/apache/http/HttpResponse;)Lcom/parse/http/ParseHttpResponse;
    .locals 14
    .param p1, "apacheResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "HttpResponse passed to getResponse should not be null."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 131
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 134
    .local v7, "statusCode":I
    invoke-virtual {p0}, Lcom/parse/ParseApacheHttpClient;->disableHttpLibraryAutoDecompress()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 135
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 139
    .local v0, "content":Ljava/io/InputStream;
    :goto_0
    const/4 v8, -0x1

    .line 140
    .local v8, "totalSize":I
    const-string v10, "Content-Length"

    invoke-interface {p1, v10}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 143
    .local v1, "contentLengthHeader":[Lorg/apache/http/Header;
    array-length v10, v1

    if-lez v10, :cond_1

    .line 144
    aget-object v10, v1, v9

    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 148
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "reasonPhrase":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v10

    array-length v11, v10

    :goto_1
    if-ge v9, v11, :cond_3

    aget-object v4, v10, v9

    .line 153
    .local v4, "header":Lorg/apache/http/Header;
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 136
    .end local v0    # "content":Ljava/io/InputStream;
    .end local v1    # "contentLengthHeader":[Lorg/apache/http/Header;
    .end local v4    # "header":Lorg/apache/http/Header;
    .end local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "reasonPhrase":Ljava/lang/String;
    .end local v8    # "totalSize":I
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-static {v10}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 156
    .restart local v0    # "content":Ljava/io/InputStream;
    .restart local v1    # "contentLengthHeader":[Lorg/apache/http/Header;
    .restart local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "reasonPhrase":Ljava/lang/String;
    .restart local v8    # "totalSize":I
    :cond_3
    invoke-virtual {p0}, Lcom/parse/ParseApacheHttpClient;->disableHttpLibraryAutoDecompress()Z

    move-result v9

    if-nez v9, :cond_4

    .line 157
    const-string v9, "Content-Encoding"

    invoke-interface {v5, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_4
    const/4 v2, 0x0

    .line 162
    .local v2, "contentType":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 163
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 164
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 167
    :cond_5
    new-instance v9, Lcom/parse/http/ParseHttpResponse$Builder;

    invoke-direct {v9}, Lcom/parse/http/ParseHttpResponse$Builder;-><init>()V

    .line 168
    invoke-virtual {v9, v7}, Lcom/parse/http/ParseHttpResponse$Builder;->setStatusCode(I)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v9

    .line 169
    invoke-virtual {v9, v0}, Lcom/parse/http/ParseHttpResponse$Builder;->setContent(Ljava/io/InputStream;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v9

    int-to-long v10, v8

    .line 170
    invoke-virtual {v9, v10, v11}, Lcom/parse/http/ParseHttpResponse$Builder;->setTotalSize(J)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v9

    .line 171
    invoke-virtual {v9, v6}, Lcom/parse/http/ParseHttpResponse$Builder;->setReasonPhrase(Ljava/lang/String;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v9

    .line 172
    invoke-virtual {v9, v5}, Lcom/parse/http/ParseHttpResponse$Builder;->setHeaders(Ljava/util/Map;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v9

    .line 173
    invoke-virtual {v9, v2}, Lcom/parse/http/ParseHttpResponse$Builder;->setContentType(Ljava/lang/String;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v9

    .line 174
    invoke-virtual {v9}, Lcom/parse/http/ParseHttpResponse$Builder;->build()Lcom/parse/http/ParseHttpResponse;

    move-result-object v9

    .line 167
    return-object v9
.end method
