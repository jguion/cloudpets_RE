.class Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;
.super Ljava/lang/Object;
.source "ParseHttpClient.java"

# interfaces
.implements Lcom/parse/http/ParseNetworkInterceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseNetworkInterceptorChain"
.end annotation


# instance fields
.field private final externalIndex:I

.field private final internalIndex:I

.field private final request:Lcom/parse/http/ParseHttpRequest;

.field final synthetic this$0:Lcom/parse/ParseHttpClient;


# direct methods
.method constructor <init>(Lcom/parse/ParseHttpClient;IILcom/parse/http/ParseHttpRequest;)V
    .locals 0
    .param p2, "internalIndex"    # I
    .param p3, "externalIndex"    # I
    .param p4, "request"    # Lcom/parse/http/ParseHttpRequest;

    .prologue
    .line 130
    .local p0, "this":Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;, "Lcom/parse/ParseHttpClient<TLibraryRequest;TLibraryResponse;>.ParseNetworkInterceptorChain;"
    iput-object p1, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p2, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->internalIndex:I

    .line 132
    iput p3, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->externalIndex:I

    .line 133
    iput-object p4, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->request:Lcom/parse/http/ParseHttpRequest;

    .line 134
    return-void
.end method


# virtual methods
.method public getRequest()Lcom/parse/http/ParseHttpRequest;
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;, "Lcom/parse/ParseHttpClient<TLibraryRequest;TLibraryResponse;>.ParseNetworkInterceptorChain;"
    iget-object v0, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->request:Lcom/parse/http/ParseHttpRequest;

    return-object v0
.end method

.method public proceed(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;
    .locals 4
    .param p1, "request"    # Lcom/parse/http/ParseHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;, "Lcom/parse/ParseHttpClient<TLibraryRequest;TLibraryResponse;>.ParseNetworkInterceptorChain;"
    iget-object v1, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    # getter for: Lcom/parse/ParseHttpClient;->internalInterceptors:Ljava/util/List;
    invoke-static {v1}, Lcom/parse/ParseHttpClient;->access$000(Lcom/parse/ParseHttpClient;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->internalIndex:I

    iget-object v2, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    # getter for: Lcom/parse/ParseHttpClient;->internalInterceptors:Ljava/util/List;
    invoke-static {v2}, Lcom/parse/ParseHttpClient;->access$000(Lcom/parse/ParseHttpClient;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 145
    new-instance v0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;

    iget-object v1, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    iget v2, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->internalIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->externalIndex:I

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;-><init>(Lcom/parse/ParseHttpClient;IILcom/parse/http/ParseHttpRequest;)V

    .line 147
    .local v0, "chain":Lcom/parse/http/ParseNetworkInterceptor$Chain;
    iget-object v1, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    # getter for: Lcom/parse/ParseHttpClient;->internalInterceptors:Ljava/util/List;
    invoke-static {v1}, Lcom/parse/ParseHttpClient;->access$000(Lcom/parse/ParseHttpClient;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->internalIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/http/ParseNetworkInterceptor;

    invoke-interface {v1, v0}, Lcom/parse/http/ParseNetworkInterceptor;->intercept(Lcom/parse/http/ParseNetworkInterceptor$Chain;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v1

    .line 158
    .end local v0    # "chain":Lcom/parse/http/ParseNetworkInterceptor$Chain;
    :goto_0
    return-object v1

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    # getter for: Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;
    invoke-static {v1}, Lcom/parse/ParseHttpClient;->access$100(Lcom/parse/ParseHttpClient;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->externalIndex:I

    iget-object v2, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    # getter for: Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;
    invoke-static {v2}, Lcom/parse/ParseHttpClient;->access$100(Lcom/parse/ParseHttpClient;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 152
    new-instance v0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;

    iget-object v1, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    iget v2, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->internalIndex:I

    iget v3, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->externalIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;-><init>(Lcom/parse/ParseHttpClient;IILcom/parse/http/ParseHttpRequest;)V

    .line 154
    .restart local v0    # "chain":Lcom/parse/http/ParseNetworkInterceptor$Chain;
    iget-object v1, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    # getter for: Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;
    invoke-static {v1}, Lcom/parse/ParseHttpClient;->access$100(Lcom/parse/ParseHttpClient;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->externalIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/http/ParseNetworkInterceptor;

    invoke-interface {v1, v0}, Lcom/parse/http/ParseNetworkInterceptor;->intercept(Lcom/parse/http/ParseNetworkInterceptor$Chain;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v1

    goto :goto_0

    .line 158
    .end local v0    # "chain":Lcom/parse/http/ParseNetworkInterceptor$Chain;
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    invoke-virtual {v1, p1}, Lcom/parse/ParseHttpClient;->executeInternal(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v1

    goto :goto_0
.end method
