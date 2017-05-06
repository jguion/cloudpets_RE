.class Lcom/parse/ParseOkHttpClient$1;
.super Ljava/lang/Object;
.source "ParseOkHttpClient.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseOkHttpClient;->addExternalInterceptor(Lcom/parse/http/ParseNetworkInterceptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseOkHttpClient;

.field final synthetic val$parseNetworkInterceptor:Lcom/parse/http/ParseNetworkInterceptor;


# direct methods
.method constructor <init>(Lcom/parse/ParseOkHttpClient;Lcom/parse/http/ParseNetworkInterceptor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseOkHttpClient;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/parse/ParseOkHttpClient$1;->this$0:Lcom/parse/ParseOkHttpClient;

    iput-object p2, p0, Lcom/parse/ParseOkHttpClient$1;->val$parseNetworkInterceptor:Lcom/parse/http/ParseNetworkInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 10
    .param p1, "okHttpChain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    .line 213
    .local v2, "okHttpRequest":Lokhttp3/Request;
    iget-object v7, p0, Lcom/parse/ParseOkHttpClient$1;->this$0:Lcom/parse/ParseOkHttpClient;

    # invokes: Lcom/parse/ParseOkHttpClient;->getParseHttpRequest(Lokhttp3/Request;)Lcom/parse/http/ParseHttpRequest;
    invoke-static {v7, v2}, Lcom/parse/ParseOkHttpClient;->access$000(Lcom/parse/ParseOkHttpClient;Lokhttp3/Request;)Lcom/parse/http/ParseHttpRequest;

    move-result-object v5

    .line 215
    .local v5, "parseRequest":Lcom/parse/http/ParseHttpRequest;
    new-instance v4, Lbolts/Capture;

    invoke-direct {v4}, Lbolts/Capture;-><init>()V

    .line 216
    .local v4, "okHttpResponseCapture":Lbolts/Capture;, "Lbolts/Capture<Lokhttp3/Response;>;"
    iget-object v7, p0, Lcom/parse/ParseOkHttpClient$1;->val$parseNetworkInterceptor:Lcom/parse/http/ParseNetworkInterceptor;

    new-instance v8, Lcom/parse/ParseOkHttpClient$1$1;

    invoke-direct {v8, p0, v5, p1, v4}, Lcom/parse/ParseOkHttpClient$1$1;-><init>(Lcom/parse/ParseOkHttpClient$1;Lcom/parse/http/ParseHttpRequest;Lokhttp3/Interceptor$Chain;Lbolts/Capture;)V

    .line 217
    invoke-interface {v7, v8}, Lcom/parse/http/ParseNetworkInterceptor;->intercept(Lcom/parse/http/ParseNetworkInterceptor$Chain;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v6

    .line 232
    .local v6, "parseResponse":Lcom/parse/http/ParseHttpResponse;
    invoke-virtual {v4}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Response;

    .line 237
    .local v3, "okHttpResponse":Lokhttp3/Response;
    invoke-virtual {v3}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    .line 240
    .local v1, "newOkHttpResponseBuilder":Lokhttp3/Response$Builder;
    invoke-virtual {v6}, Lcom/parse/http/ParseHttpResponse;->getStatusCode()I

    move-result v7

    invoke-virtual {v1, v7}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v7

    .line 241
    invoke-virtual {v6}, Lcom/parse/http/ParseHttpResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 243
    invoke-virtual {v6}, Lcom/parse/http/ParseHttpResponse;->getAllHeaders()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 244
    invoke-virtual {v6}, Lcom/parse/http/ParseHttpResponse;->getAllHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    goto :goto_0

    .line 249
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v7, Lcom/parse/ParseOkHttpClient$1$2;

    invoke-direct {v7, p0, v6}, Lcom/parse/ParseOkHttpClient$1$2;-><init>(Lcom/parse/ParseOkHttpClient$1;Lcom/parse/http/ParseHttpResponse;)V

    invoke-virtual {v1, v7}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 275
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v7

    return-object v7
.end method
