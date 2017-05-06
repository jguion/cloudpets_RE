.class Lcom/parse/ParseOkHttpClient$1$1;
.super Ljava/lang/Object;
.source "ParseOkHttpClient.java"

# interfaces
.implements Lcom/parse/http/ParseNetworkInterceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseOkHttpClient$1;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseOkHttpClient$1;

.field final synthetic val$okHttpChain:Lokhttp3/Interceptor$Chain;

.field final synthetic val$okHttpResponseCapture:Lbolts/Capture;

.field final synthetic val$parseRequest:Lcom/parse/http/ParseHttpRequest;


# direct methods
.method constructor <init>(Lcom/parse/ParseOkHttpClient$1;Lcom/parse/http/ParseHttpRequest;Lokhttp3/Interceptor$Chain;Lbolts/Capture;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/ParseOkHttpClient$1;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/parse/ParseOkHttpClient$1$1;->this$1:Lcom/parse/ParseOkHttpClient$1;

    iput-object p2, p0, Lcom/parse/ParseOkHttpClient$1$1;->val$parseRequest:Lcom/parse/http/ParseHttpRequest;

    iput-object p3, p0, Lcom/parse/ParseOkHttpClient$1$1;->val$okHttpChain:Lokhttp3/Interceptor$Chain;

    iput-object p4, p0, Lcom/parse/ParseOkHttpClient$1$1;->val$okHttpResponseCapture:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/parse/http/ParseHttpRequest;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$1$1;->val$parseRequest:Lcom/parse/http/ParseHttpRequest;

    return-object v0
.end method

.method public proceed(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;
    .locals 3
    .param p1, "parseRequest"    # Lcom/parse/http/ParseHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v2, p0, Lcom/parse/ParseOkHttpClient$1$1;->this$1:Lcom/parse/ParseOkHttpClient$1;

    iget-object v2, v2, Lcom/parse/ParseOkHttpClient$1;->this$0:Lcom/parse/ParseOkHttpClient;

    invoke-virtual {v2, p1}, Lcom/parse/ParseOkHttpClient;->getRequest(Lcom/parse/http/ParseHttpRequest;)Lokhttp3/Request;

    move-result-object v0

    .line 227
    .local v0, "okHttpRequest":Lokhttp3/Request;
    iget-object v2, p0, Lcom/parse/ParseOkHttpClient$1$1;->val$okHttpChain:Lokhttp3/Interceptor$Chain;

    invoke-interface {v2, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 228
    .local v1, "okHttpResponse":Lokhttp3/Response;
    iget-object v2, p0, Lcom/parse/ParseOkHttpClient$1$1;->val$okHttpResponseCapture:Lbolts/Capture;

    invoke-virtual {v2, v1}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 229
    iget-object v2, p0, Lcom/parse/ParseOkHttpClient$1$1;->this$1:Lcom/parse/ParseOkHttpClient$1;

    iget-object v2, v2, Lcom/parse/ParseOkHttpClient$1;->this$0:Lcom/parse/ParseOkHttpClient;

    invoke-virtual {v2, v1}, Lcom/parse/ParseOkHttpClient;->getResponse(Lokhttp3/Response;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v2

    return-object v2
.end method
