.class public final Lcom/parse/Parse$Configuration;
.super Ljava/lang/Object;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/Parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/Parse$Configuration$Builder;
    }
.end annotation


# instance fields
.field final applicationId:Ljava/lang/String;

.field final clientKey:Ljava/lang/String;

.field final context:Landroid/content/Context;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/http/ParseNetworkInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field final localDataStoreEnabled:Z

.field final server:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/parse/Parse$Configuration$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/parse/Parse$Configuration$Builder;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    # getter for: Lcom/parse/Parse$Configuration$Builder;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/parse/Parse$Configuration$Builder;->access$100(Lcom/parse/Parse$Configuration$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/Parse$Configuration;->context:Landroid/content/Context;

    .line 216
    # getter for: Lcom/parse/Parse$Configuration$Builder;->applicationId:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/Parse$Configuration$Builder;->access$200(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/Parse$Configuration;->applicationId:Ljava/lang/String;

    .line 217
    # getter for: Lcom/parse/Parse$Configuration$Builder;->clientKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/Parse$Configuration$Builder;->access$300(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/Parse$Configuration;->clientKey:Ljava/lang/String;

    .line 218
    # getter for: Lcom/parse/Parse$Configuration$Builder;->server:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/Parse$Configuration$Builder;->access$400(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/Parse$Configuration;->server:Ljava/lang/String;

    .line 219
    # getter for: Lcom/parse/Parse$Configuration$Builder;->localDataStoreEnabled:Z
    invoke-static {p1}, Lcom/parse/Parse$Configuration$Builder;->access$500(Lcom/parse/Parse$Configuration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/Parse$Configuration;->localDataStoreEnabled:Z

    .line 220
    # getter for: Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;
    invoke-static {p1}, Lcom/parse/Parse$Configuration$Builder;->access$600(Lcom/parse/Parse$Configuration$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .line 221
    # getter for: Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;
    invoke-static {p1}, Lcom/parse/Parse$Configuration$Builder;->access$600(Lcom/parse/Parse$Configuration$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/parse/Parse$Configuration;->interceptors:Ljava/util/List;

    .line 223
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/parse/Parse$Configuration$Builder;Lcom/parse/Parse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parse/Parse$Configuration$Builder;
    .param p2, "x1"    # Lcom/parse/Parse$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/parse/Parse$Configuration;-><init>(Lcom/parse/Parse$Configuration$Builder;)V

    return-void
.end method
