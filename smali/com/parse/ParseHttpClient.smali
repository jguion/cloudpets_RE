.class abstract Lcom/parse/ParseHttpClient;
.super Ljava/lang/Object;
.source "ParseHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LibraryRequest:Ljava/lang/Object;",
        "LibraryResponse:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final APACHE_HTTPCLIENT_NAME:Ljava/lang/String; = "org.apache.http"

.field private static final KEEP_ALIVE_PROPERTY_NAME:Ljava/lang/String; = "http.keepAlive"

.field private static final MAX_CONNECTIONS_PROPERTY_NAME:Ljava/lang/String; = "http.maxConnections"

.field private static final OKHTTPCLIENT_PATH:Ljava/lang/String; = "okhttp3.OkHttpClient"

.field private static final OKHTTP_NAME:Ljava/lang/String; = "com.squareup.okhttp3"

.field private static final TAG:Ljava/lang/String; = "com.parse.ParseHttpClient"

.field private static final URLCONNECTION_NAME:Ljava/lang/String; = "net.java.URLConnection"


# instance fields
.field private externalInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/http/ParseNetworkInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private hasExecuted:Z

.field private internalInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/http/ParseNetworkInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lcom/parse/ParseHttpClient;, "Lcom/parse/ParseHttpClient<TLibraryRequest;TLibraryResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseHttpClient;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseHttpClient;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/ParseHttpClient;->internalInterceptors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseHttpClient;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseHttpClient;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public static createClient(ILandroid/net/SSLSessionCache;)Lcom/parse/ParseHttpClient;
    .locals 5
    .param p0, "socketOperationTimeout"    # I
    .param p1, "sslSessionCache"    # Landroid/net/SSLSessionCache;

    .prologue
    .line 43
    invoke-static {}, Lcom/parse/ParseHttpClient;->hasOkHttpOnClasspath()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const-string v1, "com.squareup.okhttp3"

    .line 45
    .local v1, "httpClientLibraryName":Ljava/lang/String;
    new-instance v0, Lcom/parse/ParseOkHttpClient;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseOkHttpClient;-><init>(ILandroid/net/SSLSessionCache;)V

    .line 53
    .local v0, "httpClient":Lcom/parse/ParseHttpClient;
    :goto_0
    const-string v2, "com.parse.ParseHttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " library for networking communication."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-object v0

    .line 46
    .end local v0    # "httpClient":Lcom/parse/ParseHttpClient;
    .end local v1    # "httpClientLibraryName":Ljava/lang/String;
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 47
    const-string v1, "net.java.URLConnection"

    .line 48
    .restart local v1    # "httpClientLibraryName":Ljava/lang/String;
    new-instance v0, Lcom/parse/ParseURLConnectionHttpClient;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseURLConnectionHttpClient;-><init>(ILandroid/net/SSLSessionCache;)V

    .restart local v0    # "httpClient":Lcom/parse/ParseHttpClient;
    goto :goto_0

    .line 50
    .end local v0    # "httpClient":Lcom/parse/ParseHttpClient;
    .end local v1    # "httpClientLibraryName":Ljava/lang/String;
    :cond_1
    const-string v1, "org.apache.http"

    .line 51
    .restart local v1    # "httpClientLibraryName":Ljava/lang/String;
    new-instance v0, Lcom/parse/ParseApacheHttpClient;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseApacheHttpClient;-><init>(ILandroid/net/SSLSessionCache;)V

    .restart local v0    # "httpClient":Lcom/parse/ParseHttpClient;
    goto :goto_0
.end method

.method private static hasOkHttpOnClasspath()Z
    .locals 2

    .prologue
    .line 70
    :try_start_0
    const-string v1, "okhttp3.OkHttpClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/4 v1, 0x1

    .line 73
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return v1

    .line 72
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 73
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setKeepAlive(Z)V
    .locals 2
    .param p0, "isKeepAlive"    # Z

    .prologue
    .line 65
    const-string v0, "http.keepAlive"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static setMaxConnections(I)V
    .locals 2
    .param p0, "maxConnections"    # I

    .prologue
    .line 58
    if-gtz p0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max connections should be large than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    const-string v0, "http.maxConnections"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method addExternalInterceptor(Lcom/parse/http/ParseNetworkInterceptor;)V
    .locals 1
    .param p1, "interceptor"    # Lcom/parse/http/ParseNetworkInterceptor;

    .prologue
    .line 111
    .local p0, "this":Lcom/parse/ParseHttpClient;, "Lcom/parse/ParseHttpClient<TLibraryRequest;TLibraryResponse;>;"
    iget-object v0, p0, Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method addInternalInterceptor(Lcom/parse/http/ParseNetworkInterceptor;)V
    .locals 2
    .param p1, "interceptor"    # Lcom/parse/http/ParseNetworkInterceptor;

    .prologue
    .line 97
    .local p0, "this":Lcom/parse/ParseHttpClient;, "Lcom/parse/ParseHttpClient<TLibraryRequest;TLibraryResponse;>;"
    iget-boolean v0, p0, Lcom/parse/ParseHttpClient;->hasExecuted:Z

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`ParseHttpClient#addInternalInterceptor(ParseNetworkInterceptor)` can only be invoked before `ParseHttpClient` execute any request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseHttpClient;->internalInterceptors:Ljava/util/List;

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseHttpClient;->internalInterceptors:Ljava/util/List;

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseHttpClient;->internalInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method disableHttpLibraryAutoDecompress()Z
    .locals 1

    .prologue
    .line 169
    .local p0, "this":Lcom/parse/ParseHttpClient;, "Lcom/parse/ParseHttpClient<TLibraryRequest;TLibraryResponse;>;"
    iget-object v0, p0, Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final execute(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;
    .locals 3
    .param p1, "request"    # Lcom/parse/http/ParseHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/ParseHttpClient;, "Lcom/parse/ParseHttpClient<TLibraryRequest;TLibraryResponse;>;"
    const/4 v2, 0x0

    .line 118
    iget-boolean v1, p0, Lcom/parse/ParseHttpClient;->hasExecuted:Z

    if-nez v1, :cond_0

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parse/ParseHttpClient;->hasExecuted:Z

    .line 121
    :cond_0
    new-instance v0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;

    invoke-direct {v0, p0, v2, v2, p1}, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;-><init>(Lcom/parse/ParseHttpClient;IILcom/parse/http/ParseHttpRequest;)V

    .line 122
    .local v0, "chain":Lcom/parse/http/ParseNetworkInterceptor$Chain;
    invoke-interface {v0, p1}, Lcom/parse/http/ParseNetworkInterceptor$Chain;->proceed(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v1

    return-object v1
.end method

.method abstract executeInternal(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract getRequest(Lcom/parse/http/ParseHttpRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/http/ParseHttpRequest;",
            ")T",
            "LibraryRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract getResponse(Ljava/lang/Object;)Lcom/parse/http/ParseHttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "LibraryResponse;",
            ")",
            "Lcom/parse/http/ParseHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
