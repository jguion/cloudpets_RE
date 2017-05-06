.class Lcom/parse/ParseObject$State;
.super Ljava/lang/Object;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseObject$State$Builder;,
        Lcom/parse/ParseObject$State$Init;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final createdAt:J

.field private final isComplete:Z

.field private final objectId:Ljava/lang/String;

.field private final serverData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final updatedAt:J


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$State$Init;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State$Init",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "builder":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    # getter for: Lcom/parse/ParseObject$State$Init;->className:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseObject$State$Init;->access$000(Lcom/parse/ParseObject$State$Init;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject$State;->className:Ljava/lang/String;

    .line 238
    # getter for: Lcom/parse/ParseObject$State$Init;->objectId:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseObject$State$Init;->access$100(Lcom/parse/ParseObject$State$Init;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject$State;->objectId:Ljava/lang/String;

    .line 239
    # getter for: Lcom/parse/ParseObject$State$Init;->createdAt:J
    invoke-static {p1}, Lcom/parse/ParseObject$State$Init;->access$200(Lcom/parse/ParseObject$State$Init;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/ParseObject$State;->createdAt:J

    .line 240
    # getter for: Lcom/parse/ParseObject$State$Init;->updatedAt:J
    invoke-static {p1}, Lcom/parse/ParseObject$State$Init;->access$300(Lcom/parse/ParseObject$State$Init;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 241
    # getter for: Lcom/parse/ParseObject$State$Init;->updatedAt:J
    invoke-static {p1}, Lcom/parse/ParseObject$State$Init;->access$300(Lcom/parse/ParseObject$State$Init;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/parse/ParseObject$State;->updatedAt:J

    .line 243
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject$State;->serverData:Ljava/util/Map;

    .line 244
    # getter for: Lcom/parse/ParseObject$State$Init;->isComplete:Z
    invoke-static {p1}, Lcom/parse/ParseObject$State$Init;->access$400(Lcom/parse/ParseObject$State$Init;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseObject$State;->isComplete:Z

    .line 245
    return-void

    .line 241
    :cond_0
    iget-wide v0, p0, Lcom/parse/ParseObject$State;->createdAt:J

    goto :goto_0
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseObject$State$Init",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 88
    const-string v0, "_User"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/parse/ParseUser$State$Builder;

    invoke-direct {v0}, Lcom/parse/ParseUser$State$Builder;-><init>()V

    .line 91
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/parse/ParseObject$State$Builder;

    invoke-direct {v0, p0}, Lcom/parse/ParseObject$State$Builder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/parse/ParseObject$State;->className:Ljava/lang/String;

    return-object v0
.end method

.method public createdAt()J
    .locals 2

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/parse/ParseObject$State;->createdAt:J

    return-wide v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/parse/ParseObject$State;->serverData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/parse/ParseObject$State;->isComplete:Z

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/parse/ParseObject$State;->serverData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/parse/ParseObject$State$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject$State$Init",
            "<*>;>()TT;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lcom/parse/ParseObject$State$Builder;

    invoke-direct {v0, p0}, Lcom/parse/ParseObject$State$Builder;-><init>(Lcom/parse/ParseObject$State;)V

    return-object v0
.end method

.method public objectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/parse/ParseObject$State;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 282
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s@%s[className=%s, objectId=%s, createdAt=%d, updatedAt=%d, isComplete=%s, serverData=%s]"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 286
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/parse/ParseObject$State;->className:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/parse/ParseObject$State;->objectId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/parse/ParseObject$State;->createdAt:J

    .line 289
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/parse/ParseObject$State;->updatedAt:J

    .line 290
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/parse/ParseObject$State;->isComplete:Z

    .line 291
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/parse/ParseObject$State;->serverData:Ljava/util/Map;

    aput-object v4, v2, v3

    .line 282
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatedAt()J
    .locals 2

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/parse/ParseObject$State;->updatedAt:J

    return-wide v0
.end method
