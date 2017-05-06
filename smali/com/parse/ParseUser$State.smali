.class Lcom/parse/ParseUser$State;
.super Lcom/parse/ParseObject$State;
.source "ParseUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseUser$State$Builder;
    }
.end annotation


# instance fields
.field private final isNew:Z


# direct methods
.method private constructor <init>(Lcom/parse/ParseUser$State$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/parse/ParseUser$State$Builder;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/parse/ParseObject$State;-><init>(Lcom/parse/ParseObject$State$Init;)V

    .line 124
    # getter for: Lcom/parse/ParseUser$State$Builder;->isNew:Z
    invoke-static {p1}, Lcom/parse/ParseUser$State$Builder;->access$100(Lcom/parse/ParseUser$State$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseUser$State;->isNew:Z

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/ParseUser$State$Builder;Lcom/parse/ParseUser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parse/ParseUser$State$Builder;
    .param p2, "x1"    # Lcom/parse/ParseUser$1;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/parse/ParseUser$State;-><init>(Lcom/parse/ParseUser$State$Builder;)V

    return-void
.end method


# virtual methods
.method public authData()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 139
    const-string v1, "authData"

    .line 140
    invoke-virtual {p0, v1}, Lcom/parse/ParseUser$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 141
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    .restart local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    return-object v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/parse/ParseUser$State;->isNew:Z

    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/parse/ParseObject$State$Init;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/parse/ParseUser$State;->newBuilder()Lcom/parse/ParseUser$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/parse/ParseUser$State$Builder;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/parse/ParseUser$State$Builder;

    invoke-direct {v0, p0}, Lcom/parse/ParseUser$State$Builder;-><init>(Lcom/parse/ParseUser$State;)V

    return-object v0
.end method

.method public sessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "sessionToken"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
