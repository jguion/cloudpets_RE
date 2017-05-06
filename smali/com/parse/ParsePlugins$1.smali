.class Lcom/parse/ParsePlugins$1;
.super Ljava/lang/Object;
.source "ParsePlugins.java"

# interfaces
.implements Lcom/parse/http/ParseNetworkInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePlugins;


# direct methods
.method constructor <init>(Lcom/parse/ParsePlugins;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParsePlugins;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/parse/http/ParseNetworkInterceptor$Chain;)Lcom/parse/http/ParseHttpResponse;
    .locals 5
    .param p1, "chain"    # Lcom/parse/http/ParseNetworkInterceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-interface {p1}, Lcom/parse/http/ParseNetworkInterceptor$Chain;->getRequest()Lcom/parse/http/ParseHttpRequest;

    move-result-object v1

    .line 96
    .local v1, "request":Lcom/parse/http/ParseHttpRequest;
    new-instance v2, Lcom/parse/http/ParseHttpRequest$Builder;

    invoke-direct {v2, v1}, Lcom/parse/http/ParseHttpRequest$Builder;-><init>(Lcom/parse/http/ParseHttpRequest;)V

    const-string v3, "X-Parse-Application-Id"

    iget-object v4, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    .line 97
    # getter for: Lcom/parse/ParsePlugins;->applicationId:Ljava/lang/String;
    invoke-static {v4}, Lcom/parse/ParsePlugins;->access$100(Lcom/parse/ParsePlugins;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/parse/http/ParseHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;

    move-result-object v2

    const-string v3, "X-Parse-Client-Key"

    iget-object v4, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    .line 98
    # getter for: Lcom/parse/ParsePlugins;->clientKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/parse/ParsePlugins;->access$000(Lcom/parse/ParsePlugins;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/parse/http/ParseHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;

    move-result-object v2

    const-string v3, "X-Parse-Client-Version"

    .line 99
    invoke-static {}, Lcom/parse/Parse;->externalVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/parse/http/ParseHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;

    move-result-object v2

    const-string v3, "X-Parse-App-Build-Version"

    .line 102
    invoke-static {}, Lcom/parse/ManifestInfo;->getVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-virtual {v2, v3, v4}, Lcom/parse/http/ParseHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;

    move-result-object v2

    const-string v3, "X-Parse-App-Display-Version"

    .line 105
    invoke-static {}, Lcom/parse/ManifestInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v2, v3, v4}, Lcom/parse/http/ParseHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;

    move-result-object v2

    const-string v3, "X-Parse-OS-Version"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 106
    invoke-virtual {v2, v3, v4}, Lcom/parse/http/ParseHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;

    move-result-object v2

    const-string v3, "User-Agent"

    iget-object v4, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    .line 107
    invoke-virtual {v4}, Lcom/parse/ParsePlugins;->userAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/parse/http/ParseHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;

    move-result-object v0

    .line 110
    .local v0, "builder":Lcom/parse/http/ParseHttpRequest$Builder;
    const-string v2, "X-Parse-Installation-Id"

    invoke-virtual {v1, v2}, Lcom/parse/http/ParseHttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 113
    const-string v2, "X-Parse-Installation-Id"

    iget-object v3, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    invoke-virtual {v3}, Lcom/parse/ParsePlugins;->installationId()Lcom/parse/InstallationId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/InstallationId;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/parse/http/ParseHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;

    .line 115
    :cond_0
    invoke-virtual {v0}, Lcom/parse/http/ParseHttpRequest$Builder;->build()Lcom/parse/http/ParseHttpRequest;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/parse/http/ParseNetworkInterceptor$Chain;->proceed(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v2

    return-object v2
.end method
