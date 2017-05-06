.class abstract Lcom/parse/ParseObject$State$Init;
.super Ljava/lang/Object;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseObject$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Init"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject$State$Init;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private createdAt:J

.field private isComplete:Z

.field private objectId:Ljava/lang/String;

.field serverData:Ljava/util/Map;
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

.field private updatedAt:J


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$State;)V
    .locals 4
    .param p1, "state"    # Lcom/parse/ParseObject$State;

    .prologue
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    const-wide/16 v2, -0x1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-wide v2, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    .line 99
    iput-wide v2, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    .line 108
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseObject$State$Init;->className:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseObject$State$Init;->objectId:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    .line 111
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    .line 112
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v1

    iput-boolean v1, p0, Lcom/parse/ParseObject$State$Init;->isComplete:Z

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    const-wide/16 v0, -0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    .line 99
    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    .line 104
    iput-object p1, p0, Lcom/parse/ParseObject$State$Init;->className:Ljava/lang/String;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseObject$State$Init;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject$State$Init;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseObject$State$Init;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject$State$Init;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseObject$State$Init;)J
    .locals 2
    .param p0, "x0"    # Lcom/parse/ParseObject$State$Init;

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/parse/ParseObject$State$Init;)J
    .locals 2
    .param p0, "x0"    # Lcom/parse/ParseObject$State$Init;

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/parse/ParseObject$State$Init;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject$State$Init;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/parse/ParseObject$State$Init;->isComplete:Z

    return v0
.end method


# virtual methods
.method public apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject$State$Init;
    .locals 6
    .param p1, "other"    # Lcom/parse/ParseObject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    const-wide/16 v4, 0x0

    .line 178
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    .line 181
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 182
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/parse/ParseObject$State$Init;->createdAt(J)Lcom/parse/ParseObject$State$Init;

    .line 184
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 185
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/parse/ParseObject$State$Init;->updatedAt(J)Lcom/parse/ParseObject$State$Init;

    .line 187
    :cond_2
    iget-boolean v1, p0, Lcom/parse/ParseObject$State$Init;->isComplete:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    .line 188
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 187
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 191
    :cond_5
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    return-object v1
.end method

.method public apply(Lcom/parse/ParseOperationSet;)Lcom/parse/ParseObject$State$Init;
    .locals 6
    .param p1, "operations"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseFieldOperation;

    .line 197
    .local v3, "operation":Lcom/parse/ParseFieldOperation;
    iget-object v5, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 198
    .local v2, "oldValue":Ljava/lang/Object;
    invoke-interface {v3, v2, v0}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 199
    .local v1, "newValue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0, v0}, Lcom/parse/ParseObject$State$Init;->remove(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    goto :goto_0

    .line 205
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "newValue":Ljava/lang/Object;
    .end local v2    # "oldValue":Ljava/lang/Object;
    .end local v3    # "operation":Lcom/parse/ParseFieldOperation;
    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v4

    return-object v4
.end method

.method abstract build()Lcom/parse/ParseObject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/parse/ParseObject$State;",
            ">()TS;"
        }
    .end annotation
.end method

.method public clear()Lcom/parse/ParseObject$State$Init;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    const-wide/16 v2, -0x1

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseObject$State$Init;->objectId:Ljava/lang/String;

    .line 164
    iput-wide v2, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    .line 165
    iput-wide v2, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseObject$State$Init;->isComplete:Z

    .line 167
    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 168
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public createdAt(J)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p1, "createdAt"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    iput-wide p1, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    .line 134
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public createdAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;
    .locals 2
    .param p1, "createdAt"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    .line 129
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public isComplete(Z)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p1, "complete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    iput-boolean p1, p0, Lcom/parse/ParseObject$State$Init;->isComplete:Z

    .line 149
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    iput-object p1, p0, Lcom/parse/ParseObject$State$Init;->objectId:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method abstract self()Lcom/parse/ParseObject$State$Init;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public updatedAt(J)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p1, "updatedAt"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    iput-wide p1, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    .line 144
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public updatedAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;
    .locals 2
    .param p1, "updatedAt"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    .line 139
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method
