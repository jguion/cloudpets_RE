.class final Lcom/parse/ParseSession$1;
.super Ljava/lang/Object;
.source "ParseSession.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseSession;->getCurrentSessionInBackground()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/String;",
        "Lbolts/Task",
        "<",
        "Lcom/parse/ParseSession;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
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
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    .local v0, "sessionToken":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 52
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    :cond_0
    # invokes: Lcom/parse/ParseSession;->getSessionController()Lcom/parse/ParseSessionController;
    invoke-static {}, Lcom/parse/ParseSession;->access$000()Lcom/parse/ParseSessionController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/parse/ParseSessionController;->getSessionAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseSession$1$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseSession$1$1;-><init>(Lcom/parse/ParseSession$1;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/parse/ParseSession$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
