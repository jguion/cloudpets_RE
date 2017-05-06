.class Lcom/parse/ParseOkHttpClient;
.super Lcom/parse/ParseHttpClient;
.source "ParseOkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseHttpClient",
        "<",
        "Lokhttp3/Request;",
        "Lokhttp3/Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final OKHTTP_DELETE:Ljava/lang/String; = "DELETE"

.field private static final OKHTTP_GET:Ljava/lang/String; = "GET"

.field private static final OKHTTP_POST:Ljava/lang/String; = "POST"

.field private static final OKHTTP_PUT:Ljava/lang/String; = "PUT"


# instance fields
.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(ILandroid/net/SSLSessionCache;)V
    .locals 4
    .param p1, "socketOperationTimeout"    # I
    .param p2, "sslSessionCache"    # Landroid/net/SSLSessionCache;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/parse/ParseHttpClient;-><init>()V

    .line 50
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 52
    .local v0, "builder":Lokhttp3/OkHttpClient$Builder;
    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 53
    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 59
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseOkHttpClient;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseOkHttpClient;Lokhttp3/Request;)Lcom/parse/http/ParseHttpRequest;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseOkHttpClient;
    .param p1, "x1"    # Lokhttp3/Request;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/parse/ParseOkHttpClient;->getParseHttpRequest(Lokhttp3/Request;)Lcom/parse/http/ParseHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method private getParseHttpRequest(Lokhttp3/Request;)Lcom/parse/http/ParseHttpRequest;
    .locals 7
    .param p1, "okHttpRequest"    # Lokhttp3/Request;

    .prologue
    const/4 v5, 0x0

    .line 162
    new-instance v2, Lcom/parse/http/ParseHttpRequest$Builder;

    invoke-direct {v2}, Lcom/parse/http/ParseHttpRequest$Builder;-><init>()V

    .line 164
    .local v2, "parseRequestBuilder":Lcom/parse/http/ParseHttpRequest$Builder;
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 179
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid http method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 180
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 164
    :sswitch_0
    const-string v6, "GET"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v5

    goto :goto_0

    :sswitch_1
    const-string v6, "DELETE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v6, "POST"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v6, "PUT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    .line 166
    :pswitch_0
    sget-object v3, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    invoke-virtual {v2, v3}, Lcom/parse/http/ParseHttpRequest$Builder;->setMethod(Lcom/parse/http/ParseHttpRequest$Method;)Lcom/parse/http/ParseHttpRequest$Builder;

    .line 184
    :goto_1
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/http/ParseHttpRequest$Builder;->setUrl(Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;

    .line 187
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 188
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/parse/http/ParseHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;

    goto :goto_2

    .line 169
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :pswitch_1
    sget-object v3, Lcom/parse/http/ParseHttpRequest$Method;->DELETE:Lcom/parse/http/ParseHttpRequest$Method;

    invoke-virtual {v2, v3}, Lcom/parse/http/ParseHttpRequest$Builder;->setMethod(Lcom/parse/http/ParseHttpRequest$Method;)Lcom/parse/http/ParseHttpRequest$Builder;

    goto :goto_1

    .line 172
    :pswitch_2
    sget-object v3, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    invoke-virtual {v2, v3}, Lcom/parse/http/ParseHttpRequest$Builder;->setMethod(Lcom/parse/http/ParseHttpRequest$Method;)Lcom/parse/http/ParseHttpRequest$Builder;

    goto :goto_1

    .line 175
    :pswitch_3
    sget-object v3, Lcom/parse/http/ParseHttpRequest$Method;->PUT:Lcom/parse/http/ParseHttpRequest$Method;

    invoke-virtual {v2, v3}, Lcom/parse/http/ParseHttpRequest$Builder;->setMethod(Lcom/parse/http/ParseHttpRequest$Method;)Lcom/parse/http/ParseHttpRequest$Builder;

    goto :goto_1

    .line 192
    :cond_1
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;

    .line 193
    .local v1, "okHttpBody":Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;
    if-eqz v1, :cond_2

    .line 194
    invoke-virtual {v1}, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;->getParseHttpBody()Lcom/parse/http/ParseHttpBody;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/http/ParseHttpRequest$Builder;->setBody(Lcom/parse/http/ParseHttpBody;)Lcom/parse/http/ParseHttpRequest$Builder;

    .line 196
    :cond_2
    invoke-virtual {v2}, Lcom/parse/http/ParseHttpRequest$Builder;->build()Lcom/parse/http/ParseHttpRequest;

    move-result-object v3

    return-object v3

    .line 164
    :sswitch_data_0
    .sparse-switch
        0x11336 -> :sswitch_0
        0x136ef -> :sswitch_3
        0x2590a0 -> :sswitch_2
        0x77f979ab -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method addExternalInterceptor(Lcom/parse/http/ParseNetworkInterceptor;)V
    .locals 3
    .param p1, "parseNetworkInterceptor"    # Lcom/parse/http/ParseNetworkInterceptor;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/parse/ParseOkHttpClient;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 208
    .local v0, "builder":Lokhttp3/OkHttpClient$Builder;
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseOkHttpClient$1;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseOkHttpClient$1;-><init>(Lcom/parse/ParseOkHttpClient;Lcom/parse/http/ParseNetworkInterceptor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseOkHttpClient;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 280
    return-void
.end method

.method executeInternal(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;
    .locals 4
    .param p1, "parseRequest"    # Lcom/parse/http/ParseHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/parse/ParseOkHttpClient;->getRequest(Lcom/parse/http/ParseHttpRequest;)Lokhttp3/Request;

    move-result-object v1

    .line 65
    .local v1, "okHttpRequest":Lokhttp3/Request;
    iget-object v3, p0, Lcom/parse/ParseOkHttpClient;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 67
    .local v0, "okHttpCall":Lokhttp3/Call;
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 69
    .local v2, "okHttpResponse":Lokhttp3/Response;
    invoke-virtual {p0, v2}, Lcom/parse/ParseOkHttpClient;->getResponse(Lokhttp3/Response;)Lcom/parse/http/ParseHttpResponse;

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
    .line 39
    invoke-virtual {p0, p1}, Lcom/parse/ParseOkHttpClient;->getRequest(Lcom/parse/http/ParseHttpRequest;)Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method getRequest(Lcom/parse/http/ParseHttpRequest;)Lokhttp3/Request;
    .locals 10
    .param p1, "parseRequest"    # Lcom/parse/http/ParseHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 113
    .local v5, "okHttpRequestBuilder":Lokhttp3/Request$Builder;
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getMethod()Lcom/parse/http/ParseHttpRequest$Method;

    move-result-object v1

    .line 115
    .local v1, "method":Lcom/parse/http/ParseHttpRequest$Method;
    sget-object v7, Lcom/parse/ParseOkHttpClient$2;->$SwitchMap$com$parse$http$ParseHttpRequest$Method:[I

    invoke-virtual {v1}, Lcom/parse/http/ParseHttpRequest$Method;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 130
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported http method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/parse/http/ParseHttpRequest$Method;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 117
    :pswitch_0
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 133
    :goto_0
    :pswitch_1
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 136
    new-instance v3, Lokhttp3/Headers$Builder;

    invoke-direct {v3}, Lokhttp3/Headers$Builder;-><init>()V

    .line 137
    .local v3, "okHttpHeadersBuilder":Lokhttp3/Headers$Builder;
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getAllHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 138
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_1

    .line 120
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "okHttpHeadersBuilder":Lokhttp3/Headers$Builder;
    :pswitch_2
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    goto :goto_0

    .line 141
    .restart local v3    # "okHttpHeadersBuilder":Lokhttp3/Headers$Builder;
    :cond_0
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    .line 142
    .local v2, "okHttpHeaders":Lokhttp3/Headers;
    invoke-virtual {v5, v2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 145
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getBody()Lcom/parse/http/ParseHttpBody;

    move-result-object v6

    .line 146
    .local v6, "parseBody":Lcom/parse/http/ParseHttpBody;
    const/4 v4, 0x0

    .line 147
    .local v4, "okHttpRequestBody":Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;
    instance-of v7, v6, Lcom/parse/ParseByteArrayHttpBody;

    if-eqz v7, :cond_1

    .line 148
    new-instance v4, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;

    .end local v4    # "okHttpRequestBody":Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;
    invoke-direct {v4, v6}, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;-><init>(Lcom/parse/http/ParseHttpBody;)V

    .line 150
    .restart local v4    # "okHttpRequestBody":Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;
    :cond_1
    sget-object v7, Lcom/parse/ParseOkHttpClient$2;->$SwitchMap$com$parse$http$ParseHttpRequest$Method:[I

    invoke-virtual {v1}, Lcom/parse/http/ParseHttpRequest$Method;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 158
    :goto_2
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    return-object v7

    .line 152
    :pswitch_3
    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_2

    .line 155
    :pswitch_4
    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_2

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 150
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
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
    .line 39
    check-cast p1, Lokhttp3/Response;

    invoke-virtual {p0, p1}, Lcom/parse/ParseOkHttpClient;->getResponse(Lokhttp3/Response;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method getResponse(Lokhttp3/Response;)Lcom/parse/http/ParseHttpResponse;
    .locals 12
    .param p1, "okHttpResponse"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v6

    .line 79
    .local v6, "statusCode":I
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 82
    .local v1, "content":Ljava/io/InputStream;
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    long-to-int v7, v8

    .line 85
    .local v7, "totalSize":I
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "reasonPhrase":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 95
    .local v2, "contentType":Ljava/lang/String;
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 96
    .local v0, "body":Lokhttp3/ResponseBody;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 97
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    :cond_1
    new-instance v8, Lcom/parse/http/ParseHttpResponse$Builder;

    invoke-direct {v8}, Lcom/parse/http/ParseHttpResponse$Builder;-><init>()V

    .line 101
    invoke-virtual {v8, v6}, Lcom/parse/http/ParseHttpResponse$Builder;->setStatusCode(I)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v8

    .line 102
    invoke-virtual {v8, v1}, Lcom/parse/http/ParseHttpResponse$Builder;->setContent(Ljava/io/InputStream;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v8

    int-to-long v10, v7

    .line 103
    invoke-virtual {v8, v10, v11}, Lcom/parse/http/ParseHttpResponse$Builder;->setTotalSize(J)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v8

    .line 104
    invoke-virtual {v8, v5}, Lcom/parse/http/ParseHttpResponse$Builder;->setReasonPhrase(Ljava/lang/String;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v8

    .line 105
    invoke-virtual {v8, v3}, Lcom/parse/http/ParseHttpResponse$Builder;->setHeaders(Ljava/util/Map;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v8

    .line 106
    invoke-virtual {v8, v2}, Lcom/parse/http/ParseHttpResponse$Builder;->setContentType(Ljava/lang/String;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v8

    .line 107
    invoke-virtual {v8}, Lcom/parse/http/ParseHttpResponse$Builder;->build()Lcom/parse/http/ParseHttpResponse;

    move-result-object v8

    .line 100
    return-object v8
.end method
