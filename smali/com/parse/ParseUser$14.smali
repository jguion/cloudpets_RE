.class Lcom/parse/ParseUser$14;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Ljava/util/Map;Lbolts/Task;Ljava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$authType:Ljava/lang/String;

.field final synthetic val$oldAnonymousData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseUser;

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/parse/ParseUser$14;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$14;->val$oldAnonymousData:Ljava/util/Map;

    iput-object p3, p0, Lcom/parse/ParseUser$14;->val$authType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1279
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$14;->this$0:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1280
    :try_start_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1281
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseUser$14;->this$0:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$14;->val$oldAnonymousData:Ljava/util/Map;

    # invokes: Lcom/parse/ParseUser;->restoreAnonymity(Ljava/util/Map;)V
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$300(Lcom/parse/ParseUser;Ljava/util/Map;)V

    .line 1282
    monitor-exit v1

    .line 1284
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    return-object p1

    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseUser$14;->this$0:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$14;->val$authType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/parse/ParseUser;->synchronizeAuthDataAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object p1

    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    monitor-exit v1

    goto :goto_0

    .line 1285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1276
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$14;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
