.class public final Lcom/parse/Parse$Configuration$Builder;
.super Ljava/lang/Object;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/Parse$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private applicationId:Ljava/lang/String;

.field private clientKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/http/ParseNetworkInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private localDataStoreEnabled:Z

.field private server:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v2, "https://api.parse.com/1/"

    iput-object v2, p0, Lcom/parse/Parse$Configuration$Builder;->server:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/parse/Parse$Configuration$Builder;->context:Landroid/content/Context;

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/parse/ManifestInfo;->getApplicationMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 100
    .local v1, "metaData":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 101
    const-string v2, "com.parse.APPLICATION_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/Parse$Configuration$Builder;->applicationId:Ljava/lang/String;

    .line 102
    const-string v2, "com.parse.CLIENT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/Parse$Configuration$Builder;->clientKey:Ljava/lang/String;

    .line 105
    .end local v0    # "applicationContext":Landroid/content/Context;
    .end local v1    # "metaData":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/parse/Parse$Configuration$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parse/Parse$Configuration$Builder;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/Parse$Configuration$Builder;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/Parse$Configuration$Builder;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/Parse$Configuration$Builder;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->server:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/Parse$Configuration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/Parse$Configuration$Builder;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/parse/Parse$Configuration$Builder;->localDataStoreEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/parse/Parse$Configuration$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parse/Parse$Configuration$Builder;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/Parse$Configuration$Builder;Z)Lcom/parse/Parse$Configuration$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/parse/Parse$Configuration$Builder;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/parse/Parse$Configuration$Builder;->setLocalDatastoreEnabled(Z)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method private setLocalDatastoreEnabled(Z)Lcom/parse/Parse$Configuration$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/parse/Parse$Configuration$Builder;->localDataStoreEnabled:Z

    .line 195
    return-object p0
.end method


# virtual methods
.method public addNetworkInterceptor(Lcom/parse/http/ParseNetworkInterceptor;)Lcom/parse/Parse$Configuration$Builder;
    .locals 1
    .param p1, "interceptor"    # Lcom/parse/http/ParseNetworkInterceptor;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-object p0
.end method

.method public applicationId(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;
    .locals 0
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/parse/Parse$Configuration$Builder;->applicationId:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public build()Lcom/parse/Parse$Configuration;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Lcom/parse/Parse$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/Parse$Configuration;-><init>(Lcom/parse/Parse$Configuration$Builder;Lcom/parse/Parse$1;)V

    return-object v0
.end method

.method public clientKey(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;
    .locals 0
    .param p1, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/parse/Parse$Configuration$Builder;->clientKey:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public enableLocalDataStore()Lcom/parse/Parse$Configuration$Builder;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/Parse$Configuration$Builder;->localDataStoreEnabled:Z

    .line 177
    return-object p0
.end method

.method public server(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;
    .locals 2
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/parse/Parse$Configuration$Builder;->server:Ljava/lang/String;

    .line 153
    return-object p0
.end method

.method setNetworkInterceptors(Ljava/util/Collection;)Lcom/parse/Parse$Configuration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/http/ParseNetworkInterceptor;",
            ">;)",
            "Lcom/parse/Parse$Configuration$Builder;"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "interceptors":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parse/http/ParseNetworkInterceptor;>;"
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    .line 187
    :goto_0
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    :cond_0
    return-object p0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
